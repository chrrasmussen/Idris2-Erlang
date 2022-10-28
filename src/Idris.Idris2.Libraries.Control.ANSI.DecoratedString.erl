-module('Idris.Idris2.Libraries.Control.ANSI.DecoratedString').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.str'/1,
  'un--.sgr'/1,
  'un--str'/1,
  'un--sgr'/1
]).
'un--.str'(V0) -> case V0 of {'Libraries.Control.ANSI.MkDString', V1, V2} -> V2 end.
'un--.sgr'(V0) -> case V0 of {'Libraries.Control.ANSI.MkDString', V1, V2} -> V1 end.
'un--str'(V0) -> case V0 of {'Libraries.Control.ANSI.MkDString', V1, V2} -> V2 end.
'un--sgr'(V0) -> case V0 of {'Libraries.Control.ANSI.MkDString', V1, V2} -> V1 end.
