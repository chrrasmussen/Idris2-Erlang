module Compiler.Erlang.IR.AbstractFormat

import public Data.Vect
import public Data.List1

import public Compiler.Erlang.Utils.PrimTerm


%default total


-- This file contain representations of Erlang's Abstract Format,
-- as described here: https://erlang.org/doc/apps/erts/absform.html


public export
Line : Type
Line = Int


public export
data Literal : Type where
  ALAtom : Line -> String -> Literal
  ALChar : Line -> Char -> Literal
  ALFloat : Line -> Double -> Literal
  ALInteger : Line -> Integer -> Literal
  ALCharlist : Line -> String -> Literal

public export
data MapFieldAssoc : Type -> Type where
  MkAssoc : Line -> (key : a) -> (value : a) -> MapFieldAssoc a

public export
data MapFieldExact : Type -> Type where
  MkExact : Line -> (key : a) -> (value : a) -> MapFieldExact a

public export
data BitSignedness = ABUnsigned | ABSigned

public export
data BitEndianness = ABBig | ABLittle | ABNative

-- Unit is a value from 1-256 where `FZ` is representing the value 1
export
data BitUnit = MkBitUnit (Fin 256)

export
bitUnitToNat : BitUnit -> Nat
bitUnitToNat (MkBitUnit x) = finToNat x + 1

export
natToBitUnit : Nat -> Maybe BitUnit
natToBitUnit x = MkBitUnit <$> natToFin (x `minus` 1) 256

export
fromInteger : (x : Integer) -> {auto prf : So (fromInteger x >= 1 && fromInteger x <= 256)} -> BitUnit
fromInteger x =
  fromMaybe (MkBitUnit 0) (natToBitUnit (integerToNat x))

-- SOURCE: https://www.erlang.org/doc/reference_manual/expressions.html#bit-syntax-expressions
public export
data TypeSpecifierList : Type where
  ABInteger   : {default ABUnsigned signedness : BitSignedness} -> {default ABBig endianness : BitEndianness} -> {default 1 unit : BitUnit} -> TypeSpecifierList
  ABFloat     : {default ABBig endianness : BitEndianness} -> {default 1 unit : BitUnit} -> TypeSpecifierList
  ABBinary    : {default 8 unit : BitUnit} -> TypeSpecifierList
  -- `bytes` is shorthand for `binary`
  ABBitstring : {default 1 unit : BitUnit} -> TypeSpecifierList
  -- `bits` is shorthand for `bitstring`
  ABUtf8      : TypeSpecifierList
  ABUtf16     : {default ABBig endianness : BitEndianness} -> TypeSpecifierList
  ABUtf32     : {default ABBig endianness : BitEndianness} -> TypeSpecifierList

public export
data BitSize : Type where
  ABSDefault : BitSize
  ABSInteger : Line -> Integer -> BitSize
  ABSVar : Line -> String -> BitSize

public export
data BitSegment : Type -> Type where
  MkBitSegment : Line -> a -> (size : BitSize) -> TypeSpecifierList -> BitSegment a

public export
data BitPattern : Type where
  ABPInteger : Line -> Integer -> BitPattern
  ABPFloat : Line -> Double -> BitPattern
  ABPCharlist : Line -> String -> BitPattern
  ABPUniversal : Line -> BitPattern -- Wildcard matching
  ABPVar : Line -> (name : String) -> BitPattern

public export
data Pattern : Type where
  APLiteral : Literal -> Pattern
  APBitstring : Line -> List (BitSegment BitPattern) -> Pattern
  -- Compound pattern
  APCons : Line -> Pattern -> Pattern -> Pattern
  APMap : Line -> List (MapFieldExact Pattern) -> Pattern
  APNil : Line -> Pattern
  -- Operator pattern
  -- Paranthesized pattern
  -- Record field index pattern
  -- Record pattern
  APTuple : Line -> List Pattern -> Pattern
  APUniversal : Line -> Pattern -- Wildcard matching
  APVar : Line -> (name : String) -> Pattern

public export
data Guard : Type where
  AGLiteral : Literal -> Guard
  -- Bitstring constructor
  AGCons : Line -> Guard -> Guard -> Guard
  AGFunCall : Line -> (fnName : String) -> List Guard -> Guard -- NOTE: Function calls are restricted to the 'erlang' module
  -- Map creation
  -- Map update
  AGNil : Line -> Guard
  AGOp : Line -> (op : String) -> Guard -> Guard -> Guard
  -- Paranthesized guard
  -- Record creation
  -- Record field access
  -- Record field index
  AGTuple : Line -> List Guard -> Guard
  AGVar : Line -> (name : String) -> Guard

