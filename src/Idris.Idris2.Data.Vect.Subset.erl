-module('Idris.Idris2.Data.Vect.Subset').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--tabulate-7991'/3,
  'un--tabulate'/2,
  'un--range'/1
]).
'case--tabulate-7991'(V0, V1, V2) -> begin (V3 = V2), (V1((V3 + 1))) end.
'un--tabulate'(V0, V1) -> case V0 of 0 -> {'Data.Vect.Nil'}; _ -> begin (V2 = (V0 - 1)), {'Data.Vect.::', (V1(0)), ('un--tabulate'(V2, fun (V3) -> begin (V4 = V3), (V1((V4 + 1))) end end))} end end.
'un--range'(V0) -> ('un--tabulate'(V0, fun (V1) -> V1 end)).
