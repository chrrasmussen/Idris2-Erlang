-module('Idris.Idris2.Core.Case.Util.DataCon').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.tag'/1,
  'un--.name'/1,
  'un--.arity'/1,
  'un--tag'/1,
  'un--name'/1,
  'un--arity'/1
]).
'un--.tag'(V0) -> case V0 of {'Core.Case.Util.MkDataCon', V1, V2, V3} -> V2 end.
'un--.name'(V0) -> case V0 of {'Core.Case.Util.MkDataCon', V1, V2, V3} -> V1 end.
'un--.arity'(V0) -> case V0 of {'Core.Case.Util.MkDataCon', V1, V2, V3} -> V3 end.
'un--tag'(V0) -> case V0 of {'Core.Case.Util.MkDataCon', V1, V2, V3} -> V2 end.
'un--name'(V0) -> case V0 of {'Core.Case.Util.MkDataCon', V1, V2, V3} -> V1 end.
'un--arity'(V0) -> case V0 of {'Core.Case.Util.MkDataCon', V1, V2, V3} -> V3 end.
