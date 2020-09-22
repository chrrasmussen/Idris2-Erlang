-module('Idris.Idris2.Prelude.Types.List').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--length'/2,
  'un--++'/3
]).
'un--length'(V0, V1) -> case V1 of [] -> 0; [E0 | E1] -> (fun (V2, V3) -> (1 + ('un--length'('erased', V3))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--++'(V0, V1, V2) -> case V1 of [] -> V2; [E0 | E1] -> (fun (V3, V4) -> [V3 | ('un--++'('erased', V4, V2))] end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
