-module('Idris.Idris2.Libraries.Data.IMaybe').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--map_Functor_(IMaybe $b)'/2,
  'dn--un--__Impl_Functor_(IMaybe $b)'/4,
  'un--fromJust'/1
]).
'dn--un--map_Functor_(IMaybe $b)'(V0, V1) -> case V1 of {'Idris.Libraries.Data.IMaybe.Nothing'} -> (fun () -> {'Idris.Libraries.Data.IMaybe.Nothing'} end()); {'Idris.Libraries.Data.IMaybe.Just', E0} -> (fun (V2) -> {'Idris.Libraries.Data.IMaybe.Just', (V0(V2))} end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Impl_Functor_(IMaybe $b)'(V0, V1, V2, V3) -> ('dn--un--map_Functor_(IMaybe $b)'(V2, V3)).
'un--fromJust'(V0) -> case V0 of {'Idris.Libraries.Data.IMaybe.Just', E0} -> (fun (V1) -> V1 end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
