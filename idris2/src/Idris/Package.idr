module Idris.Package

import Compiler.Common

import Core.Context
import Core.Core
import Core.Directory
import Core.Metadata
import Core.Options
import Core.Unify

import Data.List
import Data.List1
import Data.Maybe
import Data.So
import Libraries.Data.StringMap
import Data.Strings
import Libraries.Data.StringTrie
import Data.These

import Parser.Package
import System
import System.Directory
import System.File

import Libraries.Text.Parser
import Libraries.Text.PrettyPrint.Prettyprinter
import Libraries.Utils.Binary
import Libraries.Utils.String
import Libraries.Utils.Path

import Idris.CommandLine
import Idris.ModTree
import Idris.ProcessIdr
import Idris.REPL
import Idris.REPLCommon
import Idris.REPLOpts
import Idris.SetOptions
import Idris.Syntax
import Idris.Version
import IdrisPaths

%default covering

public export
record Depends where
  constructor MkDepends
  pkgname : String
  pkgbounds : PkgVersionBounds

export
Show Depends where
  show p = p.pkgname ++ " " ++ show p.pkgbounds

public export
record PkgDesc where
  constructor MkPkgDesc
  name : String
  version : PkgVersion
  authors : String
  maintainers : Maybe String
  license : Maybe String
  brief   : Maybe String
  readme  : Maybe String
  homepage : Maybe String
  sourceloc : Maybe String
  bugtracker : Maybe String
  depends : List Depends -- packages to add to search path
  modules : List (ModuleIdent, String) -- modules to install (namespace, filename)
  mainmod : Maybe (ModuleIdent, String) -- main file (i.e. file to load at REPL)
  executable : Maybe String -- name of executable
  library : Maybe String -- name of library
  options : Maybe (FC, String)
  sourcedir : Maybe String
  builddir : Maybe String
  outputdir : Maybe String
  prebuild : Maybe (FC, String) -- Script to run before building
  postbuild : Maybe (FC, String) -- Script to run after building
  preinstall : Maybe (FC, String) -- Script to run after building, before installing
  postinstall : Maybe (FC, String) -- Script to run after installing
  preclean : Maybe (FC, String) -- Script to run before cleaning
  postclean : Maybe (FC, String) -- Script to run after cleaning

installDir : PkgDesc -> String
installDir p = name p ++ "-" ++ show (version p)

export
Show PkgDesc where
  show pkg = "Package: " ++ name pkg ++ "\n" ++
             "Version: " ++ show (version pkg) ++ "\n" ++
             "Authors: " ++ authors pkg ++ "\n" ++
             maybe "" (\m => "Maintainers: " ++ m ++ "\n") (maintainers pkg) ++
             maybe "" (\m => "License: "     ++ m ++ "\n") (license pkg)     ++
             maybe "" (\m => "Brief: "       ++ m ++ "\n") (brief pkg)       ++
             maybe "" (\m => "ReadMe: "      ++ m ++ "\n") (readme pkg)      ++
             maybe "" (\m => "HomePage: "    ++ m ++ "\n") (homepage pkg)    ++
             maybe "" (\m => "SourceLoc: "   ++ m ++ "\n") (sourceloc pkg)   ++
             maybe "" (\m => "BugTracker: "  ++ m ++ "\n") (bugtracker pkg)  ++
             "Depends: " ++ show (depends pkg) ++ "\n" ++
             "Modules: " ++ show (map snd (modules pkg)) ++ "\n" ++
             maybe "" (\m => "Main: " ++ snd m ++ "\n") (mainmod pkg) ++
             maybe "" (\m => "Exec: " ++ m ++ "\n") (executable pkg) ++
             maybe "" (\m => "Library: " ++ m ++ "\n") (library pkg) ++
             maybe "" (\m => "Opts: " ++ snd m ++ "\n") (options pkg) ++
             maybe "" (\m => "SourceDir: " ++ m ++ "\n") (sourcedir pkg) ++
             maybe "" (\m => "BuildDir: " ++ m ++ "\n") (builddir pkg) ++
             maybe "" (\m => "OutputDir: " ++ m ++ "\n") (outputdir pkg) ++
             maybe "" (\m => "Prebuild: " ++ snd m ++ "\n") (prebuild pkg) ++
             maybe "" (\m => "Postbuild: " ++ snd m ++ "\n") (postbuild pkg) ++
             maybe "" (\m => "Preinstall: " ++ snd m ++ "\n") (preinstall pkg) ++
             maybe "" (\m => "Postinstall: " ++ snd m ++ "\n") (postinstall pkg) ++
             maybe "" (\m => "Preclean: " ++ snd m ++ "\n") (preclean pkg) ++
             maybe "" (\m => "Postclean: " ++ snd m ++ "\n") (postclean pkg)

