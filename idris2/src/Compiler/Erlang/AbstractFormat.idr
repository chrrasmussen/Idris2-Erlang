module Compiler.Erlang.AbstractFormat

import public Data.Vect
import Data.List

import public Compiler.Erlang.PrimTerm


%hide FunClause
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
data Pattern : Type where
  APLiteral : Literal -> Pattern
  -- Bitstring pattern
  APBinary : Line -> String -> Pattern -- NOTE: A restricted version of the bitstring constructor
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
    -- Bitstring comprehension
    AEBinary : Line -> String -> Expr -- NOTE: A restricted version of the bitstring constructor
    -- Block expression
    -- Case expression
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
    -- Match operator expression
    AENil : Line -> Expr
    AEOp : Line -> (op : String) -> Expr -> Expr -> Expr
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
    MkCatchClause : Line -> (exceptionClass : Pattern) -> (reason : Pattern) -> (stacktrace : Pattern) -> List GuardAlt -> (body : Vect (S k) Expr) -> CatchClause

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


-- CODE GENERATION

genLine : Line -> PrimTerm
genLine l = PInteger (cast l)

genLiteral : Literal -> PrimTerm
genLiteral (ALAtom l x) = PTuple [PAtom "atom", genLine l, PAtom x]
genLiteral (ALChar l x) = PTuple [PAtom "char", genLine l, PChar x]
genLiteral (ALFloat l x) = PTuple [PAtom "char", genLine l, PFloat x]
genLiteral (ALInteger l x) = PTuple [PAtom "integer", genLine l, PInteger x]
genLiteral (ALCharlist l x) = PTuple [PAtom "string", genLine l, PCharlist x]

genMapFieldAssoc : (a -> PrimTerm) -> MapFieldAssoc a -> PrimTerm
genMapFieldAssoc toPrimTerm (MkAssoc l key value) =
  PTuple [PAtom "map_field_assoc", genLine l, toPrimTerm key, toPrimTerm value]

genMapFieldExact : (a -> PrimTerm) -> MapFieldExact a -> PrimTerm
genMapFieldExact toPrimTerm (MkExact l key value) =
  PTuple [PAtom "map_field_exact", genLine l, toPrimTerm key, toPrimTerm value]

genBinary : Line -> String -> PrimTerm
genBinary l str =
  let binElement = PTuple [PAtom "bin_element", genLine l, genLiteral (ALCharlist l str), PAtom "default", PList [PAtom "utf8"]]
  in PTuple [PAtom "bin", genLine l, PList [binElement]]

mutual
  genPattern : Pattern -> PrimTerm
  genPattern (APLiteral x) = genLiteral x
  genPattern (APBinary l x) = genBinary l x
  genPattern (APCons l x y) = PTuple [PAtom "cons", genLine l, genPattern x, genPattern y]
  genPattern (APMap l entries) = PTuple [PAtom "map", genLine l, PList (assert_total (map (genMapFieldExact genPattern) entries))]
  genPattern (APNil l) = PTuple [PAtom "nil", genLine l]
  genPattern (APTuple l patterns) = PTuple [PAtom "tuple", genLine l, PList (assert_total (map genPattern patterns))]
  genPattern (APUniversal l) = PTuple [PAtom "var", genLine l, PAtom "_"]
  genPattern (APVar l x) = PTuple [PAtom "var", genLine l, PAtom x]

mutual
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
  genExpr (AEBinary l x) =
    genBinary l x
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
genExportFun (name, arity) = PTuple [PAtom name, PInteger (cast arity)]

export
genDecl : Decl -> PrimTerm
genDecl (ADExport l fs) =
  PTuple [PAtom "attribute", genLine l, PAtom "export", PList (map genExportFun fs)]
genDecl (ADModule l name) =
  PTuple [PAtom "attribute", genLine l, PAtom "module", PAtom name]
genDecl (ADFunDef l name arity clauses) =
  PTuple [PAtom "function", genLine l, PAtom name, PInteger (cast arity), PList (map genFunClause (toList clauses))]
genDecl (ADAttribute l attr value) =
  PTuple [PAtom "attribute", genLine l, PAtom attr, value]
