-module('Idris.Idris2.Data.These').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--show_Show_((These $a) $b)'/2,
  'dn--un--showPrec_Show_((These $a) $b)'/3,
  'dn--un--map_Functor_(These $a)'/2,
  'dn--un--mapSnd_Bifunctor_These'/2,
  'dn--un--mapFst_Bifunctor_These'/2,
  'dn--un--injective_Injective_This'/3,
  'dn--un--injective_Injective_That'/3,
  'dn--un--injective_Injective_(Both $x)'/4,
  'dn--un--injective_Injective_(%lam RigW Explicit (Just {arg:0}) _ ((Both {arg:0}) $y))'/4,
  'dn--un--bitraverse_Bitraversable_These'/4,
  'dn--un--binull_Bifoldable_These'/1,
  'dn--un--bimap_Bifunctor_These'/3,
  'dn--un--biinjective_Biinjective_Both'/5,
  'dn--un--bifoldr_Bifoldable_These'/4,
  'dn--un--bifoldl_Bifoldable_These'/4,
  'dn--un--__Impl_Show_((These $a) $b)'/1,
  'dn--un--__Impl_Injective_This'/0,
  'dn--un--__Impl_Injective_That'/0,
  'dn--un--__Impl_Injective_(Both $x)'/1,
  'dn--un--__Impl_Injective_(%lam RigW Explicit (Just {arg:0}) _ ((Both {arg:0}) $y))'/1,
  'dn--un--__Impl_Functor_(These $a)'/4,
  'dn--un--__Impl_Eq_((These $a) $b)'/2,
  'dn--un--__Impl_Bitraversable_These'/0,
  'dn--un--__Impl_Biinjective_Both'/5,
  'dn--un--__Impl_Bifunctor_These'/0,
  'dn--un--__Impl_Bifoldable_These'/0,
  'dn--un--==_Eq_((These $a) $b)'/4,
  'dn--un--/=_Eq_((These $a) $b)'/4,
  'un--these'/4,
  'un--swap'/1,
  'un--fromThis'/1,
  'un--fromThat'/1,
  'un--fromEither'/1,
  'un--bifold'/2
]).
'dn--un--show_Show_((These $a) $b)'(V0, V1) -> ('dn--un--showPrec_Show_((These $a) $b)'(V0, {'Prelude.Show.Open'}, V1)).
'dn--un--showPrec_Show_((These $a) $b)'(V0, V1, V2) -> case V2 of {'Data.These.This', V3} -> ('Idris.Idris2.Prelude.Show':'un--showCon'(V1, <<"This"/utf8>>, ('Idris.Idris2.Prelude.Show':'un--showArg'(('Idris.Idris2.Builtin':'un--fst'(V0)), V3)))); {'Data.These.That', V4} -> ('Idris.Idris2.Prelude.Show':'un--showCon'(V1, <<"That"/utf8>>, ('Idris.Idris2.Prelude.Show':'un--showArg'(('Idris.Idris2.Builtin':'un--snd'(V0)), V4)))); {'Data.These.Both', V5, V6} -> ('Idris.Idris2.Prelude.Show':'un--showCon'(V1, <<"Both"/utf8>>, <<('Idris.Idris2.Prelude.Show':'un--showArg'(('Idris.Idris2.Builtin':'un--fst'(V0)), V5))/binary, ('Idris.Idris2.Prelude.Show':'un--showArg'(('Idris.Idris2.Builtin':'un--snd'(V0)), V6))/binary>>)) end.
'dn--un--map_Functor_(These $a)'(V0, V1) -> case V1 of {'Data.These.This', V2} -> {'Data.These.This', V2}; {'Data.These.That', V3} -> {'Data.These.That', (V0(V3))}; {'Data.These.Both', V4, V5} -> {'Data.These.Both', V4, (V0(V5))} end.
'dn--un--mapSnd_Bifunctor_These'(V0, V1) -> case V1 of {'Data.These.This', V2} -> {'Data.These.This', V2}; {'Data.These.That', V3} -> {'Data.These.That', (V0(V3))}; {'Data.These.Both', V4, V5} -> {'Data.These.Both', V4, (V0(V5))} end.
'dn--un--mapFst_Bifunctor_These'(V0, V1) -> case V1 of {'Data.These.This', V2} -> {'Data.These.This', (V0(V2))}; {'Data.These.That', V3} -> {'Data.These.That', V3}; {'Data.These.Both', V4, V5} -> {'Data.These.Both', (V0(V4)), V5} end.
'dn--un--injective_Injective_This'(V0, V1, V2) -> {'Builtin.Refl'}.
'dn--un--injective_Injective_That'(V0, V1, V2) -> {'Builtin.Refl'}.
'dn--un--injective_Injective_(Both $x)'(V0, V1, V2, V3) -> {'Builtin.Refl'}.
'dn--un--injective_Injective_(%lam RigW Explicit (Just {arg:0}) _ ((Both {arg:0}) $y))'(V0, V1, V2, V3) -> {'Builtin.Refl'}.
'dn--un--bitraverse_Bitraversable_These'(V0, V1, V2, V3) -> case V3 of {'Data.These.This', V4} -> ((begin (V9 = case V0 of {'Prelude.Interfaces.MkApplicative', V6, V7, V8} -> V6 end), fun (V10) -> fun (V11) -> ((((V9('erased'))('erased'))(V10))(V11)) end end end(fun (V5) -> {'Data.These.This', V5} end))((V1(V4)))); {'Data.These.That', V12} -> ((begin (V17 = case V0 of {'Prelude.Interfaces.MkApplicative', V14, V15, V16} -> V14 end), fun (V18) -> fun (V19) -> ((((V17('erased'))('erased'))(V18))(V19)) end end end(fun (V13) -> {'Data.These.That', V13} end))((V2(V12)))); {'Data.These.Both', V20, V21} -> case V0 of {'Prelude.Interfaces.MkApplicative', V22, V23, V24} -> ((((V24('erased'))('erased'))(case V0 of {'Prelude.Interfaces.MkApplicative', V25, V26, V27} -> ((((V27('erased'))('erased'))(case V0 of {'Prelude.Interfaces.MkApplicative', V28, V29, V30} -> ((V29('erased'))(fun (V31) -> fun (V32) -> {'Data.These.Both', V31, V32} end end)) end))((V1(V20)))) end))((V2(V21)))) end end.
'dn--un--binull_Bifoldable_These'(V0) -> 0.
'dn--un--bimap_Bifunctor_These'(V0, V1, V2) -> case V2 of {'Data.These.This', V3} -> {'Data.These.This', (V0(V3))}; {'Data.These.That', V4} -> {'Data.These.That', (V1(V4))}; {'Data.These.Both', V5, V6} -> {'Data.These.Both', (V0(V5)), (V1(V6))} end.
'dn--un--biinjective_Biinjective_Both'(V0, V1, V2, V3, V4) -> {'Builtin.MkPair', {'Builtin.Refl'}, {'Builtin.Refl'}}.
'dn--un--bifoldr_Bifoldable_These'(V0, V1, V2, V3) -> case V3 of {'Data.These.This', V4} -> ((V0(V4))(V2)); {'Data.These.That', V5} -> ((V1(V5))(V2)); {'Data.These.Both', V6, V7} -> ((V0(V6))(((V1(V7))(V2)))) end.
'dn--un--bifoldl_Bifoldable_These'(V0, V1, V2, V3) -> case V3 of {'Data.These.This', V4} -> ((V0(V2))(V4)); {'Data.These.That', V5} -> ((V1(V2))(V5)); {'Data.These.Both', V6, V7} -> ((V1(((V0(V2))(V6))))(V7)) end.
'dn--un--__Impl_Show_((These $a) $b)'(V0) -> {'Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_((These $a) $b)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_((These $a) $b)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Injective_This'() -> {'Control.Function.MkInjective', fun (V0) -> {'Data.These.This', V0} end, fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--injective_Injective_This'(V1, V2, V3)) end end end}.
'dn--un--__Impl_Injective_That'() -> {'Control.Function.MkInjective', fun (V0) -> {'Data.These.That', V0} end, fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--injective_Injective_That'(V1, V2, V3)) end end end}.
'dn--un--__Impl_Injective_(Both $x)'(V0) -> {'Control.Function.MkInjective', fun (V1) -> {'Data.These.Both', V0, V1} end, fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--injective_Injective_(Both $x)'(V0, V2, V3, V4)) end end end}.
'dn--un--__Impl_Injective_(%lam RigW Explicit (Just {arg:0}) _ ((Both {arg:0}) $y))'(V0) -> {'Control.Function.MkInjective', fun (V1) -> {'Data.These.Both', V1, V0} end, fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--injective_Injective_(%lam RigW Explicit (Just {arg:0}) _ ((Both {arg:0}) $y))'(V0, V2, V3, V4)) end end end}.
'dn--un--__Impl_Functor_(These $a)'(V0, V1, V2, V3) -> case V3 of {'Data.These.This', V4} -> {'Data.These.This', V4}; {'Data.These.That', V5} -> {'Data.These.That', (V2(V5))}; {'Data.These.Both', V6, V7} -> {'Data.These.Both', V6, (V2(V7))} end.
'dn--un--__Impl_Eq_((These $a) $b)'(V0, V1) -> {'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('dn--un--==_Eq_((These $a) $b)'(V0, V1, V2, V3)) end end, fun (V4) -> fun (V5) -> ('dn--un--/=_Eq_((These $a) $b)'(V0, V1, V4, V5)) end end}.
'dn--un--__Impl_Bitraversable_These'() -> {'Prelude.Interfaces.MkBitraversable', {'Prelude.Interfaces.MkBifunctor', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> case V6 of {'Data.These.This', V7} -> {'Data.These.This', (V4(V7))}; {'Data.These.That', V8} -> {'Data.These.That', (V5(V8))}; {'Data.These.Both', V9, V10} -> {'Data.These.Both', (V4(V9)), (V5(V10))} end end end end end end end end, fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> case V15 of {'Data.These.This', V16} -> {'Data.These.This', (V14(V16))}; {'Data.These.That', V17} -> {'Data.These.That', V17}; {'Data.These.Both', V18, V19} -> {'Data.These.Both', (V14(V18)), V19} end end end end end end, fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> case V24 of {'Data.These.This', V25} -> {'Data.These.This', V25}; {'Data.These.That', V26} -> {'Data.These.That', (V23(V26))}; {'Data.These.Both', V27, V28} -> {'Data.These.Both', V27, (V23(V28))} end end end end end end}, {'Prelude.Interfaces.MkBifoldable', fun (V29) -> fun (V30) -> fun (V31) -> fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> case V35 of {'Data.These.This', V36} -> ((V32(V36))(V34)); {'Data.These.That', V37} -> ((V33(V37))(V34)); {'Data.These.Both', V38, V39} -> ((V32(V38))(((V33(V39))(V34)))) end end end end end end end end, fun (V40) -> fun (V41) -> fun (V42) -> fun (V43) -> fun (V44) -> fun (V45) -> fun (V46) -> case V46 of {'Data.These.This', V47} -> ((V43(V45))(V47)); {'Data.These.That', V48} -> ((V44(V45))(V48)); {'Data.These.Both', V49, V50} -> ((V44(((V43(V45))(V49))))(V50)) end end end end end end end end, fun (V51) -> fun (V52) -> fun (V53) -> 0 end end end}, fun (V54) -> fun (V55) -> fun (V56) -> fun (V57) -> fun (V58) -> fun (V59) -> fun (V60) -> fun (V61) -> fun (V62) -> case V62 of {'Data.These.This', V63} -> ((begin (V68 = case V59 of {'Prelude.Interfaces.MkApplicative', V65, V66, V67} -> V65 end), fun (V69) -> fun (V70) -> ((((V68('erased'))('erased'))(V69))(V70)) end end end(fun (V64) -> {'Data.These.This', V64} end))((V60(V63)))); {'Data.These.That', V71} -> ((begin (V76 = case V59 of {'Prelude.Interfaces.MkApplicative', V73, V74, V75} -> V73 end), fun (V77) -> fun (V78) -> ((((V76('erased'))('erased'))(V77))(V78)) end end end(fun (V72) -> {'Data.These.That', V72} end))((V61(V71)))); {'Data.These.Both', V79, V80} -> case V59 of {'Prelude.Interfaces.MkApplicative', V81, V82, V83} -> ((((V83('erased'))('erased'))(case V59 of {'Prelude.Interfaces.MkApplicative', V84, V85, V86} -> ((((V86('erased'))('erased'))(case V59 of {'Prelude.Interfaces.MkApplicative', V87, V88, V89} -> ((V88('erased'))(fun (V90) -> fun (V91) -> {'Data.These.Both', V90, V91} end end)) end))((V60(V79)))) end))((V61(V80)))) end end end end end end end end end end end}.
'dn--un--__Impl_Biinjective_Both'(V0, V1, V2, V3, V4) -> ('dn--un--biinjective_Biinjective_Both'(V0, V1, V2, V3, V4)).
'dn--un--__Impl_Bifunctor_These'() -> {'Prelude.Interfaces.MkBifunctor', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> case V6 of {'Data.These.This', V7} -> {'Data.These.This', (V4(V7))}; {'Data.These.That', V8} -> {'Data.These.That', (V5(V8))}; {'Data.These.Both', V9, V10} -> {'Data.These.Both', (V4(V9)), (V5(V10))} end end end end end end end end, fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> case V15 of {'Data.These.This', V16} -> {'Data.These.This', (V14(V16))}; {'Data.These.That', V17} -> {'Data.These.That', V17}; {'Data.These.Both', V18, V19} -> {'Data.These.Both', (V14(V18)), V19} end end end end end end, fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> case V24 of {'Data.These.This', V25} -> {'Data.These.This', V25}; {'Data.These.That', V26} -> {'Data.These.That', (V23(V26))}; {'Data.These.Both', V27, V28} -> {'Data.These.Both', V27, (V23(V28))} end end end end end end}.
'dn--un--__Impl_Bifoldable_These'() -> {'Prelude.Interfaces.MkBifoldable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> case V6 of {'Data.These.This', V7} -> ((V3(V7))(V5)); {'Data.These.That', V8} -> ((V4(V8))(V5)); {'Data.These.Both', V9, V10} -> ((V3(V9))(((V4(V10))(V5)))) end end end end end end end end, fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> case V17 of {'Data.These.This', V18} -> ((V14(V16))(V18)); {'Data.These.That', V19} -> ((V15(V16))(V19)); {'Data.These.Both', V20, V21} -> ((V15(((V14(V16))(V20))))(V21)) end end end end end end end end, fun (V22) -> fun (V23) -> fun (V24) -> 0 end end end}.
'dn--un--==_Eq_((These $a) $b)'(V0, V1, V2, V3) -> case V2 of {'Data.These.This', V4} -> case V3 of {'Data.These.This', V5} -> case V0 of {'Prelude.EqOrd.MkEq', V6, V7} -> ((V6(V4))(V5)) end; _ -> 0 end; {'Data.These.That', V8} -> case V3 of {'Data.These.That', V9} -> case V1 of {'Prelude.EqOrd.MkEq', V10, V11} -> ((V10(V8))(V9)) end; _ -> 0 end; {'Data.These.Both', V12, V13} -> case V3 of {'Data.These.Both', V14, V15} -> case case V0 of {'Prelude.EqOrd.MkEq', V16, V17} -> ((V16(V12))(V14)) end of 1 -> case V1 of {'Prelude.EqOrd.MkEq', V18, V19} -> ((V18(V13))(V15)) end; 0 -> 0 end; _ -> 0 end; _ -> 0 end.
'dn--un--/=_Eq_((These $a) $b)'(V0, V1, V2, V3) -> case ('dn--un--==_Eq_((These $a) $b)'(V0, V1, V2, V3)) of 1 -> 0; 0 -> 1 end.
'un--these'(V0, V1, V2, V3) -> case V3 of {'Data.These.This', V4} -> (V0(V4)); {'Data.These.That', V5} -> (V1(V5)); {'Data.These.Both', V6, V7} -> ((V2(V6))(V7)) end.
'un--swap'(V0) -> case V0 of {'Data.These.This', V1} -> {'Data.These.That', V1}; {'Data.These.That', V2} -> {'Data.These.This', V2}; {'Data.These.Both', V3, V4} -> {'Data.These.Both', V4, V3} end.
'un--fromThis'(V0) -> case V0 of {'Data.These.This', V1} -> {'Prelude.Types.Just', V1}; {'Data.These.That', V2} -> {'Prelude.Types.Nothing'}; {'Data.These.Both', V3, V4} -> {'Prelude.Types.Just', V3} end.
'un--fromThat'(V0) -> case V0 of {'Data.These.This', V1} -> {'Prelude.Types.Nothing'}; {'Data.These.That', V2} -> {'Prelude.Types.Just', V2}; {'Data.These.Both', V3, V4} -> {'Prelude.Types.Just', V4} end.
'un--fromEither'(V0) -> ('Idris.Idris2.Prelude.Types':'un--either'(fun () -> fun (V1) -> {'Data.These.This', V1} end end, fun () -> fun (V2) -> {'Data.These.That', V2} end end, V0)).
'un--bifold'(V0, V1) -> case V1 of {'Data.These.This', V2} -> V2; {'Data.These.That', V3} -> V3; {'Data.These.Both', V4, V5} -> ((begin (V8 = case V0 of {'Prelude.Interfaces.MkMonoid', V6, V7} -> V6 end), fun (V9) -> fun (V10) -> ((V8(V9))(V10)) end end end(V4))(V5)) end.
