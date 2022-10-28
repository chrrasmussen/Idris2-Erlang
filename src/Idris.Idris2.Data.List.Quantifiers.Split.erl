-module('Idris.Idris2.Data.List.Quantifiers.Split').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.prfs'/1,
  'un--.naws'/1,
  'un--.interleaving'/1,
  'un--.contras'/1,
  'un--.ayes'/1,
  'un--prfs'/1,
  'un--naws'/1,
  'un--interleaving'/1,
  'un--contras'/1,
  'un--ayes'/1
]).
'un--.prfs'(V0) -> case V0 of {'Data.List.Quantifiers.MkSplit', V1, V2, V3, V4, V5} -> V4 end.
'un--.naws'(V0) -> case V0 of {'Data.List.Quantifiers.MkSplit', V1, V2, V3, V4, V5} -> V2 end.
'un--.interleaving'(V0) -> case V0 of {'Data.List.Quantifiers.MkSplit', V1, V2, V3, V4, V5} -> V3 end.
'un--.contras'(V0) -> case V0 of {'Data.List.Quantifiers.MkSplit', V1, V2, V3, V4, V5} -> V5 end.
'un--.ayes'(V0) -> case V0 of {'Data.List.Quantifiers.MkSplit', V1, V2, V3, V4, V5} -> V1 end.
'un--prfs'(V0) -> case V0 of {'Data.List.Quantifiers.MkSplit', V1, V2, V3, V4, V5} -> V4 end.
'un--naws'(V0) -> case V0 of {'Data.List.Quantifiers.MkSplit', V1, V2, V3, V4, V5} -> V2 end.
'un--interleaving'(V0) -> case V0 of {'Data.List.Quantifiers.MkSplit', V1, V2, V3, V4, V5} -> V3 end.
'un--contras'(V0) -> case V0 of {'Data.List.Quantifiers.MkSplit', V1, V2, V3, V4, V5} -> V5 end.
'un--ayes'(V0) -> case V0 of {'Data.List.Quantifiers.MkSplit', V1, V2, V3, V4, V5} -> V1 end.
