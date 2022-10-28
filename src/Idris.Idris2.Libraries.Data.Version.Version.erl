-module('Idris.Idris2.Libraries.Data.Version.Version').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.versionTag'/1,
  'un--.semVer'/1,
  'un--versionTag'/1,
  'un--semVer'/1
]).
'un--.versionTag'(V0) -> case V0 of {'Libraries.Data.Version.MkVersion', V1, V2} -> V2 end.
'un--.semVer'(V0) -> case V0 of {'Libraries.Data.Version.MkVersion', V1, V2} -> V1 end.
'un--versionTag'(V0) -> case V0 of {'Libraries.Data.Version.MkVersion', V1, V2} -> V2 end.
'un--semVer'(V0) -> case V0 of {'Libraries.Data.Version.MkVersion', V1, V2} -> V1 end.
