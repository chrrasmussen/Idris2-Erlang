-module('Idris.Idris2.Network.Socket.Data.Socket').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--socketType'/1,
  'rf--protocolNumber'/1,
  'rf--family'/1,
  'rf--descriptor'/1,
  'un--socketType'/1,
  'un--protocolNumber'/1,
  'un--family'/1,
  'un--descriptor'/1
]).
'rf--socketType'(V0) -> case V0 of {'Idris.Network.Socket.Data.MkSocket', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--protocolNumber'(V0) -> case V0 of {'Idris.Network.Socket.Data.MkSocket', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V4 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--family'(V0) -> case V0 of {'Idris.Network.Socket.Data.MkSocket', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V2 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--descriptor'(V0) -> case V0 of {'Idris.Network.Socket.Data.MkSocket', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V1 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--socketType'(V0) -> case V0 of {'Idris.Network.Socket.Data.MkSocket', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--protocolNumber'(V0) -> case V0 of {'Idris.Network.Socket.Data.MkSocket', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V4 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--family'(V0) -> case V0 of {'Idris.Network.Socket.Data.MkSocket', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V2 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--descriptor'(V0) -> case V0 of {'Idris.Network.Socket.Data.MkSocket', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V1 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
