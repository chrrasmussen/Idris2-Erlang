-module('Idris.Idris2.Core.Context.Context.HoleFlags').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.precisetype'/1,
  'un--.implbind'/1,
  'un--precisetype'/1,
  'un--implbind'/1
]).
'un--.precisetype'(V0) -> case V0 of {'Core.Context.Context.MkHoleFlags', V1, V2} -> V2 end.
'un--.implbind'(V0) -> case V0 of {'Core.Context.Context.MkHoleFlags', V1, V2} -> V1 end.
'un--precisetype'(V0) -> case V0 of {'Core.Context.Context.MkHoleFlags', V1, V2} -> V2 end.
'un--implbind'(V0) -> case V0 of {'Core.Context.Context.MkHoleFlags', V1, V2} -> V1 end.
