-module('Idris.Idris2.Libraries.Text.Quantity.Quantity').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.min'/1,
  'un--.max'/1,
  'un--min'/1,
  'un--max'/1
]).
'un--.min'(V0) -> case V0 of {'Libraries.Text.Quantity.Qty', V1, V2} -> V1 end.
'un--.max'(V0) -> case V0 of {'Libraries.Text.Quantity.Qty', V1, V2} -> V2 end.
'un--min'(V0) -> case V0 of {'Libraries.Text.Quantity.Qty', V1, V2} -> V1 end.
'un--max'(V0) -> case V0 of {'Libraries.Text.Quantity.Qty', V1, V2} -> V2 end.
