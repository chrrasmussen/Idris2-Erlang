-module('Idris.Idris2.Compiler.Erlang.IR.ErlExpr.LocalVars.LocalVar').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--varPrefix'/1,
  'rf--index'/1,
  'un--varPrefix'/1,
  'un--index'/1
]).
'rf--varPrefix'(V0) -> case V0 of {'Idris.Compiler.Erlang.IR.ErlExpr.LocalVars.MkLocalVar', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--index'(V0) -> case V0 of {'Idris.Compiler.Erlang.IR.ErlExpr.LocalVars.MkLocalVar', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--varPrefix'(V0) -> case V0 of {'Idris.Compiler.Erlang.IR.ErlExpr.LocalVars.MkLocalVar', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--index'(V0) -> case V0 of {'Idris.Compiler.Erlang.IR.ErlExpr.LocalVars.MkLocalVar', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
