module Compiler.Erlang.Erlang

import Compiler.Common
import Compiler.CompileExpr

import Compiler.Erlang.Opts
import Compiler.Erlang.ModuleOpts
import Compiler.Erlang.Cmd
import Compiler.Erlang.Name
import Compiler.Erlang.Codegen.NamedCExpToErlExpr
import Compiler.Erlang.Codegen.NamedCExpToErlExpr.RtsSupport
import Compiler.Erlang.Codegen.ErlExprToAbstractFormat
import Compiler.Erlang.Codegen.AbstractFormatToErlangSource
import Compiler.Erlang.Codegen.AbstractFormatToPrimTerm
import Compiler.Erlang.Utils.CompositeString

import Core.Context
import Core.Directory
import Core.Name
import Core.Options
import Core.TT

import Data.NameMap
import Data.List
import Data.SortedMap
import Data.Strings
import Utils.Binary
import Utils.Path
import System
import System.File


%default covering
%hide ErlExpr.Line


findErlangExecutable : IO String
findErlangExecutable = pure "erl"

findErlangCompiler : IO String
findErlangCompiler = pure "erlc"

-- TODO: Ideally, line numbers should be retrieved from the NamedCExp, and not
-- use a default placeholder line number.
defLine : Line
defLine = 4242

groupBy : Ord key => (a -> key) -> (a -> value) -> List a -> SortedMap key (List value)
groupBy _ _ [] = empty
groupBy toKey toValue (x :: xs) = singleton (toKey x) [toValue x] <+> (groupBy toKey toValue xs)

defsPerModule : List (NamespaceInfo, a) -> List (NamespaceInfo, List a)
defsPerModule defs = SortedMap.toList $ groupBy fst snd defs

getCompileExpr : {auto c : Ref Ctxt Defs} -> Name -> Core NamedDef
getCompileExpr name = do
  defs <- get Ctxt
  Just globalDef <- lookupCtxtExact name (gamma defs)
    | Nothing => throw (InternalError ("Compiling undefined name " ++ show name))
  let Just expr = namedcompexpr globalDef
    | Nothing => throw (InternalError ("No compiled definition for " ++ show name))
  pure expr

genExports : {auto c : Ref Ctxt Defs} -> NamespaceInfo -> Line -> Name -> Core (List ErlFunDecl)
genExports namespaceInfo l name = do
  MkNmFun [] expr <- getCompileExpr name
    | _ => throw (InternalError ("Expected function definition for " ++ show name))
  readExports namespaceInfo l expr

genDeclAbstr : Decl -> CompositeString
genDeclAbstr d =
  Nested [primTermToCS (AbstractFormatToPrimTerm.genDecl d), Str ".\n"]

genDeclErl : Decl -> CompositeString
genDeclErl d =
  Nested [AbstractFormatToErlangSource.genDecl d, Str "\n"]

writeErlangModule : {auto c : Ref Ctxt Defs} -> Opts -> (outputDir : String) -> (extension : String) -> (declToCS : Decl -> CompositeString) -> List (Namespace, Name) -> (NamespaceInfo, List ErlFunDecl) -> Core String
writeErlangModule opts outputDir extension declToCS exportFunNames (namespaceInfo, funDecls) = do
  let inNS = case outputBundle namespaceInfo of
        Concat _ => Nothing
        Split _ inNS => Just inNS
  let exportFunName = inNS >>= (\ns => lookup ns exportFunNames)
  exportFunDecls <- maybe (pure []) (genExports namespaceInfo defLine) exportFunName
  let modName = currentModuleName namespaceInfo
  let inlineAttrs = if inlineSize opts > 0
        then [Inline defLine, InlineSize defLine (inlineSize opts)]
        else []
  let module_ = MkModule (MkModuleName defLine modName) (NoAutoImport defLine :: inlineAttrs) (exportFunDecls ++ funDecls)
  let outfile = outputDir </> modName ++ "." ++ extension
  let decls = genErlModule defLine module_
  let content = fastAppend (flatten (Nested (map declToCS decls)))
  Right () <- coreLift $ writeFile outfile content
    | Left err => throw (FileErr outfile err)
  pure outfile

genCompdef : Line -> (NamespaceInfo, (Name, FC, NamedDef)) -> Core (Maybe (NamespaceInfo, ErlFunDecl))
genCompdef l (namespaceInfo, (name, fc, expr)) = do
  Just funDecl <- genDef namespaceInfo l name expr
    | Nothing => pure Nothing
  pure $ Just (namespaceInfo, funDecl)

concatNamespaceInfo : (ns : String) -> a -> (NamespaceInfo, a)
concatNamespaceInfo ns x =
  (MkNamespaceInfo (Concat ns), x)

splitNamespaceInfo : (prefixStr : String) -> (Name, FC, NamedDef) -> (NamespaceInfo, (Name, FC, NamedDef))
splitNamespaceInfo prefixStr x@(name, _, _) =
  let ns = getNamespace name
  in (MkNamespaceInfo (Split prefixStr ns), x)

namespaceInfoToModuleNamePath : (outputDir : String) -> (extension : String) -> NamespaceInfo -> (String, String)
namespaceInfoToModuleNamePath outputDir extension namespaceInfo =
  let modName = currentModuleName namespaceInfo
  in (modName, outputDir </> modName ++ "." ++ extension)

