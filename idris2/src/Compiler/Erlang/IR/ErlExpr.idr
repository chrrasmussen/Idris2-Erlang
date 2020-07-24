module Compiler.Erlang.IR.ErlExpr

import public Data.Vect
import Control.Monad.State

import public Compiler.Erlang.IR.AbstractFormat -- TODO: Only necessary because of `Line`


%default total


-- LOCAL VARIABLES

namespace LocalVars
  public export
  record LocalVar where
    constructor MkLocalVar
    varPrefix : String
    index : Int

  export
  Show LocalVar where
    show (MkLocalVar varPrefix index) = varPrefix ++ show index

  public export
  record LocalVars where
    constructor MkLocalVars
    varPrefix : String
    nextIndex : Int

  export
  initLocalVars : String -> LocalVars
  initLocalVars varPrefix = MkLocalVars varPrefix 0

  export
  newLocalVar : State LocalVars LocalVar
  newLocalVar = do
    MkLocalVars varPrefix nextIndex <- get
    put $ MkLocalVars varPrefix (nextIndex + 1)
    pure $ MkLocalVar varPrefix nextIndex


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
  | IB8 Int
  | IB16 Int
  | IB32 Int
  | IB64 Integer
  | IString String
  | IChar Char
  | IDouble Double
  | IWorldVal
  | IIntType
  | IIntegerType
  | IBits8Type
  | IBits16Type
  | IBits32Type
  | IBits64Type
  | IStringType
  | ICharType
  | IDoubleType
  | IWorldType

