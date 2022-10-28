-module('Idris.Idris2.Core.TT.KindedName').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.rawName'/1,
  'un--.nameKind'/1,
  'un--.fullName'/1,
  'un--rawName'/1,
  'un--nameKind'/1,
  'un--fullName'/1
]).
'un--.rawName'(V0) -> case V0 of {'Core.TT.MkKindedName', V1, V2, V3} -> V3 end.
'un--.nameKind'(V0) -> case V0 of {'Core.TT.MkKindedName', V1, V2, V3} -> V1 end.
'un--.fullName'(V0) -> case V0 of {'Core.TT.MkKindedName', V1, V2, V3} -> V2 end.
'un--rawName'(V0) -> case V0 of {'Core.TT.MkKindedName', V1, V2, V3} -> V3 end.
'un--nameKind'(V0) -> case V0 of {'Core.TT.MkKindedName', V1, V2, V3} -> V1 end.
'un--fullName'(V0) -> case V0 of {'Core.TT.MkKindedName', V1, V2, V3} -> V2 end.
