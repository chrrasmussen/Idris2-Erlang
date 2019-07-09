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
    exportDirective ++
    "\n"

mainInit : String
mainInit = "persistent_term:put('$idris_rts_args', Args), io:setopts([{encoding, unicode}])"

compileToErlangExecutable : Opts -> Ref Ctxt Defs -> ClosedTerm -> (outfile : String) -> Core ()
compileToErlangExecutable (MkOpts moduleName) c tm outfile = do
  ds <- getDirectives Erlang
  (names, tags) <- findUsedNames tm
  defs <- get Ctxt
  compdefs <- traverse (genErlang defs) names
  let code = concat compdefs
  main <- genExp 0 [] !(CompileExpr.compileExp tags tm)
  support <- readDataFile ("erlang" ++ dirSep ++ "support.erl")
  let scm = header moduleName IncludeMain ++ unlines ds ++ support ++ code ++ "main(Args) -> " ++ mainInit ++ ", " ++ main ++ ".\n"
  Right () <- coreLift $ writeFile outfile scm
    | Left err => throw (FileErr outfile err)
  pure ()

compileToErlangLibrary : Opts -> Ref Ctxt Defs -> ClosedTerm -> (libEntrypoint : String) -> (outfile : String) -> Core ()
compileToErlangLibrary (MkOpts moduleName) c tm libEntrypoint outfile = do
  ds <- getDirectives Erlang
  (names, tags) <- findUsedNames tm
  defs <- get Ctxt
  let exportsFuncName = NS (currentNS defs) (UN libEntrypoint)
  (exportDirectives, exportFuncs) <- genErlangExports defs exportsFuncName
  compdefs <- traverse (genErlang defs) names
  let code = concat compdefs
  support <- readDataFile ("erlang" ++ dirSep ++ "support.erl")
  let scm = header moduleName ExcludeMain ++ exportDirectives ++ unlines ds ++ support ++ code ++ exportFuncs ++ "\n"
  Right () <- coreLift $ writeFile outfile scm
    | Left err => throw (FileErr outfile err)
  pure ()

compileToErlang : Opts -> Ref Ctxt Defs -> ClosedTerm -> (libEntrypoint : Maybe String) -> (outfile : String) -> Core ()
compileToErlang opts c tm libEntrypoint outfile =
  case libEntrypoint of
    Nothing => compileToErlangExecutable opts c tm outfile
    Just entrypoint => compileToErlangLibrary opts c tm entrypoint outfile

erlangModuleName : (outfile : String) -> Maybe (String, String)
erlangModuleName outfile = do
  let outdir = maybe "." id (dirname outfile)
  let modName = rootname !(basename outfile)
  pure (outdir, modName)

-- TODO: Add error handling
generateErl : Ref Ctxt Defs -> ClosedTerm -> (libEntrypoint : Maybe String) -> (outdir : String) -> (modName : String) -> Core ()
generateErl c tm libEntrypoint outdir modName = do
  let outfile = outdir ++ dirSep ++ modName ++ ".erl"
  let opts = MkOpts modName
  compileToErlang opts c tm libEntrypoint outfile
  pure ()

-- TODO: Add error handling
-- TODO: Add options to `erlc`
generateBeam : Ref Ctxt Defs -> ClosedTerm -> (libEntrypoint : Maybe String) -> (outdir : String) -> (modName : String) -> Core ()
generateBeam c tm libEntrypoint outdir modName = do
  erlc <- coreLift findErlangCompiler
  tmpDir <- coreLift $ tmpName
  coreLift $ system ("mkdir -p " ++ quoted tmpDir)
  generateErl c tm libEntrypoint tmpDir modName
  let generatedFile = tmpDir ++ dirSep ++ modName ++ ".erl"
  coreLift $ system (erlc ++ " -W0 -o " ++ quoted outdir ++ " " ++ quoted generatedFile)
  pure ()

-- TODO: generateEscript : Ref Ctxt Defs -> ClosedTerm -> (outfile : String) -> Core ()
--coreLift $ chmod outfile 0o755

-- TODO: Validate `outfile`
compileExpr : Ref Ctxt Defs -> ClosedTerm -> (libEntrypoint : Maybe String) -> (outfile : String) -> Core (Maybe String)
compileExpr c tm libEntrypoint outfile = do
  let Just (outdir, modName) = erlangModuleName outfile
    | throw (InternalError ("Invalid module name: " ++ outfile))
  case extension outfile of
    Just "erl" => generateErl c tm libEntrypoint outdir modName
    Just "beam" => generateBeam c tm libEntrypoint outdir modName
    _ => throw (InternalError ("Unknown file type: " ++ outfile))
  pure (Just "") -- TODO: String value is not used. Replace with `Bool` in `Compiler.Common.Codegen`?

-- TODO: Add error handling
executeExpr : Ref Ctxt Defs -> ClosedTerm -> Core ()
executeExpr c tm = do
  escript <- coreLift $ findEscript
  tmpDir <- coreLift $ tmpName
  coreLift $ system ("mkdir -p " ++ quoted tmpDir)
  let modName = "main"
  generateBeam c tm Nothing tmpDir modName
  let compiledFile = tmpDir ++ dirSep ++ modName ++ ".beam"
  coreLift $ system (escript ++ " " ++ quoted compiledFile)
  pure ()

export
codegenErlang : Codegen
codegenErlang = MkCG compileExpr executeExpr