initPkgDesc : String -> PkgDesc
initPkgDesc pname
    = MkPkgDesc pname (MkPkgVersion [0,0]) "Anonymous" Nothing Nothing
                Nothing Nothing Nothing Nothing Nothing
                [] []
                Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing
                Nothing Nothing Nothing Nothing Nothing

data DescField : Type where
  PVersion     : FC -> PkgVersion -> DescField
  PVersionDep  : FC -> String -> DescField
  PAuthors     : FC -> String -> DescField
  PMaintainers : FC -> String -> DescField
  PLicense     : FC -> String -> DescField
  PBrief       : FC -> String -> DescField
  PReadMe      : FC -> String -> DescField
  PHomePage    : FC -> String -> DescField
  PSourceLoc   : FC -> String -> DescField
  PBugTracker  : FC -> String -> DescField
  PDepends     : List Depends -> DescField
  PModules     : List (FC, ModuleIdent) -> DescField
  PMainMod     : FC -> ModuleIdent -> DescField
  PExec        : String -> DescField
  PLibrary     : String -> DescField
  POpts        : FC -> String -> DescField
  PSourceDir   : FC -> String -> DescField
  PBuildDir    : FC -> String -> DescField
  POutputDir   : FC -> String -> DescField
  PPrebuild    : FC -> String -> DescField
  PPostbuild   : FC -> String -> DescField
  PPreinstall  : FC -> String -> DescField
  PPostinstall : FC -> String -> DescField
  PPreclean    : FC -> String -> DescField
  PPostclean   : FC -> String -> DescField

field : String -> Rule DescField
field fname
      = strField PAuthors "authors"
    <|> strField PMaintainers "maintainers"
    <|> strField PLicense "license"
    <|> strField PBrief "brief"
    <|> strField PReadMe "readme"
    <|> strField PHomePage "homepage"
    <|> strField PSourceLoc "sourceloc"
    <|> strField PBugTracker "bugtracker"
    <|> strField POpts "options"
    <|> strField POpts "opts"
    <|> strField PSourceDir "sourcedir"
    <|> strField PBuildDir "builddir"
    <|> strField POutputDir "outputdir"
    <|> strField PPrebuild "prebuild"
    <|> strField PPostbuild "postbuild"
    <|> strField PPreinstall "preinstall"
    <|> strField PPostinstall "postinstall"
    <|> strField PPreclean "preclean"
    <|> strField PPostclean "postclean"
    <|> do start <- location
           ignore $ exactProperty "version"
           equals
           vs <- sepBy1 dot' integerLit
           end <- location
           pure (PVersion (MkFC fname start end)
                          (MkPkgVersion (map fromInteger vs)))
    <|> do start <- location
           ignore $ exactProperty "version"
           equals
           v <- stringLit
           end <- location
           pure (PVersionDep (MkFC fname start end) v)
    <|> do ignore $ exactProperty "depends"
           equals
           ds <- sep depends
           pure (PDepends ds)
    <|> do ignore $ exactProperty "modules"
           equals
           ms <- sep (do start <- location
                         m <- moduleIdent
                         end <- location
                         pure (MkFC fname start end, m))
           pure (PModules ms)
    <|> do ignore $ exactProperty "main"
           equals
           start <- location
           m <- moduleIdent
           end <- location
           pure (PMainMod (MkFC fname start end) m)
    <|> do ignore $ exactProperty "executable"
           equals
           e <- (stringLit <|> packageName)
           pure (PExec e)
    <|> do ignore $ exactProperty "library"
           equals
           libName <- (stringLit <|> packageName)
           pure (PLibrary libName)
  where
    data Bound = LT PkgVersion Bool | GT PkgVersion Bool

    bound : Rule (List Bound)
    bound
        = do lte
             vs <- sepBy1 dot' integerLit
             pure [LT (MkPkgVersion (map fromInteger vs)) True]
      <|> do gte
             vs <- sepBy1 dot' integerLit
             pure [GT (MkPkgVersion (map fromInteger vs)) True]
      <|> do lt
             vs <- sepBy1 dot' integerLit
             pure [LT (MkPkgVersion (map fromInteger vs)) False]
      <|> do gt
             vs <- sepBy1 dot' integerLit
             pure [GT (MkPkgVersion (map fromInteger vs)) False]
      <|> do eqop
             vs <- sepBy1 dot' integerLit
             pure [LT (MkPkgVersion (map fromInteger vs)) True,
                   GT (MkPkgVersion (map fromInteger vs)) True]

    mkBound : List Bound -> PkgVersionBounds -> PackageEmptyRule PkgVersionBounds
    mkBound (LT b i :: bs) pkgbs
        = maybe (mkBound bs (record { upperBound = Just b,
                                      upperInclusive = i } pkgbs))
                (\_ => fail "Dependency already has an upper bound")
                pkgbs.upperBound
    mkBound (GT b i :: bs) pkgbs
        = maybe (mkBound bs (record { lowerBound = Just b,
                                      lowerInclusive = i } pkgbs))
                (\_ => fail "Dependency already has a lower bound")
                pkgbs.lowerBound
    mkBound [] pkgbs = pure pkgbs


    depends : Rule Depends
    depends
        = do name <- packageName
             bs <- sepBy andop bound
             pure (MkDepends name !(mkBound (concat bs) anyBounds))

    strField : (FC -> String -> DescField) -> String -> Rule DescField
    strField fieldConstructor fieldName
        = do start <- location
             ignore $ exactProperty fieldName
             equals
             str <- stringLit
             end <- location
             pure $ fieldConstructor (MkFC fname start end) str

