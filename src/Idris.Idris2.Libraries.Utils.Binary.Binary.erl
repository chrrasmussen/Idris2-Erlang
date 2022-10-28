-module('Idris.Idris2.Libraries.Utils.Binary.Binary').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.used'/1,
  'un--.size'/1,
  'un--.loc'/1,
  'un--.buf'/1,
  'un--used'/1,
  'un--size'/1,
  'un--loc'/1,
  'un--buf'/1
]).
'un--.used'(V0) -> case V0 of {'Libraries.Utils.Binary.MkBin', V1, V2, V3, V4} -> V4 end.
'un--.size'(V0) -> case V0 of {'Libraries.Utils.Binary.MkBin', V1, V2, V3, V4} -> V3 end.
'un--.loc'(V0) -> case V0 of {'Libraries.Utils.Binary.MkBin', V1, V2, V3, V4} -> V2 end.
'un--.buf'(V0) -> case V0 of {'Libraries.Utils.Binary.MkBin', V1, V2, V3, V4} -> V1 end.
'un--used'(V0) -> case V0 of {'Libraries.Utils.Binary.MkBin', V1, V2, V3, V4} -> V4 end.
'un--size'(V0) -> case V0 of {'Libraries.Utils.Binary.MkBin', V1, V2, V3, V4} -> V3 end.
'un--loc'(V0) -> case V0 of {'Libraries.Utils.Binary.MkBin', V1, V2, V3, V4} -> V2 end.
'un--buf'(V0) -> case V0 of {'Libraries.Utils.Binary.MkBin', V1, V2, V3, V4} -> V1 end.
