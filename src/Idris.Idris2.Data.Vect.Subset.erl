-module('Idris.Idris2.Data.Vect.Subset').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--tabulate-4074'/3,
  'un--tabulate'/2,
  'un--range'/1
]).
'case--tabulate-4074'(V0, V1, V2) -> (V1((1 + V2))).
'un--tabulate'(V0, V1) -> case V0 of 0 -> {'Idris.Data.Vect.Nil'}; _ -> begin (V2 = (V0 - 1)), {'Idris.Data.Vect.::', (V1(0)), ('un--tabulate'(V2, fun (V3) -> (V1((1 + V3))) end))} end end.
'un--range'(V0) -> ('un--tabulate'(V0, fun (V1) -> V1 end)).
