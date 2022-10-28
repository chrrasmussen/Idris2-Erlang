-module('Idris.Idris2.Core.Context.Context.Constructor').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.type'/1,
  'un--.name'/1,
  'un--.loc'/1,
  'un--.arity'/1,
  'un--type'/1,
  'un--name'/1,
  'un--loc'/1,
  'un--arity'/1
]).
'un--.type'(V0) -> case V0 of {'Core.Context.Context.MkCon', V1, V2, V3, V4} -> V4 end.
'un--.name'(V0) -> case V0 of {'Core.Context.Context.MkCon', V1, V2, V3, V4} -> V2 end.
'un--.loc'(V0) -> case V0 of {'Core.Context.Context.MkCon', V1, V2, V3, V4} -> V1 end.
'un--.arity'(V0) -> case V0 of {'Core.Context.Context.MkCon', V1, V2, V3, V4} -> V3 end.
'un--type'(V0) -> case V0 of {'Core.Context.Context.MkCon', V1, V2, V3, V4} -> V4 end.
'un--name'(V0) -> case V0 of {'Core.Context.Context.MkCon', V1, V2, V3, V4} -> V2 end.
'un--loc'(V0) -> case V0 of {'Core.Context.Context.MkCon', V1, V2, V3, V4} -> V1 end.
'un--arity'(V0) -> case V0 of {'Core.Context.Context.MkCon', V1, V2, V3, V4} -> V3 end.
