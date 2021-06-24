module Compiler.Scheme.Chez

import Compiler.Common
import Compiler.CompileExpr
import Compiler.Inline
import Compiler.Scheme.Common

import Core.Context
import Core.Context.Log
import Core.Directory
import Core.Name
import Core.Options
import Core.TT
import Libraries.Utils.Hex
import Libraries.Utils.Path

import Data.List
import Data.List1
import Data.Maybe
import Data.Strings
import Data.Vect

import Idris.Env

import System
import System.Directory
import System.File
import System.Info

import Libraries.Data.NameMap
import Libraries.Data.Version
import Libraries.Utils.String

%default covering

export
findChez : IO String
findChez
    = do Nothing <- idrisGetEnv "CHEZ"
            | Just chez => pure chez
         path <- pathLookup ["chez", "chezscheme", "chezscheme9.5", "scheme"]
         pure $ fromMaybe "/usr/bin/env scheme" path

||| Returns the chez scheme version for given executable
|||
||| This uses `chez --version` which unfortunately writes the version
||| on `stderr` thus requiring suffixing the command which shell redirection
||| which does not seem very portable.
export
chezVersion : String -> IO (Maybe Version)
chezVersion chez = do
    Right fh <- popen cmd Read
        | Left err => pure Nothing
    Right output <- fGetLine fh
        | Left err => pure Nothing
    pclose fh
    pure $ parseVersion output
  where
  cmd : String
  cmd = chez ++ " --version 2>&1"

unsupportedCallingConvention : Maybe Version -> Bool
unsupportedCallingConvention Nothing = True
unsupportedCallingConvention (Just version) = version < MkVersion (9,5,0) Nothing

-- Given the chez compiler directives, return a list of pairs of:
--   - the library file name
--   - the full absolute path of the library file name, if it's in one
--     of the library paths managed by Idris
-- If it can't be found, we'll assume it's a system library and that chez
-- will thus be able to find it.
export
findLibs : {auto c : Ref Ctxt Defs} ->
           List String -> Core (List (String, String))
findLibs ds
    = do let libs = mapMaybe (isLib . trim) ds
         traverse locate (nub libs)
  where
    isLib : String -> Maybe String
    isLib d
        = if isPrefixOf "lib" d
             then Just (trim (substr 3 (length d) d))
             else Nothing

schHeader : String -> List String -> String
schHeader chez libs
  = (if os /= "windows" then "#!" ++ chez ++ " --script\n\n" else "") ++
    "; @generated\n" ++
    "(import (chezscheme))\n" ++
    "(case (machine-type)\n" ++
    "  [(i3fb ti3fb a6fb ta6fb) #f]\n" ++
    "  [(i3le ti3le a6le ta6le) (load-shared-object \"libc.so.6\")]\n" ++
    "  [(i3osx ti3osx a6osx ta6osx) (load-shared-object \"libc.dylib\")]\n" ++
    "  [(i3nt ti3nt a6nt ta6nt) (load-shared-object \"msvcrt.dll\")" ++
    "                           (load-shared-object \"ws2_32.dll\")]\n" ++
    "  [else (load-shared-object \"libc.so\")])\n\n" ++
    showSep "\n" (map (\x => "(load-shared-object \"" ++ escapeStringChez x ++ "\")") libs) ++ "\n\n" ++
    "(let ()\n"

schFooter : Bool -> String
schFooter prof
    = "(collect 4)\n(blodwen-run-finalisers)\n" ++
      if prof
         then "(profile-dump-html))\n"
         else ")\n"

showChezChar : Char -> String -> String
showChezChar '\\' = ("\\\\" ++)
showChezChar c
   = if c < chr 32 || c > chr 126
        then (("\\x" ++ asHex (cast c) ++ ";") ++)
        else strCons c

showChezString : List Char -> String -> String
showChezString [] = id
showChezString ('"'::cs) = ("\\\"" ++) . showChezString cs
showChezString (c ::cs) = (showChezChar c) . showChezString cs

export
chezString : String -> String
chezString cs = strCons '"' (showChezString (unpack cs) "\"")

