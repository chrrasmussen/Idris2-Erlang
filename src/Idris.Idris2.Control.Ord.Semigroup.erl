-module('Idris.Idris2.Control.Ord.Semigroup').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--<+>_Semigroup_Minimum$a'/3,
  'dn--un--<+>_Semigroup_Maximum$a'/3,
  'un--Minimum'/3,
  'un--Maximum'/3
]).
'dn--un--<+>_Semigroup_Minimum$a'(V0, V1, V2) -> case V0 of {'Prelude.EqOrd.MkOrd', V3, V4, V5, V6, V7, V8, V9, V10} -> ((V10(V1))(V2)) end.
'dn--un--<+>_Semigroup_Maximum$a'(V0, V1, V2) -> case V0 of {'Prelude.EqOrd.MkOrd', V3, V4, V5, V6, V7, V8, V9, V10} -> ((V9(V1))(V2)) end.
'un--Minimum'(V0, V1, V2) -> ('dn--un--<+>_Semigroup_Minimum$a'(V0, V1, V2)).
'un--Maximum'(V0, V1, V2) -> ('dn--un--<+>_Semigroup_Maximum$a'(V0, V1, V2)).
