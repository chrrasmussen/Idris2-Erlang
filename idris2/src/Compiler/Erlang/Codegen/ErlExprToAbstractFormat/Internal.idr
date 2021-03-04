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
