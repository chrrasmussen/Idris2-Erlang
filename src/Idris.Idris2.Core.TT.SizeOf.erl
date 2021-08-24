-module('Idris.Idris2.Core.TT.SizeOf').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--size'/1,
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
'rf--size'(V0) -> V0.
'un--zero'() -> 0.
'un--take'(V0) -> V0.
'un--sucR'(V0) -> (1 + V0).
'un--suc'(V0) -> (1 + V0).
'un--size'(V0) -> V0.
'un--reverse'(V0) -> V0.
'un--mkSizeOf'(V0) -> ('Idris.Idris2.Prelude.Types.List':'un--length'(V0)).
'un--map'(V0) -> V0.
'un--+'(V0, V1) -> ('Idris.Idris2.Prelude.Types':'dn--un--+_Num_Nat'(V0, V1)).
