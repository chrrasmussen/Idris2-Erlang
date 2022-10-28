-module('Idris.Idris2.Core.AutoSearch.ArgInfo').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.plicit'/1,
  'un--.metaApp'/1,
  'un--.holeID'/1,
  'un--.argType'/1,
  'un--.argRig'/1,
  'un--plicit'/1,
  'un--metaApp'/1,
  'un--holeID'/1,
  'un--argType'/1,
  'un--argRig'/1
]).
'un--.plicit'(V0) -> case V0 of {'Core.AutoSearch.MkArgInfo', V1, V2, V3, V4, V5} -> V3 end.
'un--.metaApp'(V0) -> case V0 of {'Core.AutoSearch.MkArgInfo', V1, V2, V3, V4, V5} -> V4 end.
'un--.holeID'(V0) -> case V0 of {'Core.AutoSearch.MkArgInfo', V1, V2, V3, V4, V5} -> V1 end.
'un--.argType'(V0) -> case V0 of {'Core.AutoSearch.MkArgInfo', V1, V2, V3, V4, V5} -> V5 end.
'un--.argRig'(V0) -> case V0 of {'Core.AutoSearch.MkArgInfo', V1, V2, V3, V4, V5} -> V2 end.
'un--plicit'(V0) -> case V0 of {'Core.AutoSearch.MkArgInfo', V1, V2, V3, V4, V5} -> V3 end.
'un--metaApp'(V0) -> case V0 of {'Core.AutoSearch.MkArgInfo', V1, V2, V3, V4, V5} -> V4 end.
'un--holeID'(V0) -> case V0 of {'Core.AutoSearch.MkArgInfo', V1, V2, V3, V4, V5} -> V1 end.
'un--argType'(V0) -> case V0 of {'Core.AutoSearch.MkArgInfo', V1, V2, V3, V4, V5} -> V5 end.
'un--argRig'(V0) -> case V0 of {'Core.AutoSearch.MkArgInfo', V1, V2, V3, V4, V5} -> V2 end.
