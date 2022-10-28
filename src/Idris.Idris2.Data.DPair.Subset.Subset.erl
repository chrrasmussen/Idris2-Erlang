-module('Idris.Idris2.Data.DPair.Subset.Subset').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.fst'/1,
  'un--fst'/1
]).
'un--.fst'(V0) -> begin (V1 = V0), V1 end.
'un--fst'(V0) -> begin (V1 = V0), V1 end.