mutual
  tySpec : NamedCExp -> Core String
  -- Primitive types have been converted to names for the purpose of matching
  -- on types
  tySpec (NmCon fc (UN "Int") _ _ []) = pure "int"
  tySpec (NmCon fc (UN "String") _ _ []) = pure "string"
  tySpec (NmCon fc (UN "Double") _ _ []) = pure "double"
  tySpec (NmCon fc (UN "Char") _ _ []) = pure "char"
  tySpec (NmCon fc (NS _ n) _ _ [_])
     = cond [(n == UN "Ptr", pure "void*"),
             (n == UN "GCPtr", pure "void*"),
             (n == UN "Buffer", pure "u8*")]
          (throw (GenericMsg fc ("Can't pass argument of type " ++ show n ++ " to foreign function")))
  tySpec (NmCon fc (NS _ n) _ _ [])
     = cond [(n == UN "Unit", pure "void"),
             (n == UN "AnyPtr", pure "void*"),
             (n == UN "GCAnyPtr", pure "void*")]
          (throw (GenericMsg fc ("Can't pass argument of type " ++ show n ++ " to foreign function")))
  tySpec ty = throw (GenericMsg (getFC ty) ("Can't pass argument of type " ++ show ty ++ " to foreign function"))

  handleRet : String -> String -> String
  handleRet "void" op = op ++ " " ++ mkWorld (schConstructor chezString (UN "") (Just 0) [])
  handleRet _ op = mkWorld op

  getFArgs : NamedCExp -> Core (List (NamedCExp, NamedCExp))
  getFArgs (NmCon fc _ _ (Just 0) _) = pure []
  getFArgs (NmCon fc _ _ (Just 1) [ty, val, rest]) = pure $ (ty, val) :: !(getFArgs rest)
  getFArgs arg = throw (GenericMsg (getFC arg) ("Badly formed c call argument list " ++ show arg))

  export
  chezExtPrim : Int -> ExtPrim -> List NamedCExp -> Core String
  chezExtPrim i GetField [NmPrimVal _ (Str s), _, _, struct,
                          NmPrimVal _ (Str fld), _]
      = do structsc <- schExp chezExtPrim chezString 0 struct
           pure $ "(ftype-ref " ++ s ++ " (" ++ fld ++ ") " ++ structsc ++ ")"
  chezExtPrim i GetField [_,_,_,_,_,_]
      = pure "(error \"bad getField\")"
  chezExtPrim i SetField [NmPrimVal _ (Str s), _, _, struct,
                          NmPrimVal _ (Str fld), _, val, world]
      = do structsc <- schExp chezExtPrim chezString 0 struct
           valsc <- schExp chezExtPrim chezString 0 val
           pure $ mkWorld $
              "(ftype-set! " ++ s ++ " (" ++ fld ++ ") " ++ structsc ++
              " " ++ valsc ++ ")"
  chezExtPrim i SetField [_,_,_,_,_,_,_,_]
      = pure "(error \"bad setField\")"
  chezExtPrim i SysCodegen []
      = pure $ "\"chez\""
  chezExtPrim i OnCollect [_, p, c, world]
      = do p' <- schExp chezExtPrim chezString 0 p
           c' <- schExp chezExtPrim chezString 0 c
           pure $ mkWorld $ "(blodwen-register-object " ++ p' ++ " " ++ c' ++ ")"
  chezExtPrim i OnCollectAny [p, c, world]
      = do p' <- schExp chezExtPrim chezString 0 p
           c' <- schExp chezExtPrim chezString 0 c
           pure $ mkWorld $ "(blodwen-register-object " ++ p' ++ " " ++ c' ++ ")"
  chezExtPrim i MakeFuture [_, work]
      = do work' <- schExp chezExtPrim chezString 0 work
           pure $ "(blodwen-make-future " ++ work' ++ ")"
  chezExtPrim i prim args
      = schExtCommon chezExtPrim chezString i prim args

-- Reference label for keeping track of loaded external libraries
export
data Loaded : Type where

-- Label for noting which struct types are declared
export
data Structs : Type where

