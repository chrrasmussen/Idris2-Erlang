-module('Idris.Idris2.Data.Nat.Monoid').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--neutral_Monoid_MaximumNat'/0,
  'un--Maximum'/0
]).
'dn--un--neutral_Monoid_MaximumNat'() -> 0.
'un--Maximum'() -> {'Idris.Prelude.Interfaces.MkMonoid', fun (V0) -> fun (V1) -> ('Idris.Idris2.Data.Nat.Semigroup':'dn--un--<+>_Semigroup_MaximumNat'(V0, V1)) end end, ('dn--un--neutral_Monoid_MaximumNat'())}.
