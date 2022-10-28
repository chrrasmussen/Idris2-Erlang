-module('Idris.Idris2.Protocol.IDE.FileContext.FileContext').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.range'/1,
  'un--.file'/1,
  'un--range'/1,
  'un--file'/1
]).
'un--.range'(V0) -> case V0 of {'Protocol.IDE.FileContext.MkFileContext', V1, V2} -> V2 end.
'un--.file'(V0) -> case V0 of {'Protocol.IDE.FileContext.MkFileContext', V1, V2} -> V1 end.
'un--range'(V0) -> case V0 of {'Protocol.IDE.FileContext.MkFileContext', V1, V2} -> V2 end.
'un--file'(V0) -> case V0 of {'Protocol.IDE.FileContext.MkFileContext', V1, V2} -> V1 end.
