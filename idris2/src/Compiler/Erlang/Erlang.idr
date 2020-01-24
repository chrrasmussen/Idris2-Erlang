module Compiler.Erlang.Erlang

import Compiler.Common
import Compiler.CompileExpr
import Compiler.Inline
import Compiler.Erlang.Common
import Compiler.Erlang.FileUtils

import Core.Context
import Core.Directory
import Core.Name
import Core.Options
import Core.TT

import Data.NameMap
import System
import System.Info

%default covering

record Opts where
  constructor MkOpts
  moduleName : String


findErlangCompiler : IO String
findErlangCompiler = pure "/usr/bin/env erlc"

findEscript : IO String
findEscript = pure "/usr/bin/env escript"

data ExportMainFunc = IncludeMain | ExcludeMain

header : String -> ExportMainFunc -> String
header moduleName exportMainFunc = do
  let exportDirective =
    case exportMainFunc of
      IncludeMain => "-export([main/1]).\n"
      ExcludeMain => ""
  "-module('" ++ moduleName ++ "').\n" ++
    -- "-mode(compile).\n" ++ -- TODO: Make mode into a flag
    "-compile([nowarn_unused_function, nowarn_unused_vars]).\n" ++
    "-compile(export_all).\n" ++
    exportDirective ++
    "\n"

mainInit : String
mainInit = "persistent_term:put('$idris_rts_args', Args), ets:new('$idris_rts_ets', [public, named_table]), io:setopts([{encoding, unicode}])"

idrisRtsFilename : String
idrisRtsFilename = "Idris.RTS-Internal.erl"

findIdrisRtsPath : {auto c : Ref Ctxt Defs} -> Core String
findIdrisRtsPath = do
  d <- getDirs
  let idrisRtsPath = "erlang" ++ dirSep ++ idrisRtsFilename
  let fs = map (\p => p ++ dirSep ++ idrisRtsPath) (data_dirs d)
  Just f <- firstAvailable fs
    | Nothing => throw (InternalError ("Can't find data file " ++ idrisRtsPath))
  pure f

copyIdrisRtsToDir : {auto c : Ref Ctxt Defs} -> String -> Core ()
copyIdrisRtsToDir outDir = do
  f <- findIdrisRtsPath
  Right contents <- coreLift $ readFile f
    | Left err => throw (FileErr f err)
  let outFile = outDir ++ dirSep ++ idrisRtsFilename
  Right () <- coreLift $ writeFile outFile contents
    | Left err => throw (FileErr outFile err)
  pure ()

groupBy : (a -> a -> Bool) -> List a -> List (List a)
groupBy _ [] = []
groupBy p list@(x :: xs) =
  let (matches, remaining) = partition (p x) list
  in matches :: groupBy p (assert_smaller list remaining)

