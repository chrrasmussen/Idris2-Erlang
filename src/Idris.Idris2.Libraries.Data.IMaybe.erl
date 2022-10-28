-module('Idris.Idris2.Libraries.Data.IMaybe').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--map_Functor_(IMaybe $b)'/2,
  'dn--un--__Impl_Functor_(IMaybe $b)'/4,
  'un--fromJust'/1
]).
'dn--un--map_Functor_(IMaybe $b)'(V0, V1) -> case V1 of {'Libraries.Data.IMaybe.Nothing'} -> {'Libraries.Data.IMaybe.Nothing'}; {'Libraries.Data.IMaybe.Just', V2} -> {'Libraries.Data.IMaybe.Just', (V0(V2))} end.
'dn--un--__Impl_Functor_(IMaybe $b)'(V0, V1, V2, V3) -> ('dn--un--map_Functor_(IMaybe $b)'(V2, V3)).
'un--fromJust'(V0) -> case V0 of {'Libraries.Data.IMaybe.Just', V1} -> V1 end.
