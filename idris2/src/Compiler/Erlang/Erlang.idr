module Compiler.Erlang.Erlang

import Compiler.Common
import Compiler.CompileExpr
import Compiler.Inline
import Compiler.Erlang.Opts
import Compiler.Erlang.CExp
import Compiler.Erlang.FileUtils
import Compiler.Erlang.Name
import Compiler.Erlang.ErlExpr
import Compiler.Erlang.RtsSupport

import Core.Context
import Core.Directory
import Core.Name
import Core.Options
import Core.TT

import Data.NameMap
import System
import System.Info

%default covering

findErlangExecutable : IO String
findErlangExecutable = pure "erl"

findErlangCompiler : IO String
findErlangCompiler = pure "erlc"

findEscript : IO String
findEscript = pure "escript"

-- TODO: Remove
data ExportMainFunc = IncludeMain | ExcludeMain

-- TODO: Remove
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

escapeCmd : List String -> String
escapeCmd components = unwords (map escapeComponent components)
  where
    escapeChar : Char -> String
    escapeChar '\'' = "'\"'\"'"
    escapeChar c    = cast c
    escapeComponent : String -> String
    escapeComponent component = "'" ++ concat (map escapeChar (unpack component)) ++ "'"

evalErlangCmd : (erl : String) -> (code : String) -> String
evalErlangCmd erl code =
  escapeCmd [erl, "-noshell", "-boot", "no_dot_erlang", "-eval", code]

compileAbstrCmd : (erl : String) -> (srcfiles : List String) -> (outdir : String) -> String
compileAbstrCmd erl srcfiles outdir =
  let code =
      unwords
        [ "CompileAbstr = fun(File, OutputDir) ->"
        ,   "{ok, Forms} = file:consult(File),"
        ,   "{ok, ModuleName, BinaryOrCode} = compile:noenv_forms(Forms, []),"
        ,   "OutputFile = filename:join(OutputDir, atom_to_list(ModuleName) ++ \".beam\"),"
        ,   "file:write_file(OutputFile, BinaryOrCode)"
        , "end,"
        , "lists:map(fun(File) -> CompileAbstr(File, " ++ show outdir ++ ") end, " ++ show srcfiles ++ "),"
        , "halt(0)"
        ]
  in evalErlangCmd erl code



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

