-module('Idris.Idris2.Compiler.Erlang.Codegen.ErlExprToAbstractFormat.MatcherClause').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--preComputedValues'/1,
  'un--pattern'/1,
  'un--guard'/1,
  'un--body'/1
]).
'un--preComputedValues'(V0) -> case V0 of {'Idris.Compiler.Erlang.Codegen.ErlExprToAbstractFormat.MkMatcherClause', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V4 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--pattern'(V0) -> case V0 of {'Idris.Compiler.Erlang.Codegen.ErlExprToAbstractFormat.MkMatcherClause', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V1 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--guard'(V0) -> case V0 of {'Idris.Compiler.Erlang.Codegen.ErlExprToAbstractFormat.MkMatcherClause', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V2 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--body'(V0) -> case V0 of {'Idris.Compiler.Erlang.Codegen.ErlExprToAbstractFormat.MkMatcherClause', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
