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

namespace EVars
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


-- LOCAL VARIABLES

namespace LocalVars
  export
  record LocalVars where
    constructor MkLocalVars
    nextIndex : Int

  export
  record LocalVar where
    constructor MkLocalVar
    index : Int

  export
  initLocalVars : LocalVars
  initLocalVars = MkLocalVars 0

  export
  addLocalVar : State LocalVars LocalVar
  addLocalVar = do
    (MkLocalVars nextIndex) <- get
    put (MkLocalVars (nextIndex + 1))
    pure (MkLocalVar nextIndex)

  export
  Show LocalVar where
    show (MkLocalVar index) = "L" ++ show index


-- HELPER FUNCTIONS

toNonEmptyFunClauses : (clauses : List (FunClause arity)) -> (def : FunClause arity) -> Vect (S (length clauses)) (FunClause arity)
toNonEmptyFunClauses [] def = [def]
toNonEmptyFunClauses (x :: xs) def = x :: toNonEmptyFunClauses xs def

trueGuard : Line -> Guard
trueGuard l = AGLiteral (ALAtom l "true")

record MatcherClause where
  constructor MkMatcherClause
  pattern : Pattern
  guard : Guard
  body : Expr
  globals : List (LocalVar, Expr)

wrapImmediatelyInvokedFunExpr : Line -> Expr -> Expr
wrapImmediatelyInvokedFunExpr l body =
  AEFunCall l (AEFun l 0 [MkFunClause l [] [] [body]]) []

