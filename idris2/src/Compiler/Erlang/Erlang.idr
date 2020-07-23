module Compiler.Erlang.Erlang

import Compiler.ANF
import Compiler.Common
import Compiler.CompileExpr
import Compiler.Inline
import Compiler.LambdaLift
import Compiler.VMCode

import Compiler.Erlang.Opts
import Compiler.Erlang.NamedCExp
import Compiler.Erlang.FileUtils
import Compiler.Erlang.Name
import Compiler.Erlang.ErlExpr
import Compiler.Erlang.RtsSupport
import Compiler.Erlang.CompositeString

import Core.Context
import Core.Directory
import Core.Name
import Core.Options
import Core.TT

import Data.IOArray
import Data.Maybe
import Data.NameMap
import Data.List
import Data.Strings
import Utils.Binary
import Utils.Path
import System
import System.Info
import System.File

%default covering

findErlangExecutable : IO String
findErlangExecutable = pure "erl"

-- TODO: Ideally, line numbers should be retrieved from the NamedCExp, and not
-- use a default placeholder line number.
defLine : Line
defLine = 4242

escapeCmd : List String -> String
escapeCmd components = unwords (map escapeComponent components)
  where
    escapeChar : Char -> String
    escapeChar '\'' = "'\"'\"'"
    escapeChar c    = cast c
    escapeComponent : String -> String
    escapeComponent component = "'" ++ concat (map escapeChar (unpack component)) ++ "'"

executeBeamCmd : (erl : String) -> (outputDir : String) -> (modName : String) -> String
executeBeamCmd erl outputDir modName =
  escapeCmd [erl, "-noshell", "-boot", "no_dot_erlang", "-pa", outputDir, "-run", modName]

evalErlangCmd : (erl : String) -> (code : String) -> String
evalErlangCmd erl code =
  escapeCmd [erl, "-noshell", "-boot", "no_dot_erlang", "-eval", code]

pmapErlFun : String
pmapErlFun = "Collect = fun
  Collect([]) -> [];
  Collect([{Pid, MRef} | Next]) ->
    receive
      {Pid, Res} ->
        erlang:demonitor(MRef, [flush]),
        [{ok, Res} | Collect(Next)];
      {'DOWN', MRef, process, Pid, Reason} ->
        [{error, Reason} | Collect(Next)]
    end
  end,
  Pmap = fun(F, Es) ->
  Parent = self(),
  Running = [
    spawn_monitor(fun() -> Parent ! {self(), F(E)} end)
      || E <- Es],
  Collect(Running)
end"

