-module('Idris.Idris2.Network.Socket.Data.UDPRecvData').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.remote_port'/1,
  'un--.remote_addr'/1,
  'un--.recv_data'/1,
  'un--.data_len'/1,
  'un--remote_port'/1,
  'un--remote_addr'/1,
  'un--recv_data'/1,
  'un--data_len'/1
]).
'un--.remote_port'(V0) -> case V0 of {'Network.Socket.Data.MkUDPRecvData', V1, V2, V3, V4} -> V2 end.
'un--.remote_addr'(V0) -> case V0 of {'Network.Socket.Data.MkUDPRecvData', V1, V2, V3, V4} -> V1 end.
'un--.recv_data'(V0) -> case V0 of {'Network.Socket.Data.MkUDPRecvData', V1, V2, V3, V4} -> V3 end.
'un--.data_len'(V0) -> case V0 of {'Network.Socket.Data.MkUDPRecvData', V1, V2, V3, V4} -> V4 end.
'un--remote_port'(V0) -> case V0 of {'Network.Socket.Data.MkUDPRecvData', V1, V2, V3, V4} -> V2 end.
'un--remote_addr'(V0) -> case V0 of {'Network.Socket.Data.MkUDPRecvData', V1, V2, V3, V4} -> V1 end.
'un--recv_data'(V0) -> case V0 of {'Network.Socket.Data.MkUDPRecvData', V1, V2, V3, V4} -> V3 end.
'un--data_len'(V0) -> case V0 of {'Network.Socket.Data.MkUDPRecvData', V1, V2, V3, V4} -> V4 end.