wrapGlobal : Line -> (LocalVar, Expr) -> Expr -> Expr
wrapGlobal l (var, expr) acc =
  AEFunCall l (AEFun l 1 [MkFunClause l [APVar l (show var)] [] [acc]]) [expr]


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
  genErlExpr : EVars vars -> ErlExpr vars -> State LocalVars Expr
  genErlExpr vs (ELocal l prf) =
    pure $ AEVar l (lookupEVar prf vs)
  genErlExpr vs (ERef l modName fnName) =
    pure $ AERemoteRef l !(genErlExpr vs modName) !(genErlExpr vs fnName)
  genErlExpr vs (ELam l args body) = do
    let (vs', varNames) = extendEVars args vs
    body' <- genErlExpr vs' body
    pure $  AEFun l (length args) [MkFunClause l (map (APVar l) varNames) [] [body']]
  genErlExpr vs (EApp l expr args) = do
    expr' <- genErlExpr vs expr
    args' <- assert_total $ traverse (genErlExpr vs) args
    pure $ AEFunCall l expr' args'
  genErlExpr vs (EOp l opName x y) =
    pure $ AEOp l opName !(genErlExpr vs x) !(genErlExpr vs y)
  genErlExpr vs (ECon l name exprs) = do
    exprs' <- assert_total $ traverse (genErlExpr vs) exprs
    pure $ AETuple l (AELiteral (ALAtom l name) :: exprs')
  genErlExpr vs (EConstCase l sc clauses def) = do
    let defClause = MkFunClause l [APUniversal l] [] [!(genErlExpr vs def)]
    generatedClauses <- assert_total $ traverse (genErlConstAlt l vs) clauses
    let caseExpr = AEFun l 1 (toNonEmptyFunClauses generatedClauses defClause)
    pure $  AEFunCall l caseExpr [!(genErlExpr vs sc)]
  genErlExpr vs (EMatcherCase l sc matchers def) = do
    let defClause = MkFunClause l [APUniversal l] [] [!(genErlExpr vs def)]
    generatedClauses <- assert_total (traverse (genErlMatcher l vs) matchers)
    let caseExpr = AEFun l 1 (toNonEmptyFunClauses (map fst generatedClauses) defClause)
    pure $ foldr (wrapGlobal l) (AEFunCall l caseExpr [!(genErlExpr vs sc)]) (concat (map snd generatedClauses))
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
  genErlExpr vs (EReceive l matchers timeout def) = do
    let defClause = TimeoutAfter !(genErlExpr vs timeout) [!(genErlExpr vs def)]
    generatedClauses <- assert_total (traverse (genErlMatcherCaseClause l vs) matchers)
    let receiveExpr = wrapImmediatelyInvokedFunExpr l $ AEReceive l (map fst generatedClauses) defClause
    pure $ foldr (wrapGlobal l) receiveExpr (concat (map snd generatedClauses))
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
  genErlExpr vs (ETryCatch l expr okVar okFun errorVar errorFun) = do
    let tryCaseClause = MkCaseClause l (APVar l "Value") [] [AETuple l [AELiteral (ALAtom l "ok"), AEVar l "Value"]]
    let tryCatchClause = MkCatchClause l (APVar l "Class") (APVar l "Reason") (APVar l "Stacktrace") [] [AETuple l [AELiteral (ALAtom l "error"), AETuple l [AEVar l "Class", AEVar l "Reason", AEVar l "Stacktrace"]]]
    let tryResult = wrapImmediatelyInvokedFunExpr l $ AETry l [!(genErlExpr vs expr)] [tryCaseClause] [tryCatchClause] []
    let (okVs, _) = extendEVars [okVar] vs
    let (errorVs, _) = extendEVars [errorVar] vs
    let okBody = AEFun l 1 [MkFunClause l [APVar l (lookupEVar First okVs)] [] [!(genErlExpr okVs okFun)]]
    let errorBody = AEFun l 1 [MkFunClause l [APVar l (lookupEVar First errorVs)] [] [!(genErlExpr errorVs errorFun)]]
    let okClause = MkFunClause l [APTuple l [APLiteral (ALAtom l "ok"), APVar l "Value"]] [] [AEFunCall l okBody [AEVar l "Value"]]
    let errorClause = MkFunClause l [APTuple l [APLiteral (ALAtom l "error"), APVar l "Error"]] [] [AEFunCall l errorBody [AEVar l "Error"]]
    pure $ AEFunCall l (AEFun l 1 [okClause, errorClause]) [tryResult]
  genErlExpr vs (EIdrisConstant l x) =
    pure $ genIdrisConstant l (genBinary l) AELiteral x
  genErlExpr vs (EAtom l x) =
    pure $ AELiteral (ALAtom l x)
  genErlExpr vs (EChar l x) =
    pure $ AELiteral (ALChar l x)
  genErlExpr vs (EFloat l x) =
    pure $ AELiteral (ALFloat l x)
  genErlExpr vs (EInteger l x) =
    pure $ AELiteral (ALInteger l x)
  genErlExpr vs (ECharlist l x) =
    pure $ AELiteral (ALCharlist l x)
  genErlExpr vs (EBinary l x) =
    pure $ genBinary l x
  genErlExpr vs (ENil l) =
    pure $ AENil l
  genErlExpr vs (ECons l x y) =
    pure $ AECons l !(genErlExpr vs x) !(genErlExpr vs y)
  genErlExpr vs (ETuple l elems) = do
    elems' <- assert_total $ traverse (genErlExpr vs) elems
    pure $ AETuple l elems'
  genErlExpr vs (EMap l entries) = do
    entries' <- assert_total $ traverse (\(key, value) => pure $ MkAssoc l !(genErlExpr vs key) !(genErlExpr vs value)) entries
    pure $ AEMapNew l entries'
  genErlExpr vs (EBufferNew l size) =
    pure $ bufferNew l !(genErlExpr vs size)
  genErlExpr vs (EBufferSetByte l bin loc value) =
    pure $ bufferSetByte l !(genErlExpr vs bin) !(genErlExpr vs loc) !(genErlExpr vs value)
  genErlExpr vs (EBufferGetByte l bin loc) =
    pure $ bufferGetByte l !(genErlExpr vs bin) !(genErlExpr vs loc)
  genErlExpr vs (EBufferSetInt l bin loc value) =
    pure $ bufferSetInt l !(genErlExpr vs bin) !(genErlExpr vs loc) !(genErlExpr vs value)
  genErlExpr vs (EBufferGetInt l bin loc) =
    pure $ bufferGetInt l !(genErlExpr vs bin) !(genErlExpr vs loc)
  genErlExpr vs (EBufferSetDouble l bin loc value) =
    pure $ bufferSetDouble l !(genErlExpr vs bin) !(genErlExpr vs loc) !(genErlExpr vs value)
  genErlExpr vs (EBufferGetDouble l bin loc) =
    pure $ bufferGetDouble l !(genErlExpr vs bin) !(genErlExpr vs loc)
  genErlExpr vs (EBufferSetString l bin loc value) =
    pure $ bufferSetString l !(genErlExpr vs bin) !(genErlExpr vs loc) !(genErlExpr vs value)
  genErlExpr vs (EBufferGetString l bin loc len) =
    pure $ bufferGetString l !(genErlExpr vs bin) !(genErlExpr vs loc) !(genErlExpr vs len)

  genErlConstAlt : Line -> EVars vars -> ErlConstAlt vars -> State LocalVars (FunClause 1)
  genErlConstAlt l vs (MkConstAlt constant body) = do
    let pattern = genIdrisConstant l stringPattern APLiteral constant
    pure $ MkFunClause l [pattern] [] [!(genErlExpr vs body)]
  where
    stringPattern : String -> Pattern
    stringPattern str = APBitstring l [MkBitSegment l (ABPCharlist l str) ABSDefault (MkTSL Nothing Nothing (Just ABUtf8) Nothing)]

  genErlMatcher : Line -> EVars vars -> ErlMatcher vars -> State LocalVars (FunClause 1, List (LocalVar, Expr))
  genErlMatcher l vs matcher = do
    clause <- readErlMatcher l vs matcher
    pure (MkFunClause l [pattern clause] [MkGuardAlt [guard clause]] [body clause], globals clause)

  genErlMatcherCaseClause : Line -> EVars vars -> ErlMatcher vars -> State LocalVars (CaseClause, List (LocalVar, Expr))
  genErlMatcherCaseClause l vs matcher = do
    clause <- readErlMatcher l vs matcher
    pure (MkCaseClause l (pattern clause) [MkGuardAlt [guard clause]] [body clause], globals clause)

  readErlMatcher : Line -> EVars vars -> ErlMatcher vars -> State LocalVars MatcherClause
  readErlMatcher l vs (MExact expr) = do
    localVar <- addLocalVar
    matchExactVar <- addLocalVar
    matchExactValue <- genErlExpr vs expr
    let pattern = APVar l (show localVar)
    let guard = AGOp l "=:=" (AGVar l (show localVar)) (AGVar l (show matchExactVar))
    let body = AEVar l (show localVar)
    pure $ MkMatcherClause pattern guard body [(matchExactVar, matchExactValue)]
  readErlMatcher l vs MAny = do
    localVar <- addLocalVar
    let pattern = APVar l (show localVar)
    let guard = trueGuard l
    let body = AEVar l (show localVar)
    pure $ MkMatcherClause pattern guard body []
  readErlMatcher l vs MCodepoint = do
    localVar <- addLocalVar
    let pattern = APVar l (show localVar)
    let guardVar = AGVar l (show localVar)
    let isIntegerGuard = AGFunCall l "is_integer" [guardVar]
    let aboveMinValueGuard = AGOp l ">=" guardVar (AGLiteral (ALInteger l 0))
    let belowMaxValueGuard = AGOp l "=<" guardVar (AGLiteral (ALInteger l 1114111)) -- 0x10FFFF
    let guard = AGOp l "andalso" isIntegerGuard (AGOp l "andalso" aboveMinValueGuard belowMaxValueGuard)
    let body = AEVar l (show localVar)
    pure $ MkMatcherClause pattern guard body []
  readErlMatcher l vs MInteger = readSimpleGuardMatcherClause l vs "is_integer"
  readErlMatcher l vs MFloat = readSimpleGuardMatcherClause l vs "is_float"
  readErlMatcher l vs MAtom = readSimpleGuardMatcherClause l vs "is_atom"
  readErlMatcher l vs MBinary = readSimpleGuardMatcherClause l vs "is_binary"
  readErlMatcher l vs MMap = readSimpleGuardMatcherClause l vs "is_map"
  readErlMatcher l vs MPid = readSimpleGuardMatcherClause l vs "is_pid"
  readErlMatcher l vs MRef = readSimpleGuardMatcherClause l vs "is_reference"
  readErlMatcher l vs MPort = readSimpleGuardMatcherClause l vs "is_port"
  readErlMatcher l vs MAnyList = readSimpleGuardMatcherClause l vs "is_list"
  readErlMatcher l vs MNil = do
    let pattern = APNil l
    let guard = trueGuard l
    let body = AENil l
    pure $ MkMatcherClause pattern guard body []
  readErlMatcher l vs (MCons x y hdVar tlVar fun) = do
    xClause <- readErlMatcher l vs x
    yClause <- readErlMatcher l vs y
    let (vs', varNames) = extendEVars [hdVar, tlVar] vs
    let wrappedFun = AEFun l 2 [MkFunClause l (map (APVar l) varNames) [] [!(genErlExpr vs' fun)]]
    let pattern = APCons l (pattern xClause) (pattern yClause)
    let guard = AGOp l "andalso" (guard xClause) (guard yClause)
    let body = AEFunCall l wrappedFun [body xClause, body yClause]
    pure $ MkMatcherClause pattern guard body (globals xClause ++ globals yClause)
  readErlMatcher l vs (MList {args} matchers fun) = do
    clauses <- readErlMatchers l vs matchers
    let (vs', varNames) = extendEVars args vs
    let wrappedFun = AEFun l (length args) [MkFunClause l (map (APVar l) varNames) [] [!(genErlExpr vs' fun)]]
    let pattern = foldr (\clause, acc => APCons l (pattern clause) acc) (APNil l) clauses
    let guard = foldl (\acc, clause => AGOp l "andalso" (guard clause) acc) (trueGuard l) clauses
    let body = AEFunCall l wrappedFun (map body clauses)
    pure $ MkMatcherClause pattern guard body (concat (map globals clauses))
  readErlMatcher l vs (MTuple {args} matchers fun) = do
    clauses <- readErlMatchers l vs matchers
    let (vs', varNames) = extendEVars args vs
    let wrappedFun = AEFun l (length args) [MkFunClause l (map (APVar l) varNames) [] [!(genErlExpr vs' fun)]]
    let pattern = APTuple l (map pattern clauses)
    let guard = foldl (\acc, clause => AGOp l "andalso" (guard clause) acc) (trueGuard l) clauses
    let body = AEFunCall l wrappedFun (map body clauses)
    pure $ MkMatcherClause pattern guard body (concat (map globals clauses))
  readErlMatcher l vs (MMapSubset {args} matchers fun) = do
    clauses <- readErlMapEntryMatchers l vs matchers
    let (vs', varNames) = extendEVars args vs
    let wrappedFun = AEFun l (length args) [MkFunClause l (map (APVar l) varNames) [] [!(genErlExpr vs' fun)]]
    let pattern = APMap l (map (\(keyVar, clause) => MkExact l (APVar l (show keyVar)) (pattern clause)) clauses)
    let guard = foldl (\acc, (keyVar, clause) => AGOp l "andalso" (guard clause) acc) (trueGuard l) clauses
    let body = AEFunCall l wrappedFun (map (\(keyVar, clause) => body clause) clauses)
    pure $ MkMatcherClause pattern guard body (concat (map (globals . snd) clauses))
  readErlMatcher l vs (MFun arity) = do
    localVar <- addLocalVar
    let pattern = APVar l (show localVar)
    let guard = AGFunCall l "is_function" [AGVar l (show localVar), AGLiteral (ALInteger l (cast arity))]
    let body = AEVar l (show localVar)
    pure $ MkMatcherClause pattern guard body []
  readErlMatcher l vs (MTransform x xVar fun) = do
    xClause <- readErlMatcher l vs x
    let (vs', _) = extendEVars [xVar] vs
    let pattern = pattern xClause
    let guard = guard xClause
    let funClause = MkFunClause l [APVar l (lookupEVar First vs')] [] [!(genErlExpr vs' fun)]
    let body = AEFunCall l (AEFun l 1 [funClause]) [body xClause]
    pure $ MkMatcherClause pattern guard body (globals xClause)

  readSimpleGuardMatcherClause : Line -> EVars vars -> (fnName : String) -> State LocalVars MatcherClause
  readSimpleGuardMatcherClause l vs fnName = do
    localVar <- addLocalVar
    let pattern = APVar l (show localVar)
    let guard = AGFunCall l fnName [AGVar l (show localVar)]
    let body = AEVar l (show localVar)
    pure $ MkMatcherClause pattern guard body []

  readErlMatchers : Line -> EVars vars -> ErlMatchers vars args -> State LocalVars (List MatcherClause)
  readErlMatchers l vs [] =
    pure []
  readErlMatchers l vs (x :: xs) = do
    xClause <- readErlMatcher l vs x
    xsClauses <- readErlMatchers l vs xs
    pure (xClause :: xsClauses)

  readErlMapEntryMatchers : Line -> EVars vars -> ErlMapEntryMatchers vars args -> State LocalVars (List (LocalVar, MatcherClause))
  readErlMapEntryMatchers l vs [] =
    pure []
  readErlMapEntryMatchers l vs ((key, matcher) :: xs) = do
    keyVar <- addLocalVar
    keyValue <- genErlExpr vs key
    xClause <- readErlMatcher l vs matcher
    let xClause' = record { globals $= ((keyVar, keyValue) ::) } xClause
    xsClauses <- readErlMapEntryMatchers l vs xs
    pure ((keyVar, xClause') :: xsClauses)

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
          expr = evalState (genErlExpr vs body) initLocalVars
      in ADFunDef l name (length args) [MkFunClause l (map (APVar l) varNames) [] [expr]]


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
