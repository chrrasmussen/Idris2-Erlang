-module('Idris.Idris2.Core.Options.PrimNames').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.fromStringName'/1,
  'un--.fromIntegerName'/1,
  'un--.fromDoubleName'/1,
  'un--.fromCharName'/1,
  'un--fromStringName'/1,
  'un--fromIntegerName'/1,
  'un--fromDoubleName'/1,
  'un--fromCharName'/1
]).
'un--.fromStringName'(V0) -> case V0 of {'Core.Options.MkPrimNs', V1, V2, V3, V4} -> V2 end.
'un--.fromIntegerName'(V0) -> case V0 of {'Core.Options.MkPrimNs', V1, V2, V3, V4} -> V1 end.
'un--.fromDoubleName'(V0) -> case V0 of {'Core.Options.MkPrimNs', V1, V2, V3, V4} -> V4 end.
'un--.fromCharName'(V0) -> case V0 of {'Core.Options.MkPrimNs', V1, V2, V3, V4} -> V3 end.
'un--fromStringName'(V0) -> case V0 of {'Core.Options.MkPrimNs', V1, V2, V3, V4} -> V2 end.
'un--fromIntegerName'(V0) -> case V0 of {'Core.Options.MkPrimNs', V1, V2, V3, V4} -> V1 end.
'un--fromDoubleName'(V0) -> case V0 of {'Core.Options.MkPrimNs', V1, V2, V3, V4} -> V4 end.
'un--fromCharName'(V0) -> case V0 of {'Core.Options.MkPrimNs', V1, V2, V3, V4} -> V3 end.
