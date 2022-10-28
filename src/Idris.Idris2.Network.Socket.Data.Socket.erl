-module('Idris.Idris2.Network.Socket.Data.Socket').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.socketType'/1,
  'un--.protocolNumber'/1,
  'un--.family'/1,
  'un--.descriptor'/1,
  'un--socketType'/1,
  'un--protocolNumber'/1,
  'un--family'/1,
  'un--descriptor'/1
]).
'un--.socketType'(V0) -> case V0 of {'Network.Socket.Data.MkSocket', V1, V2, V3, V4} -> V3 end.
'un--.protocolNumber'(V0) -> case V0 of {'Network.Socket.Data.MkSocket', V1, V2, V3, V4} -> V4 end.
'un--.family'(V0) -> case V0 of {'Network.Socket.Data.MkSocket', V1, V2, V3, V4} -> V2 end.
'un--.descriptor'(V0) -> case V0 of {'Network.Socket.Data.MkSocket', V1, V2, V3, V4} -> V1 end.
'un--socketType'(V0) -> case V0 of {'Network.Socket.Data.MkSocket', V1, V2, V3, V4} -> V3 end.
'un--protocolNumber'(V0) -> case V0 of {'Network.Socket.Data.MkSocket', V1, V2, V3, V4} -> V4 end.
'un--family'(V0) -> case V0 of {'Network.Socket.Data.MkSocket', V1, V2, V3, V4} -> V2 end.
'un--descriptor'(V0) -> case V0 of {'Network.Socket.Data.MkSocket', V1, V2, V3, V4} -> V1 end.
