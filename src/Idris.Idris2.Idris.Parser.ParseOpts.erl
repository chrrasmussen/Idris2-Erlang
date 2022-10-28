-module('Idris.Idris2.Idris.Parser.ParseOpts').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.withOK'/1,
  'un--.eqOK'/1,
  'un--withOK'/1,
  'un--eqOK'/1
]).
'un--.withOK'(V0) -> case V0 of {'Idris.Parser.MkParseOpts', V1, V2} -> V2 end.
'un--.eqOK'(V0) -> case V0 of {'Idris.Parser.MkParseOpts', V1, V2} -> V1 end.
'un--withOK'(V0) -> case V0 of {'Idris.Parser.MkParseOpts', V1, V2} -> V2 end.
'un--eqOK'(V0) -> case V0 of {'Idris.Parser.MkParseOpts', V1, V2} -> V1 end.
