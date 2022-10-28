-module('Idris.Idris2.Compiler.Erlang.IR.ErlExpr.LocalVars.LocalVar').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.varPrefix'/1,
  'un--.index'/1,
  'un--varPrefix'/1,
  'un--index'/1
]).
'un--.varPrefix'(V0) -> case V0 of {'Compiler.Erlang.IR.ErlExpr.LocalVars.MkLocalVar', V1, V2} -> V1 end.
'un--.index'(V0) -> case V0 of {'Compiler.Erlang.IR.ErlExpr.LocalVars.MkLocalVar', V1, V2} -> V2 end.
'un--varPrefix'(V0) -> case V0 of {'Compiler.Erlang.IR.ErlExpr.LocalVars.MkLocalVar', V1, V2} -> V1 end.
'un--index'(V0) -> case V0 of {'Compiler.Erlang.IR.ErlExpr.LocalVars.MkLocalVar', V1, V2} -> V2 end.