compileAbstrToBeamCmd : (erl : String) -> (srcfiles : List String) -> (outputDir : String) -> String
compileAbstrToBeamCmd erl srcfiles outputDir =
  let code =
        concat {t=List}
          [pmapErlFun, ",
CompileAbstr = fun(File, OutputDir) ->
  {ok, Forms} = file:consult(File),
  {ok, ModuleName, BinaryOrCode} = compile:noenv_forms(Forms, []),
  OutputFile = filename:join(OutputDir, atom_to_list(ModuleName) ++ \".beam\"),
  file:write_file(OutputFile, BinaryOrCode)
end,
Pmap(fun(File) -> CompileAbstr(File, ", show outputDir, ") end, ", show srcfiles, "),
halt(0)"]
  in evalErlangCmd erl code

compileAbstrToErlCmd : (isMinified : Bool) -> (erl : String) -> (srcfiles : List String) -> (outputDir : String) -> String
compileAbstrToErlCmd isMinified erl srcfiles outputDir =
  let columnWidth : Int =
        if isMinified
          then 10000
          else 120
      prettyOpts =
        "[{paper, " ++ show columnWidth ++ "}, {ribbon, " ++ show columnWidth ++ "}]"
      code =
        concat {t=List}
          [pmapErlFun, ",
ModuleNameFromForms = fun(Forms) ->
  lists:foldl(
    fun
      ({attribute, _, module, ModuleName}, _Acc) -> {ok, ModuleName};
      (_, Acc) -> Acc
    end, not_found, Forms)
end,
GenerateErl = fun(File, OutputDir) ->
  {ok, Forms} = file:consult(File),
  {ok, ModuleName} = ModuleNameFromForms(Forms),
  OutputFile = filename:join(OutputDir, atom_to_list(ModuleName) ++ \".erl\"),
  ErlangSource = erl_prettypr:format(erl_syntax:form_list(Forms), ", prettyOpts, "),
  file:write_file(OutputFile, ErlangSource)
end,
Pmap(fun(File) -> GenerateErl(File, ", show outputDir, ") end, ", show srcfiles, "),
halt(0)"]
  in evalErlangCmd erl code

groupBy : (a -> a -> Bool) -> List a -> List (List a)
groupBy _ [] = []
groupBy p list@(x :: xs) =
  let (matches, remaining) = partition (p x) list
  in matches :: groupBy p (assert_smaller list remaining)

defsPerModule : List (NamespaceInfo, a) -> List (NamespaceInfo, List a)
defsPerModule defs =
  let modules = groupBy (\(namespaceInfo1, _), (namespaceInfo2, _) => namespaceInfo1 == namespaceInfo2) defs
  in mapMaybe extractModuleName modules
    where
      extractModuleName : List (NamespaceInfo, a) -> Maybe (NamespaceInfo, List a)
      extractModuleName defsInModule =
        case map fst (head' defsInModule) of
          Nothing => Nothing
          Just namespaceInfo => Just (namespaceInfo, map snd defsInModule)

parseExport : (Namespace, String) -> Maybe Name
parseExport (ns, directive) = map (NS ns . UN) $ parseExport' (words directive)
  where
    parseExport' : List String -> Maybe String
    parseExport' ("export" :: exportsFuncStr :: _) = Just exportsFuncStr
    parseExport' _ = Nothing

exportsFromDirectives : List (Namespace, String) -> List (Namespace, Name)
exportsFromDirectives ds =
  mapMaybe (\(ns, str) => map (\name => (ns, name)) (parseExport (ns, str))) ds

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
  Nested [genPrimTerm (AbstractFormat.genDecl d), Str ".\n"]

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
  let extraNames = NS ["PrimIO"] (UN "unsafePerformIO") :: filter (shouldCompileName namespacesToCompile) (map snd exportFunNames)
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
  case outputFormat opts of
    AbstractFormat => do
      traverse_ (writeErlangModule opts outputDir "abstr" genDeclAbstr exportFunNames) modules
    Erlang => do
      generatedFiles <- traverse (writeErlangModule opts tmpDir "abstr" genDeclAbstr exportFunNames) modules
      coreLift $ system $ compileAbstrToErlCmd False erl generatedFiles outputDir
      pure ()
    ErlangMinified => do
      generatedFiles <- traverse (writeErlangModule opts tmpDir "abstr" genDeclAbstr exportFunNames) modules
      coreLift $ system $ compileAbstrToErlCmd True erl generatedFiles outputDir
      pure ()
    Beam => do
      generatedFiles <- traverse (writeErlangModule opts tmpDir "abstr" genDeclAbstr exportFunNames) modules
      coreLift $ system $ compileAbstrToBeamCmd erl generatedFiles outputDir
      pure ()
  pure $ map (currentModuleName . fst) modules


-- CODEGEN

compileExpr : Ref Ctxt Defs -> (tmpDir : String) -> (outputDir : String) -> ClosedTerm -> (outfile : String) -> Core (Maybe String)
compileExpr c tmpDir outputDir tm outfile = do
  session <- getSession
  let opts = parseOpts (codegenOptions session)
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
  let exportFunNames = exportsFromDirectives ds
  session <- getSession
  let opts = parseOpts (codegenOptions session)
  modules <- compileLibraryToModules opts exportFunNames
  generatedModules <- build opts tmpDir outputDir exportFunNames modules
  pure (Just (libName, generatedModules))

export
codegenErlang : Codegen
codegenErlang = MkCG compileExpr executeExpr compileLibrary
