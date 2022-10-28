-module('Idris.Idris2.Idris.Syntax.IFaceInfo').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.parents'/1,
  'un--.params'/1,
  'un--.methods'/1,
  'un--.implParams'/1,
  'un--.iconstructor'/1,
  'un--.defaults'/1,
  'un--parents'/1,
  'un--params'/1,
  'un--methods'/1,
  'un--implParams'/1,
  'un--iconstructor'/1,
  'un--defaults'/1
]).
'un--.parents'(V0) -> case V0 of {'Idris.Syntax.MkIFaceInfo', V1, V2, V3, V4, V5, V6} -> V4 end.
'un--.params'(V0) -> case V0 of {'Idris.Syntax.MkIFaceInfo', V1, V2, V3, V4, V5, V6} -> V3 end.
'un--.methods'(V0) -> case V0 of {'Idris.Syntax.MkIFaceInfo', V1, V2, V3, V4, V5, V6} -> V5 end.
'un--.implParams'(V0) -> case V0 of {'Idris.Syntax.MkIFaceInfo', V1, V2, V3, V4, V5, V6} -> V2 end.
'un--.iconstructor'(V0) -> case V0 of {'Idris.Syntax.MkIFaceInfo', V1, V2, V3, V4, V5, V6} -> V1 end.
'un--.defaults'(V0) -> case V0 of {'Idris.Syntax.MkIFaceInfo', V1, V2, V3, V4, V5, V6} -> V6 end.
'un--parents'(V0) -> case V0 of {'Idris.Syntax.MkIFaceInfo', V1, V2, V3, V4, V5, V6} -> V4 end.
'un--params'(V0) -> case V0 of {'Idris.Syntax.MkIFaceInfo', V1, V2, V3, V4, V5, V6} -> V3 end.
'un--methods'(V0) -> case V0 of {'Idris.Syntax.MkIFaceInfo', V1, V2, V3, V4, V5, V6} -> V5 end.
'un--implParams'(V0) -> case V0 of {'Idris.Syntax.MkIFaceInfo', V1, V2, V3, V4, V5, V6} -> V2 end.
'un--iconstructor'(V0) -> case V0 of {'Idris.Syntax.MkIFaceInfo', V1, V2, V3, V4, V5, V6} -> V1 end.
'un--defaults'(V0) -> case V0 of {'Idris.Syntax.MkIFaceInfo', V1, V2, V3, V4, V5, V6} -> V6 end.
