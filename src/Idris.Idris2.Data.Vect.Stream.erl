-module('Idris.Idris2.Data.Vect.Stream').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--take'/2
]).
'un--take'(V0, V1) -> case V0 of 0 -> {'Data.Vect.Nil'}; _ -> begin (V2 = (V0 - 1)), case V1 of {'Prelude.Types.Stream.::', V3, V4} -> {'Data.Vect.::', V3, ('un--take'(V2, (V4())))} end end end.
