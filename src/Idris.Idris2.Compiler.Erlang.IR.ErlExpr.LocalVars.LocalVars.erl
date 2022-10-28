-module('Idris.Idris2.Compiler.Erlang.IR.ErlExpr.LocalVars.LocalVars').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.varPrefix'/1,
  'un--.nextIndex'/1,
  'un--varPrefix'/1,
  'un--nextIndex'/1
]).
'un--.varPrefix'(V0) -> case V0 of {'Compiler.Erlang.IR.ErlExpr.LocalVars.MkLocalVars', V1, V2} -> V1 end.
'un--.nextIndex'(V0) -> case V0 of {'Compiler.Erlang.IR.ErlExpr.LocalVars.MkLocalVars', V1, V2} -> V2 end.
'un--varPrefix'(V0) -> case V0 of {'Compiler.Erlang.IR.ErlExpr.LocalVars.MkLocalVars', V1, V2} -> V1 end.
'un--nextIndex'(V0) -> case V0 of {'Compiler.Erlang.IR.ErlExpr.LocalVars.MkLocalVars', V1, V2} -> V2 end.
