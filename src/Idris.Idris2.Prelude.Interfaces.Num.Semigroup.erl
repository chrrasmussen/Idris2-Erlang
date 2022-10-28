-module('Idris.Idris2.Prelude.Interfaces.Num.Semigroup').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--<+>_Semigroup_Multiplicative$a'/3,
  'dn--un--<+>_Semigroup_Additive$a'/3,
  'un--Multiplicative'/3,
  'un--Additive'/3
]).
'dn--un--<+>_Semigroup_Multiplicative$a'(V0, V1, V2) -> case V0 of {'Prelude.Num.MkNum', V3, V4, V5} -> ((V4(V1))(V2)) end.
'dn--un--<+>_Semigroup_Additive$a'(V0, V1, V2) -> case V0 of {'Prelude.Num.MkNum', V3, V4, V5} -> ((V3(V1))(V2)) end.
'un--Multiplicative'(V0, V1, V2) -> ('dn--un--<+>_Semigroup_Multiplicative$a'(V0, V1, V2)).
'un--Additive'(V0, V1, V2) -> ('dn--un--<+>_Semigroup_Additive$a'(V0, V1, V2)).
