-module('Idris.Idris2.Data.Vect.Fin').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--tabulate'/2,
  'un--range'/1
]).
'un--tabulate'(V0, V1) -> case V0 of 0 -> {'Data.Vect.Nil'}; _ -> begin (V2 = (V0 - 1)), {'Data.Vect.::', (V1(0)), ('un--tabulate'(V2, fun (V3) -> (V1((V3 + 1))) end))} end end.
'un--range'(V0) -> ('un--tabulate'(V0, fun (V1) -> V1 end)).