parsePkgDesc : String -> Rule (String, List DescField)
parsePkgDesc fname
    = do ignore $ exactProperty "package"
         name <- packageName
         fields <- many (field fname)
         pure (name, fields)

data ParsedMods : Type where

data MainMod : Type where

addField : {auto c : Ref Ctxt Defs} ->
           {auto s : Ref Syn SyntaxInfo} ->
           {auto o : Ref ROpts REPLOpts} ->
           {auto p : Ref ParsedMods (List (FC, ModuleIdent))} ->
           {auto m : Ref MainMod (Maybe (FC, ModuleIdent))} ->
           DescField -> PkgDesc -> Core PkgDesc
addField (PVersion fc n)     pkg = pure $ record { version = n } pkg
addField (PVersionDep fc n)  pkg
    = do emitWarning (Deprecated "version numbers must now be of the form x.y.z")
         pure pkg
addField (PAuthors fc a)     pkg = pure $ record { authors = a } pkg
addField (PMaintainers fc a) pkg = pure $ record { maintainers = Just a } pkg
addField (PLicense fc a)     pkg = pure $ record { license = Just a } pkg
addField (PBrief fc a)       pkg = pure $ record { brief = Just a } pkg
addField (PReadMe fc a)      pkg = pure $ record { readme = Just a } pkg
addField (PHomePage fc a)    pkg = pure $ record { homepage = Just a } pkg
addField (PSourceLoc fc a)   pkg = pure $ record { sourceloc = Just a } pkg
addField (PBugTracker fc a)  pkg = pure $ record { bugtracker = Just a } pkg
addField (PDepends ds)       pkg = pure $ record { depends = ds } pkg
-- we can't resolve source files for modules without knowing the source directory,
-- so we save them for the second pass
addField (PModules ms)       pkg = do put ParsedMods ms
                                      pure pkg
addField (PMainMod loc n)    pkg = do put MainMod (Just (loc, n))
                                      pure pkg
