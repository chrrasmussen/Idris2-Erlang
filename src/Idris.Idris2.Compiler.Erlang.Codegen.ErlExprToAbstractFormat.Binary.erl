-module('Idris.Idris2.Compiler.Erlang.Codegen.ErlExprToAbstractFormat.Binary').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--zeroPadded'/2,
  'un--empty'/1,
  'un--concat'/3
]).
'un--zeroPadded'(V0, V1) -> begin (V2 = {'Compiler.Erlang.IR.AbstractFormat.AEBitstring', V0, [{'Compiler.Erlang.IR.AbstractFormat.MkBitSegment', V0, {'Compiler.Erlang.IR.AbstractFormat.AELiteral', {'Compiler.Erlang.IR.AbstractFormat.ALInteger', V0, 0}}, {'Compiler.Erlang.IR.AbstractFormat.ABSDefault'}, {'Compiler.Erlang.IR.AbstractFormat.ABInteger', 0, 0, 0}} | []]}), ('Idris.Idris2.Compiler.Erlang.Codegen.ErlExprToAbstractFormat.Internal':'un--genFunCall'(V0, <<"binary"/utf8>>, <<"copy"/utf8>>, [V2 | [V1 | []]])) end.
'un--empty'(V0) -> {'Compiler.Erlang.IR.AbstractFormat.AEBitstring', V0, []}.
'un--concat'(V0, V1, V2) -> {'Compiler.Erlang.IR.AbstractFormat.AEBitstring', V0, [{'Compiler.Erlang.IR.AbstractFormat.MkBitSegment', V0, V1, {'Compiler.Erlang.IR.AbstractFormat.ABSDefault'}, {'Compiler.Erlang.IR.AbstractFormat.ABBinary', 7}} | [{'Compiler.Erlang.IR.AbstractFormat.MkBitSegment', V0, V2, {'Compiler.Erlang.IR.AbstractFormat.ABSDefault'}, {'Compiler.Erlang.IR.AbstractFormat.ABBinary', 7}} | []]]}.
