-module('Idris.Idris2.Libraries.Data.List.Lazy').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--mapMaybe-2084'/4,
  'case--filter-2020'/4,
  'case--dropWhile-1964'/4,
  'case--takeWhile-1907'/4,
  'case--unfoldr-1692'/3,
  'case--iterate-1644'/3,
  'dn--un--toList_Foldable_LazyList'/1,
  'dn--un--pure_Applicative_LazyList'/1,
  'dn--un--null_Foldable_LazyList'/1,
  'dn--un--neutral_Monoid_(LazyList $a)'/0,
  'dn--un--map_Functor_LazyList'/2,
  'dn--un--join_Monad_LazyList'/1,
  'dn--un--foldr_Foldable_LazyList'/3,
  'dn--un--foldl_Foldable_LazyList'/3,
  'dn--un--foldlM_Foldable_LazyList'/4,
  'dn--un--foldMap_Foldable_LazyList'/3,
  'dn--un--empty_Alternative_LazyList'/0,
  'dn--un--__Impl_Semigroup_(LazyList $a)'/2,
  'dn--un--__Impl_Monoid_(LazyList $a)'/0,
  'dn--un--__Impl_Monad_LazyList'/0,
  'dn--un--__Impl_Functor_LazyList'/4,
  'dn--un--__Impl_Foldable_LazyList'/0,
  'dn--un--__Impl_Applicative_LazyList'/0,
  'dn--un--__Impl_Alternative_LazyList'/0,
  'dn--un-->>=_Monad_LazyList'/2,
  'dn--un--<|>_Alternative_LazyList'/2,
  'dn--un--<+>_Semigroup_(LazyList $a)'/2,
  'dn--un--<*>_Applicative_LazyList'/2,
  'un--unfoldr'/2,
  'un--traverse'/3,
  'un--takeWhile'/2,
  'un--take'/2,
  'un--tail\x{27}'/1,
  'un--sequence'/2,
  'un--replicate'/2,
  'un--mapMaybe'/2,
  'un--iterateN'/3,
  'un--iterate'/2,
  'un--head\x{27}'/1,
  'un--fromList'/1,
  'un--filter'/2,
  'un--dropWhile'/2,
  'un--drop'/2,
  'un--++'/2
]).
'case--mapMaybe-2084'(V0, V1, V2, V3) -> case V3 of {'Prelude.Types.Nothing'} -> ('un--mapMaybe'(V2, (V1()))); {'Prelude.Types.Just', V4} -> {'Libraries.Data.List.Lazy.::', V4, fun () -> ('un--mapMaybe'(V2, (V1()))) end} end.
'case--filter-2020'(V0, V1, V2, V3) -> case V3 of 1 -> {'Libraries.Data.List.Lazy.::', V0, fun () -> ('un--filter'(V2, (V1()))) end}; 0 -> ('un--filter'(V2, (V1()))) end.
'case--dropWhile-1964'(V0, V1, V2, V3) -> case V3 of 1 -> ('un--dropWhile'(V2, (V1()))); 0 -> {'Libraries.Data.List.Lazy.::', V0, V1} end.
'case--takeWhile-1907'(V0, V1, V2, V3) -> case V3 of 1 -> {'Libraries.Data.List.Lazy.::', V0, fun () -> ('un--takeWhile'(V2, (V1()))) end}; 0 -> {'Libraries.Data.List.Lazy.Nil'} end.
'case--unfoldr-1692'(V0, V1, V2) -> case V2 of {'Prelude.Types.Nothing'} -> {'Libraries.Data.List.Lazy.Nil'}; {'Prelude.Types.Just', V3} -> case V3 of {'Builtin.MkPair', V4, V5} -> {'Libraries.Data.List.Lazy.::', V4, fun () -> ('un--unfoldr'(V1, V5)) end} end end.
'case--iterate-1644'(V0, V1, V2) -> case V2 of {'Prelude.Types.Nothing'} -> fun () -> {'Libraries.Data.List.Lazy.Nil'} end; {'Prelude.Types.Just', V3} -> fun () -> ('un--iterate'(V1, V3)) end end.
'dn--un--toList_Foldable_LazyList'(V0) -> ('dn--un--foldr_Foldable_LazyList'(fun (V1) -> fun (V2) -> [V1 | V2] end end, [], V0)).
'dn--un--pure_Applicative_LazyList'(V0) -> {'Libraries.Data.List.Lazy.::', V0, fun () -> {'Libraries.Data.List.Lazy.Nil'} end}.
'dn--un--null_Foldable_LazyList'(V0) -> case V0 of {'Libraries.Data.List.Lazy.Nil'} -> 1; {'Libraries.Data.List.Lazy.::', V1, V2} -> 0 end.
'dn--un--neutral_Monoid_(LazyList $a)'() -> {'Libraries.Data.List.Lazy.Nil'}.
'dn--un--map_Functor_LazyList'(V0, V1) -> case V1 of {'Libraries.Data.List.Lazy.Nil'} -> {'Libraries.Data.List.Lazy.Nil'}; {'Libraries.Data.List.Lazy.::', V2, V3} -> {'Libraries.Data.List.Lazy.::', (V0(V2)), fun () -> ((begin (V8 = fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('dn--un--map_Functor_LazyList'(V6, V7)) end end end end), fun (V9) -> fun (V10) -> ((((V8('erased'))('erased'))(V9))(V10)) end end end(V0))((V3()))) end} end.
'dn--un--join_Monad_LazyList'(V0) -> ('dn--un-->>=_Monad_LazyList'(V0, fun (V1) -> V1 end)).
'dn--un--foldr_Foldable_LazyList'(V0, V1, V2) -> case V2 of {'Libraries.Data.List.Lazy.Nil'} -> V1; {'Libraries.Data.List.Lazy.::', V3, V4} -> ((V0(V3))(('dn--un--foldr_Foldable_LazyList'(V0, V1, (V4()))))) end.
'dn--un--foldl_Foldable_LazyList'(V0, V1, V2) -> case V2 of {'Libraries.Data.List.Lazy.Nil'} -> V1; {'Libraries.Data.List.Lazy.::', V3, V4} -> ('dn--un--foldl_Foldable_LazyList'(V0, ((V0(V1))(V3)), (V4()))) end.
'dn--un--foldlM_Foldable_LazyList'(V0, V1, V2, V3) -> ('dn--un--foldl_Foldable_LazyList'(fun (V4) -> fun (V5) -> case V0 of {'Prelude.Interfaces.MkMonad', V6, V7, V8} -> ((((V7('erased'))('erased'))(V4))(fun (V9) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(V1, V5, V9)) end)) end end end, case V0 of {'Prelude.Interfaces.MkMonad', V10, V11, V12} -> case V10 of {'Prelude.Interfaces.MkApplicative', V13, V14, V15} -> ((V14('erased'))(V2)) end end, V3)).
'dn--un--foldMap_Foldable_LazyList'(V0, V1, V2) -> ('dn--un--foldr_Foldable_LazyList'(fun (V3) -> (begin (V6 = case V0 of {'Prelude.Interfaces.MkMonoid', V4, V5} -> V4 end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end((V1(V3)))) end, case V0 of {'Prelude.Interfaces.MkMonoid', V9, V10} -> V10 end, V2)).
'dn--un--empty_Alternative_LazyList'() -> {'Libraries.Data.List.Lazy.Nil'}.
'dn--un--__Impl_Semigroup_(LazyList $a)'(V0, V1) -> ('dn--un--<+>_Semigroup_(LazyList $a)'(V0, V1)).
'dn--un--__Impl_Monoid_(LazyList $a)'() -> {'Prelude.Interfaces.MkMonoid', fun (V0) -> fun (V1) -> ('dn--un--<+>_Semigroup_(LazyList $a)'(V0, V1)) end end, {'Libraries.Data.List.Lazy.Nil'}}.
'dn--un--__Impl_Monad_LazyList'() -> {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_LazyList'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative_LazyList'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_LazyList'(V8, V9)) end end end end}, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un-->>=_Monad_LazyList'(V12, V13)) end end end end, fun (V14) -> fun (V15) -> ('dn--un--join_Monad_LazyList'(V15)) end end}.
'dn--un--__Impl_Functor_LazyList'(V0, V1, V2, V3) -> ('dn--un--map_Functor_LazyList'(V2, V3)).
'dn--un--__Impl_Foldable_LazyList'() -> {'Prelude.Interfaces.MkFoldable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--foldr_Foldable_LazyList'(V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--foldl_Foldable_LazyList'(V7, V8, V9)) end end end end end, fun (V10) -> fun (V11) -> ('dn--un--null_Foldable_LazyList'(V11)) end end, fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> ('dn--un--foldlM_Foldable_LazyList'(V15, V16, V17, V18)) end end end end end end end, fun (V19) -> fun (V20) -> ('dn--un--toList_Foldable_LazyList'(V20)) end end, fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> ('dn--un--foldMap_Foldable_LazyList'(V23, V24, V25)) end end end end end}.
'dn--un--__Impl_Applicative_LazyList'() -> {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_LazyList'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative_LazyList'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_LazyList'(V8, V9)) end end end end}.
'dn--un--__Impl_Alternative_LazyList'() -> {'Prelude.Interfaces.MkAlternative', {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_LazyList'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative_LazyList'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_LazyList'(V8, V9)) end end end end}, fun (V10) -> {'Libraries.Data.List.Lazy.Nil'} end, fun (V11) -> fun (V12) -> fun (V13) -> ('un--++'(V12, V13)) end end end}.
'dn--un-->>=_Monad_LazyList'(V0, V1) -> ('dn--un--foldMap_Foldable_LazyList'({'Prelude.Interfaces.MkMonoid', fun (V2) -> fun (V3) -> ('dn--un--<+>_Semigroup_(LazyList $a)'(V2, V3)) end end, {'Libraries.Data.List.Lazy.Nil'}}, V1, V0)).
'dn--un--<|>_Alternative_LazyList'(V0, V1) -> ('un--++'(V0, V1)).
'dn--un--<+>_Semigroup_(LazyList $a)'(V0, V1) -> case V0 of {'Libraries.Data.List.Lazy.Nil'} -> V1; {'Libraries.Data.List.Lazy.::', V2, V3} -> {'Libraries.Data.List.Lazy.::', V2, fun () -> ((begin (V6 = fun (V4) -> fun (V5) -> ('dn--un--<+>_Semigroup_(LazyList $a)'(V4, V5)) end end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end((V3())))(V1)) end} end.
'dn--un--<*>_Applicative_LazyList'(V0, V1) -> ('dn--un--foldMap_Foldable_LazyList'({'Prelude.Interfaces.MkMonoid', fun (V2) -> fun (V3) -> ('dn--un--<+>_Semigroup_(LazyList $a)'(V2, V3)) end end, {'Libraries.Data.List.Lazy.Nil'}}, fun (V4) -> ('dn--un--map_Functor_LazyList'(V4, V1)) end, V0)).
'un--unfoldr'(V0, V1) -> case (V0(V1)) of {'Prelude.Types.Nothing'} -> {'Libraries.Data.List.Lazy.Nil'}; {'Prelude.Types.Just', V2} -> case V2 of {'Builtin.MkPair', V3, V4} -> {'Libraries.Data.List.Lazy.::', V3, fun () -> ('un--unfoldr'(V0, V4)) end} end end.
'un--traverse'(V0, V1, V2) -> case V2 of {'Libraries.Data.List.Lazy.Nil'} -> case V0 of {'Prelude.Interfaces.MkApplicative', V3, V4, V5} -> ((V4('erased'))([])) end; {'Libraries.Data.List.Lazy.::', V6, V7} -> case V0 of {'Prelude.Interfaces.MkApplicative', V8, V9, V10} -> ((((V10('erased'))('erased'))(case V0 of {'Prelude.Interfaces.MkApplicative', V11, V12, V13} -> ((((V13('erased'))('erased'))(case V0 of {'Prelude.Interfaces.MkApplicative', V14, V15, V16} -> ((V15('erased'))(fun (V17) -> fun (V18) -> [V17 | V18] end end)) end))((V1(V6)))) end))(('un--traverse'(V0, V1, (V7()))))) end end.
'un--takeWhile'(V0, V1) -> case V1 of {'Libraries.Data.List.Lazy.Nil'} -> {'Libraries.Data.List.Lazy.Nil'}; {'Libraries.Data.List.Lazy.::', V2, V3} -> case (V0(V2)) of 1 -> {'Libraries.Data.List.Lazy.::', V2, fun () -> ('un--takeWhile'(V0, (V3()))) end}; 0 -> {'Libraries.Data.List.Lazy.Nil'} end end.
'un--take'(V0, V1) -> case V0 of 0 -> {'Libraries.Data.List.Lazy.Nil'}; _ -> begin (V2 = (V0 - 1)), case V1 of {'Libraries.Data.List.Lazy.::', V3, V4} -> {'Libraries.Data.List.Lazy.::', V3, fun () -> ('un--take'(V2, (V4()))) end}; _ -> {'Libraries.Data.List.Lazy.Nil'} end end end.
'un--tail\x{27}'(V0) -> case V0 of {'Libraries.Data.List.Lazy.Nil'} -> {'Prelude.Types.Nothing'}; {'Libraries.Data.List.Lazy.::', V1, V2} -> {'Prelude.Types.Just', (V2())} end.
'un--sequence'(V0, V1) -> ('un--traverse'(V0, fun (V2) -> V2 end, V1)).
'un--replicate'(V0, V1) -> case V0 of 0 -> {'Libraries.Data.List.Lazy.Nil'}; _ -> begin (V2 = (V0 - 1)), {'Libraries.Data.List.Lazy.::', V1, fun () -> ('un--replicate'(V2, V1)) end} end end.
'un--mapMaybe'(V0, V1) -> case V1 of {'Libraries.Data.List.Lazy.Nil'} -> {'Libraries.Data.List.Lazy.Nil'}; {'Libraries.Data.List.Lazy.::', V2, V3} -> case (V0(V2)) of {'Prelude.Types.Nothing'} -> ('un--mapMaybe'(V0, (V3()))); {'Prelude.Types.Just', V4} -> {'Libraries.Data.List.Lazy.::', V4, fun () -> ('un--mapMaybe'(V0, (V3()))) end} end end.
'un--iterateN'(V0, V1, V2) -> case V0 of 0 -> {'Libraries.Data.List.Lazy.Nil'}; _ -> begin (V3 = (V0 - 1)), {'Libraries.Data.List.Lazy.::', V2, fun () -> ('un--iterateN'(V3, V1, (V1(V2)))) end} end end.
'un--iterate'(V0, V1) -> {'Libraries.Data.List.Lazy.::', V1, case (V0(V1)) of {'Prelude.Types.Nothing'} -> fun () -> {'Libraries.Data.List.Lazy.Nil'} end; {'Prelude.Types.Just', V2} -> fun () -> ('un--iterate'(V0, V2)) end end}.
'un--head\x{27}'(V0) -> case V0 of {'Libraries.Data.List.Lazy.Nil'} -> {'Prelude.Types.Nothing'}; {'Libraries.Data.List.Lazy.::', V1, V2} -> {'Prelude.Types.Just', V1} end.
'un--fromList'(V0) -> case V0 of [] -> {'Libraries.Data.List.Lazy.Nil'}; [E0 | E1] -> (fun (V1, V2) -> {'Libraries.Data.List.Lazy.::', V1, fun () -> ('un--fromList'(V2)) end} end(E0, E1)) end.
'un--filter'(V0, V1) -> case V1 of {'Libraries.Data.List.Lazy.Nil'} -> {'Libraries.Data.List.Lazy.Nil'}; {'Libraries.Data.List.Lazy.::', V2, V3} -> case (V0(V2)) of 1 -> {'Libraries.Data.List.Lazy.::', V2, fun () -> ('un--filter'(V0, (V3()))) end}; 0 -> ('un--filter'(V0, (V3()))) end end.
'un--dropWhile'(V0, V1) -> case V1 of {'Libraries.Data.List.Lazy.Nil'} -> {'Libraries.Data.List.Lazy.Nil'}; {'Libraries.Data.List.Lazy.::', V2, V3} -> case (V0(V2)) of 1 -> ('un--dropWhile'(V0, (V3()))); 0 -> {'Libraries.Data.List.Lazy.::', V2, V3} end end.
'un--drop'(V0, V1) -> case V0 of 0 -> V1; _ -> begin (V2 = (V0 - 1)), case V1 of {'Libraries.Data.List.Lazy.Nil'} -> {'Libraries.Data.List.Lazy.Nil'}; {'Libraries.Data.List.Lazy.::', V3, V4} -> ('un--drop'(V2, (V4()))) end end end.
'un--++'(V0, V1) -> case V0 of {'Libraries.Data.List.Lazy.Nil'} -> (V1()); {'Libraries.Data.List.Lazy.::', V2, V3} -> {'Libraries.Data.List.Lazy.::', V2, fun () -> ('un--++'((V3()), V1)) end} end.