addField (PExec e)           pkg = pure $ record { executable = Just e } pkg
addField (PLibrary e)        pkg = pure $ record { library = Just e } pkg
addField (POpts fc e)        pkg = pure $ record { options = Just (fc, e) } pkg
addField (PSourceDir fc a)   pkg = pure $ record { sourcedir = Just a } pkg
addField (PBuildDir fc a)    pkg = pure $ record { builddir = Just a } pkg
addField (POutputDir fc a)   pkg = pure $ record { outputdir = Just a } pkg
addField (PPrebuild fc e)    pkg = pure $ record { prebuild = Just (fc, e) } pkg
addField (PPostbuild fc e)   pkg = pure $ record { postbuild = Just (fc, e) } pkg
addField (PPreinstall fc e)  pkg = pure $ record { preinstall = Just (fc, e) } pkg
addField (PPostinstall fc e) pkg = pure $ record { postinstall = Just (fc, e) } pkg
addField (PPreclean fc e)    pkg = pure $ record { preclean = Just (fc, e) } pkg
addField (PPostclean fc e)   pkg = pure $ record { postclean = Just (fc, e) } pkg

addFields : {auto c : Ref Ctxt Defs} ->
            {auto s : Ref Syn SyntaxInfo} ->
            {auto o : Ref ROpts REPLOpts} ->
            List DescField -> PkgDesc -> Core PkgDesc
addFields xs desc = do p <- newRef ParsedMods []
                       m <- newRef MainMod Nothing
                       added <- go {p} {m} xs desc
                       setSourceDir (sourcedir added)
                       ms <- get ParsedMods
                       mmod <- get MainMod
                       pure $ record { modules = !(traverse toSource ms)
                                     , mainmod = !(traverseOpt toSource mmod)
                                     } added
  where
    toSource : (FC, ModuleIdent) -> Core (ModuleIdent, String)
    toSource (loc, ns) = pure (ns, !(nsToSource loc ns))
    go : {auto p : Ref ParsedMods (List (FC, ModuleIdent))} ->
         {auto m : Ref MainMod (Maybe (FC, ModuleIdent))} ->
         List DescField -> PkgDesc -> Core PkgDesc
    go [] dsc = pure dsc
    go (x :: xs) dsc = go xs !(addField x dsc)

runScript : Maybe (FC, String) -> Core ()
runScript Nothing = pure ()
runScript (Just (fc, s))
    = do res <- coreLift $ system s
         when (res /= 0) $
            throw (GenericMsg fc "Script failed")

addDeps : {auto c : Ref Ctxt Defs} ->
          PkgDesc -> Core ()
addDeps pkg
    = do defs <- get Ctxt
         traverse_ (\p => addPkgDir p.pkgname p.pkgbounds) (depends pkg)

processOptions : {auto c : Ref Ctxt Defs} ->
                 {auto o : Ref ROpts REPLOpts} ->
                 Maybe (FC, String) -> Core ()
processOptions Nothing = pure ()
processOptions (Just (fc, opts))
    = do let Right clopts = getOpts (words opts)
                | Left err => throw (GenericMsg fc err)
         ignore $ preOptions clopts

compileMain : {auto c : Ref Ctxt Defs} ->
              {auto s : Ref Syn SyntaxInfo} ->
              {auto o : Ref ROpts REPLOpts} ->
              Name -> String -> String -> Core ()
compileMain mainn mmod exec
    = do m <- newRef MD initMetadata
         u <- newRef UST initUState
         ignore $ loadMainFile mmod
         ignore $ compileExp (PRef replFC mainn) exec

compileLibHelper : {auto c : Ref Ctxt Defs} ->
                   {auto s : Ref Syn SyntaxInfo} ->
                   {auto o : Ref ROpts REPLOpts} ->
                   (libName : String) ->
                   (packageNamespaces : List ModuleIdent) ->
                   (changedModules : Maybe (List ModuleIdent)) ->
                   Core ()
compileLibHelper libName packageNamespaces changedModules
    = do m <- newRef MD initMetadata
         u <- newRef UST initUState
         let namespacesToLoad = fromMaybe packageNamespaces changedModules
         loadModules namespacesToLoad
         ignore $ compileLib libName changedModules

filterChangedModules : (changedModules : List ModuleIdent) ->
                          List BuildMod ->
                          List BuildMod
filterChangedModules changedModules allMods =
  let (changedMods, possiblyChangedMods) = partition (\mod => mod.buildNS `elem` changedModules) allMods
      usedByMods = filterUsedByMods changedModules possiblyChangedMods
  in changedMods ++ usedByMods

