-module('Idris.Idris2.Idris.Syntax.Module').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.moduleNS'/1,
  'un--.imports'/1,
  'un--.headerLoc'/1,
  'un--.documentation'/1,
  'un--.decls'/1,
  'un--moduleNS'/1,
  'un--imports'/1,
  'un--headerLoc'/1,
  'un--documentation'/1,
  'un--decls'/1
]).
'un--.moduleNS'(V0) -> case V0 of {'Idris.Syntax.MkModule', V1, V2, V3, V4, V5} -> V2 end.
'un--.imports'(V0) -> case V0 of {'Idris.Syntax.MkModule', V1, V2, V3, V4, V5} -> V3 end.
'un--.headerLoc'(V0) -> case V0 of {'Idris.Syntax.MkModule', V1, V2, V3, V4, V5} -> V1 end.
'un--.documentation'(V0) -> case V0 of {'Idris.Syntax.MkModule', V1, V2, V3, V4, V5} -> V4 end.
'un--.decls'(V0) -> case V0 of {'Idris.Syntax.MkModule', V1, V2, V3, V4, V5} -> V5 end.
'un--moduleNS'(V0) -> case V0 of {'Idris.Syntax.MkModule', V1, V2, V3, V4, V5} -> V2 end.
'un--imports'(V0) -> case V0 of {'Idris.Syntax.MkModule', V1, V2, V3, V4, V5} -> V3 end.
'un--headerLoc'(V0) -> case V0 of {'Idris.Syntax.MkModule', V1, V2, V3, V4, V5} -> V1 end.
'un--documentation'(V0) -> case V0 of {'Idris.Syntax.MkModule', V1, V2, V3, V4, V5} -> V4 end.
'un--decls'(V0) -> case V0 of {'Idris.Syntax.MkModule', V1, V2, V3, V4, V5} -> V5 end.
