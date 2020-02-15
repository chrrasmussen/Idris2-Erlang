module Compiler.Erlang.Erlang

import Compiler.Common
import Compiler.CompileExpr
import Compiler.Inline
import Compiler.Erlang.Opts
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


findErlangCompiler : IO String
findErlangCompiler = pure "/usr/bin/env erlc"

findEscript : IO String
findEscript = pure "/usr/bin/env escript"

data ExportMainFunc = IncludeMain | ExcludeMain

header : (modName : String) -> ExportMainFunc -> String
header modName exportMainFunc = do
  let exportDirective =
    case exportMainFunc of
      IncludeMain => "-export([main/1]).\n"
      ExcludeMain => ""
  "-module('" ++ modName ++ "').\n" ++
    -- "-mode(compile).\n" ++ -- TODO: Make mode into a flag
    "-compile([nowarn_unused_function, nowarn_unused_vars]).\n" ++
    "-compile(export_all).\n" ++
    exportDirective ++
    "\n"

mainInit : String
mainInit = "persistent_term:put('$idris_rts_args', Args), ets:new('$idris_rts_ets', [public, named_table]), io:setopts([{encoding, unicode}])"

idrisRtsModuleName : String
idrisRtsModuleName = "Idris.RTS-Internal"

findIdrisRtsPath : {auto c : Ref Ctxt Defs} -> Core String
findIdrisRtsPath = do
  d <- getDirs
  let idrisRtsPath = "erlang" ++ dirSep ++ idrisRtsModuleName ++ ".erl"
  let fs = map (\p => p ++ dirSep ++ idrisRtsPath) (data_dirs d)
  Just f <- firstAvailable fs
    | Nothing => throw (InternalError ("Can't find data file " ++ idrisRtsPath))
  pure f

copyIdrisRtsToDir : {auto c : Ref Ctxt Defs} -> String -> Core ()
copyIdrisRtsToDir outDir = do
  f <- findIdrisRtsPath
  Right contents <- coreLift $ readFile f
    | Left err => throw (FileErr f err)
  let outFile = outDir ++ dirSep ++ idrisRtsModuleName ++ ".erl"
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

genExports : Defs -> Namespace -> Maybe Name -> Core (String, String)
genExports _ _ Nothing = pure ("", "")
genExports defs inNs (Just n) = genErlangExports defs (Just inNs) n

parseExport : (Namespace, String) -> Maybe Name
parseExport (ns, directive) = map (NS ns . UN) $ parseExport' (words directive)
  where
    parseExport' : List String -> Maybe String
    parseExport' ("export" :: exportsFuncStr :: _) = Just exportsFuncStr
    parseExport' _ = Nothing

getExportInNamespace : List (Namespace, String) -> Namespace -> Maybe Name
getExportInNamespace ds targetNs = do
  let onlyRelevantDs = filter ((== targetNs) . fst) ds
  head' (mapMaybe parseExport onlyRelevantDs)

generateErlangModule : Defs -> List (Namespace, String) -> String -> (Namespace, List String) -> Core ()
generateErlangModule defs ds targetDir (ns, funcDecls) = do
  let exportsFuncName = getExportInNamespace ds ns
  (exportDirectives, exportFuncs) <- genExports defs ns exportsFuncName
  let modName = moduleNameFromNS ns
  let scm = header modName ExcludeMain ++ exportDirectives ++ concat funcDecls ++ exportFuncs ++ "\n"
  let outfile = targetDir ++ dirSep ++ modName ++ ".erl"
  Right () <- coreLift $ writeFile outfile scm
    | Left err => throw (FileErr outfile err)
  pure ()