prepareCompilation : {auto c : Ref Ctxt Defs} ->
                     {auto s : Ref Syn SyntaxInfo} ->
                     {auto o : Ref ROpts REPLOpts} ->
                     PkgDesc ->
                     List CLOpt ->
                     Core (List Error, Maybe (List ModuleIdent))
prepareCompilation pkg opts =
  do
    defs <- get Ctxt

    processOptions (options pkg)
    addDeps pkg

    ignore $ preOptions opts

    runScript (prebuild pkg)

    let filesToBuild = maybe (map snd (modules pkg))
                        (\m => snd m :: map snd (modules pkg))
                        (mainmod pkg)
    allMods <- getAllBuildMods filesToBuild
    session <- getSession
    case session.changedModules of
      Just changedModules => do
        let modsToBuild = filterChangedModules (forget changedModules) allMods
        errs <- buildAll modsToBuild
        pure (errs, Just $ map buildNS modsToBuild)
      Nothing => do
        errs <- buildAll allMods
        pure (errs, Nothing)

build : {auto c : Ref Ctxt Defs} ->
        {auto s : Ref Syn SyntaxInfo} ->
        {auto o : Ref ROpts REPLOpts} ->
        PkgDesc ->
        List CLOpt ->
        Core (List Error)
build pkg opts
    = do ([], changedModules) <- prepareCompilation pkg opts
            | (errs, _) => pure errs

         case executable pkg of
              Nothing => pure ()
              Just exec =>
                   do let Just (mainNS, mainFile) = mainmod pkg
                               | Nothing => throw (GenericMsg emptyFC "No main module given")
                      let mainName = NS (miAsNamespace mainNS) (UN "main")
                      compileMain mainName mainFile exec
         case library pkg of
              Nothing => pure ()
              Just libName =>
                let packageNamespaces = map fst (modules pkg)
                in compileLibHelper libName packageNamespaces changedModules
         runScript (postbuild pkg)
         pure []

copyFile : String -> String -> IO (Either FileError ())
copyFile src dest
    = do Right buf <- readFromFile src
             | Left err => pure (Left err)
         writeToFile dest buf

installFrom : {auto c : Ref Ctxt Defs} ->
              String -> String -> ModuleIdent -> Core ()
installFrom builddir destdir ns
    = do let ttcfile = joinPath (reverse $ unsafeUnfoldModuleIdent ns)
         let ttcPath = builddir </> "ttc" </> ttcfile <.> "ttc"

         let modPath  = reverse $ fromMaybe [] $ tail' $ unsafeUnfoldModuleIdent ns
         let destNest = joinPath modPath
         let destPath = destdir </> destNest
         let destFile = destdir </> ttcfile <.> "ttc"

         Right _ <- coreLift $ mkdirAll $ destNest
             | Left err => throw $ InternalError $ unlines
                             [ "Can't make directories " ++ show modPath
                             , show err ]
         coreLift $ putStrLn $ "Installing " ++ ttcPath ++ " to " ++ destPath
         Right _ <- coreLift $ copyFile ttcPath destFile
             | Left err => throw $ InternalError $ unlines
                             [ "Can't copy file " ++ ttcPath ++ " to " ++ destPath
                             , show err ]
         pure ()

-- Install all the built modules in prefix/package/
-- We've already built and checked for success, so if any don't exist that's
-- an internal error.
install : {auto c : Ref Ctxt Defs} ->
          {auto o : Ref ROpts REPLOpts} ->
          PkgDesc ->
          List CLOpt ->
          Core ()
install pkg opts -- not used but might be in the future
    = do defs <- get Ctxt
         let build = build_dir (dirs (options defs))
         runScript (preinstall pkg)
         let toInstall = maybe (map fst (modules pkg))
                               (\ m => fst m :: map fst (modules pkg))
                               (mainmod pkg)
         Just srcdir <- coreLift currentDir
             | Nothing => throw (InternalError "Can't get current directory")
         -- Make the package installation directory
         let installPrefix = prefix_dir (dirs (options defs)) </>
                             "idris2-" ++ showVersion False version
         True <- coreLift $ changeDir installPrefix
             | False => throw $ InternalError $ "Can't change directory to " ++ installPrefix
         Right _ <- coreLift $ mkdirAll (installDir pkg)
             | Left err => throw $ InternalError $ unlines
                             [ "Can't make directory " ++ installDir pkg
                             , show err ]
         True <- coreLift $ changeDir (installDir pkg)
             | False => throw $ InternalError $ "Can't change directory to " ++ installDir pkg

         -- We're in that directory now, so copy the files from
         -- srcdir/build into it
         traverse_ (installFrom (srcdir </> build)
                                (installPrefix </> installDir pkg)) toInstall
         coreLift_ $ changeDir srcdir
         runScript (postinstall pkg)

