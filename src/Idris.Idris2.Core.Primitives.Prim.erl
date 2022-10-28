-module('Idris.Idris2.Core.Primitives.Prim').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.type'/1,
  'un--.totality'/1,
  'un--.fn'/1,
  'un--.arity'/1,
  'un--type'/1,
  'un--totality'/1,
  'un--fn'/1,
  'un--arity'/1
]).
'un--.type'(V0) -> case V0 of {'Core.Primitives.MkPrim', V1, V2, V3, V4} -> V3 end.
'un--.totality'(V0) -> case V0 of {'Core.Primitives.MkPrim', V1, V2, V3, V4} -> V4 end.
'un--.fn'(V0) -> case V0 of {'Core.Primitives.MkPrim', V1, V2, V3, V4} -> V2 end.
'un--.arity'(V0) -> case V0 of {'Core.Primitives.MkPrim', V1, V2, V3, V4} -> V1 end.
'un--type'(V0) -> case V0 of {'Core.Primitives.MkPrim', V1, V2, V3, V4} -> V3 end.
'un--totality'(V0) -> case V0 of {'Core.Primitives.MkPrim', V1, V2, V3, V4} -> V4 end.
'un--fn'(V0) -> case V0 of {'Core.Primitives.MkPrim', V1, V2, V3, V4} -> V2 end.
'un--arity'(V0) -> case V0 of {'Core.Primitives.MkPrim', V1, V2, V3, V4} -> V1 end.
