-module('Idris.Idris2.Idris.Syntax.Method').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.type'/1,
  'un--.totalReq'/1,
  'un--.name'/1,
  'un--.count'/1,
  'un--type'/1,
  'un--totalReq'/1,
  'un--name'/1,
  'un--count'/1
]).
'un--.type'(V0) -> case V0 of {'Idris.Syntax.MkMethod', V1, V2, V3, V4} -> V4 end.
'un--.totalReq'(V0) -> case V0 of {'Idris.Syntax.MkMethod', V1, V2, V3, V4} -> V3 end.
'un--.name'(V0) -> case V0 of {'Idris.Syntax.MkMethod', V1, V2, V3, V4} -> V1 end.
'un--.count'(V0) -> case V0 of {'Idris.Syntax.MkMethod', V1, V2, V3, V4} -> V2 end.
'un--type'(V0) -> case V0 of {'Idris.Syntax.MkMethod', V1, V2, V3, V4} -> V4 end.
'un--totalReq'(V0) -> case V0 of {'Idris.Syntax.MkMethod', V1, V2, V3, V4} -> V3 end.
'un--name'(V0) -> case V0 of {'Idris.Syntax.MkMethod', V1, V2, V3, V4} -> V1 end.
'un--count'(V0) -> case V0 of {'Idris.Syntax.MkMethod', V1, V2, V3, V4} -> V2 end.
