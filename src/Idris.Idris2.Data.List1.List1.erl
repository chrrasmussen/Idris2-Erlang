-module('Idris.Idris2.Data.List1.List1').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.tail'/1,
  'un--.head'/1,
  'un--tail'/1,
  'un--head'/1
]).
'un--.tail'(V0) -> case V0 of {'Data.List1.:::', V1, V2} -> V2 end.
'un--.head'(V0) -> case V0 of {'Data.List1.:::', V1, V2} -> V1 end.
'un--tail'(V0) -> case V0 of {'Data.List1.:::', V1, V2} -> V2 end.
'un--head'(V0) -> case V0 of {'Data.List1.:::', V1, V2} -> V1 end.
