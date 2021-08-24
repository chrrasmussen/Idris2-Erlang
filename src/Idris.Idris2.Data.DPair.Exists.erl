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
'un--uncurry'(V0, V1) -> ((V0('erased'))(V1)).
'un--evidenceInjectiveSnd'(V0) -> case V0 of 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--evidenceInjectiveFst'(V0) -> case V0 of 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--curry'(V0, V1) -> (V0(V1)).
'un--bimap'(V0, V1) -> ((V0('erased'))(V1)).
