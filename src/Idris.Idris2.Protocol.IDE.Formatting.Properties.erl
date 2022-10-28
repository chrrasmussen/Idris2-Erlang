-module('Idris.Idris2.Protocol.IDE.Formatting.Properties').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.format'/1,
  'un--.decor'/1,
  'un--format'/1,
  'un--decor'/1
]).
'un--.format'(V0) -> case V0 of {'Protocol.IDE.Formatting.MkProperties', V1, V2} -> V2 end.
'un--.decor'(V0) -> case V0 of {'Protocol.IDE.Formatting.MkProperties', V1, V2} -> V1 end.
'un--format'(V0) -> case V0 of {'Protocol.IDE.Formatting.MkProperties', V1, V2} -> V2 end.
'un--decor'(V0) -> case V0 of {'Protocol.IDE.Formatting.MkProperties', V1, V2} -> V1 end.
