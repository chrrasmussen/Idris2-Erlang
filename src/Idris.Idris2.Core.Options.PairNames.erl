-module('Idris.Idris2.Core.Options.PairNames').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.sndName'/1,
  'un--.pairType'/1,
  'un--.fstName'/1,
  'un--sndName'/1,
  'un--pairType'/1,
  'un--fstName'/1
]).
'un--.sndName'(V0) -> case V0 of {'Core.Options.MkPairNs', V1, V2, V3} -> V3 end.
'un--.pairType'(V0) -> case V0 of {'Core.Options.MkPairNs', V1, V2, V3} -> V1 end.
'un--.fstName'(V0) -> case V0 of {'Core.Options.MkPairNs', V1, V2, V3} -> V2 end.
'un--sndName'(V0) -> case V0 of {'Core.Options.MkPairNs', V1, V2, V3} -> V3 end.
'un--pairType'(V0) -> case V0 of {'Core.Options.MkPairNs', V1, V2, V3} -> V1 end.
'un--fstName'(V0) -> case V0 of {'Core.Options.MkPairNs', V1, V2, V3} -> V2 end.
