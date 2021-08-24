-module('Idris.Idris2.Algebra').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--showCount'/1,
  'un--RigCount'/0
]).
'un--showCount'(V0) -> ('Idris.Idris2.Algebra.Semiring':'un--elimSemi'({'Idris.Builtin.MkPair', {'Idris.Algebra.Semiring.dn--un--__mkSemiring', fun (V1) -> fun (V2) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--|+|_Semiring_ZeroOneOmega'(V1, V2)) end end, ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--plusNeutral_Semiring_ZeroOneOmega'()), fun (V3) -> fun (V4) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--|*|_Semiring_ZeroOneOmega'(V3, V4)) end end, ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--timesNeutral_Semiring_ZeroOneOmega'())}, {'Idris.Prelude.EqOrd.MkEq', fun (V5) -> fun (V6) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--==_Eq_ZeroOneOmega'(V5, V6)) end end, fun (V7) -> fun (V8) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--/=_Eq_ZeroOneOmega'(V7, V8)) end end}}, <<"0 "/utf8>>, <<"1 "/utf8>>, fun (V9) -> <<""/utf8>> end, V0)).
'un--RigCount'() -> {'Idris.Algebra.ZeroOneOmega.ZeroOneOmega'}.
