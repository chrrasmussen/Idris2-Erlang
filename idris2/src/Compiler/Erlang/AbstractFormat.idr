module Compiler.Erlang.AbstractFormat

import public Data.Vect
import Data.Fin
import Data.List

import public Compiler.Erlang.PrimTerm


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
data BitType = ABInteger | ABFloat | ABBinary | ABBytes | ABBitstring | ABBits | ABUtf8 | ABUtf16 | ABUtf32

public export
data BitSignedness = ABUnsigned | ABSigned

public export
data BitEndianness = ABBig | ABLittle | ABNative

-- Unit is a value from 1-256 where `FZ` is representing the value 1
public export
data BitUnit = MkBitUnit (Fin 256)

public export
data BitSize : Type where
  ABSDefault : BitSize
  ABSInteger : Line -> Integer -> BitSize
  ABSVar : Line -> String -> BitSize

public export
record TypeSpecifierList where
  constructor MkTSL
  signedness : Maybe BitSignedness
  endianness : Maybe BitEndianness
  type : Maybe BitType
  unit : Maybe BitUnit

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
  MkGuardAlt : (guards : Vect (S k) Guard) -> GuardAlt

mutual
  public export
  data Expr : Type where
    AELiteral : Literal -> Expr
    AEBitstring : Line -> List (BitSegment Expr) -> Expr
    -- Bitstring comprehension
    AEBlock : Line -> (body : Vect (S k) Expr) -> Expr
    AECase : Line -> Expr -> (clauses : Vect (S k) CaseClause) -> Expr
    -- Catch expression
    AECons : Line -> Expr -> Expr -> Expr
    -- Function reference
    AEFun : Line -> (arity : Nat) -> (clauses : Vect (S k) (FunClause arity)) -> Expr
    AEFunCall : Line -> (fun : Expr) -> (args : List Expr) -> Expr
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
    AETry : Line -> (sc : Vect (S k) Expr) -> List CaseClause -> List CatchClause -> (afterBody : List Expr) -> Expr
    AEVar : Line -> (name : String) -> Expr

  public export
  data FunClause : Nat -> Type where
    MkFunClause : Line -> Vect arity Pattern -> List GuardAlt -> (body : Vect (S k) Expr) -> FunClause arity

  public export
  data CaseClause : Type where
    MkCaseClause : Line -> Pattern -> List GuardAlt -> (body : Vect (S k) Expr) -> CaseClause

  public export
  data CatchClause : Type where
    MkCatchClause : Line -> (class : Pattern) -> (reason : Pattern) -> (stacktrace : Pattern) -> List GuardAlt -> (body : Vect (S k) Expr) -> CatchClause

  public export
  data ReceiveTimeout : Type where
    NoTimeout : ReceiveTimeout
    TimeoutAfter : (ms : Expr) -> (body : Vect (S k) Expr) -> ReceiveTimeout

public export
data Decl : Type where
  ADExport : Line -> List (String, Nat) -> Decl
  -- ADImport
  ADModule : Line -> (name : String) -> Decl
  -- ADFile
  ADFunDef : Line -> (name : String) -> (arity : Nat) -> (clauses : Vect (S k) (FunClause arity)) -> Decl
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


-- CODE GENERATION

genLine : Line -> PrimTerm
genLine l = PInteger (cast l)

genLiteral : Literal -> PrimTerm
genLiteral (ALAtom l x) = PTuple [PAtom "atom", genLine l, PAtom x]
genLiteral (ALChar l x) = PTuple [PAtom "char", genLine l, PChar x]
genLiteral (ALFloat l x) = PTuple [PAtom "float", genLine l, PFloat x]
genLiteral (ALInteger l x) = PTuple [PAtom "integer", genLine l, PInteger x]
genLiteral (ALCharlist l x) = PTuple [PAtom "string", genLine l, PCharlist x]

genMapFieldAssoc : (a -> PrimTerm) -> MapFieldAssoc a -> PrimTerm
genMapFieldAssoc toPrimTerm (MkAssoc l key value) =
  PTuple [PAtom "map_field_assoc", genLine l, toPrimTerm key, toPrimTerm value]

genMapFieldExact : (a -> PrimTerm) -> MapFieldExact a -> PrimTerm
genMapFieldExact toPrimTerm (MkExact l key value) =
  PTuple [PAtom "map_field_exact", genLine l, toPrimTerm key, toPrimTerm value]

