-module('Idris.Idris2.Builtin.DPair.DPair').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--snd'/1,
  'rf--fst'/1,
  'un--snd'/1,
  'un--fst'/1
]).
'rf--snd'(V0) -> case V0 of {'Idris.Builtin.DPair.MkDPair', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--fst'(V0) -> case V0 of {'Idris.Builtin.DPair.MkDPair', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--snd'(V0) -> case V0 of {'Idris.Builtin.DPair.MkDPair', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--fst'(V0) -> case V0 of {'Idris.Builtin.DPair.MkDPair', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
