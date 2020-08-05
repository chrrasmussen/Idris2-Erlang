module Compiler.Erlang.Erlang

import Compiler.Common
import Compiler.CompileExpr

import Compiler.Erlang.GlobalOpts
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

getExportFunNames : List ModuleOpts -> List (Namespace, Name)
getExportFunNames allModuleOpts = mapMaybe (\mod => (\funName => (mod.ns, funName)) <$> mod.exportFunName) allModuleOpts

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

writeErlangModule : {auto c : Ref Ctxt Defs} -> GlobalOpts -> List ModuleOpts -> (outputDir : String) -> (extension : String) -> (declToCS : Decl -> CompositeString) -> (NamespaceInfo, List ErlFunDecl) -> Core String
writeErlangModule globalOpts allModuleOpts outputDir extension declToCS (namespaceInfo, funDecls) = do
  let currentModuleOpts = case outputBundle namespaceInfo of
        Concat _ => Nothing
        Split _ inNS => find ((== inNS) . ns) allModuleOpts
  exportFunDecls <- maybe (pure []) (genExports namespaceInfo defLine) (currentModuleOpts >>= exportFunName)
  let modName = currentModuleName namespaceInfo
  let moduleInlineSize = currentModuleOpts >>= inlineSize
  let inlineAttrs = if fromMaybe (inlineSize globalOpts) moduleInlineSize > 0
        then [Inline defLine, InlineSize defLine (inlineSize globalOpts)]
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

compileMainEntrypointToModules : {auto c : Ref Ctxt Defs} -> GlobalOpts -> ClosedTerm -> (modName : String) -> Core (List (NamespaceInfo, List ErlFunDecl))
compileMainEntrypointToModules globalOpts tm modName = do
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

compileLibraryToModules : {auto c : Ref Ctxt Defs} -> GlobalOpts -> List ModuleOpts -> Core (List (NamespaceInfo, List ErlFunDecl))
compileLibraryToModules globalOpts allModuleOpts = do
  let namespacesToCompile = changedNamespaces globalOpts
  let extraNames = filter (shouldCompileName namespacesToCompile) (map snd (getExportFunNames allModuleOpts))
  compileData <- getExportedCompileData Cases (shouldCompileName namespacesToCompile) extraNames
  compdefs <- traverse (genCompdef defLine . splitNamespaceInfo (prefixStr globalOpts)) (filter (shouldCompileName namespacesToCompile . fst) (namedDefs compileData))
  let validCompdefs = mapMaybe id compdefs
  pure $ defsPerModule validCompdefs
    where
      shouldCompileName : Maybe (List Namespace) -> Name -> Bool
      shouldCompileName Nothing _ = True
      shouldCompileName (Just namespacesToCompile) n = getNamespace n `elem` namespacesToCompile

build : {auto c : Ref Ctxt Defs} -> GlobalOpts -> List ModuleOpts -> (tmpDir : String) -> (outputDir : String) -> (modules : List (NamespaceInfo, List ErlFunDecl)) -> Core (List String)
build globalOpts allModuleOpts tmpDir outputDir modules = do
  erl <- coreLift findErlangExecutable
  erlc <- coreLift findErlangCompiler
  case outputFormat globalOpts of
    ErlangSource => do
      traverse_ (writeErlangModule globalOpts allModuleOpts outputDir "erl" genDeclErl) modules
    ErlangSourcePretty => do
      generatedFiles <- traverse (writeErlangModule globalOpts allModuleOpts tmpDir "abstr" genDeclAbstr) modules
      coreLift $ system $ compileAbstrToErlCmd False erl generatedFiles outputDir
      pure ()
    AbstractFormat => do
      traverse_ (writeErlangModule globalOpts allModuleOpts outputDir "abstr" genDeclAbstr) modules
    BeamFromErlangSource => do
      generatedFiles <- traverse (writeErlangModule globalOpts allModuleOpts tmpDir "erl" genDeclErl) modules
      coreLift $ system $ compileErlToBeamCmd erlc generatedFiles outputDir
      pure ()
    BeamFromAbstractFormat => do
      generatedFiles <- traverse (writeErlangModule globalOpts allModuleOpts tmpDir "abstr" genDeclAbstr) modules
      coreLift $ system $ compileAbstrToBeamCmd erl generatedFiles outputDir
      pure ()
  pure $ map (currentModuleName . fst) modules


-- CODEGEN

compileExpr : Ref Ctxt Defs -> (tmpDir : String) -> (outputDir : String) -> ClosedTerm -> (outfile : String) -> Core (Maybe String)
compileExpr c tmpDir outputDir tm outfile = do
  ds <- getDirectives (Other "erlang")
  let groupedDirectives = groupBy fst snd ds
  let globalDirectives = fromMaybe [] (lookup [] groupedDirectives)
  let globalOpts = parseOpts globalDirectives
  let modName = outfile
  modules <- compileMainEntrypointToModules globalOpts tm modName
  build globalOpts [] tmpDir outputDir modules
  pure (Just outfile)

executeExpr : Ref Ctxt Defs -> (tmpDir : String) -> ClosedTerm -> Core ()
executeExpr c tmpDir tm = do
  let globalOpts = defaultGlobalOpts
  let modName = "main"
  modules <- compileMainEntrypointToModules globalOpts tm modName
  build globalOpts [] tmpDir tmpDir modules
  erl <- coreLift $ findErlangExecutable
  coreLift $ system (executeBeamCmd erl tmpDir modName)
  pure ()

compileLibrary : Ref Ctxt Defs -> (tmpDir : String) -> (outputDir : String) -> (libName : String) -> Core (Maybe (String, List String))
compileLibrary c tmpDir outputDir libName = do
  ds <- getDirectives (Other "erlang")
  let groupedDirectives = groupBy fst snd ds
  let globalDirectives = fromMaybe [] (lookup [] groupedDirectives)
  let moduleDirectives = SortedMap.toList (delete [] groupedDirectives)
  let allModuleOpts = map (uncurry parseModuleOpts) moduleDirectives
  let globalOpts = parseOpts globalDirectives
  modules <- compileLibraryToModules globalOpts allModuleOpts
  generatedModules <- build globalOpts allModuleOpts tmpDir outputDir modules
  pure (Just (libName, generatedModules))

export
codegenErlang : Codegen
codegenErlang = MkCG compileExpr executeExpr compileLibrary