genBitType : BitType -> PrimTerm
genBitType type =
  PAtom $ case type of
    ABInteger => "integer"
    ABFloat => "float"
    ABBinary => "binary"
    ABBytes => "bytes"
    ABBitstring => "bitstring"
    ABBits => "bits"
    ABUtf8 => "utf8"
    ABUtf16 => "utf16"
    ABUtf32 => "utf32"

genBitSignedness : BitSignedness -> PrimTerm
genBitSignedness signedness =
  PAtom $ case signedness of
    ABUnsigned => "unsigned"
    ABSigned => "signed"

genBitEndianness : BitEndianness -> PrimTerm
genBitEndianness endianness =
  PAtom $ case endianness of
    ABBig => "big"
    ABLittle => "little"
    ABNative => "native"

genBitUnit : BitUnit -> PrimTerm
genBitUnit (MkBitUnit size) =
  PTuple [PAtom "unit", PInteger (cast size + 1)]

genBitSize : BitSize -> PrimTerm
genBitSize ABSDefault = PAtom "default"
genBitSize (ABSInteger l x) = PTuple [PAtom "integer", genLine l, PInteger x]
genBitSize (ABSVar l x) = PTuple [PAtom "var", genLine l, PAtom x]

genTypeSpecifierList : TypeSpecifierList -> PrimTerm
genTypeSpecifierList (MkTSL signedness endianness type unit) =
  PList $ toList (map genBitSignedness signedness) ++
    toList (map genBitEndianness endianness) ++
    toList (map genBitType type) ++
    toList (map genBitUnit unit)

genBitSegment : (a -> PrimTerm) -> BitSegment a -> PrimTerm
genBitSegment genValue (MkBitSegment l value size tsl) =
  PTuple [PAtom "bin_element", genLine l, genValue value, genBitSize size, genTypeSpecifierList tsl]

genBitPattern : BitPattern -> PrimTerm
genBitPattern (ABPInteger l x) = PTuple [PAtom "integer", genLine l, PInteger x]
genBitPattern (ABPFloat l x) = PTuple [PAtom "float", genLine l, PFloat x]
genBitPattern (ABPCharlist l x) = PTuple [PAtom "string", genLine l, PCharlist x]
genBitPattern (ABPUniversal l) = PTuple [PAtom "var", genLine l, PAtom "_"]
genBitPattern (ABPVar l x) = PTuple [PAtom "var", genLine l, PAtom x]

genPattern : Pattern -> PrimTerm
genPattern (APLiteral x) = genLiteral x
genPattern (APBitstring l segments) = PTuple [PAtom "bin", genLine l, PList (map (genBitSegment genBitPattern) segments)]
genPattern (APCons l x y) = PTuple [PAtom "cons", genLine l, genPattern x, genPattern y]
genPattern (APMap l entries) = PTuple [PAtom "map", genLine l, PList (assert_total (map (genMapFieldExact genPattern) entries))]
genPattern (APNil l) = PTuple [PAtom "nil", genLine l]
genPattern (APTuple l patterns) = PTuple [PAtom "tuple", genLine l, PList (assert_total (map genPattern patterns))]
genPattern (APUniversal l) = PTuple [PAtom "var", genLine l, PAtom "_"]
genPattern (APVar l x) = PTuple [PAtom "var", genLine l, PAtom x]

genGuard : Guard -> PrimTerm
genGuard (AGLiteral x) = genLiteral x
genGuard (AGCons l x y) = PTuple [PAtom "cons", genLine l, genGuard x, genGuard y]
genGuard (AGFunCall l fnName args) =
  let remoteRef = PTuple [PAtom "remote", genLine l, genLiteral (ALAtom l "erlang"), genLiteral (ALAtom l fnName)]
  in PTuple [PAtom "call", genLine l, remoteRef, PList (assert_total (map genGuard args))]
genGuard (AGNil l) = PTuple [PAtom "nil", genLine l]
genGuard (AGOp l opName x y) = PTuple [PAtom "op", genLine l, PAtom opName, genGuard x, genGuard y]
genGuard (AGTuple l guards) = PTuple [PAtom "tuple", genLine l, PList (assert_total (map genGuard guards))]
genGuard (AGVar l x) = PTuple [PAtom "var", genLine l, PAtom x]

genGuardAlt : GuardAlt -> PrimTerm
genGuardAlt (MkGuardAlt guards) = PList (assert_total (map genGuard (toList guards)))

