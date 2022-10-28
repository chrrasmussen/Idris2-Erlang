-module('Idris.Idris2.Data.Nat.Monoid').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--neutral_Monoid_MaximumNat'/0,
  'un--Maximum'/0
]).
'dn--un--neutral_Monoid_MaximumNat'() -> 0.
'un--Maximum'() -> {'Prelude.Interfaces.MkMonoid', fun (V0) -> fun (V1) -> ('Idris.Idris2.Control.Ord.Semigroup':'dn--un--<+>_Semigroup_Maximum$a'({'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> case (V2 =:= V3) of 'false' -> 0; _ -> 1 end end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.Types':'dn--un--/=_Eq_Nat'(V4, V5)) end end}, fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Integer'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.Types':'dn--un--<_Ord_Nat'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('Idris.Idris2.Prelude.Types':'dn--un-->_Ord_Nat'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.Types':'dn--un--<=_Ord_Nat'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('Idris.Idris2.Prelude.Types':'dn--un-->=_Ord_Nat'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('Idris.Idris2.Prelude.Types':'dn--un--max_Ord_Nat'(V16, V17)) end end, fun (V18) -> fun (V19) -> ('Idris.Idris2.Prelude.Types':'dn--un--min_Ord_Nat'(V18, V19)) end end}, V0, V1)) end end, 0}.
