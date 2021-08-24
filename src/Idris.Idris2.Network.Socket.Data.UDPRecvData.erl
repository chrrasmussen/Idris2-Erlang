-module('Idris.Idris2.Network.Socket.Data.UDPRecvData').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--remote_port'/1,
  'rf--remote_addr'/1,
  'rf--recv_data'/1,
  'rf--data_len'/1,
  'un--remote_port'/1,
  'un--remote_addr'/1,
  'un--recv_data'/1,
  'un--data_len'/1
]).
'rf--remote_port'(V0) -> case V0 of {'Idris.Network.Socket.Data.MkUDPRecvData', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V2 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--remote_addr'(V0) -> case V0 of {'Idris.Network.Socket.Data.MkUDPRecvData', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V1 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--recv_data'(V0) -> case V0 of {'Idris.Network.Socket.Data.MkUDPRecvData', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--data_len'(V0) -> case V0 of {'Idris.Network.Socket.Data.MkUDPRecvData', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V4 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--remote_port'(V0) -> case V0 of {'Idris.Network.Socket.Data.MkUDPRecvData', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V2 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--remote_addr'(V0) -> case V0 of {'Idris.Network.Socket.Data.MkUDPRecvData', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V1 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--recv_data'(V0) -> case V0 of {'Idris.Network.Socket.Data.MkUDPRecvData', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--data_len'(V0) -> case V0 of {'Idris.Network.Socket.Data.MkUDPRecvData', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V4 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
