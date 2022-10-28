-module('Idris.Idris2.Libraries.Text.Literate.LiterateError').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.line'/1,
  'un--.input'/1,
  'un--.column'/1,
  'un--line'/1,
  'un--input'/1,
  'un--column'/1
]).
'un--.line'(V0) -> case V0 of {'Libraries.Text.Literate.MkLitErr', V1, V2, V3} -> V1 end.
'un--.input'(V0) -> case V0 of {'Libraries.Text.Literate.MkLitErr', V1, V2, V3} -> V3 end.
'un--.column'(V0) -> case V0 of {'Libraries.Text.Literate.MkLitErr', V1, V2, V3} -> V2 end.
'un--line'(V0) -> case V0 of {'Libraries.Text.Literate.MkLitErr', V1, V2, V3} -> V1 end.
'un--input'(V0) -> case V0 of {'Libraries.Text.Literate.MkLitErr', V1, V2, V3} -> V3 end.
'un--column'(V0) -> case V0 of {'Libraries.Text.Literate.MkLitErr', V1, V2, V3} -> V2 end.