-- A guard sequence `Gd1, Gd2; Gd3, Gd4` has the same meaning as:
-- `(Gd1 andalso Gd2) orelse (Gd3 andalso Gd4)`
--
-- A guard sequence is represented by the type `List GuardAlt`:
-- * You can have zero or more `GuardAlt` expressions.
-- * Each `GuardAlt` needs to have at least one `Guard` expression.
public export
data GuardAlt : Type where
  MkGuardAlt : (guards : List1 Guard) -> GuardAlt

mutual
  public export
  data Expr : Type where
    AELiteral : Literal -> Expr
    AEBitstring : Line -> List (BitSegment Expr) -> Expr
    -- Bitstring comprehension
    AEBlock : Line -> (body : List1 Expr) -> Expr
    AECase : Line -> Expr -> (clauses : List1 CaseClause) -> Expr
    -- Catch expression
    AECons : Line -> Expr -> Expr -> Expr
    -- Function reference
    AEFun : Line -> (arity : Nat) -> (clauses : List1 (FunClause arity)) -> Expr
    AEFunCall : Line -> (fn : Expr) -> (args : List Expr) -> Expr
    AERemoteRef : Line -> (modName : Expr) -> (fnName : Expr) -> Expr
    -- If expression
    -- List comprehension
    AEMapNew : Line -> List (MapFieldAssoc Expr) -> Expr
    -- Map update
    AEMatch : Line -> (lhs : Pattern) -> (rhs : Expr) -> Expr
    AENil : Line -> Expr
    AEOp : Line -> (op : String) -> (lhs : Expr) -> (rhs : Expr) -> Expr
    -- Paranthesized expression
    AEReceive : Line -> List CaseClause -> ReceiveTimeout -> Expr
    -- Record creation expression
    -- Record update expression
    AETuple : Line -> List Expr -> Expr
    AETry : Line -> (statements : List1 Expr) -> List CaseClause -> List CatchClause -> (afterBody : List Expr) -> Expr
    AEVar : Line -> (name : String) -> Expr

  public export
  data FunClause : Nat -> Type where
    MkFunClause : Line -> Vect arity Pattern -> List GuardAlt -> (body : List1 Expr) -> FunClause arity

  public export
  data CaseClause : Type where
    MkCaseClause : Line -> Pattern -> List GuardAlt -> (body : List1 Expr) -> CaseClause

  public export
  data CatchClause : Type where
    MkCatchClause : Line -> (class : Pattern) -> (reason : Pattern) -> (stacktrace : Pattern) -> List GuardAlt -> (body : List1 Expr) -> CatchClause

  public export
  data ReceiveTimeout : Type where
    NoTimeout : ReceiveTimeout
    TimeoutAfter : (ms : Expr) -> (body : List1 Expr) -> ReceiveTimeout

public export
data Decl : Type where
  ADExport : Line -> List (String, Nat) -> Decl
  -- ADImport
  ADModule : Line -> (name : String) -> Decl
  -- ADFile
  ADFunDef : Line -> (name : String) -> (arity : Nat) -> (clauses : List1 (FunClause arity)) -> Decl
  -- ADFunSpec
  -- ADRecord
  -- ADType
  ADAttribute : Line -> (attr : String) -> (value : PrimTerm) -> Decl


-- LINE HELPERS

export
getLiteralLine : Literal -> Line
getLiteralLine (ALAtom l _) = l
getLiteralLine (ALChar l _) = l
getLiteralLine (ALFloat l _) = l
getLiteralLine (ALInteger l _) = l
getLiteralLine (ALCharlist l _) = l

export
getGuardLine : Guard -> Line
getGuardLine (AGLiteral lit) = getLiteralLine lit
getGuardLine (AGCons l _ _) = l
getGuardLine (AGFunCall l _ _) = l
getGuardLine (AGNil l) = l
getGuardLine (AGOp l _ _ _) = l
getGuardLine (AGTuple l _) = l
getGuardLine (AGVar l _) = l


-- TYPE SPECIFIER LIST HELPERS

export
getBitSignedness : TypeSpecifierList -> Maybe BitSignedness
getBitSignedness (ABInteger {signedness}) = Just signedness
getBitSignedness _ = Nothing

export
getBitEndianness : TypeSpecifierList -> Maybe BitEndianness
getBitEndianness (ABInteger {endianness}) = Just endianness
getBitEndianness (ABFloat {endianness}) = Just endianness
getBitEndianness (ABUtf16 {endianness}) = Just endianness
getBitEndianness (ABUtf32 {endianness}) = Just endianness
getBitEndianness _ = Nothing

export
getBitUnit : TypeSpecifierList -> Maybe BitUnit
getBitUnit (ABInteger {unit}) = Just unit
getBitUnit (ABFloat {unit}) = Just unit
getBitUnit (ABBinary {unit}) = Just unit
getBitUnit (ABBitstring {unit}) = Just unit
getBitUnit _ = Nothing