namespace MainEntrypoint
  -- TODO: Add error handling
  generateErl : {auto c : Ref Ctxt Defs} -> ClosedTerm -> (outdir : String) -> (modName : String) -> Core (List String)
  generateErl tm outdir modName = do
    let outfile = outdir ++ dirSep ++ modName ++ ".erl"
    (names, tags) <- findUsedNames tm
    defs <- get Ctxt
    compdefs <- traverse (genErlang defs) names
    let validCompdefs = mapMaybe id compdefs
    let modules = defsPerModule validCompdefs
    ds <- getDirectives Erlang
    traverse_ (generateErlangModule defs ds outdir) modules
    main <- genExp Nothing 0 [] !(CompileExpr.compileExp tags tm)
    let scm = header modName IncludeMain ++ "main(Args) -> " ++ mainInit ++ ", " ++ main ++ ".\n"
    Right () <- coreLift $ writeFile outfile scm
      | Left err => throw (FileErr outfile err)
    copyIdrisRtsToDir outdir
    pure (modName :: idrisRtsModuleName :: map (moduleNameFromNS . fst) modules)

  -- TODO: Add error handling
  -- TODO: Add options to `erlc`
  generateBeam : {auto c : Ref Ctxt Defs} -> ClosedTerm -> (outdir : String) -> (modName : String) -> Core ()
  generateBeam tm outdir modName = do
    erlc <- coreLift findErlangCompiler
    tmpDir <- coreLift $ tmpName
    coreLift $ system ("mkdir -p " ++ quoted tmpDir)
    generatedModules <- generateErl tm tmpDir modName
    let generatedFiles = map (\n => tmpDir ++ dirSep ++ n ++ ".erl") generatedModules
    coreLift $ system (erlc ++ " -W0 -o " ++ quoted outdir ++ " " ++ showSep " " (map quoted generatedFiles))
    pure ()

  erlangModuleName : (outfile : String) -> Maybe (String, String)
  erlangModuleName outfile = do
    let outdir = maybe "." id (dirname outfile)
    modName <- basename outfile
    pure (outdir, modName)

  export
  generate : {auto c : Ref Ctxt Defs} -> Opts -> ClosedTerm -> (outfile : String) -> Core ()
  generate opts tm outfile = do
    let Just (outdir, modName) = erlangModuleName outfile
      | throw (InternalError ("Invalid module name: " ++ outfile))
    coreLift $ system ("mkdir -p " ++ quoted outdir)
    case outputFormat opts of
      Erlang => do
        generateErl tm outdir modName
        pure ()
      Beam => do
        generateBeam tm outdir modName
        pure ()


