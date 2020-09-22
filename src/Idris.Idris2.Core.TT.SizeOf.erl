-module('Idris.Idris2.Core.TT.SizeOf').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--zero'/1,
  'un--take'/3,
  'un--sucR'/4,
  'un--suc'/4,
  'un--size'/3,
  'un--reverse'/3,
  'un--mkSizeOf'/2,
  'un--map'/5,
  'un--+'/5
]).
'un--zero'(V0) -> 0.
'un--take'(V0, V1, V2) -> V1.
'un--sucR'(V0, V1, V2, V3) -> (1 + V3).
'un--suc'(V0, V1, V2, V3) -> (1 + V3).
'un--size'(V0, V1, V2) -> V2.
'un--reverse'(V0, V1, V2) -> V2.
'un--mkSizeOf'(V0, V1) -> ('Idris.Idris2.Prelude.Types.List':'un--length'('erased', V1)).
'un--map'(V0, V1, V2, V3, V4) -> V4.
'un--+'(V0, V1, V2, V3, V4) -> (V3 + V4).
