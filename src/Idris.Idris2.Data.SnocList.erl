-module('Idris.Idris2.Data.SnocList').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--findIndex-1669'/4,
  'case--find-1609'/4,
  'case--compare-900'/6,
  'case--max-793'/4,
  'case--min-765'/4,
  'nested--3473-1005--in--un--show\x{27}'/4,
  'nested--3619-1222--in--un--h'/4,
  'dn--un--traverse_Traversable_SnocList'/3,
  'dn--un--toList_Foldable_SnocList'/1,
  'dn--un--show_Show_(SnocList $a)'/2,
  'dn--un--showPrec_Show_(SnocList $a)'/3,
  'dn--un--pure_Applicative_SnocList'/1,
  'dn--un--null_Foldable_SnocList'/1,
  'dn--un--neutral_Monoid_(SnocList $a)'/0,
  'dn--un--min_Ord_(SnocList $a)'/3,
  'dn--un--max_Ord_(SnocList $a)'/3,
  'dn--un--map_Functor_SnocList'/2,
  'dn--un--join_Monad_SnocList'/1,
  'dn--un--foldr_Foldable_SnocList'/3,
  'dn--un--foldl_Foldable_SnocList'/3,
  'dn--un--foldlM_Foldable_SnocList'/4,
  'dn--un--foldMap_Foldable_SnocList'/3,
  'dn--un--empty_Alternative_SnocList'/0,
  'dn--un--compare_Ord_(SnocList $a)'/3,
  'dn--un--cast_Cast_(SnocList $a)_(List $a)'/1,
  'dn--un--cast_Cast_(List $a)_(SnocList $a)'/1,
  'dn--un--__Impl_Traversable_SnocList'/0,
  'dn--un--__Impl_Show_(SnocList $a)'/1,
  'dn--un--__Impl_Semigroup_(SnocList $a)'/2,
  'dn--un--__Impl_Ord_(SnocList $a)'/1,
  'dn--un--__Impl_Monoid_(SnocList $a)'/0,
  'dn--un--__Impl_Monad_SnocList'/0,
  'dn--un--__Impl_Functor_SnocList'/4,
  'dn--un--__Impl_Foldable_SnocList'/0,
  'dn--un--__Impl_Eq_(SnocList $a)'/1,
  'dn--un--__Impl_Cast_(SnocList $a)_(List $a)'/1,
  'dn--un--__Impl_Cast_(List $a)_(SnocList $a)'/1,
  'dn--un--__Impl_Applicative_SnocList'/0,
  'dn--un--__Impl_Alternative_SnocList'/0,
  'dn--un-->_Ord_(SnocList $a)'/3,
  'dn--un-->>=_Monad_SnocList'/2,
  'dn--un-->=_Ord_(SnocList $a)'/3,
  'dn--un--==_Eq_(SnocList $a)'/3,
  'dn--un--<|>_Alternative_SnocList'/2,
  'dn--un--<_Ord_(SnocList $a)'/3,
  'dn--un--<=_Ord_(SnocList $a)'/3,
  'dn--un--<+>_Semigroup_(SnocList $a)'/2,
  'dn--un--<*>_Applicative_SnocList'/2,
  'dn--un--/=_Eq_(SnocList $a)'/3,
  'un--length'/1,
  'un--isSnoc'/1,
  'un--isLin'/1,
  'un--findIndex'/2,
  'un--find'/2,
  'un--elem'/3,
  'un--asList'/1,
  'un--<>>'/2,
  'un--<><'/2,
  'un--++'/2
]).
'case--findIndex-1669'(V0, V1, V2, V3) -> case V3 of 1 -> {'Idris.Prelude.Types.Just', 0}; 0 -> ('Idris.Idris2.Prelude.Interfaces':'un--<$>'(fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V6, V7)) end end end end, fun (V8) -> (1 + V8) end, ('un--findIndex'(V2, V1)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--find-1609'(V0, V1, V2, V3) -> case V3 of 1 -> {'Idris.Prelude.Types.Just', V0}; 0 -> ('un--find'(V2, V1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-900'(V0, V1, V2, V3, V4, V5) -> case V5 of 1 -> case V0 of {'Idris.Prelude.EqOrd.MkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V6, V7, V8, V9, V10, V11, V12, V13) -> ((V7(V1))(V3)) end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> V5 end.
'case--max-793'(V0, V1, V2, V3) -> case V3 of 1 -> V2; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-765'(V0, V1, V2, V3) -> case V3 of 1 -> V2; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--3473-1005--in--un--show\x{27}'(V0, V1, V2, V3) -> case V3 of {'Idris.Prelude.Basics.Lin'} -> (fun () -> V2 end()); {'Idris.Prelude.Basics.:<', E0, E1} -> (fun (V4, V5) -> ('nested--3473-1005--in--un--show\x{27}'(V0, V1, [case V0 of {'Idris.Prelude.Show.MkShow', E2, E3} -> (fun (V6, V7) -> (V6(V5)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end | V2], V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--3619-1222--in--un--h'(V0, V1, V2, V3) -> case V3 of {'Idris.Prelude.Basics.Lin'} -> (fun () -> V1 end()); {'Idris.Prelude.Basics.:<', E0, E1} -> (fun (V4, V5) -> ((V2(('nested--3619-1222--in--un--h'(V0, V1, V2, V4))))(V5)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--traverse_Traversable_SnocList'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Basics.Lin'} -> (fun () -> case V0 of {'Idris.Prelude.Interfaces.MkApplicative', E0, E1, E2} -> (fun (V3, V4, V5) -> ((V4('erased'))({'Idris.Prelude.Basics.Lin'})) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); {'Idris.Prelude.Basics.:<', E3, E4} -> (fun (V6, V7) -> case V0 of {'Idris.Prelude.Interfaces.MkApplicative', E5, E6, E7} -> (fun (V8, V9, V10) -> ((((V10('erased'))('erased'))(case V0 of {'Idris.Prelude.Interfaces.MkApplicative', E8, E9, E10} -> (fun (V11, V12, V13) -> ((((V13('erased'))('erased'))(case V0 of {'Idris.Prelude.Interfaces.MkApplicative', E11, E12, E13} -> (fun (V14, V15, V16) -> ((V15('erased'))(fun (V17) -> fun (V18) -> {'Idris.Prelude.Basics.:<', V17, V18} end end)) end(E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end))(('dn--un--traverse_Traversable_SnocList'(V0, V1, V6)))) end(E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end))((V1(V7)))) end(E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--toList_Foldable_SnocList'(V0) -> ('un--<>>'(V0, [])).
'dn--un--show_Show_(SnocList $a)'(V0, V1) -> ('Idris.Idris2.Prelude.Interfaces':'un--concat'({'Idris.Builtin.MkPair', {'Idris.Prelude.Interfaces.MkFoldable', fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V4, V5, V6)) end end end end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V9, V10, V11)) end end end end end, fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.Types':'dn--un--null_Foldable_List'(V13)) end end, fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldlM_Foldable_List'(V17, V18, V19, V20)) end end end end end end end, fun (V21) -> fun (V22) -> ('Idris.Idris2.Prelude.Types':'dn--un--toList_Foldable_List'(V22)) end end, fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V25, V26, V27)) end end end end end}, {'Idris.Prelude.Interfaces.MkMonoid', fun (V28) -> fun (V29) -> ('Idris.Idris2.Prelude.Types':'dn--un--<+>_Semigroup_String'(V28, V29)) end end, ('Idris.Idris2.Prelude.Types':'dn--un--neutral_Monoid_String'())}}, [<<"[< "/utf8>> | ('Idris.Idris2.Prelude.Types.List':'un--++'(('Idris.Idris2.Data.List':'un--intersperse'(<<", "/utf8>>, ('nested--3473-1005--in--un--show\x{27}'(V0, V1, [], V1)))), [<<"]"/utf8>> | []]))])).
'dn--un--showPrec_Show_(SnocList $a)'(V0, V1, V2) -> ('dn--un--show_Show_(SnocList $a)'(V0, V2)).
'dn--un--pure_Applicative_SnocList'(V0) -> {'Idris.Prelude.Basics.:<', {'Idris.Prelude.Basics.Lin'}, V0}.
'dn--un--null_Foldable_SnocList'(V0) -> case V0 of {'Idris.Prelude.Basics.Lin'} -> (fun () -> fun () -> 1 end end()); {'Idris.Prelude.Basics.:<', E0, E1} -> (fun (V1, V2) -> fun () -> 0 end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--neutral_Monoid_(SnocList $a)'() -> {'Idris.Prelude.Basics.Lin'}.
'dn--un--min_Ord_(SnocList $a)'(V0, V1, V2) -> case ('dn--un--<_Ord_(SnocList $a)'(V0, V1, V2)) of 1 -> V1; 0 -> V2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_(SnocList $a)'(V0, V1, V2) -> case ('dn--un-->_Ord_(SnocList $a)'(V0, V1, V2)) of 1 -> V1; 0 -> V2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--map_Functor_SnocList'(V0, V1) -> case V1 of {'Idris.Prelude.Basics.Lin'} -> (fun () -> {'Idris.Prelude.Basics.Lin'} end()); {'Idris.Prelude.Basics.:<', E0, E1} -> (fun (V2, V3) -> {'Idris.Prelude.Basics.:<', ('dn--un--map_Functor_SnocList'(V0, V2)), (V0(V3))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--join_Monad_SnocList'(V0) -> ('dn--un-->>=_Monad_SnocList'(V0, fun (V1) -> V1 end)).
'dn--un--foldr_Foldable_SnocList'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V0, V1, ('un--<>>'(V2, [])))).
'dn--un--foldl_Foldable_SnocList'(V0, V1, V2) -> ('nested--3619-1222--in--un--h'(V2, V1, V0, V2)).
'dn--un--foldlM_Foldable_SnocList'(V0, V1, V2, V3) -> ('dn--un--foldl_Foldable_SnocList'(fun (V4) -> fun (V5) -> case V0 of {'Idris.Prelude.Interfaces.MkMonad', E0, E1, E2} -> (fun (V6, V7, V8) -> ((((V7('erased'))('erased'))(V4))(fun (V9) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(V1, V5, V9)) end)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, case V0 of {'Idris.Prelude.Interfaces.MkMonad', E3, E4, E5} -> (fun (V10, V11, V12) -> case V10 of {'Idris.Prelude.Interfaces.MkApplicative', E6, E7, E8} -> (fun (V13, V14, V15) -> ((V14('erased'))(V2)) end(E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V3)).
'dn--un--foldMap_Foldable_SnocList'(V0, V1, V2) -> ('dn--un--foldl_Foldable_SnocList'(fun (V3) -> fun (V4) -> case V0 of {'Idris.Prelude.Interfaces.MkMonoid', E0, E1} -> (fun (V5, V6) -> ((V5(V3))((V1(V4)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, case V0 of {'Idris.Prelude.Interfaces.MkMonoid', E2, E3} -> (fun (V7, V8) -> V8 end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V2)).
'dn--un--empty_Alternative_SnocList'() -> {'Idris.Prelude.Basics.Lin'}.
'dn--un--compare_Ord_(SnocList $a)'(V0, V1, V2) -> case V1 of {'Idris.Prelude.Basics.Lin'} -> (fun () -> case V2 of {'Idris.Prelude.Basics.Lin'} -> (fun () -> 1 end()); {'Idris.Prelude.Basics.:<', E0, E1} -> (fun (V3, V4) -> 0 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); {'Idris.Prelude.Basics.:<', E2, E3} -> (fun (V5, V6) -> case V2 of {'Idris.Prelude.Basics.Lin'} -> (fun () -> 2 end()); {'Idris.Prelude.Basics.:<', E4, E5} -> (fun (V7, V8) -> ('case--compare-900'(V0, V6, V5, V8, V7, ('dn--un--compare_Ord_(SnocList $a)'(V0, V5, V7)))) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--cast_Cast_(SnocList $a)_(List $a)'(V0) -> ('un--<>>'(V0, [])).
'dn--un--cast_Cast_(List $a)_(SnocList $a)'(V0) -> ('un--<><'({'Idris.Prelude.Basics.Lin'}, V0)).
'dn--un--__Impl_Traversable_SnocList'() -> {'Idris.Prelude.Interfaces.MkTraversable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_SnocList'(V2, V3)) end end end end, {'Idris.Prelude.Interfaces.MkFoldable', fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('dn--un--foldr_Foldable_SnocList'(V6, V7, V8)) end end end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--foldl_Foldable_SnocList'(V11, V12, V13)) end end end end end, fun (V14) -> fun (V15) -> ('dn--un--null_Foldable_SnocList'(V15)) end end, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> ('dn--un--foldlM_Foldable_SnocList'(V19, V20, V21, V22)) end end end end end end end, fun (V23) -> fun (V24) -> ('dn--un--toList_Foldable_SnocList'(V24)) end end, fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> ('dn--un--foldMap_Foldable_SnocList'(V27, V28, V29)) end end end end end}, fun (V30) -> fun (V31) -> fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> ('dn--un--traverse_Traversable_SnocList'(V33, V34, V35)) end end end end end end}.
'dn--un--__Impl_Show_(SnocList $a)'(V0) -> {'Idris.Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_(SnocList $a)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_(SnocList $a)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Semigroup_(SnocList $a)'(V0, V1) -> ('dn--un--<+>_Semigroup_(SnocList $a)'(V0, V1)).
'dn--un--__Impl_Ord_(SnocList $a)'(V0) -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_(SnocList $a)'(case V0 of {'Idris.Prelude.EqOrd.MkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V3, V4, V5, V6, V7, V8, V9, V10) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V1, V2)) end end, fun (V11) -> fun (V12) -> ('dn--un--/=_Eq_(SnocList $a)'(case V0 of {'Idris.Prelude.EqOrd.MkOrd', E8, E9, E10, E11, E12, E13, E14, E15} -> (fun (V13, V14, V15, V16, V17, V18, V19, V20) -> V13 end(E8, E9, E10, E11, E12, E13, E14, E15)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V11, V12)) end end}, fun (V21) -> fun (V22) -> ('dn--un--compare_Ord_(SnocList $a)'(V0, V21, V22)) end end, fun (V23) -> fun (V24) -> ('dn--un--<_Ord_(SnocList $a)'(V0, V23, V24)) end end, fun (V25) -> fun (V26) -> ('dn--un-->_Ord_(SnocList $a)'(V0, V25, V26)) end end, fun (V27) -> fun (V28) -> ('dn--un--<=_Ord_(SnocList $a)'(V0, V27, V28)) end end, fun (V29) -> fun (V30) -> ('dn--un-->=_Ord_(SnocList $a)'(V0, V29, V30)) end end, fun (V31) -> fun (V32) -> ('dn--un--max_Ord_(SnocList $a)'(V0, V31, V32)) end end, fun (V33) -> fun (V34) -> ('dn--un--min_Ord_(SnocList $a)'(V0, V33, V34)) end end}.
'dn--un--__Impl_Monoid_(SnocList $a)'() -> {'Idris.Prelude.Interfaces.MkMonoid', fun (V0) -> fun (V1) -> ('dn--un--<+>_Semigroup_(SnocList $a)'(V0, V1)) end end, ('dn--un--neutral_Monoid_(SnocList $a)'())}.
'dn--un--__Impl_Monad_SnocList'() -> {'Idris.Prelude.Interfaces.MkMonad', {'Idris.Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_SnocList'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative_SnocList'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_SnocList'(V8, V9)) end end end end}, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un-->>=_Monad_SnocList'(V12, V13)) end end end end, fun (V14) -> fun (V15) -> ('dn--un--join_Monad_SnocList'(V15)) end end}.
'dn--un--__Impl_Functor_SnocList'(V0, V1, V2, V3) -> ('dn--un--map_Functor_SnocList'(V2, V3)).
'dn--un--__Impl_Foldable_SnocList'() -> {'Idris.Prelude.Interfaces.MkFoldable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--foldr_Foldable_SnocList'(V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--foldl_Foldable_SnocList'(V7, V8, V9)) end end end end end, fun (V10) -> fun (V11) -> ('dn--un--null_Foldable_SnocList'(V11)) end end, fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> ('dn--un--foldlM_Foldable_SnocList'(V15, V16, V17, V18)) end end end end end end end, fun (V19) -> fun (V20) -> ('dn--un--toList_Foldable_SnocList'(V20)) end end, fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> ('dn--un--foldMap_Foldable_SnocList'(V23, V24, V25)) end end end end end}.
'dn--un--__Impl_Eq_(SnocList $a)'(V0) -> {'Idris.Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_(SnocList $a)'(V0, V1, V2)) end end, fun (V3) -> fun (V4) -> ('dn--un--/=_Eq_(SnocList $a)'(V0, V3, V4)) end end}.
'dn--un--__Impl_Cast_(SnocList $a)_(List $a)'(V0) -> ('dn--un--cast_Cast_(SnocList $a)_(List $a)'(V0)).
'dn--un--__Impl_Cast_(List $a)_(SnocList $a)'(V0) -> ('dn--un--cast_Cast_(List $a)_(SnocList $a)'(V0)).
'dn--un--__Impl_Applicative_SnocList'() -> {'Idris.Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_SnocList'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative_SnocList'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_SnocList'(V8, V9)) end end end end}.
'dn--un--__Impl_Alternative_SnocList'() -> {'Idris.Prelude.Interfaces.MkAlternative', {'Idris.Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_SnocList'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative_SnocList'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_SnocList'(V8, V9)) end end end end}, fun (V10) -> ('dn--un--empty_Alternative_SnocList'()) end, fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--<|>_Alternative_SnocList'(V12, V13)) end end end}.
'dn--un-->_Ord_(SnocList $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(SnocList $a)'(V0, V1, V2)), 2)).
'dn--un-->>=_Monad_SnocList'(V0, V1) -> ('Idris.Idris2.Prelude.Interfaces':'un--concatMap'({'Idris.Builtin.MkPair', {'Idris.Prelude.Interfaces.MkFoldable', fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('dn--un--foldr_Foldable_SnocList'(V4, V5, V6)) end end end end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> ('dn--un--foldl_Foldable_SnocList'(V9, V10, V11)) end end end end end, fun (V12) -> fun (V13) -> ('dn--un--null_Foldable_SnocList'(V13)) end end, fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> ('dn--un--foldlM_Foldable_SnocList'(V17, V18, V19, V20)) end end end end end end end, fun (V21) -> fun (V22) -> ('dn--un--toList_Foldable_SnocList'(V22)) end end, fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> ('dn--un--foldMap_Foldable_SnocList'(V25, V26, V27)) end end end end end}, {'Idris.Prelude.Interfaces.MkMonoid', fun (V28) -> fun (V29) -> ('dn--un--<+>_Semigroup_(SnocList $a)'(V28, V29)) end end, ('dn--un--neutral_Monoid_(SnocList $a)'())}}, V1, V0)).
'dn--un-->=_Ord_(SnocList $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(SnocList $a)'(V0, V1, V2)), 0)).
'dn--un--==_Eq_(SnocList $a)'(V0, V1, V2) -> case V1 of {'Idris.Prelude.Basics.Lin'} -> (fun () -> case V2 of {'Idris.Prelude.Basics.Lin'} -> (fun () -> 1 end()); _ -> 0 end end()); {'Idris.Prelude.Basics.:<', E0, E1} -> (fun (V3, V4) -> case V2 of {'Idris.Prelude.Basics.:<', E2, E3} -> (fun (V5, V6) -> case case V0 of {'Idris.Prelude.EqOrd.MkEq', E4, E5} -> (fun (V7, V8) -> ((V7(V4))(V6)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of 1 -> ('dn--un--==_Eq_(SnocList $a)'(V0, V3, V5)); 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> 0 end end(E0, E1)); _ -> 0 end.
'dn--un--<|>_Alternative_SnocList'(V0, V1) -> ('un--++'(V0, (V1()))).
'dn--un--<_Ord_(SnocList $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(SnocList $a)'(V0, V1, V2)), 0)).
'dn--un--<=_Ord_(SnocList $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(SnocList $a)'(V0, V1, V2)), 2)).
'dn--un--<+>_Semigroup_(SnocList $a)'(V0, V1) -> ('un--++'(V0, V1)).
'dn--un--<*>_Applicative_SnocList'(V0, V1) -> ('Idris.Idris2.Prelude.Interfaces':'un--concatMap'({'Idris.Builtin.MkPair', {'Idris.Prelude.Interfaces.MkFoldable', fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('dn--un--foldr_Foldable_SnocList'(V4, V5, V6)) end end end end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> ('dn--un--foldl_Foldable_SnocList'(V9, V10, V11)) end end end end end, fun (V12) -> fun (V13) -> ('dn--un--null_Foldable_SnocList'(V13)) end end, fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> ('dn--un--foldlM_Foldable_SnocList'(V17, V18, V19, V20)) end end end end end end end, fun (V21) -> fun (V22) -> ('dn--un--toList_Foldable_SnocList'(V22)) end end, fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> ('dn--un--foldMap_Foldable_SnocList'(V25, V26, V27)) end end end end end}, {'Idris.Prelude.Interfaces.MkMonoid', fun (V28) -> fun (V29) -> ('dn--un--<+>_Semigroup_(SnocList $a)'(V28, V29)) end end, ('dn--un--neutral_Monoid_(SnocList $a)'())}}, fun (V30) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(fun (V31) -> fun (V32) -> ('dn--un--map_Functor_SnocList'(V31, V32)) end end, V1, V30)) end, V0)).
'dn--un--/=_Eq_(SnocList $a)'(V0, V1, V2) -> case ('dn--un--==_Eq_(SnocList $a)'(V0, V1, V2)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--length'(V0) -> case V0 of {'Idris.Prelude.Basics.Lin'} -> (fun () -> 0 end()); {'Idris.Prelude.Basics.:<', E0, E1} -> (fun (V1, V2) -> (1 + ('un--length'(V1))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--isSnoc'(V0) -> case V0 of {'Idris.Prelude.Basics.Lin'} -> (fun () -> 0 end()); {'Idris.Prelude.Basics.:<', E0, E1} -> (fun (V1, V2) -> 1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--isLin'(V0) -> case V0 of {'Idris.Prelude.Basics.Lin'} -> (fun () -> 1 end()); {'Idris.Prelude.Basics.:<', E0, E1} -> (fun (V1, V2) -> 0 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--findIndex'(V0, V1) -> case V1 of {'Idris.Prelude.Basics.Lin'} -> (fun () -> {'Idris.Prelude.Types.Nothing'} end()); {'Idris.Prelude.Basics.:<', E0, E1} -> (fun (V2, V3) -> case (V0(V3)) of 1 -> {'Idris.Prelude.Types.Just', 0}; 0 -> ('Idris.Idris2.Prelude.Interfaces':'un--<$>'(fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V6, V7)) end end end end, fun (V8) -> (1 + V8) end, ('un--findIndex'(V0, V2)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--find'(V0, V1) -> case V1 of {'Idris.Prelude.Basics.Lin'} -> (fun () -> {'Idris.Prelude.Types.Nothing'} end()); {'Idris.Prelude.Basics.:<', E0, E1} -> (fun (V2, V3) -> case (V0(V3)) of 1 -> {'Idris.Prelude.Types.Just', V3}; 0 -> ('un--find'(V0, V2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--elem'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Basics.Lin'} -> (fun () -> 0 end()); {'Idris.Prelude.Basics.:<', E0, E1} -> (fun (V3, V4) -> case case V0 of {'Idris.Prelude.EqOrd.MkEq', E2, E3} -> (fun (V5, V6) -> ((V5(V1))(V4)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of 1 -> 1; 0 -> ('un--elem'(V0, V1, V3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--asList'(V0) -> ('Idris.Idris2.Data.List':'un--reverse'(('dn--un--cast_Cast_(SnocList $a)_(List $a)'(V0)))).
'un--<>>'(V0, V1) -> case V0 of {'Idris.Prelude.Basics.Lin'} -> (fun () -> V1 end()); {'Idris.Prelude.Basics.:<', E0, E1} -> (fun (V2, V3) -> ('un--<>>'(V2, [V3 | V1])) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--<><'(V0, V1) -> case V1 of [] -> V0; [E0 | E1] -> (fun (V2, V3) -> ('un--<><'({'Idris.Prelude.Basics.:<', V0, V2}, V3)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--++'(V0, V1) -> case V1 of {'Idris.Prelude.Basics.Lin'} -> (fun () -> V0 end()); {'Idris.Prelude.Basics.:<', E0, E1} -> (fun (V2, V3) -> {'Idris.Prelude.Basics.:<', ('un--++'(V0, V2)), V3} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
