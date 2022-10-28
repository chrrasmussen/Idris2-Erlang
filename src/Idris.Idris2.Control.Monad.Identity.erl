-module('Idris.Idris2.Control.Monad.Identity').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--max-3550'/4,
  'case--min-3520'/4,
  'dn--un--zeroBits_Bits_(Identity $a)'/1,
  'dn--un--xor_Bits_(Identity $a)'/3,
  'dn--un--testBit_Bits_(Identity $a)'/3,
  'dn--un--show_Show_(Identity $a)'/2,
  'dn--un--showPrec_Show_(Identity $a)'/3,
  'dn--un--shiftR_Bits_(Identity $a)'/3,
  'dn--un--shiftL_Bits_(Identity $a)'/3,
  'dn--un--setBit_Bits_(Identity $a)'/3,
  'dn--un--recip_Fractional_(Identity $a)'/2,
  'dn--un--pure_Applicative_Identity'/1,
  'dn--un--oneBits_Bits_(Identity $a)'/1,
  'dn--un--neutral_Monoid_(Identity $a)'/1,
  'dn--un--negate_Neg_(Identity $a)'/2,
  'dn--un--mod_Integral_(Identity $a)'/3,
  'dn--un--min_Ord_(Identity $a)'/3,
  'dn--un--max_Ord_(Identity $a)'/3,
  'dn--un--map_Functor_Identity'/2,
  'dn--un--join_Monad_Identity'/1,
  'dn--un--fromString_FromString_(Identity $a)'/2,
  'dn--un--fromInteger_Num_(Identity $a)'/2,
  'dn--un--div_Integral_(Identity $a)'/3,
  'dn--un--complement_Bits_(Identity $a)'/2,
  'dn--un--complementBit_Bits_(Identity $a)'/3,
  'dn--un--compare_Ord_(Identity $a)'/3,
  'dn--un--clearBit_Bits_(Identity $a)'/3,
  'dn--un--bit_Bits_(Identity $a)'/2,
  'dn--un--abs_Abs_(Identity $a)'/2,
  'dn--un--__Impl_Show_(Identity $a)'/1,
  'dn--un--__Impl_Semigroup_(Identity $a)'/3,
  'dn--un--__Impl_Ord_(Identity $a)'/1,
  'dn--un--__Impl_Num_(Identity $a)'/1,
  'dn--un--__Impl_Neg_(Identity $a)'/1,
  'dn--un--__Impl_Monoid_(Identity $a)'/1,
  'dn--un--__Impl_Monad_Identity'/0,
  'dn--un--__Impl_Integral_(Identity $a)'/1,
  'dn--un--__Impl_Functor_Identity'/4,
  'dn--un--__Impl_FromString_(Identity $a)'/2,
  'dn--un--__Impl_Fractional_(Identity $a)'/1,
  'dn--un--__Impl_Eq_(Identity $a)'/1,
  'dn--un--__Impl_Bits_(Identity $a)'/1,
  'dn--un--__Impl_Applicative_Identity'/0,
  'dn--un--__Impl_Abs_(Identity $a)'/1,
  'dn--un-->_Ord_(Identity $a)'/3,
  'dn--un-->>=_Monad_Identity'/2,
  'dn--un-->=_Ord_(Identity $a)'/3,
  'dn--un--==_Eq_(Identity $a)'/3,
  'dn--un--<_Ord_(Identity $a)'/3,
  'dn--un--<=_Ord_(Identity $a)'/3,
  'dn--un--<+>_Semigroup_(Identity $a)'/3,
  'dn--un--<*>_Applicative_Identity'/2,
  'dn--un--/_Fractional_(Identity $a)'/3,
  'dn--un--/=_Eq_(Identity $a)'/3,
  'dn--un--.|._Bits_(Identity $a)'/3,
  'dn--un--.&._Bits_(Identity $a)'/3,
  'dn--un---_Neg_(Identity $a)'/3,
  'dn--un--+_Num_(Identity $a)'/3,
  'dn--un--*_Num_(Identity $a)'/3
]).
'case--max-3550'(V0, V1, V2, V3) -> case V3 of 1 -> V2; 0 -> V1 end.
'case--min-3520'(V0, V1, V2, V3) -> case V3 of 1 -> V2; 0 -> V1 end.
'dn--un--zeroBits_Bits_(Identity $a)'(V0) -> case V0 of {'Data.Bits.dn--un--__mkBits', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V7 end.
'dn--un--xor_Bits_(Identity $a)'(V0, V1, V2) -> begin (V3 = V1), begin (V4 = V2), case V0 of {'Data.Bits.dn--un--__mkBits', V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> ((V7(V3))(V4)) end end end.
'dn--un--testBit_Bits_(Identity $a)'(V0, V1, V2) -> begin (V3 = V1), case V0 of {'Data.Bits.dn--un--__mkBits', V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16} -> ((V15(V3))(V2)) end end.
'dn--un--show_Show_(Identity $a)'(V0, V1) -> ('dn--un--showPrec_Show_(Identity $a)'(V0, {'Prelude.Show.Open'}, V1)).
'dn--un--showPrec_Show_(Identity $a)'(V0, V1, V2) -> begin (V3 = V2), ('Idris.Idris2.Prelude.Show':'un--showCon'(V1, <<"Id"/utf8>>, ('Idris.Idris2.Prelude.Show':'un--showArg'(V0, V3)))) end.
'dn--un--shiftR_Bits_(Identity $a)'(V0, V1, V2) -> begin (V3 = V1), case V0 of {'Data.Bits.dn--un--__mkBits', V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16} -> ((V8(V3))(V2)) end end.
'dn--un--shiftL_Bits_(Identity $a)'(V0, V1, V2) -> begin (V3 = V1), case V0 of {'Data.Bits.dn--un--__mkBits', V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16} -> ((V7(V3))(V2)) end end.
'dn--un--setBit_Bits_(Identity $a)'(V0, V1, V2) -> begin (V3 = V1), case V0 of {'Data.Bits.dn--un--__mkBits', V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16} -> ((V16(V3))(V2)) end end.
'dn--un--recip_Fractional_(Identity $a)'(V0, V1) -> begin (V2 = V1), case V0 of {'Prelude.Num.MkFractional', V3, V4, V5} -> (V5(V2)) end end.
'dn--un--pure_Applicative_Identity'(V0) -> V0.
'dn--un--oneBits_Bits_(Identity $a)'(V0) -> case V0 of {'Data.Bits.dn--un--__mkBits', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V9 end.
'dn--un--neutral_Monoid_(Identity $a)'(V0) -> case V0 of {'Prelude.Interfaces.MkMonoid', V1, V2} -> V2 end.
'dn--un--negate_Neg_(Identity $a)'(V0, V1) -> begin (V2 = V1), case V0 of {'Prelude.Num.MkNeg', V3, V4, V5} -> (V4(V2)) end end.
'dn--un--mod_Integral_(Identity $a)'(V0, V1, V2) -> begin (V3 = V1), begin (V4 = V2), case V0 of {'Prelude.Num.MkIntegral', V5, V6, V7} -> ((V7(V3))(V4)) end end end.
'dn--un--min_Ord_(Identity $a)'(V0, V1, V2) -> case ('dn--un--<_Ord_(Identity $a)'(V0, V1, V2)) of 1 -> V1; 0 -> V2 end.
'dn--un--max_Ord_(Identity $a)'(V0, V1, V2) -> case ('dn--un-->_Ord_(Identity $a)'(V0, V1, V2)) of 1 -> V1; 0 -> V2 end.
'dn--un--map_Functor_Identity'(V0, V1) -> begin (V2 = V1), (V0(V2)) end.
'dn--un--join_Monad_Identity'(V0) -> ('dn--un-->>=_Monad_Identity'(V0, fun (V1) -> V1 end)).
'dn--un--fromString_FromString_(Identity $a)'(V0, V1) -> (begin (V2 = V0), fun (V3) -> (V2(V3)) end end(V1)).
'dn--un--fromInteger_Num_(Identity $a)'(V0, V1) -> case V0 of {'Prelude.Num.MkNum', V2, V3, V4} -> (V4(V1)) end.
'dn--un--div_Integral_(Identity $a)'(V0, V1, V2) -> begin (V3 = V1), begin (V4 = V2), case V0 of {'Prelude.Num.MkIntegral', V5, V6, V7} -> ((V6(V3))(V4)) end end end.
'dn--un--complement_Bits_(Identity $a)'(V0, V1) -> begin (V2 = V1), case V0 of {'Data.Bits.dn--un--__mkBits', V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15} -> (V10(V2)) end end.
'dn--un--complementBit_Bits_(Identity $a)'(V0, V1, V2) -> begin (V3 = V1), case V0 of {'Data.Bits.dn--un--__mkBits', V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16} -> ((V13(V3))(V2)) end end.
'dn--un--compare_Ord_(Identity $a)'(V0, V1, V2) -> begin (V3 = V1), begin (V4 = V2), case V0 of {'Prelude.EqOrd.MkOrd', V5, V6, V7, V8, V9, V10, V11, V12} -> ((V6(V3))(V4)) end end end.
'dn--un--clearBit_Bits_(Identity $a)'(V0, V1, V2) -> begin (V3 = V1), case V0 of {'Data.Bits.dn--un--__mkBits', V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16} -> ((V14(V3))(V2)) end end.
'dn--un--bit_Bits_(Identity $a)'(V0, V1) -> case V0 of {'Data.Bits.dn--un--__mkBits', V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> (V7(V1)) end.
'dn--un--abs_Abs_(Identity $a)'(V0, V1) -> begin (V2 = V1), case V0 of {'Prelude.Num.MkAbs', V3, V4} -> (V4(V2)) end end.
'dn--un--__Impl_Show_(Identity $a)'(V0) -> {'Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_(Identity $a)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_(Identity $a)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Semigroup_(Identity $a)'(V0, V1, V2) -> ('dn--un--<+>_Semigroup_(Identity $a)'(V0, V1, V2)).
'dn--un--__Impl_Ord_(Identity $a)'(V0) -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_(Identity $a)'(case V0 of {'Prelude.EqOrd.MkOrd', V3, V4, V5, V6, V7, V8, V9, V10} -> V3 end, V1, V2)) end end, fun (V11) -> fun (V12) -> ('dn--un--/=_Eq_(Identity $a)'(case V0 of {'Prelude.EqOrd.MkOrd', V13, V14, V15, V16, V17, V18, V19, V20} -> V13 end, V11, V12)) end end}, fun (V21) -> fun (V22) -> ('dn--un--compare_Ord_(Identity $a)'(V0, V21, V22)) end end, fun (V23) -> fun (V24) -> ('dn--un--<_Ord_(Identity $a)'(V0, V23, V24)) end end, fun (V25) -> fun (V26) -> ('dn--un-->_Ord_(Identity $a)'(V0, V25, V26)) end end, fun (V27) -> fun (V28) -> ('dn--un--<=_Ord_(Identity $a)'(V0, V27, V28)) end end, fun (V29) -> fun (V30) -> ('dn--un-->=_Ord_(Identity $a)'(V0, V29, V30)) end end, fun (V31) -> fun (V32) -> ('dn--un--max_Ord_(Identity $a)'(V0, V31, V32)) end end, fun (V33) -> fun (V34) -> ('dn--un--min_Ord_(Identity $a)'(V0, V33, V34)) end end}.
'dn--un--__Impl_Num_(Identity $a)'(V0) -> {'Prelude.Num.MkNum', fun (V1) -> fun (V2) -> ('dn--un--+_Num_(Identity $a)'(V0, V1, V2)) end end, fun (V3) -> fun (V4) -> ('dn--un--*_Num_(Identity $a)'(V0, V3, V4)) end end, fun (V5) -> ('dn--un--fromInteger_Num_(Identity $a)'(V0, V5)) end}.
'dn--un--__Impl_Neg_(Identity $a)'(V0) -> {'Prelude.Num.MkNeg', {'Prelude.Num.MkNum', fun (V1) -> fun (V2) -> ('dn--un--+_Num_(Identity $a)'(case V0 of {'Prelude.Num.MkNeg', V3, V4, V5} -> V3 end, V1, V2)) end end, fun (V6) -> fun (V7) -> ('dn--un--*_Num_(Identity $a)'(case V0 of {'Prelude.Num.MkNeg', V8, V9, V10} -> V8 end, V6, V7)) end end, fun (V11) -> ('dn--un--fromInteger_Num_(Identity $a)'(case V0 of {'Prelude.Num.MkNeg', V12, V13, V14} -> V12 end, V11)) end}, fun (V15) -> ('dn--un--negate_Neg_(Identity $a)'(V0, V15)) end, fun (V16) -> fun (V17) -> ('dn--un---_Neg_(Identity $a)'(V0, V16, V17)) end end}.
'dn--un--__Impl_Monoid_(Identity $a)'(V0) -> {'Prelude.Interfaces.MkMonoid', fun (V1) -> fun (V2) -> ('dn--un--<+>_Semigroup_(Identity $a)'(case V0 of {'Prelude.Interfaces.MkMonoid', V3, V4} -> V3 end, V1, V2)) end end, ('dn--un--neutral_Monoid_(Identity $a)'(V0))}.
'dn--un--__Impl_Monad_Identity'() -> {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_Identity'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> V5 end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_Identity'(V8, V9)) end end end end}, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un-->>=_Monad_Identity'(V12, V13)) end end end end, fun (V14) -> fun (V15) -> ('dn--un--join_Monad_Identity'(V15)) end end}.
'dn--un--__Impl_Integral_(Identity $a)'(V0) -> {'Prelude.Num.MkIntegral', {'Prelude.Num.MkNum', fun (V1) -> fun (V2) -> ('dn--un--+_Num_(Identity $a)'(case V0 of {'Prelude.Num.MkIntegral', V3, V4, V5} -> V3 end, V1, V2)) end end, fun (V6) -> fun (V7) -> ('dn--un--*_Num_(Identity $a)'(case V0 of {'Prelude.Num.MkIntegral', V8, V9, V10} -> V8 end, V6, V7)) end end, fun (V11) -> ('dn--un--fromInteger_Num_(Identity $a)'(case V0 of {'Prelude.Num.MkIntegral', V12, V13, V14} -> V12 end, V11)) end}, fun (V15) -> fun (V16) -> ('dn--un--div_Integral_(Identity $a)'(V0, V15, V16)) end end, fun (V17) -> fun (V18) -> ('dn--un--mod_Integral_(Identity $a)'(V0, V17, V18)) end end}.
'dn--un--__Impl_Functor_Identity'(V0, V1, V2, V3) -> ('dn--un--map_Functor_Identity'(V2, V3)).
'dn--un--__Impl_FromString_(Identity $a)'(V0, V1) -> ('dn--un--fromString_FromString_(Identity $a)'(V0, V1)).
'dn--un--__Impl_Fractional_(Identity $a)'(V0) -> {'Prelude.Num.MkFractional', {'Prelude.Num.MkNum', fun (V1) -> fun (V2) -> ('dn--un--+_Num_(Identity $a)'(case V0 of {'Prelude.Num.MkFractional', V3, V4, V5} -> V3 end, V1, V2)) end end, fun (V6) -> fun (V7) -> ('dn--un--*_Num_(Identity $a)'(case V0 of {'Prelude.Num.MkFractional', V8, V9, V10} -> V8 end, V6, V7)) end end, fun (V11) -> ('dn--un--fromInteger_Num_(Identity $a)'(case V0 of {'Prelude.Num.MkFractional', V12, V13, V14} -> V12 end, V11)) end}, fun (V15) -> fun (V16) -> ('dn--un--/_Fractional_(Identity $a)'(V0, V15, V16)) end end, fun (V17) -> ('dn--un--recip_Fractional_(Identity $a)'(V0, V17)) end}.
'dn--un--__Impl_Eq_(Identity $a)'(V0) -> {'Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_(Identity $a)'(V0, V1, V2)) end end, fun (V3) -> fun (V4) -> ('dn--un--/=_Eq_(Identity $a)'(V0, V3, V4)) end end}.
'dn--un--__Impl_Bits_(Identity $a)'(V0) -> {'Data.Bits.dn--un--__mkBits', fun (V1) -> fun (V2) -> ('dn--un--.&._Bits_(Identity $a)'(V0, V1, V2)) end end, fun (V3) -> fun (V4) -> ('dn--un--.|._Bits_(Identity $a)'(V0, V3, V4)) end end, fun (V5) -> fun (V6) -> ('dn--un--xor_Bits_(Identity $a)'(V0, V5, V6)) end end, fun (V7) -> fun (V8) -> ('dn--un--shiftL_Bits_(Identity $a)'(V0, V7, V8)) end end, fun (V9) -> fun (V10) -> ('dn--un--shiftR_Bits_(Identity $a)'(V0, V9, V10)) end end, fun (V11) -> ('dn--un--bit_Bits_(Identity $a)'(V0, V11)) end, ('dn--un--zeroBits_Bits_(Identity $a)'(V0)), fun (V12) -> ('dn--un--complement_Bits_(Identity $a)'(V0, V12)) end, ('dn--un--oneBits_Bits_(Identity $a)'(V0)), fun (V13) -> fun (V14) -> ('dn--un--complementBit_Bits_(Identity $a)'(V0, V13, V14)) end end, fun (V15) -> fun (V16) -> ('dn--un--clearBit_Bits_(Identity $a)'(V0, V15, V16)) end end, fun (V17) -> fun (V18) -> ('dn--un--testBit_Bits_(Identity $a)'(V0, V17, V18)) end end, fun (V19) -> fun (V20) -> ('dn--un--setBit_Bits_(Identity $a)'(V0, V19, V20)) end end}.
'dn--un--__Impl_Applicative_Identity'() -> {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_Identity'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> V5 end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_Identity'(V8, V9)) end end end end}.
'dn--un--__Impl_Abs_(Identity $a)'(V0) -> {'Prelude.Num.MkAbs', {'Prelude.Num.MkNum', fun (V1) -> fun (V2) -> ('dn--un--+_Num_(Identity $a)'(case V0 of {'Prelude.Num.MkAbs', V3, V4} -> V3 end, V1, V2)) end end, fun (V5) -> fun (V6) -> ('dn--un--*_Num_(Identity $a)'(case V0 of {'Prelude.Num.MkAbs', V7, V8} -> V7 end, V5, V6)) end end, fun (V9) -> ('dn--un--fromInteger_Num_(Identity $a)'(case V0 of {'Prelude.Num.MkAbs', V10, V11} -> V10 end, V9)) end}, fun (V12) -> ('dn--un--abs_Abs_(Identity $a)'(V0, V12)) end}.
'dn--un-->_Ord_(Identity $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(Identity $a)'(V0, V1, V2)), 2)).
'dn--un-->>=_Monad_Identity'(V0, V1) -> begin (V2 = V0), (V1(V2)) end.
'dn--un-->=_Ord_(Identity $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(Identity $a)'(V0, V1, V2)), 0)).
'dn--un--==_Eq_(Identity $a)'(V0, V1, V2) -> begin (V3 = V1), begin (V4 = V2), case V0 of {'Prelude.EqOrd.MkEq', V5, V6} -> ((V5(V3))(V4)) end end end.
'dn--un--<_Ord_(Identity $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(Identity $a)'(V0, V1, V2)), 0)).
'dn--un--<=_Ord_(Identity $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(Identity $a)'(V0, V1, V2)), 2)).
'dn--un--<+>_Semigroup_(Identity $a)'(V0, V1, V2) -> ((begin (V5 = V0), fun (V6) -> fun (V7) -> ((V5(V6))(V7)) end end end(begin (V4 = V1), V4 end))(begin (V3 = V2), V3 end)).
'dn--un--<*>_Applicative_Identity'(V0, V1) -> begin (V2 = V0), begin (V3 = V1), (V2(V3)) end end.
'dn--un--/_Fractional_(Identity $a)'(V0, V1, V2) -> begin (V3 = V1), begin (V4 = V2), case V0 of {'Prelude.Num.MkFractional', V5, V6, V7} -> ((V6(V3))(V4)) end end end.
'dn--un--/=_Eq_(Identity $a)'(V0, V1, V2) -> case ('dn--un--==_Eq_(Identity $a)'(V0, V1, V2)) of 1 -> 0; 0 -> 1 end.
'dn--un--.|._Bits_(Identity $a)'(V0, V1, V2) -> begin (V3 = V1), begin (V4 = V2), case V0 of {'Data.Bits.dn--un--__mkBits', V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> ((V6(V3))(V4)) end end end.
'dn--un--.&._Bits_(Identity $a)'(V0, V1, V2) -> begin (V3 = V1), begin (V4 = V2), case V0 of {'Data.Bits.dn--un--__mkBits', V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> ((V5(V3))(V4)) end end end.
'dn--un---_Neg_(Identity $a)'(V0, V1, V2) -> begin (V3 = V1), begin (V4 = V2), case V0 of {'Prelude.Num.MkNeg', V5, V6, V7} -> ((V7(V3))(V4)) end end end.
'dn--un--+_Num_(Identity $a)'(V0, V1, V2) -> begin (V3 = V1), begin (V4 = V2), case V0 of {'Prelude.Num.MkNum', V5, V6, V7} -> ((V5(V3))(V4)) end end end.
'dn--un--*_Num_(Identity $a)'(V0, V1, V2) -> begin (V3 = V1), begin (V4 = V2), case V0 of {'Prelude.Num.MkNum', V5, V6, V7} -> ((V6(V3))(V4)) end end end.
