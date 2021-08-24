-module('Idris.Idris2.Idris.Syntax.Method').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--type'/1,
  'rf--totalReq'/1,
  'rf--name'/1,
  'rf--count'/1,
  'un--type'/1,
  'un--totalReq'/1,
  'un--name'/1,
  'un--count'/1
]).
'rf--type'(V0) -> case V0 of {'Idris.Idris.Syntax.MkMethod', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V4 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--totalReq'(V0) -> case V0 of {'Idris.Idris.Syntax.MkMethod', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--name'(V0) -> case V0 of {'Idris.Idris.Syntax.MkMethod', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V1 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--count'(V0) -> case V0 of {'Idris.Idris.Syntax.MkMethod', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V2 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--type'(V0) -> case V0 of {'Idris.Idris.Syntax.MkMethod', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V4 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--totalReq'(V0) -> case V0 of {'Idris.Idris.Syntax.MkMethod', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--name'(V0) -> case V0 of {'Idris.Idris.Syntax.MkMethod', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V1 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--count'(V0) -> case V0 of {'Idris.Idris.Syntax.MkMethod', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V2 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
