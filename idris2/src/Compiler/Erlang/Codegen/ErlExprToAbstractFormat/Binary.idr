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
  let zero = AEBitstring l [MkBitSegment l (AELiteral (ALInteger l 0)) ABSDefault ABInteger]
  in genFunCall l "binary" "copy" [zero, size]

export
concat : Line -> Expr -> Expr -> Expr
concat l bin1 bin2 =
  AEBitstring l
    [ MkBitSegment l bin1 ABSDefault ABBinary
    , MkBitSegment l bin2 ABSDefault ABBinary
    ]
