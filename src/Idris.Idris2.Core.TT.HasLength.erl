-module('Idris.Idris2.Core.TT.HasLength').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--take'/2,
  'un--sucR'/1,
  'un--mkHasLength'/1,
  'un--hlReverseOnto'/2,
  'un--hlReverse'/1,
  'un--hlAppend'/2,
  'un--cast'/3
]).
'un--take'(V0, V1) -> case V0 of 0 -> 0; _ -> begin (V2 = (V0 - 1)), case V1 of {'Idris.Prelude.Types.Stream.::', E0, E1} -> (fun (V3, V4) -> (1 + ('un--take'(V2, (V4())))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--sucR'(V0) -> case V0 of 0 -> (1 + 0); _ -> begin (V1 = (V0 - 1)), (1 + ('un--sucR'(V1))) end end.
'un--mkHasLength'(V0) -> case V0 of [] -> 0; [E0 | E1] -> (fun (V1, V2) -> (1 + ('un--mkHasLength'(V2))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--hlReverseOnto'(V0, V1) -> case V1 of 0 -> V0; _ -> begin (V2 = (V1 - 1)), ('un--hlReverseOnto'((1 + V0), V2)) end end.
'un--hlReverse'(V0) -> ('un--hlReverseOnto'(0, V0)).
'un--hlAppend'(V0, V1) -> case V0 of 0 -> V1; _ -> begin (V2 = (V0 - 1)), (1 + ('un--hlAppend'(V2, V1))) end end.
'un--cast'(V0, V1, V2) -> case V0 of [] -> case V2 of 0 -> 0; _ -> ('erlang':'throw'("Nat case not covered")) end; [E0 | E1] -> (fun (V3, V4) -> case V2 of 0 -> ('erlang':'throw'("Nat case not covered")); _ -> begin (V5 = (V2 - 1)), (1 + ('un--cast'(V4, ('Idris.Idris2.Data.Nat':'un--succInjective'(V1)), V5))) end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
