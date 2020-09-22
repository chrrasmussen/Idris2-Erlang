-module('Idris.Idris2.Data.List.Extra').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--elemAt'/3
]).
'un--elemAt'(V0, V1, V2) -> case V1 of [] -> {'Idris.Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V3, V4) -> case V2 of 0 -> {'Idris.Prelude.Types.Just', V3}; _ -> begin (V5 = (V2 - 1)), ('un--elemAt'('erased', V4, V5)) end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
