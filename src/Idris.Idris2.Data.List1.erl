-module('Idris.Idris2.Data.List1').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--max-968'/5,
  'case--min-940'/5,
  'nested--1647-321--in--un--loop'/8,
  'nested--1627-291--in--un--loop'/5,
  'dn--un--show_Show__(List1 $a)'/3,
  'dn--un--showPrec_Show__(List1 $a)'/4,
  'dn--un--pure_Applicative__List1'/2,
  'dn--un--min_Ord__(List1 $a)'/4,
  'dn--un--max_Ord__(List1 $a)'/4,
  'dn--un--map_Functor__List1'/4,
  'dn--un--join_Monad__List1'/2,
  'dn--un--foldr_Foldable__List1'/5,
  'dn--un--foldl_Foldable__List1'/5,
  'dn--un--compare_Ord__(List1 $a)'/4,
  'dn--un--__Impl_Show_(List1 $a)'/2,
  'dn--un--__Impl_Semigroup_(List1 $a)'/3,
  'dn--un--__Impl_Ord_(List1 $a)'/2,
  'dn--un--__Impl_Monad_List1'/0,
  'dn--un--__Impl_Functor_List1'/4,
  'dn--un--__Impl_Foldable_List1'/0,
  'dn--un--__Impl_Eq_(List1 $a)'/2,
  'dn--un--__Impl_Applicative_List1'/0,
  'dn--un-->_Ord__(List1 $a)'/4,
  'dn--un-->>=_Monad__List1'/4,
  'dn--un-->=_Ord__(List1 $a)'/4,
  'dn--un--==_Eq__(List1 $a)'/4,
  'dn--un--<_Ord__(List1 $a)'/4,
  'dn--un--<=_Ord__(List1 $a)'/4,
  'dn--un--<+>_Semigroup__(List1 $a)'/3,
  'dn--un--<*>_Applicative__List1'/4,
  'dn--un--/=_Eq__(List1 $a)'/4,
  'un--snoc'/3,
  'un--singleton'/2,
  'un--reverseOnto'/3,
  'un--reverse'/2,
  'un--last'/2,
  'un--lappend'/3,
  'un--fromList'/2,
  'un--forget'/2,
  'un--foldr1\x{27}'/5,
  'un--foldr1'/3,
  'un--foldl1'/5,
  'un--consInjective'/6,
  'un--cons'/3,
  'un--appendl'/3,
  'un--append'/3
]).
'case--max-968'(V0, V1, V2, V3, V4) -> case V4 of 0 -> V3; 1 -> V2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-940'(V0, V1, V2, V3, V4) -> case V4 of 0 -> V3; 1 -> V2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--1647-321--in--un--loop'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V7 of [] -> (V4(V6)); [E0 | E1] -> (fun (V8, V9) -> ((V5(V6))(('nested--1647-321--in--un--loop'('erased', 'erased', V2, V3, V4, V5, V8, V9)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--1627-291--in--un--loop'(V0, V1, V2, V3, V4) -> case V4 of [] -> V3; [E0 | E1] -> (fun (V5, V6) -> ('nested--1627-291--in--un--loop'('erased', V1, V2, V5, V6)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show__(List1 $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show__(List $a)'('erased', V1, ('un--forget'('erased', V2)))).
'dn--un--showPrec_Show__(List1 $a)'(V0, V1, V2, V3) -> ('dn--un--show_Show__(List1 $a)'('erased', V1, V3)).
'dn--un--pure_Applicative__List1'(V0, V1) -> ('un--singleton'('erased', V1)).
'dn--un--min_Ord__(List1 $a)'(V0, V1, V2, V3) -> ('case--min-940'('erased', V1, V3, V2, ('dn--un--<_Ord__(List1 $a)'('erased', V1, V2, V3)))).
'dn--un--max_Ord__(List1 $a)'(V0, V1, V2, V3) -> ('case--max-968'('erased', V1, V3, V2, ('dn--un-->_Ord__(List1 $a)'('erased', V1, V2, V3)))).
'dn--un--map_Functor__List1'(V0, V1, V2, V3) -> case V3 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V4, V5) -> {'Idris.Data.List1.:::', (V2(V4)), ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__List'('erased', 'erased', V2, V5))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--join_Monad__List1'(V0, V1) -> ('dn--un-->>=_Monad__List1'('erased', 'erased', V1, fun (V2) -> V2 end)).
'dn--un--foldr_Foldable__List1'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V5, V6) -> ((V2(V5))(('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable__List'('erased', 'erased', V2, V3, V6)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--foldl_Foldable__List1'(V0, V1, V2, V3, V4) -> (('dn--un--foldr_Foldable__List1'('erased', 'erased', fun (V5) -> fun (V6) -> ('Idris.Idris2.Prelude.Basics':'un--flip'('erased', 'erased', 'erased', fun (V7) -> fun (V8) -> fun (V9) -> (V7((V8(V9)))) end end end, fun (V10) -> ('Idris.Idris2.Prelude.Basics':'un--flip'('erased', 'erased', 'erased', V2, V5, V10)) end, V6)) end end, fun (V11) -> V11 end, V4))(V3)).
'dn--un--compare_Ord__(List1 $a)'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.Types':'dn--un--compare_Ord__(List $a)'('erased', V1, ('un--forget'('erased', V2)), ('un--forget'('erased', V3)))).
'dn--un--__Impl_Show_(List1 $a)'(V0, V1) -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V2) -> ('dn--un--show_Show__(List1 $a)'('erased', V1, V2)) end, fun (V3) -> fun (V4) -> ('dn--un--showPrec_Show__(List1 $a)'('erased', V1, V3, V4)) end end}.
'dn--un--__Impl_Semigroup_(List1 $a)'(V0, V1, V2) -> ('dn--un--<+>_Semigroup__(List1 $a)'('erased', V1, V2)).
'dn--un--__Impl_Ord_(List1 $a)'(V0, V1) -> {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V2) -> fun (V3) -> ('dn--un--==_Eq__(List1 $a)'('erased', case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V4, V5, V6, V7, V8, V9, V10, V11) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V2, V3)) end end, fun (V12) -> fun (V13) -> ('dn--un--/=_Eq__(List1 $a)'('erased', case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E8, E9, E10, E11, E12, E13, E14, E15} -> (fun (V14, V15, V16, V17, V18, V19, V20, V21) -> V14 end(E8, E9, E10, E11, E12, E13, E14, E15)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V12, V13)) end end}, fun (V22) -> fun (V23) -> ('dn--un--compare_Ord__(List1 $a)'('erased', V1, V22, V23)) end end, fun (V24) -> fun (V25) -> ('dn--un--<_Ord__(List1 $a)'('erased', V1, V24, V25)) end end, fun (V26) -> fun (V27) -> ('dn--un-->_Ord__(List1 $a)'('erased', V1, V26, V27)) end end, fun (V28) -> fun (V29) -> ('dn--un--<=_Ord__(List1 $a)'('erased', V1, V28, V29)) end end, fun (V30) -> fun (V31) -> ('dn--un-->=_Ord__(List1 $a)'('erased', V1, V30, V31)) end end, fun (V32) -> fun (V33) -> ('dn--un--max_Ord__(List1 $a)'('erased', V1, V32, V33)) end end, fun (V34) -> fun (V35) -> ('dn--un--min_Ord__(List1 $a)'('erased', V1, V34, V35)) end end}.
'dn--un--__Impl_Monad_List1'() -> {'Idris.Prelude.Interfaces.dn--un--__mkMonad', {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor__List1'('erased', 'erased', V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative__List1'('erased', V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative__List1'('erased', 'erased', V8, V9)) end end end end}, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un-->>=_Monad__List1'('erased', 'erased', V12, V13)) end end end end, fun (V14) -> fun (V15) -> ('dn--un--join_Monad__List1'('erased', V15)) end end}.
'dn--un--__Impl_Functor_List1'(V0, V1, V2, V3) -> ('dn--un--map_Functor__List1'('erased', 'erased', V2, V3)).
'dn--un--__Impl_Foldable_List1'() -> {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--foldr_Foldable__List1'('erased', 'erased', V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--foldl_Foldable__List1'('erased', 'erased', V7, V8, V9)) end end end end end}.
'dn--un--__Impl_Eq_(List1 $a)'(V0, V1) -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V2) -> fun (V3) -> ('dn--un--==_Eq__(List1 $a)'('erased', V1, V2, V3)) end end, fun (V4) -> fun (V5) -> ('dn--un--/=_Eq__(List1 $a)'('erased', V1, V4, V5)) end end}.
'dn--un--__Impl_Applicative_List1'() -> {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor__List1'('erased', 'erased', V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative__List1'('erased', V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative__List1'('erased', 'erased', V8, V9)) end end end end}.
'dn--un-->_Ord__(List1 $a)'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__(List1 $a)'('erased', V1, V2, V3)), 2)).
'dn--un-->>=_Monad__List1'(V0, V1, V2, V3) -> case V2 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V4, V5) -> ('un--appendl'('erased', (V3(V4)), ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad__List'('erased', 'erased', V5, fun (V6) -> ('un--forget'('erased', (V3(V6)))) end)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un-->=_Ord__(List1 $a)'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__(List1 $a)'('erased', V1, V2, V3)), 0)).
'dn--un--==_Eq__(List1 $a)'(V0, V1, V2, V3) -> case V2 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V4, V5) -> case V3 of {'Idris.Data.List1.:::', E2, E3} -> (fun (V6, V7) -> ('Idris.Idris2.Prelude.Basics':'un--&&'(case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E4, E5} -> (fun (V8, V9) -> ((V8(V4))(V6)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, fun () -> ('Idris.Idris2.Prelude.Types':'dn--un--==_Eq__(List $a)'('erased', V1, V5, V7)) end)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--<_Ord__(List1 $a)'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__(List1 $a)'('erased', V1, V2, V3)), 0)).
'dn--un--<=_Ord__(List1 $a)'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__(List1 $a)'('erased', V1, V2, V3)), 2)).
'dn--un--<+>_Semigroup__(List1 $a)'(V0, V1, V2) -> ('un--append'('erased', V1, V2)).
'dn--un--<*>_Applicative__List1'(V0, V1, V2, V3) -> case V2 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V4, V5) -> ('un--appendl'('erased', ('dn--un--map_Functor__List1'('erased', 'erased', V4, V3)), ('Idris.Idris2.Prelude.Types':'dn--un--<*>_Applicative__List'('erased', 'erased', V5, ('un--forget'('erased', V3)))))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--/=_Eq__(List1 $a)'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__(List1 $a)'('erased', V1, V2, V3)))).
'un--snoc'(V0, V1, V2) -> ('un--append'('erased', V1, ('un--singleton'('erased', V2)))).
'un--singleton'(V0, V1) -> {'Idris.Data.List1.:::', V1, []}.
'un--reverseOnto'(V0, V1, V2) -> case V2 of [] -> V1; [E0 | E1] -> (fun (V3, V4) -> ('un--reverseOnto'('erased', {'Idris.Data.List1.:::', V3, ('un--forget'('erased', V1))}, V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--reverse'(V0, V1) -> case V1 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V2, V3) -> ('un--reverseOnto'('erased', ('un--singleton'('erased', V2)), V3)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--last'(V0, V1) -> case V1 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V2, V3) -> ('nested--1627-291--in--un--loop'('erased', V2, V3, V2, V3)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lappend'(V0, V1, V2) -> case V1 of [] -> V2; [E0 | E1] -> (fun (V3, V4) -> ('un--append'('erased', {'Idris.Data.List1.:::', V3, V4}, V2)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--fromList'(V0, V1) -> case V1 of [] -> {'Idris.Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V2, V3) -> {'Idris.Prelude.Types.Just', {'Idris.Data.List1.:::', V2, V3}} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--forget'(V0, V1) -> case V1 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V2, V3) -> [V2 | V3] end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--foldr1\x{27}'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V5, V6) -> ('nested--1647-321--in--un--loop'('erased', 'erased', V5, V6, V3, V2, V5, V6)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--foldr1'(V0, V1, V2) -> ('un--foldr1\x{27}'('erased', 'erased', V1, fun (V3) -> V3 end, V2)).
'un--foldl1'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V5, V6) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable__List'('erased', 'erased', V3, (V2(V5)), V6)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--consInjective'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Idris.Builtin.Refl'} -> (fun () -> {'Idris.Builtin.MkPair', {'Idris.Builtin.Refl'}, {'Idris.Builtin.Refl'}} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--cons'(V0, V1, V2) -> {'Idris.Data.List1.:::', V1, ('un--forget'('erased', V2))}.
'un--appendl'(V0, V1, V2) -> case V1 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V3, V4) -> {'Idris.Data.List1.:::', V3, ('Idris.Idris2.Prelude.Types.List':'un--++'('erased', V4, V2))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--append'(V0, V1, V2) -> ('un--appendl'('erased', V1, ('un--forget'('erased', V2)))).
