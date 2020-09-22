-module('Idris.Idris2.Data.ANameMap.ANameMap').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--hierarchy'/2,
  'un--exactNames'/2
]).
'un--hierarchy'(V0, V1) -> case V1 of {'Idris.Data.ANameMap.MkANameMap', E0, E1} -> (fun (V2, V3) -> V3 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--exactNames'(V0, V1) -> case V1 of {'Idris.Data.ANameMap.MkANameMap', E0, E1} -> (fun (V2, V3) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
