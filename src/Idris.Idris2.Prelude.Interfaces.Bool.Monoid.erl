-module('Idris.Idris2.Prelude.Interfaces.Bool.Monoid').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--neutral_Monoid_AnyBool'/0,
  'dn--un--neutral_Monoid_AllBool'/0,
  'un--Any'/0,
  'un--All'/0
]).
'dn--un--neutral_Monoid_AnyBool'() -> 0.
'dn--un--neutral_Monoid_AllBool'() -> 1.
'un--Any'() -> {'Idris.Prelude.Interfaces.MkMonoid', fun (V0) -> fun (V1) -> ('Idris.Idris2.Prelude.Interfaces.Bool.Semigroup':'dn--un--<+>_Semigroup_AnyBool'(V0, V1)) end end, ('dn--un--neutral_Monoid_AnyBool'())}.
'un--All'() -> {'Idris.Prelude.Interfaces.MkMonoid', fun (V0) -> fun (V1) -> ('Idris.Idris2.Prelude.Interfaces.Bool.Semigroup':'dn--un--<+>_Semigroup_AllBool'(V0, V1)) end end, ('dn--un--neutral_Monoid_AllBool'())}.