cftySpec : FC -> CFType -> Core String
cftySpec fc CFUnit = pure "void"
cftySpec fc CFInt = pure "int"
cftySpec fc CFInt8 = pure "integer-8"
cftySpec fc CFInt16 = pure "integer-16"
cftySpec fc CFInt32 = pure "integer-32"
cftySpec fc CFInt64 = pure "integer-64"
cftySpec fc CFUnsigned8 = pure "unsigned-8"
cftySpec fc CFUnsigned16 = pure "unsigned-16"
cftySpec fc CFUnsigned32 = pure "unsigned-32"
cftySpec fc CFUnsigned64 = pure "unsigned-64"
cftySpec fc CFString = pure "string"
cftySpec fc CFDouble = pure "double"
cftySpec fc CFChar = pure "char"
cftySpec fc CFPtr = pure "void*"
cftySpec fc CFGCPtr = pure "void*"
cftySpec fc CFBuffer = pure "u8*"
cftySpec fc (CFFun s t) = pure "void*"
cftySpec fc (CFIORes t) = cftySpec fc t
cftySpec fc (CFStruct n t) = pure $ "(* " ++ n ++ ")"
cftySpec fc t = throw (GenericMsg fc ("Can't pass argument of type " ++ show t ++
                         " to foreign function"))

cCall : {auto c : Ref Ctxt Defs}
     -> {auto l : Ref Loaded (List String)}
     -> String
     -> FC
     -> (cfn : String)
     -> (clib : String)
     -> List (Name, CFType)
     -> CFType
     -> (collectSafe : Bool)
     -> Core (String, String)
cCall appdir fc cfn clib args (CFIORes CFGCPtr) _
    = throw (GenericMsg fc "Can't return GCPtr from a foreign function")
cCall appdir fc cfn clib args CFGCPtr _
    = throw (GenericMsg fc "Can't return GCPtr from a foreign function")
cCall appdir fc cfn clib args (CFIORes CFBuffer) _
    = throw (GenericMsg fc "Can't return Buffer from a foreign function")
cCall appdir fc cfn clib args CFBuffer _
    = throw (GenericMsg fc "Can't return Buffer from a foreign function")
cCall appdir fc cfn clib args ret collectSafe
    = do loaded <- get Loaded
         lib <- if clib `elem` loaded
                   then pure ""
                   else do (fname, fullname) <- locate clib
                           copyLib (appdir </> fname, fullname)
                           put Loaded (clib :: loaded)
                           pure $ "(load-shared-object \""
                                    ++ escapeStringChez fname
                                    ++ "\")\n"
         argTypes <- traverse (cftySpec fc . snd) args
         retType <- cftySpec fc ret
         let callConv = if collectSafe then " __collect_safe" else ""
         let call = "((foreign-procedure" ++ callConv ++ " " ++ show cfn ++ " ("
                      ++ showSep " " argTypes ++ ") " ++ retType ++ ") "
                      ++ showSep " " !(traverse buildArg args) ++ ")"

         pure (lib, case ret of
                         CFIORes _ => handleRet retType call
                         _ => call)
  where
    mkNs : Int -> List CFType -> List (Maybe String)
    mkNs i [] = []
    mkNs i (CFWorld :: xs) = Nothing :: mkNs i xs
    mkNs i (x :: xs) = Just ("cb" ++ show i) :: mkNs (i + 1) xs

    applyLams : String -> List (Maybe String) -> String
    applyLams n [] = n
    applyLams n (Nothing :: as) = applyLams ("(" ++ n ++ " #f)") as
    applyLams n (Just a :: as) = applyLams ("(" ++ n ++ " " ++ a ++ ")") as

    getVal : String -> String
    getVal str = "(vector-ref " ++ str ++ "1)"

    mkFun : List CFType -> CFType -> String -> String
    mkFun args ret n
        = let argns = mkNs 0 args in
              "(lambda (" ++ showSep " " (mapMaybe id argns) ++ ") " ++
              (applyLams n argns ++ ")")

    notWorld : CFType -> Bool
    notWorld CFWorld = False
    notWorld _ = True

    callback : String -> List CFType -> CFType -> Core String
    callback n args (CFFun s t) = callback n (s :: args) t
    callback n args_rev retty
        = do let args = reverse args_rev
             argTypes <- traverse (cftySpec fc) (filter notWorld args)
             retType <- cftySpec fc retty
             pure $
                 "(let ([c-code (foreign-callable #f " ++
                       mkFun args retty n ++
                       " (" ++ showSep " " argTypes ++ ") " ++ retType ++ ")])" ++
                       " (lock-object c-code) (foreign-callable-entry-point c-code))"

    buildArg : (Name, CFType) -> Core String
    buildArg (n, CFFun s t) = callback (schName n) [s] t
    buildArg (n, CFGCPtr) = pure $ "(car " ++ schName n ++ ")"
    buildArg (n, _) = pure $ schName n

