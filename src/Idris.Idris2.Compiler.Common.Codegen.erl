-module('Idris.Idris2.Compiler.Common.Codegen').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--executeExpr'/1,
  'un--compileLibrary'/1,
  'un--compileExpr'/1
]).
'un--executeExpr'(V0) -> case V0 of {'Idris.Compiler.Common.MkCG', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--compileLibrary'(V0) -> case V0 of {'Idris.Compiler.Common.MkCG', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--compileExpr'(V0) -> case V0 of {'Idris.Compiler.Common.MkCG', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
