-module('Idris.Idris2.Data.DPair.Exists').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--uncurry'/2,
  'un--evidenceInjectiveSnd'/1,
  'un--evidenceInjectiveFst'/1,
  'un--curry'/2,
  'un--bimap'/2
]).
'un--uncurry'(V0, V1) -> ((V0('erased'))(begin (V2 = V1), V2 end)).
'un--evidenceInjectiveSnd'(V0) -> {'Builtin.Refl'}.
'un--evidenceInjectiveFst'(V0) -> {'Builtin.Refl'}.
'un--curry'(V0, V1) -> (V0(V1)).
'un--bimap'(V0, V1) -> begin (V2 = V1), ((V0('erased'))(V2)) end.