compileMainEntrypointToModules : {auto c : Ref Ctxt Defs} -> Opts -> ClosedTerm -> (modName : String) -> Core (List (NamespaceInfo, List ErlFunDecl))
compileMainEntrypointToModules opts tm modName = do
  compileData <- getCompileData Cases tm
  compdefs <- traverse (genCompdef defLine . concatNamespaceInfo modName) (namedDefs compileData)
  let namespaceInfo = MkNamespaceInfo (Concat modName)
  lv <- newRef LV (initLocalVars "V")
  mainBody <- genNmExp namespaceInfo empty (forget (mainExpr compileData))
  argsVar <- newLocalVar
  let erlMainFunDecl = MkFunDecl defLine Public "start" [] !(genErlMain defLine mainBody)
  let escriptMainFunDecl = MkFunDecl defLine Public "main" [argsVar] (genEscriptMain defLine mainBody)
  let validCompdefs = (namespaceInfo, erlMainFunDecl) :: (namespaceInfo, escriptMainFunDecl) :: mapMaybe id compdefs
  pure $ defsPerModule validCompdefs

compileLibraryToModules : {auto c : Ref Ctxt Defs} -> Opts -> List (Namespace, Name) -> Core (List (NamespaceInfo, List ErlFunDecl))
compileLibraryToModules opts exportFunNames = do
  let namespacesToCompile = changedNamespaces opts
  let extraNames = filter (shouldCompileName namespacesToCompile) (map snd exportFunNames)
  compileData <- getExportedCompileData Cases (shouldCompileName namespacesToCompile) extraNames
  compdefs <- traverse (genCompdef defLine . splitNamespaceInfo (prefixStr opts)) (filter (shouldCompileName namespacesToCompile . fst) (namedDefs compileData))
  let validCompdefs = mapMaybe id compdefs
  pure $ defsPerModule validCompdefs
    where
      shouldCompileName : Maybe (List Namespace) -> Name -> Bool
      shouldCompileName Nothing _ = True
      shouldCompileName (Just namespacesToCompile) n = getNamespace n `elem` namespacesToCompile

build : {auto c : Ref Ctxt Defs} -> Opts -> (tmpDir : String) -> (outputDir : String) -> (exportFunNames : List (Namespace, Name)) -> (modules : List (NamespaceInfo, List ErlFunDecl)) -> Core (List String)
build opts tmpDir outputDir exportFunNames modules = do
  erl <- coreLift findErlangExecutable
  erlc <- coreLift findErlangCompiler
  case outputFormat opts of
    ErlangSource => do
      traverse_ (writeErlangModule opts outputDir "erl" genDeclErl exportFunNames) modules
    ErlangSourcePretty => do
      generatedFiles <- traverse (writeErlangModule opts tmpDir "abstr" genDeclAbstr exportFunNames) modules
      coreLift $ system $ compileAbstrToErlCmd False erl generatedFiles outputDir
      pure ()
    AbstractFormat => do
      traverse_ (writeErlangModule opts outputDir "abstr" genDeclAbstr exportFunNames) modules
    BeamFromErlangSource => do
      generatedFiles <- traverse (writeErlangModule opts tmpDir "erl" genDeclErl exportFunNames) modules
      coreLift $ system $ compileErlToBeamCmd erlc generatedFiles outputDir
      pure ()
    BeamFromAbstractFormat => do
      generatedFiles <- traverse (writeErlangModule opts tmpDir "abstr" genDeclAbstr exportFunNames) modules
      coreLift $ system $ compileAbstrToBeamCmd erl generatedFiles outputDir
      pure ()
  pure $ map (currentModuleName . fst) modules


-- CODEGEN

compileExpr : Ref Ctxt Defs -> (tmpDir : String) -> (outputDir : String) -> ClosedTerm -> (outfile : String) -> Core (Maybe String)
compileExpr c tmpDir outputDir tm outfile = do
  ds <- getDirectives (Other "erlang")
  let groupedDirectives = groupBy fst snd ds
  let globalDirectives = fromMaybe [] (lookup [] groupedDirectives)
  let opts = parseOpts globalDirectives
  let modName = outfile
  modules <- compileMainEntrypointToModules opts tm modName
  build opts tmpDir outputDir [] modules
  pure (Just outfile)

executeExpr : Ref Ctxt Defs -> (tmpDir : String) -> ClosedTerm -> Core ()
executeExpr c tmpDir tm = do
  let opts = defaultOpts
  let modName = "main"
  modules <- compileMainEntrypointToModules opts tm modName
  build opts tmpDir tmpDir [] modules
  erl <- coreLift $ findErlangExecutable
  coreLift $ system (executeBeamCmd erl tmpDir modName)
  pure ()

compileLibrary : Ref Ctxt Defs -> (tmpDir : String) -> (outputDir : String) -> (libName : String) -> Core (Maybe (String, List String))
compileLibrary c tmpDir outputDir libName = do
  ds <- getDirectives (Other "erlang")
  let groupedDirectives = groupBy fst snd ds
  let globalDirectives = fromMaybe [] (lookup [] groupedDirectives)
  let moduleDirectives = SortedMap.toList (delete [] groupedDirectives)
  let moduleOpts = map (uncurry parseModuleOpts) moduleDirectives
  let exportFunNames = mapMaybe (\mod => (\funName => (mod.ns, funName)) <$> mod.exportFunName) moduleOpts
  let opts = parseOpts globalDirectives
  modules <- compileLibraryToModules opts exportFunNames
  generatedModules <- build opts tmpDir outputDir exportFunNames modules
  pure (Just (libName, generatedModules))

export
codegenErlang : Codegen
codegenErlang = MkCG compileExpr executeExpr compileLibrary