schemeCall : FC -> (sfn : String) ->
             List Name -> CFType -> Core String
schemeCall fc sfn argns ret
    = let call = "(" ++ sfn ++ " " ++ showSep " " (map schName argns) ++ ")" in
          case ret of
               CFIORes _ => pure $ mkWorld call
               _ => pure call

-- Use a calling convention to compile a foreign def.
-- Returns any preamble needed for loading libraries, and the body of the
-- function call.
useCC : {auto c : Ref Ctxt Defs} ->
        {auto l : Ref Loaded (List String)} ->
        String -> FC -> List String -> List (Name, CFType) -> CFType ->
        Maybe Version -> Core (String, String)
useCC appdir fc ccs args ret version
    = case parseCC ["scheme,chez", "scheme", "C__collect_safe", "C"] ccs of
           Just ("scheme,chez", [sfn]) =>
               do body <- schemeCall fc sfn (map fst args) ret
                  pure ("", body)
           Just ("scheme", [sfn]) =>
               do body <- schemeCall fc sfn (map fst args) ret
                  pure ("", body)
           Just ("C__collect_safe", (cfn :: clib :: _)) => do
             if unsupportedCallingConvention version
               then cCall appdir fc cfn clib args ret False
               else cCall appdir fc cfn clib args ret True
           Just ("C", (cfn :: clib :: _)) =>
             cCall appdir fc cfn clib args ret False
           _ => throw (NoForeignCC fc ccs)

