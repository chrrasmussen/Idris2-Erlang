-module('Idris.Idris2.Builtin.DPair.DPair').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.snd'/1,
  'un--.fst'/1,
  'un--snd'/1,
  'un--fst'/1
]).
'un--.snd'(V0) -> case V0 of {'Builtin.DPair.MkDPair', V1, V2} -> V2 end.
'un--.fst'(V0) -> case V0 of {'Builtin.DPair.MkDPair', V1, V2} -> V1 end.
'un--snd'(V0) -> case V0 of {'Builtin.DPair.MkDPair', V1, V2} -> V2 end.
'un--fst'(V0) -> case V0 of {'Builtin.DPair.MkDPair', V1, V2} -> V1 end.
