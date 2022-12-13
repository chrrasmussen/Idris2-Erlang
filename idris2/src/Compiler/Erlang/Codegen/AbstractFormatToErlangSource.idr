module Compiler.Erlang.Codegen.AbstractFormatToErlangSource

import public Compiler.Erlang.IR.AbstractFormat

import Data.Fin
import Data.List
import Data.String

import Compiler.Erlang.Codegen.AbstractFormat.Helpers
import Compiler.Erlang.Utils.CompositeString
import Compiler.Erlang.Utils.String


%default total


-- HELPER FUNCTIONS

sepBy : String -> List CompositeString -> CompositeString
sepBy sep xs =
  Nested $ intersperse (Str sep) xs


-- CODE GENERATION

genAtom : String -> String
genAtom x = "'" ++ escapeString (unpack x) "" ++  "'"

genCharlist : String -> String
genCharlist x = "\"" ++ escapeString (unpack x) "" ++ "\""

genLiteral : Literal -> String
genLiteral (ALAtom l x) = genAtom x
genLiteral (ALChar l x) = "$" ++ escapeChar x ""
genLiteral (ALFloat l x) = showDouble x
genLiteral (ALInteger l x) = show x
genLiteral (ALCharlist l x) = genCharlist x

genMapFieldAssoc : (a -> CompositeString) -> MapFieldAssoc a -> CompositeString
genMapFieldAssoc genValue (MkAssoc l key value) =
  Nested [genValue key, Str " => ", genValue value]

genMapFieldExact : (a -> CompositeString) -> MapFieldExact a -> CompositeString
genMapFieldExact genValue (MkExact l key value) =
  Nested [genValue key, Str " := ", genValue value]

genBitUnit : BitUnit -> String
genBitUnit unit =
  "unit:" ++ show (bitUnitToNat unit)

genBitSize : BitSize -> Maybe String
genBitSize ABSDefault = Nothing
genBitSize (ABSInteger l x) = Just $ show x
genBitSize (ABSVar l x) = Just x

genTypeSpecifierList : BitSize -> TypeSpecifierList -> List String
genTypeSpecifierList size tsl =
  showBitType tsl ::
    toList (showBitSignedness <$> getBitSignedness tsl) ++
    toList (showBitEndianness <$> getBitEndianness tsl) ++
    toList (genBitUnit <$> join (toMaybe (isAllowedToSpecifyBitUnit size) (getBitUnit tsl)))

genBitSegment : (a -> CompositeString) -> BitSegment a -> CompositeString
genBitSegment genValue (MkBitSegment l value size tsl) =
  let bitSizeStr = maybe "" (":" ++) (genBitSize size)
      tslStr = case genTypeSpecifierList size tsl of
        [] => ""
        xs => "/" ++ joinBy "-" xs
  in Nested [genValue value, Str bitSizeStr, Str tslStr]

genBitPattern : BitPattern -> CompositeString
genBitPattern (ABPInteger l x) = Str (show x)
genBitPattern (ABPFloat l x) = Str (showDouble x)
genBitPattern (ABPCharlist l x) = Str (genCharlist x)
genBitPattern (ABPUniversal l) = Str "_"
genBitPattern (ABPVar l x) = Str x