namespace Library
  isExported : Visibility -> Bool
  isExported Public = True
  isExported Export = True
  isExported Private = False

  exportedName : (Name, Maybe GlobalDef) -> Maybe Name
  exportedName (n, Just gd) = if isExported (visibility gd)
    then Just n
    else Nothing
  exportedName _ = Nothing

  -- Find all the exported names in namespace, and compile them to CExp form (and update that in the Defs)
  findExportedNames : {auto c : Ref Ctxt Defs} -> (Name -> Bool) -> List Name -> Core (List Name, NameTags)
  findExportedNames shouldCompileName extraNames = do
      defs <- get Ctxt
      let cns = filter shouldCompileName $ filter skipUnusedNames $ keys (getResolvedAs (gamma defs))
      cnsWithGlobalDef <- traverse (\n => pure (n, !(lookupCtxtExact n (gamma defs)))) cns
      let visibleCns = mapMaybe exportedName cnsWithGlobalDef
      natHackNames' <- traverse toResolvedNames natHackNames
      allNs <- getAllDesc (natHackNames' ++ visibleCns ++ extraNames) empty defs
      allCns' <- traverse toFullNames (keys allNs)
      let allCns = nub (filter skipUnusedNames allCns')
      -- Initialise the type constructor list with explicit names for
      -- the primitives (this is how we look up the tags)
      -- Use '1' for '->' constructor
      let tyconInit = insert (UN "->") 1 $
        insert (UN "Type") 2 $
        primTags 3 empty [IntType, IntegerType, StringType, CharType, DoubleType, WorldType]
      tycontags <- mkNameTags defs tyconInit 100 allCns
      traverse_ (compileDef tycontags) allCns
      traverse_ inlineDef allCns
      pure (allCns, tycontags)
    where
      primTags : Int -> NameTags -> List Constant -> NameTags
      primTags t tags [] = tags
      primTags t tags (c :: cs) = primTags (t + 1) (insert (UN (show c)) t tags) cs
      skipUnusedNames : Name -> Bool
      skipUnusedNames (NS _ n) = skipUnusedNames n
      skipUnusedNames (MN _ _) = False
      skipUnusedNames (Resolved _) = False
      skipUnusedNames _ = True

  shouldCompileName : Maybe (List (List String)) -> Name -> Bool
  shouldCompileName Nothing _ = True
  shouldCompileName (Just namespacesToCompile) n = getNamespace n `elem` namespacesToCompile

  -- TODO: Add error handling
  generateErl : {auto c : Ref Ctxt Defs} -> Opts -> (outdir : String) -> Core (List String)
  generateErl opts outdir = do
    ds <- getDirectives Erlang
    let namespacesToCompile = changedNamespaces opts
    let exportFuncs = maybe (mapMaybe parseExport ds) (mapMaybe (getExportInNamespace ds)) namespacesToCompile
    let extraNames = NS ["PrimIO"] (UN "unsafePerformIO") :: exportFuncs
    (names, tags) <- findExportedNames (shouldCompileName namespacesToCompile) extraNames
    defs <- get Ctxt
    compdefs <- traverse (genErlang defs) (filter (shouldCompileName namespacesToCompile) names)
    let validCompdefs = mapMaybe id compdefs
    let modules = defsPerModule validCompdefs
    traverse_ (generateErlangModule defs ds outdir) modules
    copyIdrisRtsToDir outdir
    pure (idrisRtsModuleName :: map (moduleNameFromNS . fst) modules)

  -- TODO: Add error handling
  -- TODO: Add options to `erlc`
  generateBeam : {auto c : Ref Ctxt Defs} -> Opts -> (outdir : String) -> Core ()
  generateBeam opts outdir = do
    erlc <- coreLift findErlangCompiler
    tmpDir <- coreLift $ tmpName
    coreLift $ system ("mkdir -p " ++ quoted tmpDir)
    generatedModules <- generateErl opts tmpDir
    let generatedFiles = map (\n => tmpDir ++ dirSep ++ n ++ ".erl") generatedModules
    coreLift $ system (erlc ++ " -W0 -o " ++ quoted outdir ++ " " ++ showSep " " (map quoted generatedFiles))
    pure ()
  
  export
  generate : {auto c : Ref Ctxt Defs} -> Opts -> (outdir : String) -> Core ()
  generate opts outdir = do
    coreLift $ system ("mkdir -p " ++ quoted outdir)
    case outputFormat opts of
      Erlang => do
        generateErl opts outdir
        pure ()
      Beam => do
        generateBeam opts outdir
        pure ()

-- TODO: Validate `outfile`
compileExpr : Ref Ctxt Defs -> ClosedTerm -> (outfile : String) -> Core (Maybe String)
compileExpr c tm outfile = do
  session <- getSession
  let opts = parseOpts (codegenOptions session)
  if generateAsLibrary opts
    then Library.generate opts outfile
    else MainEntrypoint.generate opts tm outfile
  pure (Just outfile)

-- TODO: Add error handling
executeExpr : Ref Ctxt Defs -> ClosedTerm -> Core ()
executeExpr c tm = do
  tmpDir <- coreLift $ tmpName
  let modName = "main"
  let outfile = tmpDir ++ dirSep ++ modName
  let compiledFile = outfile ++ ".beam"
  MainEntrypoint.generate (record { outputFormat = Beam, generateAsLibrary = False } defaultOpts) tm outfile
  escript <- coreLift $ findEscript
  cwd <- coreLift $ currentDir
  coreLift $ changeDir tmpDir
  coreLift $ system (escript ++ " " ++ quoted compiledFile)
  coreLift $ changeDir cwd
  pure ()

export
codegenErlang : Codegen
codegenErlang = MkCG compileExpr executeExpr
