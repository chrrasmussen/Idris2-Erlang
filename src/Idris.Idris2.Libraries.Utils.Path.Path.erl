-module('Idris.Idris2.Libraries.Utils.Path.Path').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.volume'/1,
  'un--.hasTrailSep'/1,
  'un--.hasRoot'/1,
  'un--.body'/1,
  'un--volume'/1,
  'un--hasTrailSep'/1,
  'un--hasRoot'/1,
  'un--body'/1
]).
'un--.volume'(V0) -> case V0 of {'Libraries.Utils.Path.MkPath', V1, V2, V3, V4} -> V1 end.
'un--.hasTrailSep'(V0) -> case V0 of {'Libraries.Utils.Path.MkPath', V1, V2, V3, V4} -> V4 end.
'un--.hasRoot'(V0) -> case V0 of {'Libraries.Utils.Path.MkPath', V1, V2, V3, V4} -> V2 end.
'un--.body'(V0) -> case V0 of {'Libraries.Utils.Path.MkPath', V1, V2, V3, V4} -> V3 end.
'un--volume'(V0) -> case V0 of {'Libraries.Utils.Path.MkPath', V1, V2, V3, V4} -> V1 end.
'un--hasTrailSep'(V0) -> case V0 of {'Libraries.Utils.Path.MkPath', V1, V2, V3, V4} -> V4 end.
'un--hasRoot'(V0) -> case V0 of {'Libraries.Utils.Path.MkPath', V1, V2, V3, V4} -> V2 end.
'un--body'(V0) -> case V0 of {'Libraries.Utils.Path.MkPath', V1, V2, V3, V4} -> V3 end.