-- Check package without compiling anything.
check : {auto c : Ref Ctxt Defs} ->
        {auto s : Ref Syn SyntaxInfo} ->
        {auto o : Ref ROpts REPLOpts} ->
        PkgDesc ->
        List CLOpt ->
        Core (List Error)
check pkg opts =
  do
    ([], changedModules) <- prepareCompilation pkg opts
      | (errs, _) => pure errs

    runScript (postbuild pkg)
    pure []

-- Data.These.bitraverse hand specialised for Core
bitraverseC : (a -> Core c) -> (b -> Core d) -> These a b -> Core (These c d)
bitraverseC f g (This a)   = [| This (f a) |]
bitraverseC f g (That b)   = [| That (g b) |]
bitraverseC f g (Both a b) = [| Both (f a) (g b) |]

-- Prelude.Monad.foldlM hand specialised for Core
foldlC : Foldable t => (a -> b -> Core a) -> a -> t b -> Core a
foldlC fm a0 = foldl (\ma,b => ma >>= flip fm b) (pure a0)

-- Data.StringTrie.foldWithKeysM hand specialised for Core
foldWithKeysC : Monoid b => (List String -> Core b) -> (List String -> a -> Core b) -> StringTrie a -> Core b
foldWithKeysC {a} {b} fk fv = go []
  where
  go : List String -> StringTrie a -> Core b
  go ks (MkStringTrie nd) =
    map bifold $ bitraverseC
                   (fv ks)
                   (\sm => foldlC
                             (\x, (k, vs) =>
                               do let ks' = ks++[k]
                                  y <- assert_total $ go ks' vs
                                  z <- fk ks'
                                  pure $ x <+> y <+> z)
                             neutral
                             (StringMap.toList sm))
                   nd

clean : {auto c : Ref Ctxt Defs} ->
        {auto o : Ref ROpts REPLOpts} ->
        PkgDesc ->
        List CLOpt ->
        Core ()
clean pkg opts -- `opts` is not used but might be in the future
    = do defs <- get Ctxt
         runScript (preclean pkg)
         let pkgmods = maybe
                         (map fst (modules pkg))
                         (\m => fst m :: map fst (modules pkg))
                         (mainmod pkg)
         let toClean : List (List String, String)
               = mapMaybe (\ mod => case unsafeUnfoldModuleIdent mod of
                                       [] => Nothing
                                       (x :: xs) => Just(xs, x))
                          pkgmods
         Just srcdir <- coreLift currentDir
              | Nothing => throw (InternalError "Can't get current directory")
         let d = dirs (options defs)
         let builddir = srcdir </> build_dir d </> "ttc"
         let outputdir = srcdir </> outputDirWithDefault d
         -- the usual pair syntax breaks with `No such variable a` here for some reason
         let pkgTrie : StringTrie (List String)
                     = foldl (\trie, ksv =>
                                let ks = Builtin.fst ksv
                                    v = Builtin.snd ksv
                                  in
                                insertWith (reverse ks) (maybe [v] (v::)) trie) empty toClean
         foldWithKeysC (deleteFolder builddir)
                       (\ks => map concat . traverse (deleteBin builddir ks))
                       pkgTrie
         deleteFolder builddir []
         maybe (pure ()) (\e => delete (outputdir </> e))
               (executable pkg)
         runScript (postclean pkg)
  where
    delete : String -> Core ()
    delete path = do Right () <- coreLift $ removeFile path
                       | Left err => pure ()
                     coreLift $ putStrLn $ "Removed: " ++ path

    deleteFolder : String -> List String -> Core ()
    deleteFolder builddir ns = delete $ builddir </> joinPath ns

    deleteBin : String -> List String -> String -> Core ()
    deleteBin builddir ns mod
        = do let ttFile = builddir </> joinPath ns </> mod
             delete $ ttFile <.> "ttc"
             delete $ ttFile <.> "ttm"

