-module('Idris.Idris2.Prelude.Types.List').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--length'/1,
  'un--++'/2
]).
'un--length'(V0) -> case V0 of [] -> 0; [E0 | E1] -> (fun (V1, V2) -> (1 + ('un--length'(V2))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--++'(V0, V1) -> case V0 of [] -> V1; [E0 | E1] -> (fun (V2, V3) -> [V2 | ('un--++'(V3, V1))] end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
