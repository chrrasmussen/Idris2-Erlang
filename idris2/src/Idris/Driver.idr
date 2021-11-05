module Idris.Driver

import Compiler.Common

import Core.Binary
import Core.Context.Log
import Core.Core
import Core.Directory
import Core.InitPrimitives
import Core.Metadata
import Core.Unify

import Idris.CommandLine
import Idris.Env
import Idris.Package
import Idris.ProcessIdr
import Idris.REPL
import Idris.SetOptions
import Idris.Syntax
import Idris.Version
import Idris.Pretty
import Idris.Error

import IdrisPaths

import Data.List
import Data.String
import Erlang
import Erlang.System
import Erlang.System.Directory
import Libraries.Utils.Path
import Libraries.Utils.Term
import Libraries.Utils.System

import Yaffle.Main

%default covering
%cg erlang inline 0

findInput : List CLOpt -> Maybe String
findInput [] = Nothing
findInput (InputFile f :: fs) = Just f
findInput (_ :: fs) = findInput fs

splitPaths : String -> List1 String
splitPaths = map trim . split (==pathSeparator)

getPrivDir : IO (Maybe String)
getPrivDir = do
  result <- erlUnsafeCall ErlTerm "code" "priv_dir" [MkAtom "idris2"]
  pure $ erlDecodeMay (map (\(MkCharlist str) => str) charlist) result

-- Add extra data from the "IDRIS2_x" environment variables
updateEnv : {auto c : Ref Ctxt Defs} ->
            {auto o : Ref ROpts REPLOpts} ->
            Core ()
updateEnv
    = do defs <- get Ctxt
         bprefix <- coreLift $ idrisGetEnv "IDRIS2_PREFIX"
         whenJust bprefix setPrefix
         bpath <- coreLift $ idrisGetEnv "IDRIS2_PATH"
         whenJust bpath $ traverseList1_ addExtraDir . splitPaths
         bdata <- coreLift $ idrisGetEnv "IDRIS2_DATA"
         whenJust bdata $ traverseList1_ addDataDir . splitPaths
         blibs <- coreLift $ idrisGetEnv "IDRIS2_LIBS"
         whenJust blibs $ traverseList1_ addLibDir . splitPaths
         pdirs <- coreLift $ idrisGetEnv "IDRIS2_PACKAGE_PATH"
         whenJust pdirs $ traverseList1_ addPackageDir . splitPaths
         cg <- coreLift $ idrisGetEnv "IDRIS2_CG"
         whenJust cg $ \ e => case getCG (options defs) e of
           Just cg => setCG cg
           Nothing => throw (InternalError ("Unknown code generator " ++ show e))
         inccgs <- coreLift $ idrisGetEnv "IDRIS2_INC_CGS"
         whenJust inccgs $ \ cgs =>
           traverseList1_ (setIncrementalCG False) $
             map trim (split (==',') cgs)
         -- IDRIS2_PATH goes first so that it overrides this if there's
         -- any conflicts. In particular, that means that setting IDRIS2_PATH
         -- for the tests means they test the local version not the installed
         -- version
         defs <- get Ctxt
         -- These might fail while bootstrapping
         addPkg "prelude"
         addPkg "base"
         addPkg "erlang"
         Just privDir <- coreLift $ getPrivDir
           | Nothing => throw $ InternalError "Directory idris2/priv not found"
         addPackageDir (privDir </> "libs")
         addDataDir (privDir </> "support")
         addLibDir "lib"
         addLibDir (privDir </> "lib")

updateREPLOpts : {auto o : Ref ROpts REPLOpts} ->
                 Core ()
updateREPLOpts
    = do ed <- coreLift $ idrisGetEnv "EDITOR"
         whenJust ed $ \ e => update ROpts { editor := e }

showInfo : {auto c : Ref Ctxt Defs}
        -> {auto o : Ref ROpts REPLOpts}
        -> List CLOpt
        -> Core Bool
showInfo Nil = pure False
showInfo (_::rest) = showInfo rest

tryYaffle : List CLOpt -> Core Bool
tryYaffle [] = pure False
tryYaffle (Yaffle f :: _) = do yaffleMain f []
                               pure True
tryYaffle (c :: cs) = tryYaffle cs

ignoreMissingIpkg : List CLOpt -> Bool
ignoreMissingIpkg [] = False
ignoreMissingIpkg (IgnoreMissingIPKG :: _) = True
ignoreMissingIpkg (c :: cs) = ignoreMissingIpkg cs

tryTTM : List CLOpt -> Core Bool
tryTTM [] = pure False
tryTTM (Metadata f :: _) = do dumpTTM f
                              pure True
tryTTM (c :: cs) = tryTTM cs


