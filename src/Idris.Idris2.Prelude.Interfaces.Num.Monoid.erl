-module('Idris.Idris2.Prelude.Interfaces.Num.Monoid').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--neutral_Monoid_Multiplicative$a'/1,
  'dn--un--neutral_Monoid_Additive$a'/1,
  'un--Multiplicative'/1,
  'un--Additive'/1
]).
'dn--un--neutral_Monoid_Multiplicative$a'(V0) -> case V0 of {'Prelude.Num.MkNum', V1, V2, V3} -> (V3(1)) end.
'dn--un--neutral_Monoid_Additive$a'(V0) -> case V0 of {'Prelude.Num.MkNum', V1, V2, V3} -> (V3(0)) end.
'un--Multiplicative'(V0) -> {'Prelude.Interfaces.MkMonoid', fun (V1) -> fun (V2) -> ('Idris.Idris2.Prelude.Interfaces.Num.Semigroup':'dn--un--<+>_Semigroup_Multiplicative$a'(V0, V1, V2)) end end, ('dn--un--neutral_Monoid_Multiplicative$a'(V0))}.
'un--Additive'(V0) -> {'Prelude.Interfaces.MkMonoid', fun (V1) -> fun (V2) -> ('Idris.Idris2.Prelude.Interfaces.Num.Semigroup':'dn--un--<+>_Semigroup_Additive$a'(V0, V1, V2)) end end, ('dn--un--neutral_Monoid_Additive$a'(V0))}.
