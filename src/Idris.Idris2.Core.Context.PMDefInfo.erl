-module('Idris.Idris2.Core.Context.PMDefInfo').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--holeInfo'/1,
  'un--alwaysReduce'/1
]).
'un--holeInfo'(V0) -> case V0 of {'Idris.Core.Context.MkPMDefInfo', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--alwaysReduce'(V0) -> case V0 of {'Idris.Core.Context.MkPMDefInfo', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
