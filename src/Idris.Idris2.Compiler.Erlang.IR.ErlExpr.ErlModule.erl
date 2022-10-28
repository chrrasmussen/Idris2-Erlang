-module('Idris.Idris2.Compiler.Erlang.IR.ErlExpr.ErlModule').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.name'/1,
  'un--.funDecls'/1,
  'un--.attributes'/1,
  'un--name'/1,
  'un--funDecls'/1,
  'un--attributes'/1
]).
'un--.name'(V0) -> case V0 of {'Compiler.Erlang.IR.ErlExpr.MkModule', V1, V2, V3} -> V1 end.
'un--.funDecls'(V0) -> case V0 of {'Compiler.Erlang.IR.ErlExpr.MkModule', V1, V2, V3} -> V3 end.
'un--.attributes'(V0) -> case V0 of {'Compiler.Erlang.IR.ErlExpr.MkModule', V1, V2, V3} -> V2 end.
'un--name'(V0) -> case V0 of {'Compiler.Erlang.IR.ErlExpr.MkModule', V1, V2, V3} -> V1 end.
'un--funDecls'(V0) -> case V0 of {'Compiler.Erlang.IR.ErlExpr.MkModule', V1, V2, V3} -> V3 end.
'un--attributes'(V0) -> case V0 of {'Compiler.Erlang.IR.ErlExpr.MkModule', V1, V2, V3} -> V2 end.
