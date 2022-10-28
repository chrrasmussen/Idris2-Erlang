-module('Idris.Idris2.Protocol.IDE.Highlight.Highlight').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.typ'/1,
  'un--.ns'/1,
  'un--.name'/1,
  'un--.location'/1,
  'un--.key'/1,
  'un--.isImplicit'/1,
  'un--.docOverview'/1,
  'un--.decor'/1,
  'un--typ'/1,
  'un--ns'/1,
  'un--name'/1,
  'un--location'/1,
  'un--key'/1,
  'un--isImplicit'/1,
  'un--docOverview'/1,
  'un--decor'/1
]).
'un--.typ'(V0) -> case V0 of {'Protocol.IDE.Highlight.MkHighlight', V1, V2, V3, V4, V5, V6, V7, V8} -> V7 end.
'un--.ns'(V0) -> case V0 of {'Protocol.IDE.Highlight.MkHighlight', V1, V2, V3, V4, V5, V6, V7, V8} -> V8 end.
'un--.name'(V0) -> case V0 of {'Protocol.IDE.Highlight.MkHighlight', V1, V2, V3, V4, V5, V6, V7, V8} -> V2 end.
'un--.location'(V0) -> case V0 of {'Protocol.IDE.Highlight.MkHighlight', V1, V2, V3, V4, V5, V6, V7, V8} -> V1 end.
'un--.key'(V0) -> case V0 of {'Protocol.IDE.Highlight.MkHighlight', V1, V2, V3, V4, V5, V6, V7, V8} -> V4 end.
'un--.isImplicit'(V0) -> case V0 of {'Protocol.IDE.Highlight.MkHighlight', V1, V2, V3, V4, V5, V6, V7, V8} -> V3 end.
'un--.docOverview'(V0) -> case V0 of {'Protocol.IDE.Highlight.MkHighlight', V1, V2, V3, V4, V5, V6, V7, V8} -> V6 end.
'un--.decor'(V0) -> case V0 of {'Protocol.IDE.Highlight.MkHighlight', V1, V2, V3, V4, V5, V6, V7, V8} -> V5 end.
'un--typ'(V0) -> case V0 of {'Protocol.IDE.Highlight.MkHighlight', V1, V2, V3, V4, V5, V6, V7, V8} -> V7 end.
'un--ns'(V0) -> case V0 of {'Protocol.IDE.Highlight.MkHighlight', V1, V2, V3, V4, V5, V6, V7, V8} -> V8 end.
'un--name'(V0) -> case V0 of {'Protocol.IDE.Highlight.MkHighlight', V1, V2, V3, V4, V5, V6, V7, V8} -> V2 end.
'un--location'(V0) -> case V0 of {'Protocol.IDE.Highlight.MkHighlight', V1, V2, V3, V4, V5, V6, V7, V8} -> V1 end.
'un--key'(V0) -> case V0 of {'Protocol.IDE.Highlight.MkHighlight', V1, V2, V3, V4, V5, V6, V7, V8} -> V4 end.
'un--isImplicit'(V0) -> case V0 of {'Protocol.IDE.Highlight.MkHighlight', V1, V2, V3, V4, V5, V6, V7, V8} -> V3 end.
'un--docOverview'(V0) -> case V0 of {'Protocol.IDE.Highlight.MkHighlight', V1, V2, V3, V4, V5, V6, V7, V8} -> V6 end.
'un--decor'(V0) -> case V0 of {'Protocol.IDE.Highlight.MkHighlight', V1, V2, V3, V4, V5, V6, V7, V8} -> V5 end.