defsPerModule : List (Namespace, String) -> List (Namespace, List String)
defsPerModule defs =
  let modules = groupBy (\(ns1, _), (ns2, _) => ns1 == ns2) defs
  in mapMaybe extractModuleName modules
    where
      extractModuleName : List (Namespace, String) -> Maybe (Namespace, List String)
      extractModuleName defsInModule =
        case map fst (head' defsInModule) of
          Nothing => Nothing
          Just ns => Just (ns, map snd defsInModule)

genExports : Defs -> Maybe Name -> Core (String, String)
genExports _ Nothing = pure ("", "")
genExports defs (Just n) = genErlangExports defs n

parseExport : String -> Maybe String
parseExport directive = parseExport' (words directive)
  where
    parseExport' : List String -> Maybe String
    parseExport' ("export" :: exportsFuncStr :: _) = Just exportsFuncStr
    parseExport' _ = Nothing

getExportsDirective : List (Namespace, String) -> Namespace -> Maybe Name
getExportsDirective ds targetNs = do
  let onlyRelevantDs = filter ((== targetNs) . fst) ds
  exportsFuncName <- head' (mapMaybe (parseExport . snd) onlyRelevantDs)
  pure (NS targetNs (UN exportsFuncName))

generateErlangModule : Defs -> List (Namespace, String) -> String -> (Namespace, List String) -> Core ()
generateErlangModule defs ds targetDir (ns, funcDecls) = do
  let exportsFuncName = getExportsDirective ds ns
  (exportDirectives, exportFuncs) <- genExports defs exportsFuncName
  let moduleName = moduleNameFromNS ns
  let scm = header moduleName ExcludeMain ++ exportDirectives ++ concat funcDecls ++ exportFuncs ++ "\n"
  let outfile = targetDir ++ dirSep ++ moduleName ++ ".erl"
  Right () <- coreLift $ writeFile outfile scm
    | Left err => throw (FileErr outfile err)
  pure ()

compileToErlangExecutable : Opts -> Ref Ctxt Defs -> ClosedTerm -> (outfile : String) -> Core (List String)
compileToErlangExecutable (MkOpts moduleName) c tm outdir = do
  let outfile = outdir ++ dirSep ++ moduleName ++ ".erl"
  (names, tags) <- findUsedNames tm
  defs <- get Ctxt
  compdefs <- traverse (genErlang defs) names
  let validCompdefs = mapMaybe id compdefs
  let modules = defsPerModule validCompdefs
  ds <- getDirectives Erlang
  traverse_ (generateErlangModule defs ds outdir) modules
  main <- genExp Nothing 0 [] !(CompileExpr.compileExp tags tm)
  let scm = header moduleName IncludeMain ++ "main(Args) -> " ++ mainInit ++ ", " ++ main ++ ".\n"
  Right () <- coreLift $ writeFile outfile scm
    | Left err => throw (FileErr outfile err)
  pure (moduleName :: map (moduleNameFromNS . fst) modules)

compileToErlangLibrary : Opts -> Ref Ctxt Defs -> ClosedTerm -> (libEntrypoint : String) -> (outfile : String) -> Core (List String)
compileToErlangLibrary (MkOpts moduleName) c tm libEntrypoint outdir = do
  let outfile = outdir ++ dirSep ++ moduleName ++ ".erl"
  (names, tags) <- findAllNames tm
  defs <- get Ctxt
  compdefs <- traverse (genErlang defs) names
  let validCompdefs = mapMaybe id compdefs
  let modules = defsPerModule validCompdefs
  ds <- getDirectives Erlang
  traverse_ (generateErlangModule defs ds outdir) modules
  pure (map (moduleNameFromNS . fst) modules)

compileToErlang : Opts -> Ref Ctxt Defs -> ClosedTerm -> (libEntrypoint : Maybe String) -> (outfile : String) -> Core (List String)
compileToErlang opts c tm libEntrypoint outdir =
  case libEntrypoint of
    Nothing => compileToErlangExecutable opts c tm outdir
    Just entrypoint => compileToErlangLibrary opts c tm entrypoint outdir

erlangModuleName : (outfile : String) -> Maybe (String, String)
erlangModuleName outfile = do
  let outdir = maybe "." id (dirname outfile)
  let modName = rootname !(basename outfile)
  pure (outdir, modName)

-- TODO: Add error handling
generateErl : Ref Ctxt Defs -> ClosedTerm -> (libEntrypoint : Maybe String) -> (outdir : String) -> (modName : String) -> Core (List String)
generateErl c tm libEntrypoint outdir modName = do
  let opts = MkOpts modName
  generatedModules <- compileToErlang opts c tm libEntrypoint outdir
  copyIdrisRtsToDir outdir
  pure generatedModules

-- TODO: Add error handling
-- TODO: Add options to `erlc`
generateBeam : Ref Ctxt Defs -> ClosedTerm -> (libEntrypoint : Maybe String) -> (outdir : String) -> (modName : String) -> Core ()
generateBeam c tm libEntrypoint outdir modName = do
  erlc <- coreLift findErlangCompiler
  tmpDir <- coreLift $ tmpName
  coreLift $ system ("mkdir -p " ++ quoted tmpDir)
  generatedModules <- generateErl c tm libEntrypoint tmpDir modName
  let generatedFiles = map (\n => tmpDir ++ dirSep ++ n ++ ".erl") generatedModules
  idrisRtsPath <- findIdrisRtsPath
  coreLift $ system (erlc ++ " -W0 -o " ++ quoted outdir ++ " " ++ showSep " " (map quoted (idrisRtsPath :: generatedFiles)))
  pure ()

-- TODO: generateEscript : Ref Ctxt Defs -> ClosedTerm -> (outfile : String) -> Core ()
--coreLift $ chmod outfile 0o755

parseLibrary : String -> Maybe String
parseLibrary args = parseLibrary' (words args)
  where
    parseLibrary' : List String -> Maybe String
    parseLibrary' ("--library" :: libEntrypoint :: _) = Just libEntrypoint
    parseLibrary' _ = Nothing

-- TODO: Validate `outfile`
compileExpr : Ref Ctxt Defs -> ClosedTerm -> (outfile : String) -> Core (Maybe String)
compileExpr c tm outfile = do
  let Just (outdir, modName) = erlangModuleName outfile
    | throw (InternalError ("Invalid module name: " ++ outfile))
  session <- getSession
  let libEntrypoint = parseLibrary (codegenOptions session)
  case extension outfile of
    Just "erl" => do
      generateErl c tm libEntrypoint outdir modName
      pure ()
    Just "beam" => do
      generateBeam c tm libEntrypoint outdir modName
      pure ()
    _ =>
      throw (InternalError ("Unknown file type: " ++ outfile))
  pure (Just outfile)

-- TODO: Add error handling
executeExpr : Ref Ctxt Defs -> ClosedTerm -> Core ()
executeExpr c tm = do
  escript <- coreLift $ findEscript
  tmpDir <- coreLift $ tmpName
  coreLift $ system ("mkdir -p " ++ quoted tmpDir)
  let modName = "main"
  generateBeam c tm Nothing tmpDir modName
  let compiledFile = tmpDir ++ dirSep ++ modName ++ ".beam"
  cwd <- coreLift $ currentDir
  coreLift $ changeDir tmpDir
  coreLift $ system (escript ++ " " ++ quoted compiledFile)
  coreLift $ changeDir cwd
  pure ()

export
codegenErlang : Codegen
codegenErlang = MkCG compileExpr executeExpr
