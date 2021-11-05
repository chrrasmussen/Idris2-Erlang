module Compiler.Erlang.Codegen.ErlExprToAbstractFormat.Binary

import Compiler.Erlang.IR.AbstractFormat
import Compiler.Erlang.Codegen.ErlExprToAbstractFormat.Internal


%default total

export
empty : Line -> Expr
empty l = AEBitstring l []

export
zeroPadded : Line -> (size : Expr) -> Expr
zeroPadded l size =
  let zero = AEBitstring l [MkBitSegment l (AELiteral (ALInteger l 0)) ABSDefault (MkTSL Nothing Nothing Nothing Nothing)]
  in genFunCall l "binary" "copy" [zero, size]

export
concat : Line -> Expr -> Expr -> Expr
concat l bin1 bin2 =
  let binaryValue =
        AEBitstring l
          [ MkBitSegment l (AEVar l "Bin1") ABSDefault (MkTSL Nothing Nothing (Just ABBinary) Nothing)
          , MkBitSegment l (AEVar l "Bin2") ABSDefault (MkTSL Nothing Nothing (Just ABBinary) Nothing)
          ]
      funExpr = AEFun l 2
        ( singleton $ MkFunClause l
            [ APVar l "Bin1"
            , APVar l "Bin2"
            ]
            []
            (singleton binaryValue)
        )
  in AEFunCall l funExpr [bin1, bin2]
