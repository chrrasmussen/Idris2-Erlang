-module('Idris.Idris2.Core.Context.Context.TypeFlags').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.uniqueAuto'/1,
  'un--.external'/1,
  'un--uniqueAuto'/1,
  'un--external'/1
]).
'un--.uniqueAuto'(V0) -> case V0 of {'Core.Context.Context.MkTypeFlags', V1, V2} -> V1 end.
'un--.external'(V0) -> case V0 of {'Core.Context.Context.MkTypeFlags', V1, V2} -> V2 end.
'un--uniqueAuto'(V0) -> case V0 of {'Core.Context.Context.MkTypeFlags', V1, V2} -> V1 end.
'un--external'(V0) -> case V0 of {'Core.Context.Context.MkTypeFlags', V1, V2} -> V2 end.
