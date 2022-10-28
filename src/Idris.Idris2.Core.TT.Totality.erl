-module('Idris.Idris2.Core.TT.Totality').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.isTerminating'/1,
  'un--.isCovering'/1,
  'un--isTerminating'/1,
  'un--isCovering'/1
]).
'un--.isTerminating'(V0) -> case V0 of {'Core.TT.MkTotality', V1, V2} -> V1 end.
'un--.isCovering'(V0) -> case V0 of {'Core.TT.MkTotality', V1, V2} -> V2 end.
'un--isTerminating'(V0) -> case V0 of {'Core.TT.MkTotality', V1, V2} -> V1 end.
'un--isCovering'(V0) -> case V0 of {'Core.TT.MkTotality', V1, V2} -> V2 end.
