-module('Idris.Idris2.Network.Socket.Data.UDPAddrInfo').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.remote_port'/1,
  'un--.remote_addr'/1,
  'un--remote_port'/1,
  'un--remote_addr'/1
]).
'un--.remote_port'(V0) -> case V0 of {'Network.Socket.Data.MkUDPAddrInfo', V1, V2} -> V2 end.
'un--.remote_addr'(V0) -> case V0 of {'Network.Socket.Data.MkUDPAddrInfo', V1, V2} -> V1 end.
'un--remote_port'(V0) -> case V0 of {'Network.Socket.Data.MkUDPAddrInfo', V1, V2} -> V2 end.
'un--remote_addr'(V0) -> case V0 of {'Network.Socket.Data.MkUDPAddrInfo', V1, V2} -> V1 end.
