-module('Idris.Idris2.Compiler.Erlang.IR.ErlExpr.ErlModule').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--name'/1,
  'rf--funDecls'/1,
  'rf--attributes'/1,
  'un--name'/1,
  'un--funDecls'/1,
  'un--attributes'/1
]).
'rf--name'(V0) -> case V0 of {'Idris.Compiler.Erlang.IR.ErlExpr.MkModule', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--funDecls'(V0) -> case V0 of {'Idris.Compiler.Erlang.IR.ErlExpr.MkModule', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--attributes'(V0) -> case V0 of {'Idris.Compiler.Erlang.IR.ErlExpr.MkModule', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--name'(V0) -> case V0 of {'Idris.Compiler.Erlang.IR.ErlExpr.MkModule', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--funDecls'(V0) -> case V0 of {'Idris.Compiler.Erlang.IR.ErlExpr.MkModule', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--attributes'(V0) -> case V0 of {'Idris.Compiler.Erlang.IR.ErlExpr.MkModule', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