banner : String
banner = #"""
       ____    __     _         ___
      /  _/___/ /____(_)____   |__ \
      / // __  / ___/ / ___/   __/ /     Version \#{ showVersion True version }
    _/ // /_/ / /  / (__  )   / __/      https://www.idris-lang.org
   /___/\__,_/_/  /_/____/   /____/      Type :? for help

  Welcome to Idris 2.  Enjoy yourself!
  """#

checkVerbose : List CLOpt -> Bool
checkVerbose [] = False
checkVerbose (Verbose :: _) = True
checkVerbose (_ :: xs) = checkVerbose xs

stMain : List (String, Codegen) -> List CLOpt -> Core ()
stMain cgs opts
    = do False <- tryYaffle opts
            | True => pure ()
         False <- tryTTM opts
            | True => pure ()
         defs <- initDefs
         let updated = foldl (\o, (s, _) => addCG (s, Other s) o) (options defs) cgs
         c <- newRef Ctxt ({ options := updated } defs)
         s <- newRef Syn initSyntax
         setCG {c} $ maybe Chez (Other . fst) (head' cgs)
         addPrimitives

         setWorkingDir "."
         when (ignoreMissingIpkg opts) $
            setSession ({ ignoreMissingPkg := True } !getSession)

         let ide = ideMode opts
         let ideSocket = ideModeSocket opts
         let outmode = if ide then IDEMode 0 stdin stdout else REPL InfoLvl
         let fname = findInput opts
         o <- newRef ROpts (REPL.Opts.defaultOpts fname outmode cgs)
         updateEnv

         finish <- showInfo opts
         when (not finish) $ do
           -- start by going over the pre-options, and stop if we do not need to
           -- continue
           True <- preOptions opts
              | False => pure ()

           -- If there's a --build or --install, just do that then quit
           done <- processPackageOpts opts

           when (not done) $ flip catch renderError $
              do when (checkVerbose opts) $ -- override Quiet if implicitly set
                     setOutput (REPL InfoLvl)
                 u <- newRef UST initUState
                 origin <- maybe
                   (pure $ Virtual Interactive) (\fname => do
                     modIdent <- ctxtPathToNS fname
                     pure (PhysicalIdrSrc modIdent)
                     ) fname
                 m <- newRef MD (initMetadata origin)
                 updateREPLOpts
                 session <- getSession
                 when (not $ nobanner session) $ do
                   iputStrLn $ pretty0 banner
                   when (isCons cgs) $ iputStrLn (reflow "With codegen for:" <++> hsep (pretty0 . fst <$> cgs))
                 fname <- if findipkg session
                             then findIpkg fname
                             else pure fname
                 setMainFile fname
                 result <- case fname of
                      Nothing => logTime 1 "Loading prelude" $ do
                                   when (not $ noprelude session) $
                                     readPrelude True
                                   pure Done
                      Just f => logTime 1 "Loading main file" $ do
                                  res <- loadMainFile f
                                  displayErrors res
                                  pure res

                 doRepl <- catch (postOptions result opts)
                                 (\err => emitError err *> pure False)
                 if doRepl then
                   do repl {c} {u} {m}
                      showTimeRecord
                  else
                      -- exit with an error code if there was an error, otherwise
                      -- just exit
                    do ropts <- get ROpts
                       showTimeRecord
                       whenJust (errorLine ropts) $ \ _ =>
                         coreLift $ softExitWith (ExitFailure 1)

  where

  renderError : {auto c : Ref Ctxt Defs} ->
                {auto s : Ref Syn SyntaxInfo} ->
                {auto o : Ref ROpts REPLOpts} ->
                Error -> Core ()
  renderError err = do
    doc <- perror err
    msg <- render doc
    throw (UserError msg)

-- Run any options (such as --version or --help) which imply printing a
-- message then exiting. Returns wheter the program should continue

quitOpts : List CLOpt -> IO Bool
quitOpts [] = pure True
quitOpts (Version :: _)
    = do putStrLn versionMsg
         pure False
quitOpts (TTCVersion :: _)
    = do printLn ttcVersion
         pure False
quitOpts (Help Nothing :: _)
    = do putStrLn usage
         pure False
quitOpts (Help (Just HelpLogging) :: _)
    = do putStrLn helpTopics
         pure False
quitOpts (Help (Just HelpPragma) :: _)
    = do putStrLn pragmaTopics
         pure False
quitOpts (_ :: opts) = quitOpts opts

export
mainWithCodegens : List (String, Codegen) -> (args : List String) -> IO ()
mainWithCodegens cgs args = do
  let Right opts = getOpts args
        | Left err => do
          putStrLn err
          putStrLn usage
  continue <- quitOpts opts
  when continue $ do
    setupTerm
    coreRun (stMain cgs opts)
      (\err : Error => do putStrLn ("Uncaught error: " ++ show err)
                          softExitWith (ExitFailure 1))
      (\res => pure ())