mutual
  genExpr : Expr -> PrimTerm
  genExpr (AELiteral x) =
    genLiteral x
  genExpr (AEBitstring l segments) =
    PTuple [PAtom "bin", genLine l, PList (assert_total (map (genBitSegment genExpr) segments))]
  genExpr (AEBlock l body) =
    PTuple [PAtom "block", genLine l, PList (assert_total (map genExpr (toList body)))]
  genExpr (AECase l sc clauses) =
    PTuple [PAtom "case", genLine l, genExpr sc, PList (assert_total (map genCaseClause (toList clauses)))]
  genExpr (AECons l x y) =
    PTuple [PAtom "cons", genLine l, genExpr x, genExpr y]
  genExpr (AEFun l arity clauses) =
    PTuple [PAtom "fun", genLine l, PTuple [PAtom "clauses", PList (assert_total (map genFunClause (toList clauses)))]]
  genExpr (AEFunCall l fnName args) =
    PTuple [PAtom "call", genLine l, genExpr fnName, PList (assert_total (map genExpr args))]
  genExpr (AERemoteRef l modName fnName) =
    PTuple [PAtom "remote", genLine l, genExpr modName, genExpr fnName]
  genExpr (AEMapNew l entries) =
    PTuple [PAtom "map", genLine l, PList (assert_total (map (genMapFieldAssoc genExpr) entries))]
  genExpr (AEMatch l p x) =
    PTuple [PAtom "match", genLine l, genPattern p, genExpr x]
  genExpr (AENil l) =
    PTuple [PAtom "nil", genLine l]
  genExpr (AEOp l opName x y) =
    PTuple [PAtom "op", genLine l, PAtom opName, genExpr x, genExpr y]
  genExpr (AEReceive l clauses NoTimeout) =
    PTuple [PAtom "receive", genLine l, PList (assert_total (map genCaseClause clauses))]
  genExpr (AEReceive l clauses (TimeoutAfter ms afterBody)) =
    PTuple [PAtom "receive", genLine l, PList (assert_total (map genCaseClause clauses)), genExpr ms, PList (assert_total (map genExpr (toList afterBody)))]
  genExpr (AETuple l exprs) =
    PTuple [PAtom "tuple", genLine l, PList (assert_total (map genExpr exprs))]
  genExpr (AETry l sc caseClauses catchClauses afterBody) =
    PTuple [PAtom "try", genLine l, PList (assert_total (map genExpr (toList sc))), PList (assert_total (map genCaseClause caseClauses)), PList (assert_total (map genCatchClause catchClauses)), PList (assert_total (map genExpr afterBody))]
  genExpr (AEVar l x) =
    PTuple [PAtom "var", genLine l, PAtom x]

  genFunClause : FunClause arity -> PrimTerm
  genFunClause (MkFunClause l patterns guardAlts body) =
    PTuple [PAtom "clause", genLine l, PList (toList (map genPattern patterns)), PList (map genGuardAlt guardAlts), PList (assert_total (map genExpr (toList body)))]

  genCaseClause : CaseClause -> PrimTerm
  genCaseClause (MkCaseClause l pattern guardAlts body) =
    PTuple [PAtom "clause", genLine l, PList [genPattern pattern], PList (map genGuardAlt guardAlts), PList (assert_total (map genExpr (toList body)))]

  genCatchClause : CatchClause -> PrimTerm
  genCatchClause (MkCatchClause l classPat reasonPat stacktracePat guardAlts body) =
    let catchPattern = genPattern (APTuple l [classPat, reasonPat, stacktracePat])
    in PTuple [PAtom "clause", genLine l, PList [catchPattern], PList (map genGuardAlt guardAlts), PList (assert_total (map genExpr (toList body)))]

genExportFun : (String, Nat) -> PrimTerm
genExportFun (name, arity) = PTuple [PAtom name, PInteger (natToInteger arity)]

export
genDecl : Decl -> PrimTerm
genDecl (ADExport l fs) =
  PTuple [PAtom "attribute", genLine l, PAtom "export", PList (map genExportFun fs)]
genDecl (ADModule l name) =
  PTuple [PAtom "attribute", genLine l, PAtom "module", PAtom name]
genDecl (ADFunDef l name arity clauses) =
  PTuple [PAtom "function", genLine l, PAtom name, PInteger (natToInteger arity), PList (map genFunClause (toList clauses))]
genDecl (ADAttribute l attr value) =
  PTuple [PAtom "attribute", genLine l, PAtom attr, value]
