-module('Idris.Idris2.Core.Context.Context.SCCall').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.fnCall'/1,
  'un--.fnArgs'/1,
  'un--fnCall'/1,
  'un--fnArgs'/1
]).
'un--.fnCall'(V0) -> case V0 of {'Core.Context.Context.MkSCCall', V1, V2} -> V1 end.
'un--.fnArgs'(V0) -> case V0 of {'Core.Context.Context.MkSCCall', V1, V2} -> V2 end.
'un--fnCall'(V0) -> case V0 of {'Core.Context.Context.MkSCCall', V1, V2} -> V1 end.
'un--fnArgs'(V0) -> case V0 of {'Core.Context.Context.MkSCCall', V1, V2} -> V2 end.
