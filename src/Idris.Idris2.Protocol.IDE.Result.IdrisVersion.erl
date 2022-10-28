-module('Idris.Idris2.Protocol.IDE.Result.IdrisVersion').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.tag'/1,
  'un--.patch'/1,
  'un--.minor'/1,
  'un--.major'/1,
  'un--tag'/1,
  'un--patch'/1,
  'un--minor'/1,
  'un--major'/1
]).
'un--.tag'(V0) -> case V0 of {'Protocol.IDE.Result.MkIdrisVersion', V1, V2, V3, V4} -> V4 end.
'un--.patch'(V0) -> case V0 of {'Protocol.IDE.Result.MkIdrisVersion', V1, V2, V3, V4} -> V3 end.
'un--.minor'(V0) -> case V0 of {'Protocol.IDE.Result.MkIdrisVersion', V1, V2, V3, V4} -> V2 end.
'un--.major'(V0) -> case V0 of {'Protocol.IDE.Result.MkIdrisVersion', V1, V2, V3, V4} -> V1 end.
'un--tag'(V0) -> case V0 of {'Protocol.IDE.Result.MkIdrisVersion', V1, V2, V3, V4} -> V4 end.
'un--patch'(V0) -> case V0 of {'Protocol.IDE.Result.MkIdrisVersion', V1, V2, V3, V4} -> V3 end.
'un--minor'(V0) -> case V0 of {'Protocol.IDE.Result.MkIdrisVersion', V1, V2, V3, V4} -> V2 end.
'un--major'(V0) -> case V0 of {'Protocol.IDE.Result.MkIdrisVersion', V1, V2, V3, V4} -> V1 end.
