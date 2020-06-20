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

escapeCmd : List String -> String
escapeCmd components = unwords (map escapeComponent components)
  where
    escapeChar : Char -> String
    escapeChar '\'' = "'\"'\"'"
    escapeChar c    = cast c
    escapeComponent : String -> String
    escapeComponent component = "'" ++ concat (map escapeChar (unpack component)) ++ "'"

runProgramCmd : (erl : String) -> (outputDir : String) -> (modName : String) -> String
runProgramCmd erl outputDir modName =
  escapeCmd [erl, "-noshell", "-boot", "no_dot_erlang", "-pa", outputDir, "-run", modName]

evalErlangCmd : (erl : String) -> (code : String) -> String
evalErlangCmd erl code =
  escapeCmd [erl, "-noshell", "-boot", "no_dot_erlang", "-eval", code]

compileAbstrCmd : (erl : String) -> (srcfiles : List String) -> (outputDir : String) -> String
compileAbstrCmd erl srcfiles outputDir =
  let code =
      unwords
        [ "Collect = fun"
        ,   "Collect([]) -> [];"
        ,   "Collect([{Pid, MRef} | Next]) ->"
        ,     "receive"
        ,       "{Pid, Res} ->"
        ,         "erlang:demonitor(MRef, [flush]),"
        ,         "[{ok, Res} | Collect(Next)];"
        ,       "{'DOWN', MRef, process, Pid, Reason} ->"
        ,         "[{error, Reason} | Collect(Next)]"
        ,     "end"
        , "end,"
        , "Pmap = fun(F, Es) ->"
        ,   "Parent = self(),"
        ,   "Running = ["
        ,     "spawn_monitor(fun() -> Parent ! {self(), F(E)} end)"
        ,       "|| E <- Es],"
        ,   "Collect(Running)"
        , "end,"
        , "CompileAbstr = fun(File, OutputDir) ->"
        ,   "{ok, Forms} = file:consult(File),"
        ,   "{ok, ModuleName, BinaryOrCode} = compile:noenv_forms(Forms, []),"
        ,   "OutputFile = filename:join(OutputDir, atom_to_list(ModuleName) ++ \".beam\"),"
        ,   "file:write_file(OutputFile, BinaryOrCode)"
        , "end,"
        , "Pmap(fun(File) -> CompileAbstr(File, " ++ show outputDir ++ ") end, " ++ show srcfiles ++ "),"
        , "halt(0)"
        ]
  in evalErlangCmd erl code

generateErlCmd : (erl : String) -> (srcfiles : List String) -> (outputDir : String) -> String
generateErlCmd erl srcfiles outputDir =
  let code =
      unwords
        [ "ModuleNameFromForms = fun(Forms) ->"
        ,   "lists:foldl("
        ,     "fun"
        ,       "({attribute, _, module, ModuleName}, _Acc) -> {ok, ModuleName};"
        ,       "(_, Acc) -> Acc"
        ,     "end, not_found, Forms)"
        , "end,"
        , "GenerateErl = fun(File, OutputDir) ->"
        ,   "{ok, Forms} = file:consult(File),"
        ,   "{ok, ModuleName} = ModuleNameFromForms(Forms),"
        ,   "OutputFile = filename:join(OutputDir, atom_to_list(ModuleName) ++ \".erl\"),"
        ,   "ErlangSource = erl_prettypr:format(erl_syntax:form_list(Forms)),"
        ,   "file:write_file(OutputFile, ErlangSource)"
        , "end,"
        , "lists:map(fun(File) -> GenerateErl(File, " ++ show outputDir ++ ") end, " ++ show srcfiles ++ "),"
        , "halt(0)"
        ]
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

getExports : List (Namespace, String) -> List (Namespace, Name)
getExports ds =
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

genModule : ErlModule -> CompositeString
genModule module_ =
  Nested $ map (\d => Nested [genPrimTerm (genDecl d), Str ".\n"]) (genErlModule 4242 module_)

writeErlangModule : {auto c : Ref Ctxt Defs} -> Opts -> List (Namespace, Name) -> String -> (NamespaceInfo, List ErlFunDecl) -> Core ()
writeErlangModule opts exportFunNames targetDir (namespaceInfo, funDecls) = do
  let inNS = case outputBundle namespaceInfo of
        Concat _ => Nothing
        Split _ inNS => Just inNS
  let exportFunName = inNS >>= (\ns => lookup ns exportFunNames)
  exportFunDecls <- maybe (pure []) (genExports namespaceInfo 4242) exportFunName
  let modName = currentModuleName namespaceInfo
  let module_ = MkModule (MkModuleName 4242 modName) [NoAutoImport 4242] (exportFunDecls ++ funDecls)
  let outfile = targetDir </> modName ++ ".abstr"
  let content = fastAppend (flatten (genModule module_))
  Right () <- coreLift $ writeFile outfile content
    | Left err => throw (FileErr outfile err)
  pure ()

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


