-module('Idris.Idris2.Compiler.Erlang.Codegen.ErlExprToAbstractFormat.Internal').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--genFunCall'/4,
  'un--genDataCtorExpr'/3
]).
'un--genFunCall'(V0, V1, V2, V3) -> {'Idris.Compiler.Erlang.IR.AbstractFormat.AEFunCall', V0, {'Idris.Compiler.Erlang.IR.AbstractFormat.AERemoteRef', V0, {'Idris.Compiler.Erlang.IR.AbstractFormat.AELiteral', {'Idris.Compiler.Erlang.IR.AbstractFormat.ALAtom', V0, V1}}, {'Idris.Compiler.Erlang.IR.AbstractFormat.AELiteral', {'Idris.Compiler.Erlang.IR.AbstractFormat.ALAtom', V0, V2}}}, V3}.
'un--genDataCtorExpr'(V0, V1, V2) -> {'Idris.Compiler.Erlang.IR.AbstractFormat.AETuple', V0, [{'Idris.Compiler.Erlang.IR.AbstractFormat.AELiteral', {'Idris.Compiler.Erlang.IR.AbstractFormat.ALAtom', V0, V1}} | V2]}.
