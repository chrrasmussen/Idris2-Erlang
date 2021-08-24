-module('Idris.Idris2.Libraries.Data.List1').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--2583-750--in--un--go'/4,
  'un--unsnoc'/1
]).
'nested--2583-750--in--un--go'(V0, V1, V2, V3) -> case V3 of [] -> {'Idris.Builtin.MkPair', [], V2}; [E0 | E1] -> (fun (V4, V5) -> case ('nested--2583-750--in--un--go'(V0, V1, V4, V5)) of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V6, V7) -> {'Idris.Builtin.MkPair', [V2 | V6], V7} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--unsnoc'(V0) -> case V0 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V1, V2) -> ('nested--2583-750--in--un--go'(V1, V2, V1, V2)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
