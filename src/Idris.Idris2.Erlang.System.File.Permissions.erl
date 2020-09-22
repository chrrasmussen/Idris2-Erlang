-module('Idris.Idris2.Erlang.System.File.Permissions').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--user'/1,
  'un--others'/1,
  'un--group'/1
]).
'un--user'(V0) -> case V0 of {'Idris.Erlang.System.File.MkPermissions', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--others'(V0) -> case V0 of {'Idris.Erlang.System.File.MkPermissions', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--group'(V0) -> case V0 of {'Idris.Erlang.System.File.MkPermissions', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
