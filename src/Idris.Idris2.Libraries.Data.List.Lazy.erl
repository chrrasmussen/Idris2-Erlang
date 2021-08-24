-module('Idris.Idris2.Libraries.Data.List.Lazy').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--mapMaybe-1293'/4,
  'case--filter-1242'/4,
  'case--dropWhile-1198'/4,
  'case--takeWhile-1153'/4,
  'case--unfoldr-992'/3,
  'case--iterate-956'/3,
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
'case--mapMaybe-1293'(V0, V1, V2, V3) -> case V3 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> ('un--mapMaybe'(V2, (V1()))) end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V4) -> {'Idris.Libraries.Data.List.Lazy.::', V4, fun () -> ('un--mapMaybe'(V2, (V1()))) end} end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--filter-1242'(V0, V1, V2, V3) -> case V3 of 1 -> {'Idris.Libraries.Data.List.Lazy.::', V0, fun () -> ('un--filter'(V2, (V1()))) end}; 0 -> ('un--filter'(V2, (V1()))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--dropWhile-1198'(V0, V1, V2, V3) -> case V3 of 1 -> ('un--dropWhile'(V2, (V1()))); 0 -> {'Idris.Libraries.Data.List.Lazy.::', V0, V1}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--takeWhile-1153'(V0, V1, V2, V3) -> case V3 of 1 -> {'Idris.Libraries.Data.List.Lazy.::', V0, fun () -> ('un--takeWhile'(V2, (V1()))) end}; 0 -> {'Idris.Libraries.Data.List.Lazy.Nil'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--unfoldr-992'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> {'Idris.Libraries.Data.List.Lazy.Nil'} end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V3) -> case V3 of {'Idris.Builtin.MkPair', E1, E2} -> (fun (V4, V5) -> {'Idris.Libraries.Data.List.Lazy.::', V4, fun () -> ('un--unfoldr'(V1, V5)) end} end(E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--iterate-956'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> fun () -> {'Idris.Libraries.Data.List.Lazy.Nil'} end end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V3) -> fun () -> ('un--iterate'(V1, V3)) end end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--toList_Foldable_LazyList'(V0) -> ('dn--un--foldr_Foldable_LazyList'(fun (V1) -> fun (V2) -> [V1 | V2] end end, [], V0)).
'dn--un--pure_Applicative_LazyList'(V0) -> {'Idris.Libraries.Data.List.Lazy.::', V0, fun () -> {'Idris.Libraries.Data.List.Lazy.Nil'} end}.
'dn--un--null_Foldable_LazyList'(V0) -> case V0 of {'Idris.Libraries.Data.List.Lazy.Nil'} -> (fun () -> fun () -> 1 end end()); {'Idris.Libraries.Data.List.Lazy.::', E0, E1} -> (fun (V1, V2) -> fun () -> 0 end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--neutral_Monoid_(LazyList $a)'() -> {'Idris.Libraries.Data.List.Lazy.Nil'}.
'dn--un--map_Functor_LazyList'(V0, V1) -> case V1 of {'Idris.Libraries.Data.List.Lazy.Nil'} -> (fun () -> {'Idris.Libraries.Data.List.Lazy.Nil'} end()); {'Idris.Libraries.Data.List.Lazy.::', E0, E1} -> (fun (V2, V3) -> {'Idris.Libraries.Data.List.Lazy.::', (V0(V2)), fun () -> ('dn--un--map_Functor_LazyList'(V0, (V3()))) end} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--join_Monad_LazyList'(V0) -> ('dn--un-->>=_Monad_LazyList'(V0, fun (V1) -> V1 end)).
'dn--un--foldr_Foldable_LazyList'(V0, V1, V2) -> case V2 of {'Idris.Libraries.Data.List.Lazy.Nil'} -> (fun () -> V1 end()); {'Idris.Libraries.Data.List.Lazy.::', E0, E1} -> (fun (V3, V4) -> ((V0(V3))(('dn--un--foldr_Foldable_LazyList'(V0, V1, (V4()))))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--foldl_Foldable_LazyList'(V0, V1, V2) -> case V2 of {'Idris.Libraries.Data.List.Lazy.Nil'} -> (fun () -> V1 end()); {'Idris.Libraries.Data.List.Lazy.::', E0, E1} -> (fun (V3, V4) -> ('dn--un--foldl_Foldable_LazyList'(V0, ((V0(V1))(V3)), (V4()))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--foldlM_Foldable_LazyList'(V0, V1, V2, V3) -> ('dn--un--foldl_Foldable_LazyList'(fun (V4) -> fun (V5) -> case V0 of {'Idris.Prelude.Interfaces.MkMonad', E0, E1, E2} -> (fun (V6, V7, V8) -> ((((V7('erased'))('erased'))(V4))(fun (V9) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(V1, V5, V9)) end)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, case V0 of {'Idris.Prelude.Interfaces.MkMonad', E3, E4, E5} -> (fun (V10, V11, V12) -> case V10 of {'Idris.Prelude.Interfaces.MkApplicative', E6, E7, E8} -> (fun (V13, V14, V15) -> ((V14('erased'))(V2)) end(E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V3)).
'dn--un--foldMap_Foldable_LazyList'(V0, V1, V2) -> ('dn--un--foldr_Foldable_LazyList'(fun (V3) -> fun (V4) -> case V0 of {'Idris.Prelude.Interfaces.MkMonoid', E0, E1} -> (fun (V5, V6) -> ((V5((V1(V3))))(V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, case V0 of {'Idris.Prelude.Interfaces.MkMonoid', E2, E3} -> (fun (V7, V8) -> V8 end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V2)).
'dn--un--empty_Alternative_LazyList'() -> {'Idris.Libraries.Data.List.Lazy.Nil'}.
'dn--un--__Impl_Semigroup_(LazyList $a)'(V0, V1) -> ('dn--un--<+>_Semigroup_(LazyList $a)'(V0, V1)).
'dn--un--__Impl_Monoid_(LazyList $a)'() -> {'Idris.Prelude.Interfaces.MkMonoid', fun (V0) -> fun (V1) -> ('dn--un--<+>_Semigroup_(LazyList $a)'(V0, V1)) end end, ('dn--un--neutral_Monoid_(LazyList $a)'())}.
'dn--un--__Impl_Monad_LazyList'() -> {'Idris.Prelude.Interfaces.MkMonad', {'Idris.Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_LazyList'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative_LazyList'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_LazyList'(V8, V9)) end end end end}, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un-->>=_Monad_LazyList'(V12, V13)) end end end end, fun (V14) -> fun (V15) -> ('dn--un--join_Monad_LazyList'(V15)) end end}.
'dn--un--__Impl_Functor_LazyList'(V0, V1, V2, V3) -> ('dn--un--map_Functor_LazyList'(V2, V3)).
'dn--un--__Impl_Foldable_LazyList'() -> {'Idris.Prelude.Interfaces.MkFoldable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--foldr_Foldable_LazyList'(V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--foldl_Foldable_LazyList'(V7, V8, V9)) end end end end end, fun (V10) -> fun (V11) -> ('dn--un--null_Foldable_LazyList'(V11)) end end, fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> ('dn--un--foldlM_Foldable_LazyList'(V15, V16, V17, V18)) end end end end end end end, fun (V19) -> fun (V20) -> ('dn--un--toList_Foldable_LazyList'(V20)) end end, fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> ('dn--un--foldMap_Foldable_LazyList'(V23, V24, V25)) end end end end end}.
'dn--un--__Impl_Applicative_LazyList'() -> {'Idris.Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_LazyList'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative_LazyList'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_LazyList'(V8, V9)) end end end end}.
'dn--un--__Impl_Alternative_LazyList'() -> {'Idris.Prelude.Interfaces.MkAlternative', {'Idris.Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_LazyList'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative_LazyList'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_LazyList'(V8, V9)) end end end end}, fun (V10) -> ('dn--un--empty_Alternative_LazyList'()) end, fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--<|>_Alternative_LazyList'(V12, V13)) end end end}.
'dn--un-->>=_Monad_LazyList'(V0, V1) -> ('Idris.Idris2.Prelude.Interfaces':'un--concatMap'({'Idris.Builtin.MkPair', {'Idris.Prelude.Interfaces.MkFoldable', fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('dn--un--foldr_Foldable_LazyList'(V4, V5, V6)) end end end end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> ('dn--un--foldl_Foldable_LazyList'(V9, V10, V11)) end end end end end, fun (V12) -> fun (V13) -> ('dn--un--null_Foldable_LazyList'(V13)) end end, fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> ('dn--un--foldlM_Foldable_LazyList'(V17, V18, V19, V20)) end end end end end end end, fun (V21) -> fun (V22) -> ('dn--un--toList_Foldable_LazyList'(V22)) end end, fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> ('dn--un--foldMap_Foldable_LazyList'(V25, V26, V27)) end end end end end}, {'Idris.Prelude.Interfaces.MkMonoid', fun (V28) -> fun (V29) -> ('dn--un--<+>_Semigroup_(LazyList $a)'(V28, V29)) end end, ('dn--un--neutral_Monoid_(LazyList $a)'())}}, V1, V0)).
'dn--un--<|>_Alternative_LazyList'(V0, V1) -> ('un--++'(V0, V1)).
'dn--un--<+>_Semigroup_(LazyList $a)'(V0, V1) -> case V0 of {'Idris.Libraries.Data.List.Lazy.Nil'} -> (fun () -> V1 end()); {'Idris.Libraries.Data.List.Lazy.::', E0, E1} -> (fun (V2, V3) -> {'Idris.Libraries.Data.List.Lazy.::', V2, fun () -> ('dn--un--<+>_Semigroup_(LazyList $a)'((V3()), V1)) end} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--<*>_Applicative_LazyList'(V0, V1) -> ('Idris.Idris2.Prelude.Interfaces':'un--concatMap'({'Idris.Builtin.MkPair', {'Idris.Prelude.Interfaces.MkFoldable', fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('dn--un--foldr_Foldable_LazyList'(V4, V5, V6)) end end end end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> ('dn--un--foldl_Foldable_LazyList'(V9, V10, V11)) end end end end end, fun (V12) -> fun (V13) -> ('dn--un--null_Foldable_LazyList'(V13)) end end, fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> ('dn--un--foldlM_Foldable_LazyList'(V17, V18, V19, V20)) end end end end end end end, fun (V21) -> fun (V22) -> ('dn--un--toList_Foldable_LazyList'(V22)) end end, fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> ('dn--un--foldMap_Foldable_LazyList'(V25, V26, V27)) end end end end end}, {'Idris.Prelude.Interfaces.MkMonoid', fun (V28) -> fun (V29) -> ('dn--un--<+>_Semigroup_(LazyList $a)'(V28, V29)) end end, ('dn--un--neutral_Monoid_(LazyList $a)'())}}, fun (V30) -> ('dn--un--map_Functor_LazyList'(V30, V1)) end, V0)).
'un--unfoldr'(V0, V1) -> case (V0(V1)) of {'Idris.Prelude.Types.Nothing'} -> (fun () -> {'Idris.Libraries.Data.List.Lazy.Nil'} end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V2) -> case V2 of {'Idris.Builtin.MkPair', E1, E2} -> (fun (V3, V4) -> {'Idris.Libraries.Data.List.Lazy.::', V3, fun () -> ('un--unfoldr'(V0, V4)) end} end(E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--traverse'(V0, V1, V2) -> case V2 of {'Idris.Libraries.Data.List.Lazy.Nil'} -> (fun () -> case V0 of {'Idris.Prelude.Interfaces.MkApplicative', E0, E1, E2} -> (fun (V3, V4, V5) -> ((V4('erased'))([])) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); {'Idris.Libraries.Data.List.Lazy.::', E3, E4} -> (fun (V6, V7) -> case V0 of {'Idris.Prelude.Interfaces.MkApplicative', E5, E6, E7} -> (fun (V8, V9, V10) -> ((((V10('erased'))('erased'))(case V0 of {'Idris.Prelude.Interfaces.MkApplicative', E8, E9, E10} -> (fun (V11, V12, V13) -> ((((V13('erased'))('erased'))(case V0 of {'Idris.Prelude.Interfaces.MkApplicative', E11, E12, E13} -> (fun (V14, V15, V16) -> ((V15('erased'))(fun (V17) -> fun (V18) -> [V17 | V18] end end)) end(E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end))((V1(V6)))) end(E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end))(('un--traverse'(V0, V1, (V7()))))) end(E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--takeWhile'(V0, V1) -> case V1 of {'Idris.Libraries.Data.List.Lazy.Nil'} -> (fun () -> {'Idris.Libraries.Data.List.Lazy.Nil'} end()); {'Idris.Libraries.Data.List.Lazy.::', E0, E1} -> (fun (V2, V3) -> case (V0(V2)) of 1 -> {'Idris.Libraries.Data.List.Lazy.::', V2, fun () -> ('un--takeWhile'(V0, (V3()))) end}; 0 -> {'Idris.Libraries.Data.List.Lazy.Nil'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--take'(V0, V1) -> case V0 of 0 -> {'Idris.Libraries.Data.List.Lazy.Nil'}; _ -> begin (V2 = (V0 - 1)), case V1 of {'Idris.Libraries.Data.List.Lazy.::', E0, E1} -> (fun (V3, V4) -> {'Idris.Libraries.Data.List.Lazy.::', V3, fun () -> ('un--take'(V2, (V4()))) end} end(E0, E1)); _ -> {'Idris.Libraries.Data.List.Lazy.Nil'} end end end.
'un--tail\x{27}'(V0) -> case V0 of {'Idris.Libraries.Data.List.Lazy.Nil'} -> (fun () -> {'Idris.Prelude.Types.Nothing'} end()); {'Idris.Libraries.Data.List.Lazy.::', E0, E1} -> (fun (V1, V2) -> {'Idris.Prelude.Types.Just', (V2())} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--sequence'(V0, V1) -> ('un--traverse'(V0, fun (V2) -> V2 end, V1)).
'un--replicate'(V0, V1) -> case V0 of 0 -> {'Idris.Libraries.Data.List.Lazy.Nil'}; _ -> begin (V2 = (V0 - 1)), {'Idris.Libraries.Data.List.Lazy.::', V1, fun () -> ('un--replicate'(V2, V1)) end} end end.
'un--mapMaybe'(V0, V1) -> case V1 of {'Idris.Libraries.Data.List.Lazy.Nil'} -> (fun () -> {'Idris.Libraries.Data.List.Lazy.Nil'} end()); {'Idris.Libraries.Data.List.Lazy.::', E0, E1} -> (fun (V2, V3) -> case (V0(V2)) of {'Idris.Prelude.Types.Nothing'} -> (fun () -> ('un--mapMaybe'(V0, (V3()))) end()); {'Idris.Prelude.Types.Just', E2} -> (fun (V4) -> {'Idris.Libraries.Data.List.Lazy.::', V4, fun () -> ('un--mapMaybe'(V0, (V3()))) end} end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--iterateN'(V0, V1, V2) -> case V0 of 0 -> {'Idris.Libraries.Data.List.Lazy.Nil'}; _ -> begin (V3 = (V0 - 1)), {'Idris.Libraries.Data.List.Lazy.::', V2, fun () -> ('un--iterateN'(V3, V1, (V1(V2)))) end} end end.
'un--iterate'(V0, V1) -> {'Idris.Libraries.Data.List.Lazy.::', V1, case (V0(V1)) of {'Idris.Prelude.Types.Nothing'} -> (fun () -> fun () -> {'Idris.Libraries.Data.List.Lazy.Nil'} end end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V2) -> fun () -> ('un--iterate'(V0, V2)) end end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end}.
'un--head\x{27}'(V0) -> case V0 of {'Idris.Libraries.Data.List.Lazy.Nil'} -> (fun () -> {'Idris.Prelude.Types.Nothing'} end()); {'Idris.Libraries.Data.List.Lazy.::', E0, E1} -> (fun (V1, V2) -> {'Idris.Prelude.Types.Just', V1} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--fromList'(V0) -> case V0 of [] -> {'Idris.Libraries.Data.List.Lazy.Nil'}; [E0 | E1] -> (fun (V1, V2) -> {'Idris.Libraries.Data.List.Lazy.::', V1, fun () -> ('un--fromList'(V2)) end} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--filter'(V0, V1) -> case V1 of {'Idris.Libraries.Data.List.Lazy.Nil'} -> (fun () -> {'Idris.Libraries.Data.List.Lazy.Nil'} end()); {'Idris.Libraries.Data.List.Lazy.::', E0, E1} -> (fun (V2, V3) -> case (V0(V2)) of 1 -> {'Idris.Libraries.Data.List.Lazy.::', V2, fun () -> ('un--filter'(V0, (V3()))) end}; 0 -> ('un--filter'(V0, (V3()))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--dropWhile'(V0, V1) -> case V1 of {'Idris.Libraries.Data.List.Lazy.Nil'} -> (fun () -> {'Idris.Libraries.Data.List.Lazy.Nil'} end()); {'Idris.Libraries.Data.List.Lazy.::', E0, E1} -> (fun (V2, V3) -> case (V0(V2)) of 1 -> ('un--dropWhile'(V0, (V3()))); 0 -> {'Idris.Libraries.Data.List.Lazy.::', V2, V3}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--drop'(V0, V1) -> case V0 of 0 -> V1; _ -> begin (V2 = (V0 - 1)), case V1 of {'Idris.Libraries.Data.List.Lazy.Nil'} -> (fun () -> {'Idris.Libraries.Data.List.Lazy.Nil'} end()); {'Idris.Libraries.Data.List.Lazy.::', E0, E1} -> (fun (V3, V4) -> ('un--drop'(V2, (V4()))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--++'(V0, V1) -> case V0 of {'Idris.Libraries.Data.List.Lazy.Nil'} -> (fun () -> (V1()) end()); {'Idris.Libraries.Data.List.Lazy.::', E0, E1} -> (fun (V2, V3) -> {'Idris.Libraries.Data.List.Lazy.::', V2, fun () -> ('un--++'((V3()), V1)) end} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
