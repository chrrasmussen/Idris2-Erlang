-module('Idris.Idris2.Protocol.IDE.Result.REPLOption').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.val'/1,
  'un--.type'/1,
  'un--.name'/1,
  'un--val'/1,
  'un--type'/1,
  'un--name'/1
]).
'un--.val'(V0) -> case V0 of {'Protocol.IDE.Result.MkOption', V1, V2, V3} -> V3 end.
'un--.type'(V0) -> case V0 of {'Protocol.IDE.Result.MkOption', V1, V2, V3} -> V2 end.
'un--.name'(V0) -> case V0 of {'Protocol.IDE.Result.MkOption', V1, V2, V3} -> V1 end.
'un--val'(V0) -> case V0 of {'Protocol.IDE.Result.MkOption', V1, V2, V3} -> V3 end.
'un--type'(V0) -> case V0 of {'Protocol.IDE.Result.MkOption', V1, V2, V3} -> V2 end.
'un--name'(V0) -> case V0 of {'Protocol.IDE.Result.MkOption', V1, V2, V3} -> V1 end.