mutual
  public export
  data ErlExpr : Type where
    ELocal : Line -> LocalVar -> ErlExpr
    ERef : Line -> (modName : ErlExpr) -> (fnName : ErlExpr) -> ErlExpr
    ELam : Line -> (args : List LocalVar) -> ErlExpr -> ErlExpr
    ELet : Line -> (newVar : LocalVar) -> (value : ErlExpr) -> (body : ErlExpr) -> ErlExpr
    ESequence : Line -> (statements : Vect (S k) ErlExpr) -> ErlExpr
    EApp : Line -> ErlExpr -> List ErlExpr -> ErlExpr
    EOp : Line -> (op : String) -> (lhs : ErlExpr) -> (rhs : ErlExpr) -> ErlExpr
    ECon : Line -> (name : String) -> List ErlExpr -> ErlExpr
    EConstCase : Line -> (sc : ErlExpr) -> List ErlConstAlt -> (def : ErlExpr) -> ErlExpr
    EMatcherCase : Line -> (sc : ErlExpr) -> List ErlMatcher -> (def : ErlExpr) -> ErlExpr
    EReceive : Line -> List ErlMatcher -> (timeout : ErlExpr) -> (def : ErlExpr) -> ErlExpr
    ETryCatch : Line -> (tryExpr : ErlExpr) -> (okVar : LocalVar) -> (okExpr : ErlExpr) -> (errorVar : LocalVar) -> (errorExpr : ErlExpr) -> ErlExpr
    EBinaryConcat : Line -> (bin1 : ErlExpr) -> (bin2 : ErlExpr) -> ErlExpr

    EIdrisConstant : Line -> IdrisConstant -> ErlExpr
    EAtom : Line -> String -> ErlExpr
    EChar : Line -> Char -> ErlExpr
    EFloat : Line -> Double -> ErlExpr
    EInteger : Line -> Integer -> ErlExpr
    ECharlist : Line -> String -> ErlExpr
    EBinary : Line -> String -> ErlExpr
    ENil : Line -> ErlExpr
    ECons : Line -> ErlExpr -> ErlExpr -> ErlExpr
    ETuple : Line -> List ErlExpr -> ErlExpr
    EMap : Line -> List (ErlExpr, ErlExpr) -> ErlExpr

    EBufferNew       : Line -> (size : ErlExpr) -> ErlExpr
    EBufferResize    : Line -> (bin : ErlExpr) -> (newSize : ErlExpr) -> ErlExpr
    EBufferFlatten   : Line -> (bin : ErlExpr) -> (maxbytes : ErlExpr) -> ErlExpr
    EBufferSetBits8  : Line -> (bin : ErlExpr) -> (loc : ErlExpr) -> (value : ErlExpr) -> ErlExpr
    EBufferGetBits8  : Line -> (bin : ErlExpr) -> (loc : ErlExpr) -> ErlExpr
    EBufferSetBits16 : Line -> (bin : ErlExpr) -> (loc : ErlExpr) -> (value : ErlExpr) -> ErlExpr
    EBufferGetBits16 : Line -> (bin : ErlExpr) -> (loc : ErlExpr) -> ErlExpr
    EBufferSetBits32 : Line -> (bin : ErlExpr) -> (loc : ErlExpr) -> (value : ErlExpr) -> ErlExpr
    EBufferGetBits32 : Line -> (bin : ErlExpr) -> (loc : ErlExpr) -> ErlExpr
    EBufferSetBits64 : Line -> (bin : ErlExpr) -> (loc : ErlExpr) -> (value : ErlExpr) -> ErlExpr
    EBufferGetBits64 : Line -> (bin : ErlExpr) -> (loc : ErlExpr) -> ErlExpr
    EBufferSetInt32  : Line -> (bin : ErlExpr) -> (loc : ErlExpr) -> (value : ErlExpr) -> ErlExpr
    EBufferGetInt32  : Line -> (bin : ErlExpr) -> (loc : ErlExpr) -> ErlExpr
    EBufferSetInt64  : Line -> (bin : ErlExpr) -> (loc : ErlExpr) -> (value : ErlExpr) -> ErlExpr
    EBufferGetInt64  : Line -> (bin : ErlExpr) -> (loc : ErlExpr) -> ErlExpr
    EBufferSetDouble : Line -> (bin : ErlExpr) -> (loc : ErlExpr) -> (value : ErlExpr) -> ErlExpr
    EBufferGetDouble : Line -> (bin : ErlExpr) -> (loc : ErlExpr) -> ErlExpr
    EBufferSetString : Line -> (bin : ErlExpr) -> (loc : ErlExpr) -> (value : ErlExpr) -> ErlExpr
    EBufferGetString : Line -> (bin : ErlExpr) -> (loc : ErlExpr) -> (len : ErlExpr) -> ErlExpr

  public export
  data ErlConstAlt : Type where
    MkConstAlt : IdrisConstant -> ErlExpr -> ErlConstAlt

  public export
  data ErlMatcher : Type where
    MExact        : ErlExpr -> ErlMatcher
    MAny          : ErlMatcher
    MCodepoint    : ErlMatcher
    MInteger      : ErlMatcher
    MFloat        : ErlMatcher
    MAtom         : ErlMatcher
    MBinary       : ErlMatcher
    MMap          : ErlMatcher
    MPid          : ErlMatcher
    MRef          : ErlMatcher
    MPort         : ErlMatcher
    MAnyList      : ErlMatcher
    MNil          : ErlMatcher
    MCons         : ErlMatcher -> ErlMatcher -> (hdVar : LocalVar) -> (tlVar : LocalVar) -> ErlExpr -> ErlMatcher
    MList         : List (LocalVar, ErlMatcher) -> ErlExpr -> ErlMatcher
    MTuple        : List (LocalVar, ErlMatcher) -> ErlExpr -> ErlMatcher
    MTaggedTuple  : String -> List (LocalVar, ErlMatcher) -> ErlExpr -> ErlMatcher
    MMapSubset    : List (LocalVar, ErlExpr, ErlMatcher) -> ErlExpr -> ErlMatcher
    MFun          : (arity : Nat) -> ErlMatcher
    MTransform    : ErlMatcher -> (newVar : LocalVar) -> ErlExpr -> ErlMatcher
    MConst        : ErlMatcher -> ErlExpr -> ErlMatcher

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
  MkFunDecl : Line -> (visibility : ErlVisibility) -> (name : String) -> (vars : List LocalVar) -> ErlExpr -> ErlFunDecl

public export
record ErlModule where
  constructor MkModule
  name : ErlModuleName
  attributes : List ErlAttribute
  funDecls : List ErlFunDecl