-- Just load the given module, if it exists, which will involve building
-- it if necessary
runRepl : {auto c : Ref Ctxt Defs} ->
          {auto s : Ref Syn SyntaxInfo} ->
          {auto o : Ref ROpts REPLOpts} ->
          Maybe String ->
          Core ()
runRepl fname = do
  u <- newRef UST initUState
  m <- newRef MD initMetadata
  the (Core ()) $
      case fname of
          Nothing => pure ()
          Just fn => do
            errs <- loadMainFile fn
            displayErrors errs
  repl {u} {s}

export
parsePkgFile : {auto c : Ref Ctxt Defs} ->
               {auto s : Ref Syn SyntaxInfo} ->
               {auto o : Ref ROpts REPLOpts} ->
               String -> Core PkgDesc
parsePkgFile file = do
  Right (pname, fs) <- coreLift $ parseFile file
                                          (do desc <- parsePkgDesc file
                                              eoi
                                              pure desc)
      | Left err => throw err
  addFields fs (initPkgDesc pname)

processPackage : {auto c : Ref Ctxt Defs} ->
                 {auto s : Ref Syn SyntaxInfo} ->
                 {auto o : Ref ROpts REPLOpts} ->
                 PkgCommand ->
                 String ->
                 List CLOpt ->
                 Core ()
processPackage cmd file opts
    =  if not (isSuffixOf ".ipkg" file)
         then do coreLift $ putStrLn ("Packages must have an '.ipkg' extension: " ++ show file ++ ".")
                 coreLift (exitWith (ExitFailure 1))
         else do Right (pname, fs) <- coreLift $ parseFile file
                                          (do desc <- parsePkgDesc file
                                              eoi
                                              pure desc)
                    | Left err => throw err
                 pkg <- addFields fs (initPkgDesc pname)
                 maybe (pure ()) setBuildDir (builddir pkg)
                 setOutputDir (outputdir pkg)
                 case cmd of
                      Build => do [] <- build pkg opts
                                     | errs => coreLift (exitWith (ExitFailure 1))
                                  pure ()
                      Install => do [] <- build pkg opts
                                       | errs => coreLift (exitWith (ExitFailure 1))
                                    install pkg opts
                      Typecheck => do
                        [] <- check pkg opts
                          | errs => coreLift (exitWith (ExitFailure 1))
                        pure ()
                      Clean => clean pkg opts
                      REPL => do
                        [] <- build pkg opts
                           | errs => coreLift (exitWith (ExitFailure 1))
                        runRepl (map snd $ mainmod pkg)

record POptsFilterResult where
  constructor MkPFR
  pkgDetails : Maybe (PkgCommand, String)
  oopts : List CLOpt
  hasError : Bool

errorMsg : String
errorMsg = unlines
  [ "Not all command line options can be used to override package options.\n"
  , "Overridable options are:"
  , "    --quiet"
  , "    --verbose"
  , "    --console-width <console width>"
  , "    --color, --colour"
  , "    --no-color, --no-colour"
  , "    --timing"
  , "    --log <log level>"
  , "    --dumpcases <file>"
  , "    --dumplifted <file>"
  , "    --dumpvmcode <file>"
  , "    --debug-elab-check"
  , "    --codegen <cg>"
  , "    --directive <directive>"
  , "    --build-dir <dir>"
  , "    --output-dir <dir>"
  , "    --changed-modules <namespaces>"
  ]


filterPackageOpts : POptsFilterResult -> List CLOpt -> Core (POptsFilterResult)
filterPackageOpts acc Nil                  = pure acc
filterPackageOpts acc (Package cmd f ::xs) = filterPackageOpts (record {pkgDetails = Just (cmd, f)}  acc) xs

