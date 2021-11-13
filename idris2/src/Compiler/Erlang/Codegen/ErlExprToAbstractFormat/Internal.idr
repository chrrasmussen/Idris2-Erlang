module Compiler.Erlang.Codegen.ErlExprToAbstractFormat.Internal

import Compiler.Erlang.IR.AbstractFormat


%default total


export
genFunCall : Line -> String -> String -> List Expr -> Expr
genFunCall l modName fnName args =
  AEFunCall l (AERemoteRef l (AELiteral (ALAtom l modName)) (AELiteral (ALAtom l fnName))) args

export
genDataCtorExpr : Line -> (name : String) -> List Expr -> Expr
genDataCtorExpr l name exprs =
  AETuple l (AELiteral (ALAtom l name) :: exprs)

export
genStringLiteralExpr : Line -> String -> Expr
genStringLiteralExpr l str =
  AEBitstring l [MkBitSegment l (AELiteral (ALCharlist l str)) ABSDefault ABUtf8]

export
genStringLiteralPattern : Line -> String -> Pattern
genStringLiteralPattern l str =
  APBitstring l [MkBitSegment l (ABPCharlist l str) ABSDefault ABUtf8]