genPattern : Pattern -> CompositeString
genPattern (APLiteral x) = Str (genLiteral x)
genPattern (APBitstring l segments) =
  let segments' = sepBy ", " $ assert_total $ map (genBitSegment genBitPattern) segments
  in Nested [Str "<<", segments', Str ">>"]
genPattern (APCons l x y) = Nested [Str "[", genPattern x, Str " | ", genPattern y, Str "]"]
genPattern (APMap l entries) =
  let entries' = sepBy ", " $ assert_total $ map (genMapFieldExact genPattern) entries
  in Nested [Str "#{", entries', Str "}"]
genPattern (APNil l) = Str "[]"
genPattern (APTuple l patterns) =
  let patterns' = sepBy ", " $ assert_total $ map genPattern patterns
  in Nested [Str "{", patterns', Str "}"]
genPattern (APUniversal l) = Str "_"
genPattern (APVar l x) = Str x

genGuard : Guard -> CompositeString
genGuard (AGLiteral x) = Str (genLiteral x)
genGuard (AGCons l x y) = Nested [Str "[", genGuard x, Str " | ", genGuard y, Str "]"]
genGuard (AGFunCall l fnName args) =
  let args' = sepBy ", " $ assert_total $ map genGuard args
  in Nested [Str $ "(erlang:" ++ genAtom fnName ++ "(", args', Str "))"]
genGuard (AGNil l) = Str "[]"
genGuard (AGOp l opName x y) = Nested [Str "(", genGuard x, Str $ " " ++ opName ++ " ", genGuard y, Str ")"]
genGuard (AGTuple l guards) =
  let guards' = sepBy ", " $ assert_total $ map genGuard guards
  in Nested [Str "{", guards', Str "}"]
genGuard (AGVar l x) = Str x

genGuardAlt : GuardAlt -> CompositeString
genGuardAlt (MkGuardAlt guards) =
  sepBy "; " $ assert_total $ map genGuard (toList guards)

mutual
  genExpr : Expr -> CompositeString
  genExpr (AELiteral x) =
    Str (genLiteral x)
  genExpr (AEBitstring l segments) =
    let segments' = sepBy ", " $ assert_total $ map (genBitSegment genExpr) segments
    in Nested [Str "<<", segments', Str ">>"]
  genExpr (AEBlock l body) =
    let body' = sepBy ", " $ assert_total $ map genExpr (toList body)
    in Nested [Str "begin ", body', Str " end"]
  genExpr (AECase l sc clauses) =
    let sc' = genExpr sc
        clauses' = sepBy "; " $ assert_total $ map genCaseClause (toList clauses)
    in Nested [Str "case ", sc', Str " of ", clauses', Str " end"]
  genExpr (AECons l x y) =
    Nested [Str "[", genExpr x, Str " | ", genExpr y, Str "]"]
  genExpr (AEFun l arity clauses) =
    let clauses' = sepBy "; " $ assert_total $ map genFunClause (toList clauses)
    in Nested [Str "fun ", clauses', Str " end"]
  genExpr (AEFunCall l fn args) =
    let fn' = genExpr fn
        args' = sepBy ", " $ assert_total $ map genExpr args
    in Nested [Str "(", fn', Str "(", args', Str "))"]
  genExpr (AERemoteRef l modName fnName) =
    Nested [genExpr modName, Str ":", genExpr fnName]
  genExpr (AEMapNew l entries) =
    let entries' = sepBy ", " $ assert_total $ map (genMapFieldAssoc genExpr) entries
    in Nested [Str "#{", entries', Str "}"]
  genExpr (AEMatch l p x) =
    Nested [Str "(", genPattern p, Str " = ", genExpr x, Str ")"]
  genExpr (AENil l) =
    Str "[]"
  genExpr (AEOp l opName x y) =
    Nested [Str "(", genExpr x, Str $ " " ++ opName ++ " ", genExpr y, Str ")"]
  genExpr (AEReceive l clauses timeout) =
    let clauses' = sepBy "; " $ assert_total $ map genCaseClause clauses
        timeout' = case timeout of
          NoTimeout => Str ""
          TimeoutAfter ms afterBody =>
            let afterBody' = sepBy ", " $ assert_total $ map genExpr (toList afterBody)
            in Nested [Str $ " after ", genExpr ms, Str " -> ", afterBody']
    in Nested [Str "receive ", clauses', timeout', Str " end"]
  genExpr (AETuple l exprs) =
    let exprs' = sepBy ", " $ assert_total $ map genExpr exprs
    in Nested [Str "{", exprs', Str "}"]
  genExpr (AETry l statements caseClauses catchClauses afterBody) =
    let sc' = sepBy ", " $ assert_total $ map genExpr (toList statements)
        caseClauses' = case caseClauses of
          [] => Str ""
          xs => Nested [Str " of ", sepBy "; " $ assert_total $ map genCaseClause xs]
        catchClauses' = case catchClauses of
          [] => Str ""
          xs => Nested [Str " catch ", sepBy "; " $ assert_total $ map genCatchClause xs]
        afterBody' = case afterBody of
          [] => Str ""
          xs => Nested [Str " after ", sepBy ", " $ assert_total $ map genExpr xs]
    in Nested [Str "try ", sc', caseClauses', catchClauses', afterBody', Str " end"]
  genExpr (AEVar l x) =
    Str x

  genFunClause : FunClause arity -> CompositeString
  genFunClause (MkFunClause l patterns guardAlts body) =
    let patterns' = sepBy ", " $ assert_total $ map genPattern (toList patterns)
        guardAlts' = case guardAlts of
          [] => Str ""
          xs => Nested [Str " when ", sepBy ", " $ assert_total $ map genGuardAlt guardAlts]
        body' = sepBy ", " $ assert_total $ map genExpr (toList body)
    in Nested [Str "(", patterns', Str ")", guardAlts', Str " -> ", body']

  genCaseClause : CaseClause -> CompositeString
  genCaseClause (MkCaseClause l pattern guardAlts body) =
    let pattern' = genPattern pattern
        guardAlts' = case guardAlts of
          [] => Str ""
          xs => Nested [Str " when ", sepBy ", " $ assert_total $ map genGuardAlt guardAlts]
        body' = sepBy ", " $ assert_total $ map genExpr (toList body)
    in Nested [pattern', guardAlts', Str " -> ", body']

  genCatchClause : CatchClause -> CompositeString
  genCatchClause (MkCatchClause l classPat reasonPat stacktracePat guardAlts body) =
    let classPat' = genPattern classPat
        reasonPat' = genPattern reasonPat
        stacktracePat' = genPattern stacktracePat
        guardAlts' = case guardAlts of
          [] => Str ""
          xs => Nested [Str " when ", sepBy ", " $ assert_total $ map genGuardAlt guardAlts]
        body' = sepBy ", " $ assert_total $ map genExpr (toList body)
    in Nested [classPat', Str ":", reasonPat', Str ":", stacktracePat', guardAlts', Str " -> ", body']

genExportFun : (String, Nat) -> String
genExportFun (name, arity) = genAtom name ++ "/" ++ show (natToInteger arity)

-- Assumptions:
-- * Variables names in `Decl` are required to start with a capitalized letter.
-- * The attribute name of `ADAttribute` can't contain special characters that
--   would require apostrophe.
export
genDecl : Decl -> CompositeString
genDecl (ADExport l fs) =
  Str $ "-export([\n  " ++ joinBy ",\n  " (map genExportFun fs) ++ "\n])."
genDecl (ADModule l name) =
  Str $ "-module(" ++ genAtom name ++ ")."
genDecl (ADFunDef l name arity clauses) =
  Nested [sepBy ";\n" $ map clauseToFunHead (toList clauses), Str "."]
  where
    clauseToFunHead : FunClause arity -> CompositeString
    clauseToFunHead clause = Nested [Str (genAtom name), genFunClause clause]
genDecl (ADAttribute l attr value) =
  Nested [Str $ "-" ++ attr ++ "(", primTermToCS value, Str ")."]
