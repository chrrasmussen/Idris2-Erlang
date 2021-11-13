module Compiler.Erlang.Codegen.AbstractFormatToPrimTerm

import public Compiler.Erlang.IR.AbstractFormat
import public Compiler.Erlang.Utils.PrimTerm

import Data.Fin
import Data.List

import Compiler.Erlang.Codegen.AbstractFormat.Helpers


%default total


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

genBitUnit : BitUnit -> PrimTerm
genBitUnit unit =
  PTuple [PAtom "unit", PInteger (cast (bitUnitToNat unit))]

genBitSize : BitSize -> PrimTerm
genBitSize ABSDefault = PAtom "default"
genBitSize (ABSInteger l x) = PTuple [PAtom "integer", genLine l, PInteger x]
genBitSize (ABSVar l x) = PTuple [PAtom "var", genLine l, PAtom x]

genTypeSpecifierList : BitSize -> TypeSpecifierList -> PrimTerm
genTypeSpecifierList size tsl =
  PList $ PAtom (showBitType tsl) ::
    toList (PAtom . showBitSignedness <$> getBitSignedness tsl) ++
    toList (PAtom . showBitEndianness <$> getBitEndianness tsl) ++
    toList (genBitUnit <$> join (toMaybe (isAllowedToSpecifyBitUnit size) (getBitUnit tsl)))

genBitSegment : (a -> PrimTerm) -> BitSegment a -> PrimTerm
genBitSegment genValue (MkBitSegment l value size tsl) =
  PTuple [PAtom "bin_element", genLine l, genValue value, genBitSize size, genTypeSpecifierList size tsl]

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
  genExpr (AEFunCall l fn args) =
    PTuple [PAtom "call", genLine l, genExpr fn, PList (assert_total (map genExpr args))]
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
  genExpr (AETry l statements caseClauses catchClauses afterBody) =
    PTuple [PAtom "try", genLine l, PList (assert_total (map genExpr (toList statements))), PList (assert_total (map genCaseClause caseClauses)), PList (assert_total (map genCatchClause catchClauses)), PList (assert_total (map genExpr afterBody))]
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