filterPackageOpts acc (Quiet         ::xs) = filterPackageOpts (record {oopts $= (Quiet::)}          acc) xs
filterPackageOpts acc (Verbose       ::xs) = filterPackageOpts (record {oopts $= (Verbose::)}        acc) xs
filterPackageOpts acc (ConsoleWidth n::xs) = filterPackageOpts (record {oopts $= (ConsoleWidth n::)} acc) xs
filterPackageOpts acc (Color b       ::xs) = filterPackageOpts (record {oopts $= (Color b::)}        acc) xs
filterPackageOpts acc (Timing        ::xs) = filterPackageOpts (record {oopts $= (Timing::)}         acc) xs
filterPackageOpts acc (Logging l     ::xs) = filterPackageOpts (record {oopts $= (Logging l::)}      acc) xs
filterPackageOpts acc (DumpCases f   ::xs) = filterPackageOpts (record {oopts $= (DumpCases f::)}    acc) xs
filterPackageOpts acc (DumpLifted f  ::xs) = filterPackageOpts (record {oopts $= (DumpLifted f::)}   acc) xs
filterPackageOpts acc (DumpVMCode f  ::xs) = filterPackageOpts (record {oopts $= (DumpVMCode f::)}   acc) xs
filterPackageOpts acc (DebugElabCheck::xs) = filterPackageOpts (record {oopts $= (DebugElabCheck::)} acc) xs
filterPackageOpts acc (SetCG f       ::xs) = filterPackageOpts (record {oopts $= (SetCG f::)}        acc) xs
filterPackageOpts acc (Directive f   ::xs) = filterPackageOpts (record {oopts $= (Directive f::)}    acc) xs
filterPackageOpts acc (BuildDir f    ::xs) = filterPackageOpts (record {oopts $= (BuildDir f::)}     acc) xs
filterPackageOpts acc (OutputDir f   ::xs) = filterPackageOpts (record {oopts $= (OutputDir f::)}    acc) xs
filterPackageOpts acc (ChangedModules ns::xs) = filterPackageOpts (record {oopts $= (ChangedModules ns::)} acc) xs

filterPackageOpts acc (x::xs) = pure (record {hasError = True} acc)

-- If there's a package option, it must be the only option, so reject if
-- it's not
export
processPackageOpts : {auto c : Ref Ctxt Defs} ->
                     {auto s : Ref Syn SyntaxInfo} ->
                     {auto o : Ref ROpts REPLOpts} ->
                     List CLOpt ->
                     Core Bool
processPackageOpts Nil = pure False
processPackageOpts [Package cmd f] = do processPackage cmd f Nil
                                        pure True

processPackageOpts opts
    = do (MkPFR (Just (cmd, f)) opts' err) <- filterPackageOpts (MkPFR Nothing Nil False) opts
             | (MkPFR Nothing opts _) => pure False

         if err
           then do coreLift (putStrLn errorMsg)
                   pure True
           else do processPackage cmd f opts'
                   pure True


-- find an ipkg file in one of the parent directories
-- If it exists, read it, set the current directory to the root of the source
-- tree, and set the relevant command line options before proceeding
export
findIpkg : {auto c : Ref Ctxt Defs} ->
           {auto r : Ref ROpts REPLOpts} ->
           {auto s : Ref Syn SyntaxInfo} ->
           Maybe String -> Core (Maybe String)
findIpkg fname
   = do Just (dir, ipkgn, up) <- coreLift findIpkgFile
             | Nothing => pure fname
        coreLift_ $ changeDir dir
        setWorkingDir dir
        Right (pname, fs) <- coreLift $ parseFile ipkgn
                                 (do desc <- parsePkgDesc ipkgn
                                     eoi
                                     pure desc)
            | Left err => throw err
        pkg <- addFields fs (initPkgDesc pname)
        maybe (pure ()) setBuildDir (builddir pkg)
        setOutputDir (outputdir pkg)
        processOptions (options pkg)
        loadDependencies (depends pkg)
        case fname of
             Nothing => pure Nothing
             Just srcpath  =>
                do let src' = up </> srcpath
                   setSource src'
                   opts <- get ROpts
                   put ROpts (record { mainfile = Just src' } opts)
                   pure (Just src')
  where
    dropHead : String -> List String -> List String
    dropHead str [] = []
    dropHead str (x :: xs)
        = if x == str then xs else x :: xs

    loadDependencies : List Depends -> Core ()
    loadDependencies = traverse_ (\p => addPkgDir p.pkgname p.pkgbounds)
