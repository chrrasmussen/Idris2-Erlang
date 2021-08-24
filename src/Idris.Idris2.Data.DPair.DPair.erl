-module('Idris.Idris2.Data.DPair.DPair').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--uncurry'/2,
  'un--curry'/3,
  'un--bimap'/3
]).
'un--uncurry'(V0, V1) -> ((V0(case V1 of {'Idris.Builtin.DPair.MkDPair', E0, E1} -> (fun (V4, V5) -> V4 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end))(case V1 of {'Idris.Builtin.DPair.MkDPair', E2, E3} -> (fun (V2, V3) -> V3 end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)).
'un--curry'(V0, V1, V2) -> (V0({'Idris.Builtin.DPair.MkDPair', V1, V2})).
'un--bimap'(V0, V1, V2) -> case V2 of {'Idris.Builtin.DPair.MkDPair', E0, E1} -> (fun (V3, V4) -> {'Idris.Builtin.DPair.MkDPair', (V0(V3)), ((V1('erased'))(V4))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
