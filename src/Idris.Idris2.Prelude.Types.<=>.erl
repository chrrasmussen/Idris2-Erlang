-module('Idris.Idris2.Prelude.Types.<=>').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.rightToLeft'/1,
  'un--.leftToRight'/1,
  'un--rightToLeft'/1,
  'un--leftToRight'/1
]).
'un--.rightToLeft'(V0) -> case V0 of {'Prelude.Types.MkEquivalence', V1, V2} -> V2 end.
'un--.leftToRight'(V0) -> case V0 of {'Prelude.Types.MkEquivalence', V1, V2} -> V1 end.
'un--rightToLeft'(V0) -> case V0 of {'Prelude.Types.MkEquivalence', V1, V2} -> V2 end.
'un--leftToRight'(V0) -> case V0 of {'Prelude.Types.MkEquivalence', V1, V2} -> V1 end.
