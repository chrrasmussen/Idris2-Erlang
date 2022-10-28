-module('Idris.Idris2.Data.Fin.Monoid').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--neutral_Monoid_Minimum(Fin (S $n))'/1,
  'dn--un--neutral_Monoid_Maximum(Fin (S $n))'/0,
  'un--Minimum'/1,
  'un--Maximum'/0
]).
'dn--un--neutral_Monoid_Minimum(Fin (S $n))'(V0) -> V0.
'dn--un--neutral_Monoid_Maximum(Fin (S $n))'() -> 0.
'un--Minimum'(V0) -> {'Prelude.Interfaces.MkMonoid', fun (V1) -> fun (V2) -> ('Idris.Idris2.Control.Ord.Semigroup':'dn--un--<+>_Semigroup_Minimum$a'({'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V3) -> fun (V4) -> ('Idris.Idris2.Data.Fin':'dn--un--==_Eq_(Fin $n)'(V3, V4)) end end, fun (V5) -> fun (V6) -> ('Idris.Idris2.Data.Fin':'dn--un--/=_Eq_(Fin $n)'(V5, V6)) end end}, fun (V7) -> fun (V8) -> ('Idris.Idris2.Data.Fin':'dn--un--compare_Ord_(Fin $n)'(V7, V8)) end end, fun (V9) -> fun (V10) -> ('Idris.Idris2.Data.Fin':'dn--un--<_Ord_(Fin $n)'(V9, V10)) end end, fun (V11) -> fun (V12) -> ('Idris.Idris2.Data.Fin':'dn--un-->_Ord_(Fin $n)'(V11, V12)) end end, fun (V13) -> fun (V14) -> ('Idris.Idris2.Data.Fin':'dn--un--<=_Ord_(Fin $n)'(V13, V14)) end end, fun (V15) -> fun (V16) -> ('Idris.Idris2.Data.Fin':'dn--un-->=_Ord_(Fin $n)'(V15, V16)) end end, fun (V17) -> fun (V18) -> ('Idris.Idris2.Data.Fin':'dn--un--max_Ord_(Fin $n)'(V17, V18)) end end, fun (V19) -> fun (V20) -> ('Idris.Idris2.Data.Fin':'dn--un--min_Ord_(Fin $n)'(V19, V20)) end end}, V1, V2)) end end, V0}.
'un--Maximum'() -> {'Prelude.Interfaces.MkMonoid', fun (V0) -> fun (V1) -> ('Idris.Idris2.Control.Ord.Semigroup':'dn--un--<+>_Semigroup_Maximum$a'({'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Data.Fin':'dn--un--==_Eq_(Fin $n)'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Data.Fin':'dn--un--/=_Eq_(Fin $n)'(V4, V5)) end end}, fun (V6) -> fun (V7) -> ('Idris.Idris2.Data.Fin':'dn--un--compare_Ord_(Fin $n)'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('Idris.Idris2.Data.Fin':'dn--un--<_Ord_(Fin $n)'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('Idris.Idris2.Data.Fin':'dn--un-->_Ord_(Fin $n)'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('Idris.Idris2.Data.Fin':'dn--un--<=_Ord_(Fin $n)'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('Idris.Idris2.Data.Fin':'dn--un-->=_Ord_(Fin $n)'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('Idris.Idris2.Data.Fin':'dn--un--max_Ord_(Fin $n)'(V16, V17)) end end, fun (V18) -> fun (V19) -> ('Idris.Idris2.Data.Fin':'dn--un--min_Ord_(Fin $n)'(V18, V19)) end end}, V0, V1)) end end, 0}.
