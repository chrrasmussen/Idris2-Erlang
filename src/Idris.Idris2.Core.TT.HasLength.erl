-module('Idris.Idris2.Core.TT.HasLength').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--11842-7818--in--un--succInjective'/5,
  'un--take'/2,
  'un--sucR'/1,
  'un--mkHasLength'/1,
  'un--hlReverseOnto'/2,
  'un--hlReverse'/1,
  'un--hlAppend'/2,
  'un--cast'/3
]).
'nested--11842-7818--in--un--succInjective'(V0, V1, V2, V3, V4) -> {'Builtin.Refl'}.
'un--take'(V0, V1) -> case V0 of 0 -> 0; _ -> begin (V2 = (V0 - 1)), case V1 of {'Prelude.Types.Stream.::', V3, V4} -> (('un--take'(V2, (V4()))) + 1) end end end.
'un--sucR'(V0) -> case V0 of 0 -> 1; _ -> begin (V1 = (V0 - 1)), (('un--sucR'(V1)) + 1) end end.
'un--mkHasLength'(V0) -> case V0 of [] -> 0; [E0 | E1] -> (fun (V1, V2) -> (('un--mkHasLength'(V2)) + 1) end(E0, E1)) end.
'un--hlReverseOnto'(V0, V1) -> case V1 of 0 -> V0; _ -> begin (V2 = (V1 - 1)), ('un--hlReverseOnto'((V0 + 1), V2)) end end.
'un--hlReverse'(V0) -> ('un--hlReverseOnto'(0, V0)).
'un--hlAppend'(V0, V1) -> case V0 of 0 -> V1; _ -> begin (V2 = (V0 - 1)), (('un--hlAppend'(V2, V1)) + 1) end end.
'un--cast'(V0, V1, V2) -> case V0 of [] -> case V2 of 0 -> 0; _ -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})) end; [E0 | E1] -> (fun (V3, V4) -> case V2 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V5 = (V2 - 1)), (('un--cast'(V4, ('nested--11842-7818--in--un--succInjective'(V3, V4, V5, V1, V1)), V5)) + 1) end end end(E0, E1)) end.
