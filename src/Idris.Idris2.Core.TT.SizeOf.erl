-module('Idris.Idris2.Core.TT.SizeOf').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.size'/1,
  'un--zero'/0,
  'un--take'/1,
  'un--sucR'/1,
  'un--suc'/1,
  'un--size'/1,
  'un--reverse'/1,
  'un--mkSizeOf'/1,
  'un--map'/1,
  'un--+'/2
]).
'un--.size'(V0) -> begin (V1 = V0), V1 end.
'un--zero'() -> 0.
'un--take'(V0) -> V0.
'un--sucR'(V0) -> begin (V1 = V0), (V1 + 1) end.
'un--suc'(V0) -> begin (V1 = V0), (V1 + 1) end.
'un--size'(V0) -> begin (V1 = V0), V1 end.
'un--reverse'(V0) -> begin (V1 = V0), V1 end.
'un--mkSizeOf'(V0) -> ('Idris.Idris2.Prelude.Types.List':'un--lengthTR'(V0)).
'un--map'(V0) -> begin (V1 = V0), V1 end.
'un--+'(V0, V1) -> begin (V2 = V0), begin (V3 = V1), (V2 + V3) end end.