-- For every foreign arg type, return a name, and whether to pass it to the
-- foreign call (we don't pass '%World')
mkArgs : Int -> List CFType -> List (Name, Bool)
mkArgs i [] = []
mkArgs i (CFWorld :: cs) = (MN "farg" i, False) :: mkArgs i cs
mkArgs i (c :: cs) = (MN "farg" i, True) :: mkArgs (i + 1) cs

mkStruct : {auto s : Ref Structs (List String)} ->
           CFType -> Core String
mkStruct (CFStruct n flds)
    = do defs <- traverse mkStruct (map snd flds)
         strs <- get Structs
         if n `elem` strs
            then pure (concat defs)
            else do put Structs (n :: strs)
                    pure $ concat defs ++ "(define-ftype " ++ n ++ " (struct\n\t"
                           ++ showSep "\n\t" !(traverse showFld flds) ++ "))\n"
  where
    showFld : (String, CFType) -> Core String
    showFld (n, ty) = pure $ "[" ++ n ++ " " ++ !(cftySpec emptyFC ty) ++ "]"
mkStruct (CFIORes t) = mkStruct t
mkStruct (CFFun a b) = do ignore (mkStruct a); mkStruct b
mkStruct _ = pure ""

schFgnDef : {auto c : Ref Ctxt Defs} ->
            {auto l : Ref Loaded (List String)} ->
            {auto s : Ref Structs (List String)} ->
            String -> FC -> Name -> NamedDef -> Maybe Version -> Core (String, String)
schFgnDef appdir fc n (MkNmForeign cs args ret) version
    = do let argns = mkArgs 0 args
         let allargns = map fst argns
         let useargns = map fst (filter snd argns)
         argStrs <- traverse mkStruct args
         retStr <- mkStruct ret
         (load, body) <- useCC appdir fc cs (zip useargns args) ret version
         defs <- get Ctxt
         pure (load,
                concat argStrs ++ retStr ++
                "(define " ++ schName !(full (gamma defs) n) ++
                " (lambda (" ++ showSep " " (map schName allargns) ++ ") " ++
                body ++ "))\n")
schFgnDef _ _ _ _ _ = pure ("", "")

export
getFgnCall : {auto c : Ref Ctxt Defs} ->
             {auto l : Ref Loaded (List String)} ->
             {auto s : Ref Structs (List String)} ->
             String -> Maybe Version -> (Name, FC, NamedDef) -> Core (String, String)
getFgnCall appdir version (n, fc, d) = schFgnDef appdir fc n d version

export
startChezPreamble : String
startChezPreamble = unlines
    [ "#!/bin/sh"
    , ""
    , "set -e # exit on any error"
    , ""
    , "if [ \"$(uname)\" = Darwin ]; then"
    , "  DIR=$(zsh -c 'printf %s \"$0:A:h\"' \"$0\")"
    , "else"
    , "  DIR=$(dirname \"$(readlink -f -- \"$0\")\")"
    , "fi"
    , ""  -- so that the preamble ends with a newline
    ]

startChez : String -> String -> String
startChez appdir target = startChezPreamble ++ unlines
    [ "export LD_LIBRARY_PATH=\"$DIR/" ++ appdir ++ "\":$LD_LIBRARY_PATH"
    , "\"$DIR/" ++ target ++ "\" \"$@\""
    ]

startChezCmd : String -> String -> String -> String
startChezCmd chez appdir target = unlines
    [ "@echo off"
    , "set APPDIR=%~dp0"
    , "set PATH=%APPDIR%\\" ++ appdir ++ ";%PATH%"
    , "\"" ++ chez ++ "\" --script \"%APPDIR%/" ++ target ++ "\" %*"
    ]

startChezWinSh : String -> String -> String -> String
startChezWinSh chez appdir target = unlines
    [ "#!/bin/sh"
    , ""
    , "set -e # exit on any error"
    , ""
    , "DIR=$(dirname \"$(readlink -f -- \"$0\")\")"
    , "CHEZ=$(cygpath \"" ++ chez ++"\")"
    , "export PATH=\"$DIR/" ++ appdir ++ "\":$PATH"
    , "\"$CHEZ\" --script \"$DIR/" ++ target ++ "\" \"$@\""
    ]

||| Compile a TT expression to Chez Scheme
compileToSS : Ref Ctxt Defs ->
              Bool -> String -> ClosedTerm -> (outfile : String) -> Core ()
compileToSS c prof appdir tm outfile
    = do ds <- getDirectives Chez
         libs <- findLibs (map snd ds)
         traverse_ copyLib libs
         cdata <- getCompileData False Cases tm
         let ndefs = namedDefs cdata
         let ctm = forget (mainExpr cdata)

         defs <- get Ctxt
         l <- newRef {t = List String} Loaded ["libc", "libc 6"]
         s <- newRef {t = List String} Structs []
         chez <- coreLift findChez
         version <- coreLift $ chezVersion chez
         fgndefs <- traverse (getFgnCall appdir version) ndefs
         compdefs <- traverse (getScheme chezExtPrim chezString) ndefs
         let code = fastAppend (map snd fgndefs ++ compdefs)
         main <- schExp chezExtPrim chezString 0 ctm
         support <- readDataFile "chez/support.ss"
         extraRuntime <- getExtraRuntime (map snd ds)
         let scm = schHeader chez (map snd libs) ++
                   support ++ extraRuntime ++ code ++
                   concat (map fst fgndefs) ++
                   "(collect-request-handler (lambda () (collect) (blodwen-run-finalisers)))\n" ++
                   main ++ schFooter prof
         Right () <- coreLift $ writeFile outfile scm
            | Left err => throw (FileErr outfile err)
         coreLift_ $ chmodRaw outfile 0o755
         pure ()

||| Compile a Chez Scheme source file to an executable, daringly with runtime checks off.
compileToSO : {auto c : Ref Ctxt Defs} ->
              Bool -> String -> (appDirRel : String) -> (outSsAbs : String) -> Core ()
compileToSO prof chez appDirRel outSsAbs
    = do let tmpFileAbs = appDirRel </> "compileChez"
         let build = "(parameterize ([optimize-level 3] "
                     ++ (if prof then "[compile-profile #t] "
                                else "") ++
                     "[compile-file-message #f]) (compile-program " ++
                    show outSsAbs ++ "))"
         Right () <- coreLift $ writeFile tmpFileAbs build
            | Left err => throw (FileErr tmpFileAbs err)
         coreLift_ $ chmodRaw tmpFileAbs 0o755
         coreLift_ $ system (chez ++ " --script \"" ++ tmpFileAbs ++ "\"")
         pure ()

makeSh : String -> String -> String -> Core ()
makeSh outShRel appdir outAbs
    = do Right () <- coreLift $ writeFile outShRel (startChez appdir outAbs)
            | Left err => throw (FileErr outShRel err)
         pure ()

||| Make Windows start scripts, one for bash environments and one batch file
makeShWindows : String -> String -> String -> String -> Core ()
makeShWindows chez outShRel appdir outAbs
    = do let cmdFile = outShRel ++ ".cmd"
         Right () <- coreLift $ writeFile cmdFile (startChezCmd chez appdir outAbs)
            | Left err => throw (FileErr cmdFile err)
         Right () <- coreLift $ writeFile outShRel (startChezWinSh chez appdir outAbs)
            | Left err => throw (FileErr outShRel err)
         pure ()

||| Chez Scheme implementation of the `compileExpr` interface.
compileExpr : Bool -> Ref Ctxt Defs -> (tmpDir : String) -> (outputDir : String) ->
              ClosedTerm -> (outfile : String) -> Core (Maybe String)
compileExpr makeitso c tmpDir outputDir tm outfile
    = do let appDirRel = outfile ++ "_app" -- relative to build dir
         let appDirGen = outputDir </> appDirRel -- relative to here
         coreLift_ $ mkdirAll appDirGen
         Just cwd <- coreLift currentDir
              | Nothing => throw (InternalError "Can't get current directory")
         let outSsFile = appDirRel </> outfile <.> "ss"
         let outSoFile = appDirRel </> outfile <.> "so"
         let outSsAbs = cwd </> outputDir </> outSsFile
         let outSoAbs = cwd </> outputDir </> outSoFile
         chez <- coreLift $ findChez
         let prof = profile !getSession
         compileToSS c (makeitso && prof) appDirGen tm outSsAbs
         logTime "++ Make SO" $ when makeitso $ compileToSO prof chez appDirGen outSsAbs
         let outShRel = outputDir </> outfile
         if isWindows
            then makeShWindows chez outShRel appDirRel (if makeitso then outSoFile else outSsFile)
            else makeSh outShRel appDirRel (if makeitso then outSoFile else outSsFile)
         coreLift_ $ chmodRaw outShRel 0o755
         pure (Just outShRel)

||| Chez Scheme implementation of the `executeExpr` interface.
||| This implementation simply runs the usual compiler, saving it to a temp file, then interpreting it.
executeExpr : Ref Ctxt Defs -> (tmpDir : String) -> ClosedTerm -> Core ()
executeExpr c tmpDir tm
    = do Just sh <- compileExpr False c tmpDir tmpDir tm "_tmpchez"
            | Nothing => throw (InternalError "compileExpr returned Nothing")
         coreLift_ $ system sh
         pure ()

compileLibrary : Ref Ctxt Defs -> (tmpDir : String) -> (outputDir : String) -> (libName : String) -> (changedModules : Maybe (List ModuleIdent)) -> Core (Maybe (String, List String))
compileLibrary c tmpDir outputDir libName changedModules = do
  coreLift $ putStrLn "Compiling to library is not supported."
  pure Nothing

||| Codegen wrapper for Chez scheme implementation.
export
codegenChez : Codegen
codegenChez = MkCG (compileExpr True) executeExpr compileLibrary
