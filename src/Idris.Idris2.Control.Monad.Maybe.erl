-module('Idris.Idris2.Control.Monad.Maybe').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--<|>-5110'/4,
  'case--<+>-4013'/4,
  'case--max-3733'/4,
  'case--min-3693'/4,
  'dn--un--traverse_Traversable_(MaybeT $m)'/4,
  'dn--un--toList_Foldable_(MaybeT $m)'/2,
  'dn--un--show_Show_((MaybeT $m) $a)'/2,
  'dn--un--showPrec_Show_((MaybeT $m) $a)'/3,
  'dn--un--pure_Applicative_(MaybeT $m)'/2,
  'dn--un--null_Foldable_(MaybeT $m)'/2,
  'dn--un--neutral_Monoid_((MaybeT $m) $a)'/1,
  'dn--un--min_Ord_((MaybeT $m) $a)'/3,
  'dn--un--max_Ord_((MaybeT $m) $a)'/3,
  'dn--un--map_Functor_(MaybeT $m)'/3,
  'dn--un--lift_MonadTrans_MaybeT'/2,
  'dn--un--liftIO_HasIO_(MaybeT $m)'/2,
  'dn--un--join_Monad_(MaybeT $m)'/2,
  'dn--un--foldr_Foldable_(MaybeT $m)'/4,
  'dn--un--foldl_Foldable_(MaybeT $m)'/4,
  'dn--un--foldlM_Foldable_(MaybeT $m)'/5,
  'dn--un--foldMap_Foldable_(MaybeT $m)'/4,
  'dn--un--empty_Alternative_(MaybeT $m)'/1,
  'dn--un--compare_Ord_((MaybeT $m) $a)'/3,
  'dn--un--__Impl_Traversable_(MaybeT $m)'/1,
  'dn--un--__Impl_Show_((MaybeT $m) $a)'/1,
  'dn--un--__Impl_Semigroup_((MaybeT $m) $a)'/3,
  'dn--un--__Impl_Ord_((MaybeT $m) $a)'/1,
  'dn--un--__Impl_Monoid_((MaybeT $m) $a)'/1,
  'dn--un--__Impl_Monad_(MaybeT $m)'/1,
  'dn--un--__Impl_MonadTrans_MaybeT'/4,
  'dn--un--__Impl_HasIO_(MaybeT $m)'/1,
  'dn--un--__Impl_Functor_(MaybeT $m)'/5,
  'dn--un--__Impl_Foldable_(MaybeT $m)'/1,
  'dn--un--__Impl_Eq_((MaybeT $m) $a)'/1,
  'dn--un--__Impl_Applicative_(MaybeT $m)'/1,
  'dn--un--__Impl_Alternative_(MaybeT $m)'/1,
  'dn--un-->_Ord_((MaybeT $m) $a)'/3,
  'dn--un-->>=_Monad_(MaybeT $m)'/3,
  'dn--un-->=_Ord_((MaybeT $m) $a)'/3,
  'dn--un--==_Eq_((MaybeT $m) $a)'/3,
  'dn--un--<|>_Alternative_(MaybeT $m)'/3,
  'dn--un--<_Ord_((MaybeT $m) $a)'/3,
  'dn--un--<=_Ord_((MaybeT $m) $a)'/3,
  'dn--un--<+>_Semigroup_((MaybeT $m) $a)'/3,
  'dn--un--<*>_Applicative_(MaybeT $m)'/3,
  'dn--un--/=_Eq_((MaybeT $m) $a)'/3,
  'un--toMaybeT'/3,
  'un--runMaybeT'/1,
  'un--nothing'/1,
  'un--maybeT'/4,
  'un--mapMaybeT'/2,
  'un--just'/2,
  'un--isNothingT'/2,
  'un--isJustT'/2,
  'un--fromMaybeT'/3
]).
'case--<|>-5110'(V0, V1, V2, V3) -> case V3 of {'Prelude.Types.Just', V4} -> case V0 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> case V5 of {'Prelude.Interfaces.MkApplicative', V8, V9, V10} -> ((V9('erased'))(V3)) end end; {'Prelude.Types.Nothing'} -> begin (V11 = (V2())), V11 end end.
'case--<+>-4013'(V0, V1, V2, V3) -> case V3 of {'Prelude.Types.Just', V4} -> case V0 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> case V5 of {'Prelude.Interfaces.MkApplicative', V8, V9, V10} -> ((V9('erased'))(V3)) end end; {'Prelude.Types.Nothing'} -> V2 end.
'case--max-3733'(V0, V1, V2, V3) -> case V3 of 1 -> V2; 0 -> V1 end.
'case--min-3693'(V0, V1, V2, V3) -> case V3 of 1 -> V2; 0 -> V1 end.
'dn--un--traverse_Traversable_(MaybeT $m)'(V0, V1, V2, V3) -> begin (V4 = V3), ((begin (V24 = case V1 of {'Prelude.Interfaces.MkApplicative', V21, V22, V23} -> V21 end), fun (V25) -> fun (V26) -> ((((V24('erased'))('erased'))(V25))(V26)) end end end(fun (V20) -> V20 end))(case V0 of {'Prelude.Interfaces.MkTraversable', V5, V6, V7} -> ((((((V7('erased'))('erased'))('erased'))(V1))(fun (V8) -> ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> case V1 of {'Prelude.Interfaces.MkApplicative', V9, V10, V11} -> ((V10('erased'))({'Prelude.Types.Nothing'})) end end, fun () -> fun (V12) -> ((begin (V17 = case V1 of {'Prelude.Interfaces.MkApplicative', V14, V15, V16} -> V14 end), fun (V18) -> fun (V19) -> ((((V17('erased'))('erased'))(V18))(V19)) end end end(fun (V13) -> {'Prelude.Types.Just', V13} end))((V2(V12)))) end end, V8)) end))(V4)) end)) end.
'dn--un--toList_Foldable_(MaybeT $m)'(V0, V1) -> ('dn--un--foldr_Foldable_(MaybeT $m)'(V0, fun (V2) -> fun (V3) -> [V2 | V3] end end, [], V1)).
'dn--un--show_Show_((MaybeT $m) $a)'(V0, V1) -> ('dn--un--showPrec_Show_((MaybeT $m) $a)'(V0, {'Prelude.Show.Open'}, V1)).
'dn--un--showPrec_Show_((MaybeT $m) $a)'(V0, V1, V2) -> begin (V3 = V2), ('Idris.Idris2.Prelude.Show':'un--showCon'(V1, <<"MkMaybeT"/utf8>>, ('Idris.Idris2.Prelude.Show':'un--showArg'(V0, V3)))) end.
'dn--un--pure_Applicative_(MaybeT $m)'(V0, V1) -> case V0 of {'Prelude.Interfaces.MkApplicative', V2, V3, V4} -> ((V3('erased'))({'Prelude.Types.Just', V1})) end.
'dn--un--null_Foldable_(MaybeT $m)'(V0, V1) -> begin (V2 = V1), case V0 of {'Prelude.Interfaces.MkFoldable', V3, V4, V5, V6, V7, V8} -> ((V5('erased'))(V2)) end end.
'dn--un--neutral_Monoid_((MaybeT $m) $a)'(V0) -> case V0 of {'Prelude.Interfaces.MkMonad', V1, V2, V3} -> case V1 of {'Prelude.Interfaces.MkApplicative', V4, V5, V6} -> ((V5('erased'))({'Prelude.Types.Nothing'})) end end.
'dn--un--min_Ord_((MaybeT $m) $a)'(V0, V1, V2) -> case ('dn--un--<_Ord_((MaybeT $m) $a)'(V0, V1, V2)) of 1 -> V1; 0 -> V2 end.
'dn--un--max_Ord_((MaybeT $m) $a)'(V0, V1, V2) -> case ('dn--un-->_Ord_((MaybeT $m) $a)'(V0, V1, V2)) of 1 -> V1; 0 -> V2 end.
'dn--un--map_Functor_(MaybeT $m)'(V0, V1, V2) -> ((begin (V11 = V0), fun (V12) -> fun (V13) -> ((((V11('erased'))('erased'))(V12))(V13)) end end end((begin (V8 = fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V6, V7)) end end end end), fun (V9) -> fun (V10) -> ((((V8('erased'))('erased'))(V9))(V10)) end end end(V1))))(begin (V3 = V2), V3 end)).
'dn--un--lift_MonadTrans_MaybeT'(V0, V1) -> ((begin (V9 = case V0 of {'Prelude.Interfaces.MkMonad', V3, V4, V5} -> case V3 of {'Prelude.Interfaces.MkApplicative', V6, V7, V8} -> V6 end end), fun (V10) -> fun (V11) -> ((((V9('erased'))('erased'))(V10))(V11)) end end end(fun (V2) -> {'Prelude.Types.Just', V2} end))(V1)).
'dn--un--liftIO_HasIO_(MaybeT $m)'(V0, V1) -> case V0 of {'Prelude.IO.MkHasIO', V2, V3} -> ((V3('erased'))(fun (V4) -> begin (V5 = (V1(V4))), {'Prelude.Types.Just', V5} end end)) end.
'dn--un--join_Monad_(MaybeT $m)'(V0, V1) -> ('dn--un-->>=_Monad_(MaybeT $m)'(V0, V1, fun (V2) -> V2 end)).
'dn--un--foldr_Foldable_(MaybeT $m)'(V0, V1, V2, V3) -> begin (V4 = V3), case V0 of {'Prelude.Interfaces.MkFoldable', V5, V6, V7, V8, V9, V10} -> (((((V5('erased'))('erased'))(fun (V11) -> fun (V12) -> ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> V12 end, fun () -> fun (V13) -> ((V1(V13))(V12)) end end, V11)) end end))(V2))(V4)) end end.
'dn--un--foldl_Foldable_(MaybeT $m)'(V0, V1, V2, V3) -> (('dn--un--foldr_Foldable_(MaybeT $m)'(V0, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(fun (V6) -> fun (V7) -> fun (V8) -> (V6((V7(V8)))) end end end, fun (V9) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(V1, V4, V9)) end, V5)) end end, fun (V10) -> V10 end, V3))(V2)).
'dn--un--foldlM_Foldable_(MaybeT $m)'(V0, V1, V2, V3, V4) -> ('dn--un--foldl_Foldable_(MaybeT $m)'(V0, fun (V5) -> fun (V6) -> case V1 of {'Prelude.Interfaces.MkMonad', V7, V8, V9} -> ((((V8('erased'))('erased'))(V5))(fun (V10) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(V2, V6, V10)) end)) end end end, case V1 of {'Prelude.Interfaces.MkMonad', V11, V12, V13} -> case V11 of {'Prelude.Interfaces.MkApplicative', V14, V15, V16} -> ((V15('erased'))(V3)) end end, V4)).
'dn--un--foldMap_Foldable_(MaybeT $m)'(V0, V1, V2, V3) -> ('dn--un--foldr_Foldable_(MaybeT $m)'(V0, fun (V4) -> (begin (V7 = case V1 of {'Prelude.Interfaces.MkMonoid', V5, V6} -> V5 end), fun (V8) -> fun (V9) -> ((V7(V8))(V9)) end end end((V2(V4)))) end, case V1 of {'Prelude.Interfaces.MkMonoid', V10, V11} -> V11 end, V3)).
'dn--un--empty_Alternative_(MaybeT $m)'(V0) -> case V0 of {'Prelude.Interfaces.MkMonad', V1, V2, V3} -> case V1 of {'Prelude.Interfaces.MkApplicative', V4, V5, V6} -> ((V5('erased'))({'Prelude.Types.Nothing'})) end end.
'dn--un--compare_Ord_((MaybeT $m) $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Basics':'un--on'(fun (V3) -> fun (V4) -> case V0 of {'Prelude.EqOrd.MkOrd', V5, V6, V7, V8, V9, V10, V11, V12} -> ((V6(V3))(V4)) end end end, fun (V13) -> begin (V14 = V13), V14 end end, V1, V2)).
'dn--un--__Impl_Traversable_(MaybeT $m)'(V0) -> {'Prelude.Interfaces.MkTraversable', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_(MaybeT $m)'(case V0 of {'Prelude.Interfaces.MkTraversable', V5, V6, V7} -> V5 end, V3, V4)) end end end end, {'Prelude.Interfaces.MkFoldable', fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> ('dn--un--foldr_Foldable_(MaybeT $m)'(case V0 of {'Prelude.Interfaces.MkTraversable', V13, V14, V15} -> V14 end, V10, V11, V12)) end end end end end, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> ('dn--un--foldl_Foldable_(MaybeT $m)'(case V0 of {'Prelude.Interfaces.MkTraversable', V21, V22, V23} -> V22 end, V18, V19, V20)) end end end end end, fun (V24) -> fun (V25) -> ('dn--un--null_Foldable_(MaybeT $m)'(case V0 of {'Prelude.Interfaces.MkTraversable', V26, V27, V28} -> V27 end, V25)) end end, fun (V29) -> fun (V30) -> fun (V31) -> fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> ('dn--un--foldlM_Foldable_(MaybeT $m)'(case V0 of {'Prelude.Interfaces.MkTraversable', V36, V37, V38} -> V37 end, V32, V33, V34, V35)) end end end end end end end, fun (V39) -> fun (V40) -> ('dn--un--toList_Foldable_(MaybeT $m)'(case V0 of {'Prelude.Interfaces.MkTraversable', V41, V42, V43} -> V42 end, V40)) end end, fun (V44) -> fun (V45) -> fun (V46) -> fun (V47) -> fun (V48) -> ('dn--un--foldMap_Foldable_(MaybeT $m)'(case V0 of {'Prelude.Interfaces.MkTraversable', V49, V50, V51} -> V50 end, V46, V47, V48)) end end end end end}, fun (V52) -> fun (V53) -> fun (V54) -> fun (V55) -> fun (V56) -> fun (V57) -> ('dn--un--traverse_Traversable_(MaybeT $m)'(V0, V55, V56, V57)) end end end end end end}.
'dn--un--__Impl_Show_((MaybeT $m) $a)'(V0) -> {'Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_((MaybeT $m) $a)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_((MaybeT $m) $a)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Semigroup_((MaybeT $m) $a)'(V0, V1, V2) -> ('dn--un--<+>_Semigroup_((MaybeT $m) $a)'(V0, V1, V2)).
'dn--un--__Impl_Ord_((MaybeT $m) $a)'(V0) -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_((MaybeT $m) $a)'(case V0 of {'Prelude.EqOrd.MkOrd', V3, V4, V5, V6, V7, V8, V9, V10} -> V3 end, V1, V2)) end end, fun (V11) -> fun (V12) -> ('dn--un--/=_Eq_((MaybeT $m) $a)'(case V0 of {'Prelude.EqOrd.MkOrd', V13, V14, V15, V16, V17, V18, V19, V20} -> V13 end, V11, V12)) end end}, fun (V21) -> fun (V22) -> ('dn--un--compare_Ord_((MaybeT $m) $a)'(V0, V21, V22)) end end, fun (V23) -> fun (V24) -> ('dn--un--<_Ord_((MaybeT $m) $a)'(V0, V23, V24)) end end, fun (V25) -> fun (V26) -> ('dn--un-->_Ord_((MaybeT $m) $a)'(V0, V25, V26)) end end, fun (V27) -> fun (V28) -> ('dn--un--<=_Ord_((MaybeT $m) $a)'(V0, V27, V28)) end end, fun (V29) -> fun (V30) -> ('dn--un-->=_Ord_((MaybeT $m) $a)'(V0, V29, V30)) end end, fun (V31) -> fun (V32) -> ('dn--un--max_Ord_((MaybeT $m) $a)'(V0, V31, V32)) end end, fun (V33) -> fun (V34) -> ('dn--un--min_Ord_((MaybeT $m) $a)'(V0, V33, V34)) end end}.
'dn--un--__Impl_Monoid_((MaybeT $m) $a)'(V0) -> {'Prelude.Interfaces.MkMonoid', fun (V1) -> fun (V2) -> ('dn--un--<+>_Semigroup_((MaybeT $m) $a)'(V0, V1, V2)) end end, ('dn--un--neutral_Monoid_((MaybeT $m) $a)'(V0))}.
'dn--un--__Impl_Monad_(MaybeT $m)'(V0) -> {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_(MaybeT $m)'(case V0 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> case V5 of {'Prelude.Interfaces.MkApplicative', V8, V9, V10} -> V8 end end, V3, V4)) end end end end, fun (V11) -> fun (V12) -> ('dn--un--pure_Applicative_(MaybeT $m)'(case V0 of {'Prelude.Interfaces.MkMonad', V13, V14, V15} -> V13 end, V12)) end end, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> ('dn--un--<*>_Applicative_(MaybeT $m)'(case V0 of {'Prelude.Interfaces.MkMonad', V20, V21, V22} -> V20 end, V18, V19)) end end end end}, fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> ('dn--un-->>=_Monad_(MaybeT $m)'(V0, V25, V26)) end end end end, fun (V27) -> fun (V28) -> ('dn--un--join_Monad_(MaybeT $m)'(V0, V28)) end end}.
'dn--un--__Impl_MonadTrans_MaybeT'(V0, V1, V2, V3) -> ('dn--un--lift_MonadTrans_MaybeT'(V2, V3)).
'dn--un--__Impl_HasIO_(MaybeT $m)'(V0) -> {'Prelude.IO.MkHasIO', {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_(MaybeT $m)'(case V0 of {'Prelude.IO.MkHasIO', V5, V6} -> case V5 of {'Prelude.Interfaces.MkMonad', V7, V8, V9} -> case V7 of {'Prelude.Interfaces.MkApplicative', V10, V11, V12} -> V10 end end end, V3, V4)) end end end end, fun (V13) -> fun (V14) -> ('dn--un--pure_Applicative_(MaybeT $m)'(case V0 of {'Prelude.IO.MkHasIO', V15, V16} -> case V15 of {'Prelude.Interfaces.MkMonad', V17, V18, V19} -> V17 end end, V14)) end end, fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('dn--un--<*>_Applicative_(MaybeT $m)'(case V0 of {'Prelude.IO.MkHasIO', V24, V25} -> case V24 of {'Prelude.Interfaces.MkMonad', V26, V27, V28} -> V26 end end, V22, V23)) end end end end}, fun (V29) -> fun (V30) -> fun (V31) -> fun (V32) -> ('dn--un-->>=_Monad_(MaybeT $m)'(case V0 of {'Prelude.IO.MkHasIO', V33, V34} -> V33 end, V31, V32)) end end end end, fun (V35) -> fun (V36) -> ('dn--un--join_Monad_(MaybeT $m)'(case V0 of {'Prelude.IO.MkHasIO', V37, V38} -> V37 end, V36)) end end}, fun (V39) -> fun (V40) -> ('dn--un--liftIO_HasIO_(MaybeT $m)'(V0, V40)) end end}.
'dn--un--__Impl_Functor_(MaybeT $m)'(V0, V1, V2, V3, V4) -> ('dn--un--map_Functor_(MaybeT $m)'(V0, V3, V4)).
'dn--un--__Impl_Foldable_(MaybeT $m)'(V0) -> {'Prelude.Interfaces.MkFoldable', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('dn--un--foldr_Foldable_(MaybeT $m)'(V0, V3, V4, V5)) end end end end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('dn--un--foldl_Foldable_(MaybeT $m)'(V0, V8, V9, V10)) end end end end end, fun (V11) -> fun (V12) -> ('dn--un--null_Foldable_(MaybeT $m)'(V0, V12)) end end, fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> ('dn--un--foldlM_Foldable_(MaybeT $m)'(V0, V16, V17, V18, V19)) end end end end end end end, fun (V20) -> fun (V21) -> ('dn--un--toList_Foldable_(MaybeT $m)'(V0, V21)) end end, fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> ('dn--un--foldMap_Foldable_(MaybeT $m)'(V0, V24, V25, V26)) end end end end end}.
'dn--un--__Impl_Eq_((MaybeT $m) $a)'(V0) -> {'Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_((MaybeT $m) $a)'(V0, V1, V2)) end end, fun (V3) -> fun (V4) -> ('dn--un--/=_Eq_((MaybeT $m) $a)'(V0, V3, V4)) end end}.
'dn--un--__Impl_Applicative_(MaybeT $m)'(V0) -> {'Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_(MaybeT $m)'(case V0 of {'Prelude.Interfaces.MkApplicative', V5, V6, V7} -> V5 end, V3, V4)) end end end end, fun (V8) -> fun (V9) -> ('dn--un--pure_Applicative_(MaybeT $m)'(V0, V9)) end end, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--<*>_Applicative_(MaybeT $m)'(V0, V12, V13)) end end end end}.
'dn--un--__Impl_Alternative_(MaybeT $m)'(V0) -> {'Prelude.Interfaces.MkAlternative', {'Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_(MaybeT $m)'(case V0 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> case V5 of {'Prelude.Interfaces.MkApplicative', V8, V9, V10} -> V8 end end, V3, V4)) end end end end, fun (V11) -> fun (V12) -> ('dn--un--pure_Applicative_(MaybeT $m)'(case V0 of {'Prelude.Interfaces.MkMonad', V13, V14, V15} -> V13 end, V12)) end end, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> ('dn--un--<*>_Applicative_(MaybeT $m)'(case V0 of {'Prelude.Interfaces.MkMonad', V20, V21, V22} -> V20 end, V18, V19)) end end end end}, fun (V23) -> ('dn--un--empty_Alternative_(MaybeT $m)'(V0)) end, fun (V24) -> fun (V25) -> fun (V26) -> ('dn--un--<|>_Alternative_(MaybeT $m)'(V0, V25, V26)) end end end}.
'dn--un-->_Ord_((MaybeT $m) $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_((MaybeT $m) $a)'(V0, V1, V2)), 2)).
'dn--un-->>=_Monad_(MaybeT $m)'(V0, V1, V2) -> begin (V3 = V1), case V0 of {'Prelude.Interfaces.MkMonad', V4, V5, V6} -> ((((V5('erased'))('erased'))(V3))(fun (V7) -> ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> case V0 of {'Prelude.Interfaces.MkMonad', V8, V9, V10} -> case V8 of {'Prelude.Interfaces.MkApplicative', V11, V12, V13} -> ((V12('erased'))({'Prelude.Types.Nothing'})) end end end, fun () -> fun (V14) -> begin (V15 = (V2(V14))), V15 end end end, V7)) end)) end end.
'dn--un-->=_Ord_((MaybeT $m) $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_((MaybeT $m) $a)'(V0, V1, V2)), 0)).
'dn--un--==_Eq_((MaybeT $m) $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Basics':'un--on'(fun (V3) -> fun (V4) -> case V0 of {'Prelude.EqOrd.MkEq', V5, V6} -> ((V5(V3))(V4)) end end end, fun (V7) -> begin (V8 = V7), V8 end end, V1, V2)).
'dn--un--<|>_Alternative_(MaybeT $m)'(V0, V1, V2) -> begin (V3 = V1), case V0 of {'Prelude.Interfaces.MkMonad', V4, V5, V6} -> ((((V5('erased'))('erased'))(V3))(fun (V7) -> case V7 of {'Prelude.Types.Just', V8} -> case V0 of {'Prelude.Interfaces.MkMonad', V9, V10, V11} -> case V9 of {'Prelude.Interfaces.MkApplicative', V12, V13, V14} -> ((V13('erased'))(V7)) end end; {'Prelude.Types.Nothing'} -> begin (V15 = (V2())), V15 end end end)) end end.
'dn--un--<_Ord_((MaybeT $m) $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_((MaybeT $m) $a)'(V0, V1, V2)), 0)).
'dn--un--<=_Ord_((MaybeT $m) $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_((MaybeT $m) $a)'(V0, V1, V2)), 2)).
'dn--un--<+>_Semigroup_((MaybeT $m) $a)'(V0, V1, V2) -> begin (V3 = V1), begin (V4 = V2), case V0 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> ((((V6('erased'))('erased'))(V3))(fun (V8) -> case V8 of {'Prelude.Types.Just', V9} -> case V0 of {'Prelude.Interfaces.MkMonad', V10, V11, V12} -> case V10 of {'Prelude.Interfaces.MkApplicative', V13, V14, V15} -> ((V14('erased'))(V8)) end end; {'Prelude.Types.Nothing'} -> V4 end end)) end end end.
'dn--un--<*>_Applicative_(MaybeT $m)'(V0, V1, V2) -> begin (V3 = V1), begin (V4 = V2), case V0 of {'Prelude.Interfaces.MkApplicative', V5, V6, V7} -> ((((V7('erased'))('erased'))(case V0 of {'Prelude.Interfaces.MkApplicative', V8, V9, V10} -> ((((V10('erased'))('erased'))(case V0 of {'Prelude.Interfaces.MkApplicative', V11, V12, V13} -> ((V12('erased'))(fun (V14) -> fun (V15) -> ('Idris.Idris2.Prelude.Types':'dn--un--<*>_Applicative_Maybe'(V14, V15)) end end)) end))(V3)) end))(V4)) end end end.
'dn--un--/=_Eq_((MaybeT $m) $a)'(V0, V1, V2) -> case ('dn--un--==_Eq_((MaybeT $m) $a)'(V0, V1, V2)) of 1 -> 0; 0 -> 1 end.
'un--toMaybeT'(V0, V1, V2) -> ((begin (V4 = V0), fun (V5) -> fun (V6) -> ((((V4('erased'))('erased'))(V5))(V6)) end end end(fun (V3) -> ('Idris.Idris2.Data.Maybe':'un--toMaybe'(V1, fun () -> V3 end)) end))(V2)).
'un--runMaybeT'(V0) -> begin (V1 = V0), V1 end.
'un--nothing'(V0) -> case V0 of {'Prelude.Interfaces.MkApplicative', V1, V2, V3} -> ((V2('erased'))({'Prelude.Types.Nothing'})) end.
'un--maybeT'(V0, V1, V2, V3) -> case V0 of {'Prelude.Interfaces.MkMonad', V4, V5, V6} -> ((((V5('erased'))('erased'))(begin (V8 = V3), V8 end))(fun (V7) -> ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> V1 end, fun () -> V2 end, V7)) end)) end.
'un--mapMaybeT'(V0, V1) -> (V0(begin (V2 = V1), V2 end)).
'un--just'(V0, V1) -> case V0 of {'Prelude.Interfaces.MkApplicative', V2, V3, V4} -> ((V3('erased'))({'Prelude.Types.Just', V1})) end.
'un--isNothingT'(V0, V1) -> ((begin (V4 = V0), fun (V5) -> fun (V6) -> ((((V4('erased'))('erased'))(V5))(V6)) end end end(fun (V3) -> ('Idris.Idris2.Data.Maybe':'un--isNothing'(V3)) end))(begin (V2 = V1), V2 end)).
'un--isJustT'(V0, V1) -> ((begin (V4 = V0), fun (V5) -> fun (V6) -> ((((V4('erased'))('erased'))(V5))(V6)) end end end(fun (V3) -> ('Idris.Idris2.Data.Maybe':'un--isJust'(V3)) end))(begin (V2 = V1), V2 end)).
'un--fromMaybeT'(V0, V1, V2) -> case V0 of {'Prelude.Interfaces.MkMonad', V3, V4, V5} -> ((((V4('erased'))('erased'))(begin (V14 = V2), V14 end))(fun (V6) -> ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> V1 end, fun () -> fun (V7) -> case V0 of {'Prelude.Interfaces.MkMonad', V8, V9, V10} -> case V8 of {'Prelude.Interfaces.MkApplicative', V11, V12, V13} -> ((V12('erased'))(V7)) end end end end, V6)) end)) end.
