-module('Idris.Idris2.Control.Monad.Error.Either').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--case block in <|>-3389'/6,
  'case--<|>-3356'/4,
  'case--<+>-2153'/4,
  'case--max-1830'/4,
  'case--min-1783'/4,
  'dn--un--traverse_Traversable_((EitherT $e) $m)'/4,
  'dn--un--toList_Foldable_((EitherT $e) $m)'/2,
  'dn--un--show_Show_(((EitherT $e) $m) $a)'/2,
  'dn--un--showPrec_Show_(((EitherT $e) $m) $a)'/3,
  'dn--un--pure_Applicative_((EitherT $e) $m)'/2,
  'dn--un--null_Foldable_((EitherT $e) $m)'/2,
  'dn--un--min_Ord_(((EitherT $e) $m) $a)'/3,
  'dn--un--max_Ord_(((EitherT $e) $m) $a)'/3,
  'dn--un--map_Functor_((EitherT $e) $m)'/3,
  'dn--un--lift_MonadTrans_(EitherT $e)'/2,
  'dn--un--liftIO_HasIO_((EitherT $e) $m)'/2,
  'dn--un--join_Monad_((EitherT $e) $m)'/2,
  'dn--un--foldr_Foldable_((EitherT $e) $m)'/4,
  'dn--un--foldl_Foldable_((EitherT $e) $m)'/4,
  'dn--un--foldlM_Foldable_((EitherT $e) $m)'/5,
  'dn--un--foldMap_Foldable_((EitherT $e) $m)'/4,
  'dn--un--empty_Alternative_((EitherT $e) $m)'/1,
  'dn--un--compare_Ord_(((EitherT $e) $m) $a)'/3,
  'dn--un--__Impl_Traversable_((EitherT $e) $m)'/1,
  'dn--un--__Impl_Show_(((EitherT $e) $m) $a)'/1,
  'dn--un--__Impl_Semigroup_(((EitherT $e) $m) $a)'/3,
  'dn--un--__Impl_Ord_(((EitherT $e) $m) $a)'/1,
  'dn--un--__Impl_Monad_((EitherT $e) $m)'/1,
  'dn--un--__Impl_MonadTrans_(EitherT $e)'/4,
  'dn--un--__Impl_HasIO_((EitherT $e) $m)'/1,
  'dn--un--__Impl_Functor_((EitherT $e) $m)'/5,
  'dn--un--__Impl_Foldable_((EitherT $e) $m)'/1,
  'dn--un--__Impl_Eq_(((EitherT $e) $m) $a)'/1,
  'dn--un--__Impl_Applicative_((EitherT $e) $m)'/1,
  'dn--un--__Impl_Alternative_((EitherT $e) $m)'/1,
  'dn--un-->_Ord_(((EitherT $e) $m) $a)'/3,
  'dn--un-->>=_Monad_((EitherT $e) $m)'/3,
  'dn--un-->=_Ord_(((EitherT $e) $m) $a)'/3,
  'dn--un--==_Eq_(((EitherT $e) $m) $a)'/3,
  'dn--un--<|>_Alternative_((EitherT $e) $m)'/3,
  'dn--un--<_Ord_(((EitherT $e) $m) $a)'/3,
  'dn--un--<=_Ord_(((EitherT $e) $m) $a)'/3,
  'dn--un--<+>_Semigroup_(((EitherT $e) $m) $a)'/3,
  'dn--un--<*>_Applicative_((EitherT $e) $m)'/3,
  'dn--un--/=_Eq_(((EitherT $e) $m) $a)'/3,
  'un--throwE'/2,
  'un--swapEitherT'/2,
  'un--runEitherT'/1,
  'un--right'/2,
  'un--mapEitherT'/2,
  'un--left'/2,
  'un--eitherT'/4,
  'un--catchE'/3,
  'un--bimapEitherT'/4
]).
'case--case block in <|>-3389'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Prelude.Types.Left', V6} -> case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Interfaces.MkMonad', V7, V8, V9} -> case V7 of {'Prelude.Interfaces.MkApplicative', V10, V11, V12} -> ((V11('erased'))({'Prelude.Types.Left', ((begin (V15 = case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Prelude.Interfaces.MkMonoid', V13, V14} -> V13 end), fun (V16) -> fun (V17) -> ((V15(V16))(V17)) end end end(V3))(V6))})) end end; {'Prelude.Types.Right', V18} -> case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Interfaces.MkMonad', V19, V20, V21} -> case V19 of {'Prelude.Interfaces.MkApplicative', V22, V23, V24} -> ((V23('erased'))({'Prelude.Types.Right', V18})) end end end.
'case--<|>-3356'(V0, V1, V2, V3) -> case V3 of {'Prelude.Types.Left', V4} -> case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> ((((V6('erased'))('erased'))(begin (V28 = (V2())), V28 end))(fun (V8) -> case V8 of {'Prelude.Types.Left', V9} -> case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Interfaces.MkMonad', V10, V11, V12} -> case V10 of {'Prelude.Interfaces.MkApplicative', V13, V14, V15} -> ((V14('erased'))({'Prelude.Types.Left', ((begin (V18 = case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Prelude.Interfaces.MkMonoid', V16, V17} -> V16 end), fun (V19) -> fun (V20) -> ((V18(V19))(V20)) end end end(V4))(V9))})) end end; {'Prelude.Types.Right', V21} -> case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Interfaces.MkMonad', V22, V23, V24} -> case V22 of {'Prelude.Interfaces.MkApplicative', V25, V26, V27} -> ((V26('erased'))({'Prelude.Types.Right', V21})) end end end end)) end; {'Prelude.Types.Right', V29} -> case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Interfaces.MkMonad', V30, V31, V32} -> case V30 of {'Prelude.Interfaces.MkApplicative', V33, V34, V35} -> ((V34('erased'))({'Prelude.Types.Right', V29})) end end end.
'case--<+>-2153'(V0, V1, V2, V3) -> case V3 of {'Prelude.Types.Right', V4} -> case V0 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> case V5 of {'Prelude.Interfaces.MkApplicative', V8, V9, V10} -> ((V9('erased'))(V3)) end end; {'Prelude.Types.Left', V11} -> V2 end.
'case--max-1830'(V0, V1, V2, V3) -> case V3 of 1 -> V2; 0 -> V1 end.
'case--min-1783'(V0, V1, V2, V3) -> case V3 of 1 -> V2; 0 -> V1 end.
'dn--un--traverse_Traversable_((EitherT $e) $m)'(V0, V1, V2, V3) -> begin (V4 = V3), ((begin (V25 = case V1 of {'Prelude.Interfaces.MkApplicative', V22, V23, V24} -> V22 end), fun (V26) -> fun (V27) -> ((((V25('erased'))('erased'))(V26))(V27)) end end end(fun (V21) -> V21 end))(case V0 of {'Prelude.Interfaces.MkTraversable', V5, V6, V7} -> ((((((V7('erased'))('erased'))('erased'))(V1))(fun (V8) -> ('Idris.Idris2.Prelude.Types':'un--either'(fun () -> fun (V9) -> case V1 of {'Prelude.Interfaces.MkApplicative', V10, V11, V12} -> ((V11('erased'))({'Prelude.Types.Left', V9})) end end end, fun () -> fun (V13) -> ((begin (V18 = case V1 of {'Prelude.Interfaces.MkApplicative', V15, V16, V17} -> V15 end), fun (V19) -> fun (V20) -> ((((V18('erased'))('erased'))(V19))(V20)) end end end(fun (V14) -> {'Prelude.Types.Right', V14} end))((V2(V13)))) end end, V8)) end))(V4)) end)) end.
'dn--un--toList_Foldable_((EitherT $e) $m)'(V0, V1) -> ('dn--un--foldr_Foldable_((EitherT $e) $m)'(V0, fun (V2) -> fun (V3) -> [V2 | V3] end end, [], V1)).
'dn--un--show_Show_(((EitherT $e) $m) $a)'(V0, V1) -> ('dn--un--showPrec_Show_(((EitherT $e) $m) $a)'(V0, {'Prelude.Show.Open'}, V1)).
'dn--un--showPrec_Show_(((EitherT $e) $m) $a)'(V0, V1, V2) -> begin (V3 = V2), ('Idris.Idris2.Prelude.Show':'un--showCon'(V1, <<"MkEitherT"/utf8>>, ('Idris.Idris2.Prelude.Show':'un--showArg'(V0, V3)))) end.
'dn--un--pure_Applicative_((EitherT $e) $m)'(V0, V1) -> case V0 of {'Prelude.Interfaces.MkApplicative', V2, V3, V4} -> ((V3('erased'))({'Prelude.Types.Right', V1})) end.
'dn--un--null_Foldable_((EitherT $e) $m)'(V0, V1) -> begin (V2 = V1), case V0 of {'Prelude.Interfaces.MkFoldable', V3, V4, V5, V6, V7, V8} -> ((V5('erased'))(V2)) end end.
'dn--un--min_Ord_(((EitherT $e) $m) $a)'(V0, V1, V2) -> case ('dn--un--<_Ord_(((EitherT $e) $m) $a)'(V0, V1, V2)) of 1 -> V1; 0 -> V2 end.
'dn--un--max_Ord_(((EitherT $e) $m) $a)'(V0, V1, V2) -> case ('dn--un-->_Ord_(((EitherT $e) $m) $a)'(V0, V1, V2)) of 1 -> V1; 0 -> V2 end.
'dn--un--map_Functor_((EitherT $e) $m)'(V0, V1, V2) -> ((begin (V13 = V0), fun (V14) -> fun (V15) -> ((((V13('erased'))('erased'))(V14))(V15)) end end end((begin (V10 = fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> case V7 of {'Prelude.Types.Left', V8} -> {'Prelude.Types.Left', V8}; {'Prelude.Types.Right', V9} -> {'Prelude.Types.Right', (V6(V9))} end end end end end), fun (V11) -> fun (V12) -> ((((V10('erased'))('erased'))(V11))(V12)) end end end(V1))))(begin (V3 = V2), V3 end)).
'dn--un--lift_MonadTrans_(EitherT $e)'(V0, V1) -> ((begin (V9 = case V0 of {'Prelude.Interfaces.MkMonad', V3, V4, V5} -> case V3 of {'Prelude.Interfaces.MkApplicative', V6, V7, V8} -> V6 end end), fun (V10) -> fun (V11) -> ((((V9('erased'))('erased'))(V10))(V11)) end end end(fun (V2) -> {'Prelude.Types.Right', V2} end))(V1)).
'dn--un--liftIO_HasIO_((EitherT $e) $m)'(V0, V1) -> case V0 of {'Prelude.IO.MkHasIO', V2, V3} -> ((V3('erased'))(fun (V4) -> begin (V5 = (V1(V4))), {'Prelude.Types.Right', V5} end end)) end.
'dn--un--join_Monad_((EitherT $e) $m)'(V0, V1) -> ('dn--un-->>=_Monad_((EitherT $e) $m)'(V0, V1, fun (V2) -> V2 end)).
'dn--un--foldr_Foldable_((EitherT $e) $m)'(V0, V1, V2, V3) -> begin (V4 = V3), case V0 of {'Prelude.Interfaces.MkFoldable', V5, V6, V7, V8, V9, V10} -> (((((V5('erased'))('erased'))(fun (V11) -> fun (V12) -> ('Idris.Idris2.Prelude.Types':'un--either'(fun () -> fun (V13) -> V12 end end, fun () -> fun (V14) -> ((V1(V14))(V12)) end end, V11)) end end))(V2))(V4)) end end.
'dn--un--foldl_Foldable_((EitherT $e) $m)'(V0, V1, V2, V3) -> (('dn--un--foldr_Foldable_((EitherT $e) $m)'(V0, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(fun (V6) -> fun (V7) -> fun (V8) -> (V6((V7(V8)))) end end end, fun (V9) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(V1, V4, V9)) end, V5)) end end, fun (V10) -> V10 end, V3))(V2)).
'dn--un--foldlM_Foldable_((EitherT $e) $m)'(V0, V1, V2, V3, V4) -> ('dn--un--foldl_Foldable_((EitherT $e) $m)'(V0, fun (V5) -> fun (V6) -> case V1 of {'Prelude.Interfaces.MkMonad', V7, V8, V9} -> ((((V8('erased'))('erased'))(V5))(fun (V10) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(V2, V6, V10)) end)) end end end, case V1 of {'Prelude.Interfaces.MkMonad', V11, V12, V13} -> case V11 of {'Prelude.Interfaces.MkApplicative', V14, V15, V16} -> ((V15('erased'))(V3)) end end, V4)).
'dn--un--foldMap_Foldable_((EitherT $e) $m)'(V0, V1, V2, V3) -> ('dn--un--foldr_Foldable_((EitherT $e) $m)'(V0, fun (V4) -> (begin (V7 = case V1 of {'Prelude.Interfaces.MkMonoid', V5, V6} -> V5 end), fun (V8) -> fun (V9) -> ((V7(V8))(V9)) end end end((V2(V4)))) end, case V1 of {'Prelude.Interfaces.MkMonoid', V10, V11} -> V11 end, V3)).
'dn--un--empty_Alternative_((EitherT $e) $m)'(V0) -> case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Interfaces.MkMonad', V1, V2, V3} -> case V1 of {'Prelude.Interfaces.MkApplicative', V4, V5, V6} -> ((V5('erased'))({'Prelude.Types.Left', case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Prelude.Interfaces.MkMonoid', V7, V8} -> V8 end})) end end.
'dn--un--compare_Ord_(((EitherT $e) $m) $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Basics':'un--on'(fun (V3) -> fun (V4) -> case V0 of {'Prelude.EqOrd.MkOrd', V5, V6, V7, V8, V9, V10, V11, V12} -> ((V6(V3))(V4)) end end end, fun (V13) -> begin (V14 = V13), V14 end end, V1, V2)).
'dn--un--__Impl_Traversable_((EitherT $e) $m)'(V0) -> {'Prelude.Interfaces.MkTraversable', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_((EitherT $e) $m)'(case V0 of {'Prelude.Interfaces.MkTraversable', V5, V6, V7} -> V5 end, V3, V4)) end end end end, {'Prelude.Interfaces.MkFoldable', fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> ('dn--un--foldr_Foldable_((EitherT $e) $m)'(case V0 of {'Prelude.Interfaces.MkTraversable', V13, V14, V15} -> V14 end, V10, V11, V12)) end end end end end, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> ('dn--un--foldl_Foldable_((EitherT $e) $m)'(case V0 of {'Prelude.Interfaces.MkTraversable', V21, V22, V23} -> V22 end, V18, V19, V20)) end end end end end, fun (V24) -> fun (V25) -> ('dn--un--null_Foldable_((EitherT $e) $m)'(case V0 of {'Prelude.Interfaces.MkTraversable', V26, V27, V28} -> V27 end, V25)) end end, fun (V29) -> fun (V30) -> fun (V31) -> fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> ('dn--un--foldlM_Foldable_((EitherT $e) $m)'(case V0 of {'Prelude.Interfaces.MkTraversable', V36, V37, V38} -> V37 end, V32, V33, V34, V35)) end end end end end end end, fun (V39) -> fun (V40) -> ('dn--un--toList_Foldable_((EitherT $e) $m)'(case V0 of {'Prelude.Interfaces.MkTraversable', V41, V42, V43} -> V42 end, V40)) end end, fun (V44) -> fun (V45) -> fun (V46) -> fun (V47) -> fun (V48) -> ('dn--un--foldMap_Foldable_((EitherT $e) $m)'(case V0 of {'Prelude.Interfaces.MkTraversable', V49, V50, V51} -> V50 end, V46, V47, V48)) end end end end end}, fun (V52) -> fun (V53) -> fun (V54) -> fun (V55) -> fun (V56) -> fun (V57) -> ('dn--un--traverse_Traversable_((EitherT $e) $m)'(V0, V55, V56, V57)) end end end end end end}.
'dn--un--__Impl_Show_(((EitherT $e) $m) $a)'(V0) -> {'Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_(((EitherT $e) $m) $a)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_(((EitherT $e) $m) $a)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Semigroup_(((EitherT $e) $m) $a)'(V0, V1, V2) -> ('dn--un--<+>_Semigroup_(((EitherT $e) $m) $a)'(V0, V1, V2)).
'dn--un--__Impl_Ord_(((EitherT $e) $m) $a)'(V0) -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_(((EitherT $e) $m) $a)'(case V0 of {'Prelude.EqOrd.MkOrd', V3, V4, V5, V6, V7, V8, V9, V10} -> V3 end, V1, V2)) end end, fun (V11) -> fun (V12) -> ('dn--un--/=_Eq_(((EitherT $e) $m) $a)'(case V0 of {'Prelude.EqOrd.MkOrd', V13, V14, V15, V16, V17, V18, V19, V20} -> V13 end, V11, V12)) end end}, fun (V21) -> fun (V22) -> ('dn--un--compare_Ord_(((EitherT $e) $m) $a)'(V0, V21, V22)) end end, fun (V23) -> fun (V24) -> ('dn--un--<_Ord_(((EitherT $e) $m) $a)'(V0, V23, V24)) end end, fun (V25) -> fun (V26) -> ('dn--un-->_Ord_(((EitherT $e) $m) $a)'(V0, V25, V26)) end end, fun (V27) -> fun (V28) -> ('dn--un--<=_Ord_(((EitherT $e) $m) $a)'(V0, V27, V28)) end end, fun (V29) -> fun (V30) -> ('dn--un-->=_Ord_(((EitherT $e) $m) $a)'(V0, V29, V30)) end end, fun (V31) -> fun (V32) -> ('dn--un--max_Ord_(((EitherT $e) $m) $a)'(V0, V31, V32)) end end, fun (V33) -> fun (V34) -> ('dn--un--min_Ord_(((EitherT $e) $m) $a)'(V0, V33, V34)) end end}.
'dn--un--__Impl_Monad_((EitherT $e) $m)'(V0) -> {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_((EitherT $e) $m)'(case V0 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> case V5 of {'Prelude.Interfaces.MkApplicative', V8, V9, V10} -> V8 end end, V3, V4)) end end end end, fun (V11) -> fun (V12) -> ('dn--un--pure_Applicative_((EitherT $e) $m)'(case V0 of {'Prelude.Interfaces.MkMonad', V13, V14, V15} -> V13 end, V12)) end end, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> ('dn--un--<*>_Applicative_((EitherT $e) $m)'(case V0 of {'Prelude.Interfaces.MkMonad', V20, V21, V22} -> V20 end, V18, V19)) end end end end}, fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> ('dn--un-->>=_Monad_((EitherT $e) $m)'(V0, V25, V26)) end end end end, fun (V27) -> fun (V28) -> ('dn--un--join_Monad_((EitherT $e) $m)'(V0, V28)) end end}.
'dn--un--__Impl_MonadTrans_(EitherT $e)'(V0, V1, V2, V3) -> ('dn--un--lift_MonadTrans_(EitherT $e)'(V2, V3)).
'dn--un--__Impl_HasIO_((EitherT $e) $m)'(V0) -> {'Prelude.IO.MkHasIO', {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_((EitherT $e) $m)'(case V0 of {'Prelude.IO.MkHasIO', V5, V6} -> case V5 of {'Prelude.Interfaces.MkMonad', V7, V8, V9} -> case V7 of {'Prelude.Interfaces.MkApplicative', V10, V11, V12} -> V10 end end end, V3, V4)) end end end end, fun (V13) -> fun (V14) -> ('dn--un--pure_Applicative_((EitherT $e) $m)'(case V0 of {'Prelude.IO.MkHasIO', V15, V16} -> case V15 of {'Prelude.Interfaces.MkMonad', V17, V18, V19} -> V17 end end, V14)) end end, fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('dn--un--<*>_Applicative_((EitherT $e) $m)'(case V0 of {'Prelude.IO.MkHasIO', V24, V25} -> case V24 of {'Prelude.Interfaces.MkMonad', V26, V27, V28} -> V26 end end, V22, V23)) end end end end}, fun (V29) -> fun (V30) -> fun (V31) -> fun (V32) -> ('dn--un-->>=_Monad_((EitherT $e) $m)'(case V0 of {'Prelude.IO.MkHasIO', V33, V34} -> V33 end, V31, V32)) end end end end, fun (V35) -> fun (V36) -> ('dn--un--join_Monad_((EitherT $e) $m)'(case V0 of {'Prelude.IO.MkHasIO', V37, V38} -> V37 end, V36)) end end}, fun (V39) -> fun (V40) -> ('dn--un--liftIO_HasIO_((EitherT $e) $m)'(V0, V40)) end end}.
'dn--un--__Impl_Functor_((EitherT $e) $m)'(V0, V1, V2, V3, V4) -> ('dn--un--map_Functor_((EitherT $e) $m)'(V0, V3, V4)).
'dn--un--__Impl_Foldable_((EitherT $e) $m)'(V0) -> {'Prelude.Interfaces.MkFoldable', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('dn--un--foldr_Foldable_((EitherT $e) $m)'(V0, V3, V4, V5)) end end end end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('dn--un--foldl_Foldable_((EitherT $e) $m)'(V0, V8, V9, V10)) end end end end end, fun (V11) -> fun (V12) -> ('dn--un--null_Foldable_((EitherT $e) $m)'(V0, V12)) end end, fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> ('dn--un--foldlM_Foldable_((EitherT $e) $m)'(V0, V16, V17, V18, V19)) end end end end end end end, fun (V20) -> fun (V21) -> ('dn--un--toList_Foldable_((EitherT $e) $m)'(V0, V21)) end end, fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> ('dn--un--foldMap_Foldable_((EitherT $e) $m)'(V0, V24, V25, V26)) end end end end end}.
'dn--un--__Impl_Eq_(((EitherT $e) $m) $a)'(V0) -> {'Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_(((EitherT $e) $m) $a)'(V0, V1, V2)) end end, fun (V3) -> fun (V4) -> ('dn--un--/=_Eq_(((EitherT $e) $m) $a)'(V0, V3, V4)) end end}.
'dn--un--__Impl_Applicative_((EitherT $e) $m)'(V0) -> {'Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_((EitherT $e) $m)'(case V0 of {'Prelude.Interfaces.MkApplicative', V5, V6, V7} -> V5 end, V3, V4)) end end end end, fun (V8) -> fun (V9) -> ('dn--un--pure_Applicative_((EitherT $e) $m)'(V0, V9)) end end, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--<*>_Applicative_((EitherT $e) $m)'(V0, V12, V13)) end end end end}.
'dn--un--__Impl_Alternative_((EitherT $e) $m)'(V0) -> {'Prelude.Interfaces.MkAlternative', {'Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_((EitherT $e) $m)'(case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> case V5 of {'Prelude.Interfaces.MkApplicative', V8, V9, V10} -> V8 end end, V3, V4)) end end end end, fun (V11) -> fun (V12) -> ('dn--un--pure_Applicative_((EitherT $e) $m)'(case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Interfaces.MkMonad', V13, V14, V15} -> V13 end, V12)) end end, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> ('dn--un--<*>_Applicative_((EitherT $e) $m)'(case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Interfaces.MkMonad', V20, V21, V22} -> V20 end, V18, V19)) end end end end}, fun (V23) -> ('dn--un--empty_Alternative_((EitherT $e) $m)'(V0)) end, fun (V24) -> fun (V25) -> fun (V26) -> ('dn--un--<|>_Alternative_((EitherT $e) $m)'(V0, V25, V26)) end end end}.
'dn--un-->_Ord_(((EitherT $e) $m) $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(((EitherT $e) $m) $a)'(V0, V1, V2)), 2)).
'dn--un-->>=_Monad_((EitherT $e) $m)'(V0, V1, V2) -> case V0 of {'Prelude.Interfaces.MkMonad', V3, V4, V5} -> ((((V4('erased'))('erased'))(begin (V16 = V1), V16 end))(fun (V6) -> ('Idris.Idris2.Prelude.Types':'un--either'(fun () -> fun (V7) -> case V0 of {'Prelude.Interfaces.MkMonad', V8, V9, V10} -> case V8 of {'Prelude.Interfaces.MkApplicative', V11, V12, V13} -> ((V12('erased'))({'Prelude.Types.Left', V7})) end end end end, fun () -> fun (V14) -> begin (V15 = (V2(V14))), V15 end end end, V6)) end)) end.
'dn--un-->=_Ord_(((EitherT $e) $m) $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(((EitherT $e) $m) $a)'(V0, V1, V2)), 0)).
'dn--un--==_Eq_(((EitherT $e) $m) $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Basics':'un--on'(fun (V3) -> fun (V4) -> case V0 of {'Prelude.EqOrd.MkEq', V5, V6} -> ((V5(V3))(V4)) end end end, fun (V7) -> begin (V8 = V7), V8 end end, V1, V2)).
'dn--un--<|>_Alternative_((EitherT $e) $m)'(V0, V1, V2) -> begin (V3 = V1), case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Interfaces.MkMonad', V4, V5, V6} -> ((((V5('erased'))('erased'))(V3))(fun (V7) -> case V7 of {'Prelude.Types.Left', V8} -> case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Interfaces.MkMonad', V9, V10, V11} -> ((((V10('erased'))('erased'))(begin (V32 = (V2())), V32 end))(fun (V12) -> case V12 of {'Prelude.Types.Left', V13} -> case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Interfaces.MkMonad', V14, V15, V16} -> case V14 of {'Prelude.Interfaces.MkApplicative', V17, V18, V19} -> ((V18('erased'))({'Prelude.Types.Left', ((begin (V22 = case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Prelude.Interfaces.MkMonoid', V20, V21} -> V20 end), fun (V23) -> fun (V24) -> ((V22(V23))(V24)) end end end(V8))(V13))})) end end; {'Prelude.Types.Right', V25} -> case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Interfaces.MkMonad', V26, V27, V28} -> case V26 of {'Prelude.Interfaces.MkApplicative', V29, V30, V31} -> ((V30('erased'))({'Prelude.Types.Right', V25})) end end end end)) end; {'Prelude.Types.Right', V33} -> case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Interfaces.MkMonad', V34, V35, V36} -> case V34 of {'Prelude.Interfaces.MkApplicative', V37, V38, V39} -> ((V38('erased'))({'Prelude.Types.Right', V33})) end end end end)) end end.
'dn--un--<_Ord_(((EitherT $e) $m) $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(((EitherT $e) $m) $a)'(V0, V1, V2)), 0)).
'dn--un--<=_Ord_(((EitherT $e) $m) $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(((EitherT $e) $m) $a)'(V0, V1, V2)), 2)).
'dn--un--<+>_Semigroup_(((EitherT $e) $m) $a)'(V0, V1, V2) -> begin (V3 = V1), begin (V4 = V2), case V0 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> ((((V6('erased'))('erased'))(V3))(fun (V8) -> case V8 of {'Prelude.Types.Right', V9} -> case V0 of {'Prelude.Interfaces.MkMonad', V10, V11, V12} -> case V10 of {'Prelude.Interfaces.MkApplicative', V13, V14, V15} -> ((V14('erased'))(V8)) end end; {'Prelude.Types.Left', V16} -> V4 end end)) end end end.
'dn--un--<*>_Applicative_((EitherT $e) $m)'(V0, V1, V2) -> case V0 of {'Prelude.Interfaces.MkApplicative', V3, V4, V5} -> ((((V5('erased'))('erased'))(case V0 of {'Prelude.Interfaces.MkApplicative', V7, V8, V9} -> ((((V9('erased'))('erased'))(case V0 of {'Prelude.Interfaces.MkApplicative', V11, V12, V13} -> ((V12('erased'))(fun (V14) -> fun (V15) -> case V14 of {'Prelude.Types.Left', V16} -> {'Prelude.Types.Left', V16}; {'Prelude.Types.Right', V17} -> case V15 of {'Prelude.Types.Right', V18} -> {'Prelude.Types.Right', (V17(V18))}; {'Prelude.Types.Left', V19} -> {'Prelude.Types.Left', V19} end end end end)) end))(begin (V10 = V1), V10 end)) end))(begin (V6 = V2), V6 end)) end.
'dn--un--/=_Eq_(((EitherT $e) $m) $a)'(V0, V1, V2) -> case ('dn--un--==_Eq_(((EitherT $e) $m) $a)'(V0, V1, V2)) of 1 -> 0; 0 -> 1 end.
'un--throwE'(V0, V1) -> case V0 of {'Prelude.Interfaces.MkApplicative', V2, V3, V4} -> ((V3('erased'))({'Prelude.Types.Left', V1})) end.
'un--swapEitherT'(V0, V1) -> ((begin (V6 = V0), fun (V7) -> fun (V8) -> ((((V6('erased'))('erased'))(V7))(V8)) end end end(fun (V3) -> ('Idris.Idris2.Prelude.Types':'un--either'(fun () -> fun (V4) -> {'Prelude.Types.Right', V4} end end, fun () -> fun (V5) -> {'Prelude.Types.Left', V5} end end, V3)) end))(begin (V2 = V1), V2 end)).
'un--runEitherT'(V0) -> begin (V1 = V0), V1 end.
'un--right'(V0, V1) -> case V0 of {'Prelude.Interfaces.MkApplicative', V2, V3, V4} -> ((V3('erased'))({'Prelude.Types.Right', V1})) end.
'un--mapEitherT'(V0, V1) -> (V0(begin (V2 = V1), V2 end)).
'un--left'(V0, V1) -> case V0 of {'Prelude.Interfaces.MkApplicative', V2, V3, V4} -> ((V3('erased'))({'Prelude.Types.Left', V1})) end.
'un--eitherT'(V0, V1, V2, V3) -> case V0 of {'Prelude.Interfaces.MkMonad', V4, V5, V6} -> ((((V5('erased'))('erased'))(begin (V8 = V3), V8 end))(fun (V7) -> ('Idris.Idris2.Prelude.Types':'un--either'(fun () -> V1 end, fun () -> V2 end, V7)) end)) end.
'un--catchE'(V0, V1, V2) -> case V0 of {'Prelude.Interfaces.MkMonad', V3, V4, V5} -> ((((V4('erased'))('erased'))(begin (V16 = V1), V16 end))(fun (V6) -> ('Idris.Idris2.Prelude.Types':'un--either'(fun () -> fun (V7) -> begin (V8 = (V2(V7))), V8 end end end, fun () -> fun (V9) -> case V0 of {'Prelude.Interfaces.MkMonad', V10, V11, V12} -> case V10 of {'Prelude.Interfaces.MkApplicative', V13, V14, V15} -> ((V14('erased'))({'Prelude.Types.Right', V9})) end end end end, V6)) end)) end.
'un--bimapEitherT'(V0, V1, V2, V3) -> ((begin (V8 = V0), fun (V9) -> fun (V10) -> ((((V8('erased'))('erased'))(V9))(V10)) end end end(fun (V5) -> ('Idris.Idris2.Prelude.Types':'un--either'(fun () -> fun (V6) -> {'Prelude.Types.Left', (V1(V6))} end end, fun () -> fun (V7) -> {'Prelude.Types.Right', (V2(V7))} end end, V5)) end))(begin (V4 = V3), V4 end)).
