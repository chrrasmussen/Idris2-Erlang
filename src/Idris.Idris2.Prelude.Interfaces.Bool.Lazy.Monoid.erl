-module('Idris.Idris2.Prelude.Interfaces.Bool.Lazy.Monoid').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--neutral_Monoid_Any(%delayed Bool)'/0,
  'dn--un--neutral_Monoid_All(%delayed Bool)'/0,
  'un--Any'/0,
  'un--All'/0
]).
'dn--un--neutral_Monoid_Any(%delayed Bool)'() -> fun () -> 0 end.
'dn--un--neutral_Monoid_All(%delayed Bool)'() -> fun () -> 1 end.
'un--Any'() -> {'Idris.Prelude.Interfaces.MkMonoid', fun (V0) -> fun (V1) -> ('Idris.Idris2.Prelude.Interfaces.Bool.Lazy.Semigroup':'dn--un--<+>_Semigroup_Any(%delayed Bool)'(V0, V1)) end end, ('dn--un--neutral_Monoid_Any(%delayed Bool)'())}.
'un--All'() -> {'Idris.Prelude.Interfaces.MkMonoid', fun (V0) -> fun (V1) -> ('Idris.Idris2.Prelude.Interfaces.Bool.Lazy.Semigroup':'dn--un--<+>_Semigroup_All(%delayed Bool)'(V0, V1)) end end, ('dn--un--neutral_Monoid_All(%delayed Bool)'())}.
