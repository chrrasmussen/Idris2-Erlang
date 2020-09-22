-module('Idris.Idris2.Builtin.DPair.DPair').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--snd'/3,
  'un--fst'/3
]).
'un--snd'(V0, V1, V2) -> case V2 of {'Idris.Builtin.DPair.MkDPair', E0, E1} -> (fun (V3, V4) -> V4 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--fst'(V0, V1, V2) -> case V2 of {'Idris.Builtin.DPair.MkDPair', E0, E1} -> (fun (V3, V4) -> V3 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