defsPerModule : List (Namespace, a) -> List (Namespace, List a)
defsPerModule defs =
  let modules = groupBy (\(ns1, _), (ns2, _) => ns1 == ns2) defs
  in mapMaybe extractModuleName modules
    where
      extractModuleName : List (Namespace, a) -> Maybe (Namespace, List a)
      extractModuleName defsInModule =
        case map fst (head' defsInModule) of
          Nothing => Nothing
          Just ns => Just (ns, map snd defsInModule)

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

showModule : ErlModule -> String
showModule module =
  concat (map ((++ ".\n") . showPrimTerm . genDecl) (genErlModule module))

generateErlangModule : {auto c : Ref Ctxt Defs} -> Opts -> List (Namespace, String) -> String -> (Namespace, List ErlFunDecl) -> Core ()
generateErlangModule opts ds targetDir (ns, funDecls) = do
  defs <- get Ctxt
  let exportsFuncName = getExportInNamespace ds ns
  exportFunDecls <- maybe (pure []) (genExports (MkNamespaceInfo (prefix opts) (Just ns)) 4242) exportsFuncName
  let modName = moduleNameFromNS (prefix opts) ns
  let module = MkModule (MkModuleName 4242 modName) [NoAutoImport 4242, ExportAll 4242] (exportFunDecls ++ funDecls)
  let outfile = targetDir ++ dirSep ++ modName ++ ".abstr"
  Right () <- coreLift $ writeFile outfile (showModule module)
    | Left err => throw (FileErr outfile err)
  pure ()


namespace MainEntrypoint
  -- TODO: Add error handling
  generateAbstr : {auto c : Ref Ctxt Defs} -> Opts -> ClosedTerm -> (outdir : String) -> (modName : String) -> Core (List String)
  generateAbstr opts tm outdir modName = do
    let outfile = outdir ++ dirSep ++ modName ++ ".abstr"
    (names, tags) <- findUsedNames tm
    defs <- get Ctxt
    compdefs <- traverse (genErlang (prefix opts) 4242) names
    let validCompdefs = mapMaybe id compdefs
    let modules = defsPerModule validCompdefs
    ds <- getDirectives Erlang
    traverse_ (generateErlangModule opts ds outdir) modules
    let (vs, _) = initEVars []
    mainBody <- genCExp (MkNamespaceInfo (prefix opts) Nothing) vs !(CompileExpr.compileExp tags tm) -- TODO: Supply `modName` as namespace?
    let argsVar = MN "" 0
    let module = MkModule (MkModuleName 4242 modName) [NoAutoImport 4242] [MkFunDecl 4242 Public "main" [argsVar] (genMainInit 4242 (weaken mainBody))]
    Right () <- coreLift $ writeFile outfile (showModule module)
      | Left err => throw (FileErr outfile err)
    copyIdrisRtsToDir outdir
    pure (modName :: map (moduleNameFromNS (prefix opts) . fst) modules)

  -- TODO: Add error handling
  -- TODO: Add options to `erlc`
  generateBeam : {auto c : Ref Ctxt Defs} -> Opts -> ClosedTerm -> (outdir : String) -> (modName : String) -> Core ()
  generateBeam opts tm outdir modName = do
    erl <- coreLift findErlangExecutable
    erlc <- coreLift findErlangCompiler
    tmpDir <- coreLift $ tmpName
    coreLift $ system ("mkdir -p " ++ quoted tmpDir)
    generatedModules <- generateAbstr opts tm tmpDir modName
    let generatedFiles = map (\n => tmpDir ++ dirSep ++ n ++ ".abstr") generatedModules
    coreLift $ system $ compileAbstrCmd erl generatedFiles outdir
    let idrisRtsFile = tmpDir ++ dirSep ++ idrisRtsModuleName ++ ".erl"
    coreLift $ system (erlc ++ " -W0 -o " ++ quoted outdir ++ " " ++ quoted idrisRtsFile)
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
      AbstractFormat => do
        generateAbstr opts tm outdir modName
        pure ()
      Beam => do
        generateBeam opts tm outdir modName
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

  shouldCompileName : Maybe (List Namespace) -> Name -> Bool
  shouldCompileName Nothing _ = True
  shouldCompileName (Just namespacesToCompile) n = getNamespace n `elem` namespacesToCompile

  -- TODO: Add error handling
  generateAbstr : {auto c : Ref Ctxt Defs} -> Opts -> (outdir : String) -> Core (List String)
  generateAbstr opts outdir = do
    ds <- getDirectives Erlang
    let namespacesToCompile = changedNamespaces opts
    let exportFuncs = maybe (mapMaybe parseExport ds) (mapMaybe (getExportInNamespace ds)) namespacesToCompile
    let extraNames = NS ["PrimIO"] (UN "unsafePerformIO") :: exportFuncs
    (names, tags) <- findExportedNames (shouldCompileName namespacesToCompile) extraNames
    defs <- get Ctxt
    compdefs <- traverse (genErlang (prefix opts) 4242) (filter (shouldCompileName namespacesToCompile) names)
    let validCompdefs = mapMaybe id compdefs
    let modules = defsPerModule validCompdefs
    traverse_ (generateErlangModule opts ds outdir) modules
    copyIdrisRtsToDir outdir
    pure (map (moduleNameFromNS (prefix opts) . fst) modules)

  -- TODO: Add error handling
  -- TODO: Add options to `erlc`
  generateBeam : {auto c : Ref Ctxt Defs} -> Opts -> (outdir : String) -> Core ()
  generateBeam opts outdir = do
    erl <- coreLift findErlangExecutable
    erlc <- coreLift findErlangCompiler
    tmpDir <- coreLift $ tmpName
    coreLift $ system ("mkdir -p " ++ quoted tmpDir)
    generatedModules <- generateAbstr opts tmpDir
    let generatedFiles = map (\n => tmpDir ++ dirSep ++ n ++ ".abstr") generatedModules
    coreLift $ system $ compileAbstrCmd erl generatedFiles outdir
    let idrisRtsFile = tmpDir ++ dirSep ++ idrisRtsModuleName ++ ".erl"
    coreLift $ system (erlc ++ " -W0 -o " ++ quoted outdir ++ " " ++ quoted idrisRtsFile)
    pure ()

  export
  generate : {auto c : Ref Ctxt Defs} -> Opts -> (outdir : String) -> Core ()
  generate opts outdir = do
    coreLift $ system ("mkdir -p " ++ quoted outdir)
    case outputFormat opts of
      AbstractFormat => do
        generateAbstr opts outdir
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
