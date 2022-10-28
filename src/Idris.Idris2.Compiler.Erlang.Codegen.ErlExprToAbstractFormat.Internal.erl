-module('Idris.Idris2.Compiler.Erlang.Codegen.ErlExprToAbstractFormat.Internal').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--genStringLiteralPattern'/2,
  'un--genStringLiteralExpr'/2,
  'un--genFunCall'/4,
  'un--genDataCtorExpr'/3
]).
'un--genStringLiteralPattern'(V0, V1) -> {'Compiler.Erlang.IR.AbstractFormat.APBitstring', V0, [{'Compiler.Erlang.IR.AbstractFormat.MkBitSegment', V0, {'Compiler.Erlang.IR.AbstractFormat.ABPCharlist', V0, V1}, {'Compiler.Erlang.IR.AbstractFormat.ABSDefault'}, {'Compiler.Erlang.IR.AbstractFormat.ABUtf8'}} | []]}.
'un--genStringLiteralExpr'(V0, V1) -> {'Compiler.Erlang.IR.AbstractFormat.AEBitstring', V0, [{'Compiler.Erlang.IR.AbstractFormat.MkBitSegment', V0, {'Compiler.Erlang.IR.AbstractFormat.AELiteral', {'Compiler.Erlang.IR.AbstractFormat.ALCharlist', V0, V1}}, {'Compiler.Erlang.IR.AbstractFormat.ABSDefault'}, {'Compiler.Erlang.IR.AbstractFormat.ABUtf8'}} | []]}.
'un--genFunCall'(V0, V1, V2, V3) -> {'Compiler.Erlang.IR.AbstractFormat.AEFunCall', V0, {'Compiler.Erlang.IR.AbstractFormat.AERemoteRef', V0, {'Compiler.Erlang.IR.AbstractFormat.AELiteral', {'Compiler.Erlang.IR.AbstractFormat.ALAtom', V0, V1}}, {'Compiler.Erlang.IR.AbstractFormat.AELiteral', {'Compiler.Erlang.IR.AbstractFormat.ALAtom', V0, V2}}}, V3}.
'un--genDataCtorExpr'(V0, V1, V2) -> {'Compiler.Erlang.IR.AbstractFormat.AETuple', V0, [{'Compiler.Erlang.IR.AbstractFormat.AELiteral', {'Compiler.Erlang.IR.AbstractFormat.ALAtom', V0, V1}} | V2]}.
