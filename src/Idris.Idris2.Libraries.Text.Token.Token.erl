-module('Idris.Idris2.Libraries.Text.Token.Token').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.text'/1,
  'un--.kind'/1,
  'un--text'/1,
  'un--kind'/1
]).
'un--.text'(V0) -> case V0 of {'Libraries.Text.Token.Tok', V1, V2} -> V2 end.
'un--.kind'(V0) -> case V0 of {'Libraries.Text.Token.Tok', V1, V2} -> V1 end.
'un--text'(V0) -> case V0 of {'Libraries.Text.Token.Tok', V1, V2} -> V2 end.
'un--kind'(V0) -> case V0 of {'Libraries.Text.Token.Tok', V1, V2} -> V1 end.
