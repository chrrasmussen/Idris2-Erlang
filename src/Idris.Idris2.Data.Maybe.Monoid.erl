-module('Idris.Idris2.Data.Maybe.Monoid').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--neutral_Monoid_Deep(Maybe $a)'/1,
  'un--Deep'/1
]).
'dn--un--neutral_Monoid_Deep(Maybe $a)'(V0) -> {'Prelude.Types.Nothing'}.
'un--Deep'(V0) -> {'Prelude.Interfaces.MkMonoid', fun (V1) -> fun (V2) -> ('Idris.Idris2.Data.Maybe.Semigroup':'dn--un--<+>_Semigroup_Deep(Maybe $a)'(V0, V1, V2)) end end, {'Prelude.Types.Nothing'}}.
