-module('Idris.Idris2.Compiler.Erlang.IR.ErlExpr.LocalVars.LocalVars').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--varPrefix'/1,
  'rf--nextIndex'/1,
  'un--varPrefix'/1,
  'un--nextIndex'/1
]).
'rf--varPrefix'(V0) -> case V0 of {'Idris.Compiler.Erlang.IR.ErlExpr.LocalVars.MkLocalVars', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--nextIndex'(V0) -> case V0 of {'Idris.Compiler.Erlang.IR.ErlExpr.LocalVars.MkLocalVars', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--varPrefix'(V0) -> case V0 of {'Idris.Compiler.Erlang.IR.ErlExpr.LocalVars.MkLocalVars', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--nextIndex'(V0) -> case V0 of {'Idris.Compiler.Erlang.IR.ErlExpr.LocalVars.MkLocalVars', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
