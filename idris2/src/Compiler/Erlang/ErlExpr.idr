module Compiler.Erlang.ErlExpr

import Data.List
import Control.Monad.State

import Core.Name
import Core.TT
import public Compiler.Erlang.AbstractFormat
import Compiler.Erlang.ErlBuffer
import Compiler.Erlang.Utils


%default total


-- LOCAL VARIABLES

namespace LocalVars
  public export
  data EVars : List Name -> Type where
    Nil : EVars []
    (::) : (name : String) -> EVars ns -> EVars (n :: ns)

  export
  lengthEVars : EVars vars -> Nat
  lengthEVars [] = 0
  lengthEVars (x :: xs) = 1 + lengthEVars xs

  export
  extendEVars : (newVars : List Name) -> EVars vars -> (EVars (newVars ++ vars), Vect (length newVars) String)
  extendEVars xs vs = extEVars' (cast (lengthEVars vs)) xs vs
    where
      extEVars' : Int -> (newVars : List Name) -> EVars vars -> (EVars (newVars ++ vars), Vect (length newVars) String)
      extEVars' i [] vs = (vs, [])
      extEVars' i (n :: ns) vs =
        let (vs', varNames) = extEVars' (i + 1) ns vs
            newVarName = "V" ++ show i
        in (newVarName :: vs', newVarName :: varNames)

  export
  initEVars : (newVars : List Name) -> (EVars newVars, Vect (length newVars) String)
  initEVars xs =
    let (vs, varNames) = extendEVars xs []
    in (rewrite sym (appendNilRightNeutral xs) in vs, varNames)

  export
  lookupEVar : {idx : Nat} -> (prf : IsVar n idx xs) -> EVars xs -> String
  lookupEVar First (n :: ns) = n
  lookupEVar (Later p) (n :: ns) = lookupEVar p ns


-- EXPRESSIONS

-- Notes:
-- * Erlang case expressions are represented using function expressions, because pattern variables
--   in case expressions can't be shadowed.
-- * Erlang let expressions are represented using function expressions, because let variables can't
--   be shadowed.
-- * EConstCase and EMatcherCase are restricted versions of Erlang case expressions.

public export
data IdrisConstant
  = IInt Int
  | IInteger Integer
  | IString String
  | IChar Char
  | IDouble Double
  | IWorldVal
  | IIntType
  | IIntegerType
  | IStringType
  | ICharType
  | IDoubleType
  | IWorldType

mutual
  public export
  data ErlExpr : List Name -> Type where
    ELocal : {idx : Nat} -> Line -> (prf : IsVar x idx vars) -> ErlExpr vars
    ERef : Line -> (modName : ErlExpr vars) -> (fnName : ErlExpr vars) -> ErlExpr vars
    ELam : Line -> (args : List Name) -> ErlExpr (args ++ vars) -> ErlExpr vars
    EApp : Line -> ErlExpr vars -> List (ErlExpr vars) -> ErlExpr vars
    EOp : Line -> (op : String) -> (lhs : ErlExpr vars) -> (rhs : ErlExpr vars) -> ErlExpr vars
    ECon : Line -> (name : String) -> List (ErlExpr vars) -> ErlExpr vars
    EConstCase : Line -> (sc : ErlExpr vars) -> List (ErlConstAlt vars) -> (def : ErlExpr vars) -> ErlExpr vars
    EMatcherCase : Line -> (sc : ErlExpr vars) -> List (ErlMatcher vars) -> (def : ErlExpr vars) -> ErlExpr vars
    EReceive : Line -> List (ErlMatcher vars) -> (timeout : ErlExpr vars) -> (def : ErlExpr vars) -> ErlExpr vars
    ETryCatch : Line -> ErlExpr vars -> (okVar : Name) -> ErlExpr (okVar :: vars) -> (errorVar : Name) -> ErlExpr (errorVar :: vars) -> ErlExpr vars

    EIdrisConstant : Line -> IdrisConstant -> ErlExpr vars
    EAtom : Line -> String -> ErlExpr vars
    EChar : Line -> Char -> ErlExpr vars
    EFloat : Line -> Double -> ErlExpr vars
    EInteger : Line -> Integer -> ErlExpr vars
    ECharlist : Line -> String -> ErlExpr vars
    EBinary : Line -> String -> ErlExpr vars
    ENil : Line -> ErlExpr vars
    ECons : Line -> ErlExpr vars -> ErlExpr vars -> ErlExpr vars
    ETuple : Line -> List (ErlExpr vars) -> ErlExpr vars
    EMap : Line -> List (ErlExpr vars, ErlExpr vars) -> ErlExpr vars

    EBufferNew       : Line -> (size : ErlExpr vars) -> ErlExpr vars
    EBufferSetByte   : Line -> (bin : ErlExpr vars) -> (loc : ErlExpr vars) -> (value : ErlExpr vars) -> ErlExpr vars
    EBufferGetByte   : Line -> (bin : ErlExpr vars) -> (loc : ErlExpr vars) -> ErlExpr vars
    EBufferSetInt    : Line -> (bin : ErlExpr vars) -> (loc : ErlExpr vars) -> (value : ErlExpr vars) -> ErlExpr vars
    EBufferGetInt    : Line -> (bin : ErlExpr vars) -> (loc : ErlExpr vars) -> ErlExpr vars
    EBufferSetDouble : Line -> (bin : ErlExpr vars) -> (loc : ErlExpr vars) -> (value : ErlExpr vars) -> ErlExpr vars
    EBufferGetDouble : Line -> (bin : ErlExpr vars) -> (loc : ErlExpr vars) -> ErlExpr vars
    EBufferSetString : Line -> (bin : ErlExpr vars) -> (loc : ErlExpr vars) -> (value : ErlExpr vars) -> ErlExpr vars
    EBufferGetString : Line -> (bin : ErlExpr vars) -> (loc : ErlExpr vars) -> (len : ErlExpr vars) -> ErlExpr vars

  public export
  data ErlConstAlt : List Name -> Type where
    MkConstAlt : IdrisConstant -> ErlExpr vars -> ErlConstAlt vars

  public export
  data ErlMatcher : List Name -> Type where
    MExact        : ErlExpr vars -> ErlMatcher vars
    MAny          : ErlMatcher vars
    MCodepoint    : ErlMatcher vars
    MInteger      : ErlMatcher vars
    MFloat        : ErlMatcher vars
    MAtom         : ErlMatcher vars
    MBinary       : ErlMatcher vars
    MMap          : ErlMatcher vars
    MPid          : ErlMatcher vars
    MRef          : ErlMatcher vars
    MPort         : ErlMatcher vars
    MAnyList      : ErlMatcher vars
    MNil          : ErlMatcher vars
    MCons         : ErlMatcher vars -> ErlMatcher vars -> (hdVar : Name) -> (tlVar : Name) -> ErlExpr (hdVar :: tlVar :: vars) -> ErlMatcher vars
    MList         : {args : List Name} -> ErlMatchers vars args -> ErlExpr (args ++ vars) -> ErlMatcher vars
    MTuple        : {args : List Name} -> ErlMatchers vars args -> ErlExpr (args ++ vars) -> ErlMatcher vars
    MMapSubset    : {args : List Name} -> ErlMapEntryMatchers vars args -> ErlExpr (args ++ vars) -> ErlMatcher vars
    MFun          : (arity : Nat) -> ErlMatcher vars
    MTransform    : ErlMatcher vars -> (newVar : Name) -> ErlExpr (newVar :: vars) -> ErlMatcher vars

  namespace ErlMatchers
    public export
    data ErlMatchers : List Name -> List Name -> Type where
      Nil : ErlMatchers vars []
      (::) : {default (MN "" 0) newVar : Name} -> ErlMatcher vars -> ErlMatchers vars args -> ErlMatchers vars (newVar :: args)

  namespace ErlMapEntryMatchers
    public export
    data ErlMapEntryMatchers : List Name -> List Name -> Type where
      Nil : ErlMapEntryMatchers vars []
      (::) : {default (MN "" 0) newVar : Name} -> (ErlExpr vars, ErlMatcher vars) -> ErlMapEntryMatchers vars args -> ErlMapEntryMatchers vars (newVar :: args)

public export
data ErlModuleName : Type where
  MkModuleName : Line -> (name : String) -> ErlModuleName

public export
data ErlAttribute : Type where
  NoAutoImport : Line -> ErlAttribute
  Inline       : Line -> ErlAttribute
  InlineSize   : Line -> Nat -> ErlAttribute

public export
data ErlVisibility = Private | Public

export
Eq ErlVisibility where
  Private == Private = True
  Public == Public = True
  _ == _ = False

public export
data ErlFunDecl : Type where
  MkFunDecl : Line -> (visibility : ErlVisibility) -> (name : String) -> (vars : List Name) -> ErlExpr vars -> ErlFunDecl

public export
record ErlModule where
  constructor MkModule
  name : ErlModuleName
  attributes : List ErlAttribute
  funDecls : List ErlFunDecl


-- HELPER FUNCTIONS

toNonEmptyFunClauses : (clauses : List (FunClause arity)) -> (def : FunClause arity) -> Vect (S (length clauses)) (FunClause arity)
toNonEmptyFunClauses [] def = [def]
toNonEmptyFunClauses (x :: xs) def = x :: toNonEmptyFunClauses xs def

trueGuard : Line -> Guard
trueGuard l = AGLiteral (ALAtom l "true")

record MatcherClause where
  constructor MkMatcherClause
  nextLocal : Nat
  pattern : Pattern
  guard : Guard
  body : Expr

localVarName : Nat -> String
localVarName idx = "ML" ++ show idx

globalVarName : Nat -> String
globalVarName idx = "MG" ++ show idx

addGlobalVar : Expr -> State (List Expr) String
addGlobalVar expr = do
  assignedGlobalVars <- get
  put (the (List Expr) (expr :: assignedGlobalVars))
  pure $ globalVarName (length assignedGlobalVars)

wrapImmediatelyInvokedFunExpr : Line -> Expr -> Expr
wrapImmediatelyInvokedFunExpr l body =
  AEFunCall l (AEFun l 0 [MkFunClause l [] [] [body]]) []

wrapGlobal : Line -> (Nat, Expr) -> Expr -> Expr
wrapGlobal l (globalIndex, globalExpr) acc =
  AEFunCall l (AEFun l 1 [MkFunClause l [APVar l (globalVarName globalIndex)] [] [acc]]) [globalExpr]


-- CODE GENERATION

genIdrisConstant : Line -> (String -> a) -> (Literal -> a) -> IdrisConstant -> a
genIdrisConstant l fromString fromLiteral constant =
  case constant of
    IInt x => fromLiteral (ALInteger l (cast x))
    IInteger x => fromLiteral (ALInteger l x)
    IString x => fromString x
    IChar x => fromLiteral (ALChar l x)
    IDouble x => fromLiteral (ALFloat l x)
    IWorldVal => fromLiteral (ALAtom l "world_val")
    IIntType => fromLiteral (ALAtom l "int_type")
    IIntegerType => fromLiteral (ALAtom l "integer_type")
    IStringType => fromLiteral (ALAtom l "string_type")
    ICharType => fromLiteral (ALAtom l "char_type")
    IDoubleType => fromLiteral (ALAtom l "double_type")
    IWorldType => fromLiteral (ALAtom l "world_type")

genBinary : Line -> String -> Expr
genBinary l str =
  AEBitstring l [MkBitSegment l (AELiteral (ALCharlist l str)) ABSDefault (MkTSL Nothing Nothing (Just ABUtf8) Nothing)]

mutual
  genErlExpr : EVars vars -> ErlExpr vars -> Expr
  genErlExpr vs (ELocal l prf) = AEVar l (lookupEVar prf vs)
  genErlExpr vs (ERef l modName fnName) = AERemoteRef l (genErlExpr vs modName) (genErlExpr vs fnName)
  genErlExpr vs (ELam l args body) =
    let (vs', varNames) = extendEVars args vs
    in AEFun l (length args) [MkFunClause l (map (APVar l) varNames) [] [genErlExpr vs' body]]
  genErlExpr vs (EApp l expr args) = AEFunCall l (genErlExpr vs expr) (assert_total (map (genErlExpr vs) args))
  genErlExpr vs (EOp l opName x y) = AEOp l opName (genErlExpr vs x) (genErlExpr vs y)
  genErlExpr vs (ECon l name exprs) = AETuple l (AELiteral (ALAtom l name) :: assert_total (map (genErlExpr vs) exprs))
  genErlExpr vs (EConstCase l sc clauses def) =
    let defClause = MkFunClause l [APUniversal l] [] [genErlExpr vs def]
        generatedClauses = assert_total (map (genErlConstAlt l vs) clauses)
        caseExpr = AEFun l 1 (toNonEmptyFunClauses generatedClauses defClause)
    in AEFunCall l caseExpr [genErlExpr vs sc]
  genErlExpr vs (EMatcherCase l sc matchers def) =
    let defClause = MkFunClause l [APUniversal l] [] [genErlExpr vs def]
        (generatedClauses, globals) = runState (assert_total (traverse (genErlMatcher l vs) matchers)) []
        generatedGlobals = zip (natRange (length globals)) (reverse globals)
        caseExpr = AEFun l 1 (toNonEmptyFunClauses generatedClauses defClause)
    in foldr (wrapGlobal l) (AEFunCall l caseExpr [genErlExpr vs sc]) generatedGlobals
  -- EReceive generates the following code. This is necessary to avoid leaking variables from the case clauses.
  --
  -- If matchers contain `MExact` or `MMapSubset`, the below expression is wrapped in immediately invoked function
  -- expressions to put new variables in scope.
  --
  -- ```
  -- fun() ->
  --   receive
  --     `matchers`
  --   after
  --     `timeout` ->
  --       `def`
  --   end
  -- end()
  -- ```
  genErlExpr vs (EReceive l matchers timeout def) =
    let defClause = TimeoutAfter (genErlExpr vs timeout) [genErlExpr vs def]
        (generatedClauses, globals) = runState (assert_total (traverse (genErlMatcherCaseClause l vs) matchers)) []
        generatedGlobals = zip (natRange (length globals)) (reverse globals)
        receiveExpr = wrapImmediatelyInvokedFunExpr l $ AEReceive l generatedClauses defClause
    in foldr (wrapGlobal l) receiveExpr generatedGlobals
  -- ETryCatch generates the following code. This is necessary to avoid leaking variables from the case/catch clauses.
  --
  -- ```
  -- fun
  --   ({ok, Value}) -> `okFun`(Value);
  --   ({error, Error}) -> `errorFun`(Error)
  -- end(
  --   fun() ->
  --     try `expr` of
  --       Value -> {ok, Value}
  --     catch
  --       Class:Reason:Stacktrace -> {error, {Class, Reason, Stacktrace}}
  --     end
  --   end()
  -- )
  -- ```
  genErlExpr vs (ETryCatch l expr okVar okFun errorVar errorFun) =
    let tryCaseClause = MkCaseClause l (APVar l "Value") [] [AETuple l [AELiteral (ALAtom l "ok"), AEVar l "Value"]]
        tryCatchClause = MkCatchClause l (APVar l "Class") (APVar l "Reason") (APVar l "Stacktrace") [] [AETuple l [AELiteral (ALAtom l "error"),AETuple l [AEVar l "Class", AEVar l "Reason", AEVar l "Stacktrace"]]]
        tryResult = wrapImmediatelyInvokedFunExpr l $ AETry l [genErlExpr vs expr] [tryCaseClause] [tryCatchClause] []
        (okVs, _) = extendEVars [okVar] vs
        (errorVs, _) = extendEVars [errorVar] vs
        okBody = AEFun l 1 [MkFunClause l [APVar l (lookupEVar First okVs)] [] [genErlExpr okVs okFun]]
        errorBody = AEFun l 1 [MkFunClause l [APVar l (lookupEVar First errorVs)] [] [genErlExpr errorVs errorFun]]
        okClause = MkFunClause l [APTuple l [APLiteral (ALAtom l "ok"), APVar l "Value"]] [] [AEFunCall l okBody [AEVar l "Value"]]
        errorClause = MkFunClause l [APTuple l [APLiteral (ALAtom l "error"), APVar l "Error"]] [] [AEFunCall l errorBody [AEVar l "Error"]]
    in AEFunCall l (AEFun l 1 [okClause, errorClause]) [tryResult]
  genErlExpr vs (EIdrisConstant l x) = genIdrisConstant l (genBinary l) AELiteral x
  genErlExpr vs (EAtom l x) = AELiteral (ALAtom l x)
  genErlExpr vs (EChar l x) = AELiteral (ALChar l x)
  genErlExpr vs (EFloat l x) = AELiteral (ALFloat l x)
  genErlExpr vs (EInteger l x) = AELiteral (ALInteger l x)
  genErlExpr vs (ECharlist l x) = AELiteral (ALCharlist l x)
  genErlExpr vs (EBinary l x) = genBinary l x
  genErlExpr vs (ENil l) = AENil l
  genErlExpr vs (ECons l x y) = AECons l (genErlExpr vs x) (genErlExpr vs y)
  genErlExpr vs (ETuple l elems) = AETuple l (assert_total (map (genErlExpr vs) elems))
  genErlExpr vs (EMap l entries) =
    AEMapNew l (assert_total (map (\(key, value) => MkAssoc l (genErlExpr vs key) (genErlExpr vs value)) entries))
  genErlExpr vs (EBufferNew l size) = bufferNew l (genErlExpr vs size)
  genErlExpr vs (EBufferSetByte l bin loc value) = bufferSetByte l (genErlExpr vs bin) (genErlExpr vs loc) (genErlExpr vs value)
  genErlExpr vs (EBufferGetByte l bin loc) = bufferGetByte l (genErlExpr vs bin) (genErlExpr vs loc)
  genErlExpr vs (EBufferSetInt l bin loc value) = bufferSetInt l (genErlExpr vs bin) (genErlExpr vs loc) (genErlExpr vs value)
  genErlExpr vs (EBufferGetInt l bin loc) = bufferGetInt l (genErlExpr vs bin) (genErlExpr vs loc)
  genErlExpr vs (EBufferSetDouble l bin loc value) = bufferSetDouble l (genErlExpr vs bin) (genErlExpr vs loc) (genErlExpr vs value)
  genErlExpr vs (EBufferGetDouble l bin loc) = bufferGetDouble l (genErlExpr vs bin) (genErlExpr vs loc)
  genErlExpr vs (EBufferSetString l bin loc value) = bufferSetString l (genErlExpr vs bin) (genErlExpr vs loc) (genErlExpr vs value)
  genErlExpr vs (EBufferGetString l bin loc len) = bufferGetString l (genErlExpr vs bin) (genErlExpr vs loc) (genErlExpr vs len)

  genErlConstAlt : Line -> EVars vars -> ErlConstAlt vars -> FunClause 1
  genErlConstAlt l vs (MkConstAlt constant body) =
    let pattern = genIdrisConstant l stringPattern APLiteral constant
    in MkFunClause l [pattern] [] [genErlExpr vs body]
    where
      stringPattern : String -> Pattern
      stringPattern str = APBitstring l [MkBitSegment l (ABPCharlist l str) ABSDefault (MkTSL Nothing Nothing (Just ABUtf8) Nothing)]

  genErlMatcher : Line -> EVars vars -> ErlMatcher vars -> State (List Expr) (FunClause 1)
  genErlMatcher l vs matcher = do
    clause <- readErlMatcher l vs 0 matcher
    pure $ MkFunClause l [pattern clause] [MkGuardAlt [guard clause]] [body clause]

  genErlMatcherCaseClause : Line -> EVars vars -> ErlMatcher vars -> State (List Expr) CaseClause
  genErlMatcherCaseClause l vs matcher = do
    clause <- readErlMatcher l vs 0 matcher
    pure $ MkCaseClause l (pattern clause) [MkGuardAlt [guard clause]] [body clause]

  readErlMatcher : Line -> EVars vars -> (nextLocal : Nat) -> ErlMatcher vars -> State (List Expr) MatcherClause
  readErlMatcher l vs local (MExact expr) = do
    newGlobalVarName <- addGlobalVar (genErlExpr vs expr)
    let pattern = APVar l (localVarName local)
    let guard = AGOp l "=:=" (AGVar l (localVarName local)) (AGVar l newGlobalVarName)
    let body = AEVar l (localVarName local)
    pure $ MkMatcherClause (local + 1) pattern guard body
  readErlMatcher l vs local MAny = do
    let pattern = APVar l (localVarName local)
    let guard = trueGuard l
    let body = AEVar l (localVarName local)
    pure $ MkMatcherClause (local + 1) pattern guard body
  readErlMatcher l vs local MCodepoint = do
    let pattern = APVar l (localVarName local)
    let guardVar = AGVar l (localVarName local)
    let isIntegerGuard = AGFunCall l "is_integer" [guardVar]
    let aboveMinValueGuard = AGOp l ">=" guardVar (AGLiteral (ALInteger l 0))
    let belowMaxValueGuard = AGOp l "=<" guardVar (AGLiteral (ALInteger l 1114111)) -- 0x10FFFF
    let guard = AGOp l "andalso" isIntegerGuard (AGOp l "andalso" aboveMinValueGuard belowMaxValueGuard)
    let body = AEVar l (localVarName local)
    pure $ MkMatcherClause (local + 1) pattern guard body
  readErlMatcher l vs local MInteger = readSimpleGuardMatcherClause l vs local "is_integer"
  readErlMatcher l vs local MFloat = readSimpleGuardMatcherClause l vs local "is_float"
  readErlMatcher l vs local MAtom = readSimpleGuardMatcherClause l vs local "is_atom"
  readErlMatcher l vs local MBinary = readSimpleGuardMatcherClause l vs local "is_binary"
  readErlMatcher l vs local MMap = readSimpleGuardMatcherClause l vs local "is_map"
  readErlMatcher l vs local MPid = readSimpleGuardMatcherClause l vs local "is_pid"
  readErlMatcher l vs local MRef = readSimpleGuardMatcherClause l vs local "is_reference"
  readErlMatcher l vs local MPort = readSimpleGuardMatcherClause l vs local "is_port"
  readErlMatcher l vs local MAnyList = readSimpleGuardMatcherClause l vs local "is_list"
  readErlMatcher l vs local MNil = do
    let pattern = APNil l
    let guard = trueGuard l
    let body = AENil l
    pure $ MkMatcherClause local pattern guard body
  readErlMatcher l vs local (MCons x y hdVar tlVar fun) = do
    xClause <- readErlMatcher l vs local x
    yClause <- readErlMatcher l vs (nextLocal xClause) y
    let (vs', varNames) = extendEVars [hdVar, tlVar] vs
    let wrappedFun = AEFun l 2 [MkFunClause l (map (APVar l) varNames) [] [genErlExpr vs' fun]]
    let pattern = APCons l (pattern xClause) (pattern yClause)
    let guard = AGOp l "andalso" (guard xClause) (guard yClause)
    let body = AEFunCall l wrappedFun [body xClause, body yClause]
    pure $ MkMatcherClause (nextLocal yClause) pattern guard body
  readErlMatcher l vs local (MList {args} matchers fun) = do
    (clauses, local') <- readErlMatchers l vs local matchers
    let (vs', varNames) = extendEVars args vs
    let wrappedFun = AEFun l (length args) [MkFunClause l (map (APVar l) varNames) [] [genErlExpr vs' fun]]
    let pattern = foldr (\clause, acc => APCons l (pattern clause) acc) (APNil l) clauses
    let guard = foldl (\acc, clause => AGOp l "andalso" (guard clause) acc) (trueGuard l) clauses
    let body = AEFunCall l wrappedFun (map body clauses)
    pure $ MkMatcherClause local' pattern guard body
  readErlMatcher l vs local (MTuple {args} matchers fun) = do
    (clauses, local') <- readErlMatchers l vs local matchers
    let (vs', varNames) = extendEVars args vs
    let wrappedFun = AEFun l (length args) [MkFunClause l (map (APVar l) varNames) [] [genErlExpr vs' fun]]
    let pattern = APTuple l (map pattern clauses)
    let guard = foldl (\acc, clause => AGOp l "andalso" (guard clause) acc) (trueGuard l) clauses
    let body = AEFunCall l wrappedFun (map body clauses)
    pure $ MkMatcherClause local' pattern guard body
  readErlMatcher l vs local (MMapSubset {args} matchers fun) = do
    (clauses, local') <- readErlMapEntryMatchers l vs local matchers
    let (vs', varNames) = extendEVars args vs
    let wrappedFun = AEFun l (length args) [MkFunClause l (map (APVar l) varNames) [] [genErlExpr vs' fun]]
    let pattern = APMap l (map (\(keyPat, clause) => MkExact l keyPat (pattern clause)) clauses)
    let guard = foldl (\acc, (keyPat, clause) => AGOp l "andalso" (guard clause) acc) (trueGuard l) clauses
    let body = AEFunCall l wrappedFun (map (\(keyPat, clause) => body clause) clauses)
    pure $ MkMatcherClause local' pattern guard body
  readErlMatcher l vs local (MFun arity) = do
    let pattern = APVar l (localVarName local)
    let guard = AGFunCall l "is_function" [AGVar l (localVarName local), AGLiteral (ALInteger l (cast arity))]
    let body = AEVar l (localVarName local)
    pure $ MkMatcherClause (local + 1) pattern guard body
  readErlMatcher l vs local (MTransform x xVar fun) = do
    xClause <- readErlMatcher l vs local x
    let (vs', _) = extendEVars [xVar] vs
    let pattern = pattern xClause
    let guard = guard xClause
    let funClause = MkFunClause l [APVar l (lookupEVar First vs')] [] [genErlExpr vs' fun]
    let body = AEFunCall l (AEFun l 1 [funClause]) [body xClause]
    pure $ MkMatcherClause (nextLocal xClause) pattern guard body

  readSimpleGuardMatcherClause : Line -> EVars vars -> (nextLocal : Nat) -> (fnName : String) -> State (List Expr) MatcherClause
  readSimpleGuardMatcherClause l vs local fnName = do
    let pattern = APVar l (localVarName local)
    let guard = AGFunCall l fnName [AGVar l (localVarName local)]
    let body = AEVar l (localVarName local)
    pure $ MkMatcherClause (local + 1) pattern guard body

  readErlMatchers : Line -> EVars vars -> (nextLocal : Nat) -> ErlMatchers vars args -> State (List Expr) (List MatcherClause, Nat)
  readErlMatchers l vs local [] =
    pure ([], local)
  readErlMatchers l vs local (x :: xs) = do
    xClause <- readErlMatcher l vs local x
    (xsClauses, outLocal) <- readErlMatchers l vs (nextLocal xClause) xs
    pure $ (xClause :: xsClauses, outLocal)

  readErlMapEntryMatchers : Line -> EVars vars -> (nextLocal : Nat) -> ErlMapEntryMatchers vars args -> State (List Expr) (List (Pattern, MatcherClause), Nat)
  readErlMapEntryMatchers l vs local [] =
    pure ([], local)
  readErlMapEntryMatchers l vs local ((keyExpr, matcher) :: xs) = do
    newGlobalVarName <- addGlobalVar (genErlExpr vs keyExpr)
    xClause <- readErlMatcher l vs local matcher
    (xsClauses, outLocal) <- readErlMapEntryMatchers l vs (nextLocal xClause) xs
    pure $ ((APVar l newGlobalVarName, xClause) :: xsClauses, outLocal)

genCompileAttr : Line -> PrimTerm -> Decl
genCompileAttr l primTerm = ADAttribute l "compile" primTerm

genAttribute : ErlAttribute -> Decl
genAttribute (NoAutoImport l) = genCompileAttr l (PAtom "no_auto_import")
genAttribute (Inline l) = genCompileAttr l (PAtom "inline")
genAttribute (InlineSize l size) = genCompileAttr l (PTuple [PAtom "inline_size", PInteger (cast size)])

export
genErlModule : ErlModule -> List Decl
genErlModule mod =
  -- NOTE: The order of declarations are important!
  genModuleName (name mod) :: map genAttribute (attributes mod) ++ genExports (funDecls mod) ++ map genFunDef (funDecls mod)
  where
    genModuleName : ErlModuleName -> Decl
    genModuleName (MkModuleName l name) = ADModule l name
    genExport : ErlFunDecl -> Decl
    genExport (MkFunDecl l visibility name args body) = ADExport l [(name, length args)]
    genExports : List ErlFunDecl -> List Decl
    genExports funDecls = map genExport $ filter (\(MkFunDecl l visibility name args body) => visibility == Public) funDecls
    genFunDef : ErlFunDecl -> Decl
    genFunDef (MkFunDecl l visibility name args body) =
      let (vs, varNames) = initEVars args
      in ADFunDef l name (length args) [MkFunClause l (map (APVar l) varNames) [] [genErlExpr vs body]]


-- PROOFS

mutual
  export
  thin : {outer, inner : _} -> (n : Name) -> ErlExpr (outer ++ inner) -> ErlExpr (outer ++ n :: inner)
  thin n (ELocal {idx} l prf) =
    let MkVar var' = insertVar {n} idx prf
    in ELocal l var'
  thin n (ERef l modName fnName) = ERef l (thin n modName) (thin n fnName)
  thin {outer} {inner} n (ELam l args body) =
    let body' = assert_total (thin {outer = args ++ outer} {inner = inner} n (rewrite sym (appendAssociative args outer inner) in body))
    in ELam l args (rewrite appendAssociative args outer (n :: inner) in body')
  thin n (EApp l x args) = EApp l (thin n x) (assert_total (map (thin n) args))
  thin n (EOp l opName x y) = EOp l opName (thin n x) (thin n y)
  thin n (ECon l name xs) = ECon l name (assert_total (map (thin n) xs))
  thin n (EConstCase l sc alts def) = EConstCase l (thin n sc) (assert_total (map (thinConstAlt n) alts)) (thin n def)
  thin n (EMatcherCase l sc alts def) = EMatcherCase l (thin n sc) (assert_total (map (thinErlMatcher n) alts)) (thin n def)
  thin n (EReceive l alts timeout def) = EReceive l (assert_total (map (thinErlMatcher n) alts)) (thin n timeout) (thin n def)
  thin {outer} {inner} n (ETryCatch l expr okVar okFun errorVar errorFun) =
    let okFun' = thin {outer = okVar :: outer} {inner} n okFun
        errorFun' = thin {outer = errorVar :: outer} {inner} n errorFun
    in ETryCatch l (thin n expr) okVar okFun' errorVar errorFun'
  thin n (EIdrisConstant l x) = EIdrisConstant l x
  thin n (EAtom l x) = EAtom l x
  thin n (EChar l x) = EChar l x
  thin n (EFloat l x) = EFloat l x
  thin n (EInteger l x) = EInteger l x
  thin n (ECharlist l x) = ECharlist l x
  thin n (EBinary l x) = EBinary l x
  thin n (ENil l) = ENil l
  thin n (ECons l x y) = ECons l (thin n x) (thin n y)
  thin n (ETuple l xs) = ETuple l (assert_total (map (thin n) xs))
  thin n (EMap l xs) = EMap l (assert_total (map (\(key, value) => (thin n key, thin n value)) xs))
  thin n (EBufferNew l size) = EBufferNew l (thin n size)
  thin n (EBufferSetByte l bin loc value) = EBufferSetByte l (thin n bin) (thin n loc) (thin n value)
  thin n (EBufferGetByte l bin loc) = EBufferGetByte l (thin n bin) (thin n loc)
  thin n (EBufferSetInt l bin loc value) = EBufferSetInt l (thin n bin) (thin n loc) (thin n value)
  thin n (EBufferGetInt l bin loc) = EBufferGetInt l (thin n bin) (thin n loc)
  thin n (EBufferSetDouble l bin loc value) = EBufferSetDouble l (thin n bin) (thin n loc) (thin n value)
  thin n (EBufferGetDouble l bin loc) = EBufferGetDouble l (thin n bin) (thin n loc)
  thin n (EBufferSetString l bin loc value) = EBufferSetString l (thin n bin) (thin n loc) (thin n value)
  thin n (EBufferGetString l bin loc len) = EBufferGetString l (thin n bin) (thin n loc) (thin n len)

  thinConstAlt : {outer, inner : _} -> (n : Name) -> ErlConstAlt (outer ++ inner) -> ErlConstAlt (outer ++ n :: inner)
  thinConstAlt n (MkConstAlt c body) = MkConstAlt c (thin n body)

  thinErlMatcher : {outer, inner : _} -> (n : Name) -> ErlMatcher (outer ++ inner) -> ErlMatcher (outer ++ n :: inner)
  thinErlMatcher n (MExact x) = MExact (thin n x)
  thinErlMatcher n MAny = MAny
  thinErlMatcher n MCodepoint = MCodepoint
  thinErlMatcher n MInteger = MInteger
  thinErlMatcher n MFloat = MFloat
  thinErlMatcher n MAtom = MAtom
  thinErlMatcher n MBinary = MBinary
  thinErlMatcher n MMap = MMap
  thinErlMatcher n MPid = MPid
  thinErlMatcher n MRef = MRef
  thinErlMatcher n MPort = MPort
  thinErlMatcher n MAnyList = MAnyList
  thinErlMatcher n MNil = MNil
  thinErlMatcher {outer} {inner} n (MCons x y hdVar tlVar fun) =
    let fun' = thin {outer = hdVar :: tlVar :: outer} {inner} n fun
    in MCons (thinErlMatcher n x) (thinErlMatcher n y) hdVar tlVar fun'
  thinErlMatcher {outer} {inner} n (MList {args} xs fun) =
    let fun' = thin {outer = args ++ outer} {inner = inner} n (rewrite sym (appendAssociative args outer inner) in fun)
    in MList (thinErlMatchers {outer} {inner} n xs) (rewrite appendAssociative args outer (n :: inner) in fun')
  thinErlMatcher {outer} {inner} n (MTuple {args} xs fun) =
    let fun' = thin {outer = args ++ outer} {inner = inner} n (rewrite sym (appendAssociative args outer inner) in fun)
    in MTuple (thinErlMatchers {outer} {inner} n xs) (rewrite appendAssociative args outer (n :: inner) in fun')
  thinErlMatcher {outer} {inner} n (MMapSubset {args} xs fun) =
    let fun' = thin {outer = args ++ outer} {inner = inner} n (rewrite sym (appendAssociative args outer inner) in fun)
    in MMapSubset (thinErlMapEntryMatchers {outer} {inner} n xs) (rewrite appendAssociative args outer (n :: inner) in fun')
  thinErlMatcher n (MFun arity) = MFun arity
  thinErlMatcher {outer} {inner} n (MTransform matcher newVar fun) =
    let fun' = thin {outer = newVar :: outer} {inner} n fun
    in MTransform (thinErlMatcher n matcher) newVar fun'

  thinErlMatchers : {outer, inner : _} -> (n : Name) -> ErlMatchers (outer ++ inner) args -> ErlMatchers (outer ++ n :: inner) args
  thinErlMatchers n [] = []
  thinErlMatchers n ((::) {newVar} x xs) = (::) {newVar} (thinErlMatcher n x) (thinErlMatchers n xs)

  thinErlMapEntryMatchers : {outer, inner : _} -> (n : Name) -> ErlMapEntryMatchers (outer ++ inner) args -> ErlMapEntryMatchers (outer ++ n :: inner) args
  thinErlMapEntryMatchers n [] = []
  thinErlMapEntryMatchers n ((::) {newVar} (key, value) xs) = (::) {newVar} (thin n key, thinErlMatcher n value) (thinErlMapEntryMatchers n xs)

  export
  Weaken ErlExpr where
    weaken {n} expr = thin {outer=[]} n expr
