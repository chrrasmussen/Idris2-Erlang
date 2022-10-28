-module('Idris.Idris2.Parser.Rule.Source.ParserState').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.holeNames'/1,
  'un--.decorations'/1,
  'un--holeNames'/1,
  'un--decorations'/1
]).
'un--.holeNames'(V0) -> case V0 of {'Parser.Rule.Source.MkState', V1, V2} -> V2 end.
'un--.decorations'(V0) -> case V0 of {'Parser.Rule.Source.MkState', V1, V2} -> V1 end.
'un--holeNames'(V0) -> case V0 of {'Parser.Rule.Source.MkState', V1, V2} -> V2 end.
'un--decorations'(V0) -> case V0 of {'Parser.Rule.Source.MkState', V1, V2} -> V1 end.