namespace MainEntrypoint
  -- TODO: Add error handling
  writeAbstrFiles : {auto c : Ref Ctxt Defs} -> Opts -> ClosedTerm -> (outputDir : String) -> (modName : String) -> Core (List String)
  writeAbstrFiles opts tm outputDir modName = do
    let outfile = outputDir </> modName ++ ".abstr"
    compileData <- getCompileData Cases tm
    compdefs <- traverse (genCompdef 4242 . concatNamespaceInfo modName) (namedDefs compileData)
    let namespaceInfo = MkNamespaceInfo (Concat modName)
    lv <- newRef LV (initLocalVars "V")
    mainBody <- genNmExp namespaceInfo empty (forget (mainExpr compileData))
    argsVar <- newLocalVar
    let erlMainFunDecl = MkFunDecl 4242 Public "start" [] !(genErlMain 4242 mainBody)
    let escriptMainFunDecl = MkFunDecl 4242 Public "main" [argsVar] (genEscriptMain 4242 (ELocal 4242 argsVar) mainBody)
    let validCompdefs = (namespaceInfo, erlMainFunDecl) :: (namespaceInfo, escriptMainFunDecl) :: mapMaybe id compdefs
    let modules = defsPerModule validCompdefs
    traverse_ (writeErlangModule opts [] outputDir) modules
    pure (map (currentModuleName . fst) modules)

  -- TODO: Add error handling
  writeErlFiles : {auto c : Ref Ctxt Defs} -> Opts -> ClosedTerm -> (tmpDir : String) -> (outputDir : String) -> (modName : String) -> Core ()
  writeErlFiles opts tm tmpDir outputDir modName = do
    erl <- coreLift findErlangExecutable
    generatedModules <- writeAbstrFiles opts tm tmpDir modName
    let generatedFiles = map (\n => tmpDir </> n ++ ".abstr") generatedModules
    coreLift $ system $ generateErlCmd erl generatedFiles outputDir
    pure ()

  -- TODO: Add error handling
  writeBeamFiles : {auto c : Ref Ctxt Defs} -> Opts -> ClosedTerm -> (tmpDir : String) -> (outputDir : String) -> (modName : String) -> Core ()
  writeBeamFiles opts tm tmpDir outputDir modName = do
    erl <- coreLift findErlangExecutable
    generatedModules <- writeAbstrFiles opts tm tmpDir modName
    let generatedFiles = map (\n => tmpDir </> n ++ ".abstr") generatedModules
    coreLift $ system $ compileAbstrCmd erl generatedFiles outputDir
    pure ()

  export
  build : {auto c : Ref Ctxt Defs} -> Opts -> ClosedTerm -> (tmpDir : String) -> (outputDir : String) -> (modName : String) -> Core ()
  build opts tm tmpDir outputDir modName = do
    case outputFormat opts of
      AbstractFormat => do
        writeAbstrFiles opts tm outputDir modName
        pure ()
      Erlang => do
        writeErlFiles opts tm tmpDir outputDir modName
        pure ()
      Beam => do
        writeBeamFiles opts tm tmpDir outputDir modName
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

  skipUnusedNames : Name -> Bool
  skipUnusedNames (NS _ n) = skipUnusedNames n
  skipUnusedNames (MN _ _) = False
  skipUnusedNames (Resolved _) = False
  skipUnusedNames _ = True

  getExportedCompileData : {auto c : Ref Ctxt Defs} -> UsePhase -> (Name -> Bool) -> List Name -> Core CompileData
  getExportedCompileData phase shouldCompileName extraNames = do
    defs <- get Ctxt
    sopts <- getSession
    -- make an array of Bools to hold which names we've found (quicker
    -- to check than a NameMap!)
    asize <- getNextEntry
    arr <- coreLift $ newArray asize

    let namesToCompile = filter shouldCompileName $ filter skipUnusedNames $ keys (getResolvedAs (gamma defs))
    cnsWithGlobalDef <- traverse (\n => pure (n, !(lookupCtxtExact n (gamma defs)))) namesToCompile
    let visibleCns = mapMaybe exportedName cnsWithGlobalDef

    resolvedNames <- traverse toResolvedNames (natHackNames ++ visibleCns ++ extraNames)
    logTime "Get names" $ getAllDesc resolvedNames arr defs

    let entries = mapMaybe id !(coreLift (toList arr))
    let allNs = map (Resolved . fst) entries
    cns <- traverse toFullNames allNs

    -- Do a round of merging/arity fixing for any names which were
    -- unknown due to cyclic modules (i.e. declared in one, defined in
    -- another)
    rcns <- filterM nonErased (nub (filter skipUnusedNames cns))
    logTime "Merge lambda" $ traverse_ mergeLamDef rcns
    logTime "Fix arity" $ traverse_ fixArityDef rcns
    logTime "Forget names" $ traverse_ mkForgetDef rcns

    compiledtm <- fixArityExp (the (CExp []) (CErased EmptyFC))
    let mainname = MN "__mainExpression" 0
    (liftedtm, ldefs) <- liftBody mainname compiledtm

    namedefs <- traverse getNamedDef rcns
    lifted_in <- if phase >= Lifted
                    then logTime "Lambda lift" $ traverse lambdaLift rcns
                    else pure []

    let lifted = (mainname, MkLFun [] [] liftedtm) ::
                ldefs ++ concat lifted_in

    anf <- if phase >= ANF
              then logTime "Get ANF" $ traverse (\ (n, d) => pure (n, !(toANF d))) lifted
              else pure []
    vmcode <- if phase >= VMCode
                then logTime "Get VM Code" $ pure (allDefs anf)
                else pure []

    -- TODO: Removed `dumpCases`, `dumpLifted`, `dumpANF`, `dumpVMCode`, `replaceEntry`
    pure (MkCompileData compiledtm
                        (mapMaybe id namedefs)
                        lifted anf vmcode)
  where
    nonErased : Name -> Core Bool
    nonErased n
        = do defs <- get Ctxt
             Just gdef <- lookupCtxtExact n (gamma defs)
                  | Nothing => pure True
             pure (multiplicity gdef /= erased)

  shouldCompileName : Maybe (List Namespace) -> Name -> Bool
  shouldCompileName Nothing _ = True
  shouldCompileName (Just namespacesToCompile) n = getNamespace n `elem` namespacesToCompile

  -- TODO: Add error handling
  writeAbstrFiles : {auto c : Ref Ctxt Defs} -> Opts -> (outputDir : String) -> Core (List String)
  writeAbstrFiles opts outputDir = do
    ds <- getDirectives (Other "erlang")
    let exportFunNames = getExports ds -- TODO: Filter using `shouldCompileName`
    let namespacesToCompile = changedNamespaces opts
    let extraNames = NS ["PrimIO"] (UN "unsafePerformIO") :: (filter (shouldCompileName namespacesToCompile) (map snd exportFunNames))
    compileData <- getExportedCompileData Cases (shouldCompileName namespacesToCompile) extraNames
    compdefs <- traverse (genCompdef 4242 . splitNamespaceInfo (prefixStr opts)) (filter (shouldCompileName namespacesToCompile . fst) (namedDefs compileData))
    let validCompdefs = mapMaybe id compdefs
    let modules = defsPerModule validCompdefs
    traverse_ (writeErlangModule opts exportFunNames outputDir) modules
    pure (map (currentModuleName . fst) modules)

  -- TODO: Add error handling
  writeErlFiles : {auto c : Ref Ctxt Defs} -> Opts -> (tmpDir : String) -> (outputDir : String) -> Core ()
  writeErlFiles opts tmpDir outputDir = do
    erl <- coreLift findErlangExecutable
    generatedModules <- writeAbstrFiles opts tmpDir
    let generatedFiles = map (\n => tmpDir </> n ++ ".abstr") generatedModules
    coreLift $ system $ generateErlCmd erl generatedFiles outputDir
    pure ()

  -- TODO: Add error handling
  writeBeamFiles : {auto c : Ref Ctxt Defs} -> Opts -> (tmpDir : String) -> (outputDir : String) -> Core ()
  writeBeamFiles opts tmpDir outputDir = do
    erl <- coreLift findErlangExecutable
    generatedModules <- writeAbstrFiles opts tmpDir
    let generatedFiles = map (\n => tmpDir </> n ++ ".abstr") generatedModules
    coreLift $ system $ compileAbstrCmd erl generatedFiles outputDir
    pure ()

  export
  build : {auto c : Ref Ctxt Defs} -> Opts -> (tmpDir : String) -> (outputDir : String) -> Core ()
  build opts tmpDir outputDir = do
    case outputFormat opts of
      AbstractFormat => do
        writeAbstrFiles opts outputDir
        pure ()
      Erlang => do
        writeErlFiles opts tmpDir outputDir
        pure ()
      Beam => do
        writeBeamFiles opts tmpDir outputDir
        pure ()

-- TODO: Validate `outfile`
compileExpr : Ref Ctxt Defs -> (tmpDir : String) -> (outputDir : String) -> ClosedTerm -> (outfile : String) -> Core (Maybe String)
compileExpr c tmpDir outputDir tm outfile = do
  session <- getSession
  let opts = parseOpts (codegenOptions session)
  if generateAsLibrary opts
    then Library.build opts tmpDir outputDir
    else MainEntrypoint.build opts tm tmpDir outputDir outfile
  pure (Just outfile)

-- TODO: Add error handling
executeExpr : Ref Ctxt Defs -> (tmpDir : String) -> ClosedTerm -> Core ()
executeExpr c tmpDir tm = do
  let modName = "main"
  MainEntrypoint.build (record { outputFormat = Beam, generateAsLibrary = False } defaultOpts) tm tmpDir tmpDir modName
  erl <- coreLift $ findErlangExecutable
  coreLift $ system (runProgramCmd erl tmpDir modName)
  pure ()

export
codegenErlang : Codegen
codegenErlang = MkCG compileExpr executeExpr
