-module('Idris.Idris2.Compiler.LambdaLift.LDefs').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--nextName'/1,
  'un--defs'/1,
  'un--basename'/1
]).
'un--nextName'(V0) -> case V0 of {'Idris.Compiler.LambdaLift.MkLDefs', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--defs'(V0) -> case V0 of {'Idris.Compiler.LambdaLift.MkLDefs', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--basename'(V0) -> case V0 of {'Idris.Compiler.LambdaLift.MkLDefs', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
