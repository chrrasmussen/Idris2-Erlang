-module('Idris.Idris2.Libraries.Text.Literate.LiterateStyle').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.line_markers'/1,
  'un--.file_extensions'/1,
  'un--.deliminators'/1,
  'un--line_markers'/1,
  'un--file_extensions'/1,
  'un--deliminators'/1
]).
'un--.line_markers'(V0) -> case V0 of {'Libraries.Text.Literate.MkLitStyle', V1, V2, V3} -> V2 end.
'un--.file_extensions'(V0) -> case V0 of {'Libraries.Text.Literate.MkLitStyle', V1, V2, V3} -> V3 end.
'un--.deliminators'(V0) -> case V0 of {'Libraries.Text.Literate.MkLitStyle', V1, V2, V3} -> V1 end.
'un--line_markers'(V0) -> case V0 of {'Libraries.Text.Literate.MkLitStyle', V1, V2, V3} -> V2 end.
'un--file_extensions'(V0) -> case V0 of {'Libraries.Text.Literate.MkLitStyle', V1, V2, V3} -> V3 end.
'un--deliminators'(V0) -> case V0 of {'Libraries.Text.Literate.MkLitStyle', V1, V2, V3} -> V1 end.
