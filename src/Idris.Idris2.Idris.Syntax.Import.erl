-module('Idris.Idris2.Idris.Syntax.Import').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.reexport'/1,
  'un--.path'/1,
  'un--.nameAs'/1,
  'un--.loc'/1,
  'un--reexport'/1,
  'un--path'/1,
  'un--nameAs'/1,
  'un--loc'/1
]).
'un--.reexport'(V0) -> case V0 of {'Idris.Syntax.MkImport', V1, V2, V3, V4} -> V2 end.
'un--.path'(V0) -> case V0 of {'Idris.Syntax.MkImport', V1, V2, V3, V4} -> V3 end.
'un--.nameAs'(V0) -> case V0 of {'Idris.Syntax.MkImport', V1, V2, V3, V4} -> V4 end.
'un--.loc'(V0) -> case V0 of {'Idris.Syntax.MkImport', V1, V2, V3, V4} -> V1 end.
'un--reexport'(V0) -> case V0 of {'Idris.Syntax.MkImport', V1, V2, V3, V4} -> V2 end.
'un--path'(V0) -> case V0 of {'Idris.Syntax.MkImport', V1, V2, V3, V4} -> V3 end.
'un--nameAs'(V0) -> case V0 of {'Idris.Syntax.MkImport', V1, V2, V3, V4} -> V4 end.
'un--loc'(V0) -> case V0 of {'Idris.Syntax.MkImport', V1, V2, V3, V4} -> V1 end.
