-module('Idris.Idris2.Libraries.Text.Bounded.WithBounds').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.val'/1,
  'un--.isIrrelevant'/1,
  'un--.bounds'/1,
  'un--val'/1,
  'un--isIrrelevant'/1,
  'un--bounds'/1
]).
'un--.val'(V0) -> case V0 of {'Libraries.Text.Bounded.MkBounded', V1, V2, V3} -> V1 end.
'un--.isIrrelevant'(V0) -> case V0 of {'Libraries.Text.Bounded.MkBounded', V1, V2, V3} -> V2 end.
'un--.bounds'(V0) -> case V0 of {'Libraries.Text.Bounded.MkBounded', V1, V2, V3} -> V3 end.
'un--val'(V0) -> case V0 of {'Libraries.Text.Bounded.MkBounded', V1, V2, V3} -> V1 end.
'un--isIrrelevant'(V0) -> case V0 of {'Libraries.Text.Bounded.MkBounded', V1, V2, V3} -> V2 end.
'un--bounds'(V0) -> case V0 of {'Libraries.Text.Bounded.MkBounded', V1, V2, V3} -> V3 end.
