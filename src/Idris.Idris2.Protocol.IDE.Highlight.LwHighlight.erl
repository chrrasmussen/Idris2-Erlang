-module('Idris.Idris2.Protocol.IDE.Highlight.LwHighlight').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.location'/1,
  'un--.decor'/1,
  'un--location'/1,
  'un--decor'/1
]).
'un--.location'(V0) -> case V0 of {'Protocol.IDE.Highlight.MkLwHighlight', V1, V2} -> V1 end.
'un--.decor'(V0) -> case V0 of {'Protocol.IDE.Highlight.MkLwHighlight', V1, V2} -> V2 end.
'un--location'(V0) -> case V0 of {'Protocol.IDE.Highlight.MkLwHighlight', V1, V2} -> V1 end.
'un--decor'(V0) -> case V0 of {'Protocol.IDE.Highlight.MkLwHighlight', V1, V2} -> V2 end.
