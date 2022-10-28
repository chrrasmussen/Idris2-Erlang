-module('Idris.Idris2.Data.List1').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--case block in unzipWith3-4824'/7,
  'case--unzipWith3-4793'/4,
  'case--case block in unzipWith3,unzipWith3\x{27}-4734'/9,
  'case--unzipWith3,unzipWith3\x{27}-4698'/6,
  'case--case block in unzipWith-4624'/6,
  'case--unzipWith-4599'/4,
  'case--case block in unzipWith,unzipWith\x{27}-4555'/8,
  'case--unzipWith,unzipWith\x{27}-4525'/6,
  'case--max-4024'/4,
  'case--min-3994'/4,
  'case--unsnoc,go-2960'/6,
  'nested--4319-4446--in--un--zipWith3\x{27}'/10,
  'nested--4288-4398--in--un--zipWith\x{27}'/7,
  'nested--4384-4671--in--un--unzipWith3\x{27}'/4,
  'nested--4362-4504--in--un--unzipWith\x{27}'/4,
  'nested--2857-2740--in--un--loop'/6,
  'nested--2825-2691--in--un--loop'/4,
  'nested--2795-2664--in--un--loop'/4,
  'nested--3096-2938--in--un--go'/4,
  'dn--un--zip_Zippable_List1'/2,
  'dn--un--zipWith_Zippable_List1'/3,
  'dn--un--zipWith3_Zippable_List1'/4,
  'dn--un--zip3_Zippable_List1'/3,
  'dn--un--unzip_Zippable_List1'/1,
  'dn--un--unzipWith_Zippable_List1'/2,
  'dn--un--unzipWith3_Zippable_List1'/2,
  'dn--un--unzip3_Zippable_List1'/1,
  'dn--un--uninhabited_Uninhabited_(List1 $a)'/2,
  'dn--un--traverse_Traversable_List1'/3,
  'dn--un--toList_Foldable_List1'/1,
  'dn--un--show_Show_(List1 $a)'/2,
  'dn--un--showPrec_Show_(List1 $a)'/3,
  'dn--un--pure_Applicative_List1'/1,
  'dn--un--null_Foldable_List1'/1,
  'dn--un--min_Ord_(List1 $a)'/3,
  'dn--un--max_Ord_(List1 $a)'/3,
  'dn--un--map_Functor_List1'/2,
  'dn--un--join_Monad_List1'/1,
  'dn--un--foldr_Foldable_List1'/3,
  'dn--un--foldl_Foldable_List1'/3,
  'dn--un--foldlM_Foldable_List1'/4,
  'dn--un--foldMap_Foldable_List1'/3,
  'dn--un--compare_Ord_(List1 $a)'/3,
  'dn--un--__Impl_Zippable_List1'/0,
  'dn--un--__Impl_Uninhabited_(List1 $a)'/2,
  'dn--un--__Impl_Traversable_List1'/0,
  'dn--un--__Impl_Show_(List1 $a)'/1,
  'dn--un--__Impl_Semigroup_(List1 $a)'/2,
  'dn--un--__Impl_Ord_(List1 $a)'/1,
  'dn--un--__Impl_Monad_List1'/0,
  'dn--un--__Impl_Functor_List1'/4,
  'dn--un--__Impl_Foldable_List1'/0,
  'dn--un--__Impl_Eq_(List1 $a)'/1,
  'dn--un--__Impl_Applicative_List1'/0,
  'dn--un-->_Ord_(List1 $a)'/3,
  'dn--un-->>=_Monad_List1'/2,
  'dn--un-->=_Ord_(List1 $a)'/3,
  'dn--un--==_Eq_(List1 $a)'/3,
  'dn--un--<_Ord_(List1 $a)'/3,
  'dn--un--<=_Ord_(List1 $a)'/3,
  'dn--un--<+>_Semigroup_(List1 $a)'/2,
  'dn--un--<*>_Applicative_List1'/2,
  'dn--un--/=_Eq_(List1 $a)'/3,
  'un--unsnoc'/1,
  'un--snoc'/2,
  'un--singleton'/1,
  'un--reverseOnto'/2,
  'un--reverse'/1,
  'un--length'/1,
  'un--last'/1,
  'un--lappend'/2,
  'un--init'/1,
  'un--fromList'/1,
  'un--forget'/1,
  'un--foldr1By'/3,
  'un--foldr1'/2,
  'un--foldl1By'/3,
  'un--foldl1'/2,
  'un--filter'/2,
  'un--cons'/2,
  'un--appendl'/2,
  'un--++'/2
]).
'case--case block in unzipWith3-4824'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Builtin.MkPair', V7, V8} -> case V8 of {'Builtin.MkPair', V9, V10} -> {'Builtin.MkPair', {'Data.List1.:::', V3, V7}, {'Builtin.MkPair', {'Data.List1.:::', V4, V9}, {'Data.List1.:::', V5, V10}}} end end.
'case--unzipWith3-4793'(V0, V1, V2, V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> case V5 of {'Builtin.MkPair', V6, V7} -> case ('nested--4384-4671--in--un--unzipWith3\x{27}'(V0, V1, V2, V1)) of {'Builtin.MkPair', V8, V9} -> case V9 of {'Builtin.MkPair', V10, V11} -> {'Builtin.MkPair', {'Data.List1.:::', V4, V8}, {'Builtin.MkPair', {'Data.List1.:::', V6, V10}, {'Data.List1.:::', V7, V11}}} end end end end.
'case--case block in unzipWith3,unzipWith3\x{27}-4734'(V0, V1, V2, V3, V4, V5, V6, V7, V8) -> case V8 of {'Builtin.MkPair', V9, V10} -> case V10 of {'Builtin.MkPair', V11, V12} -> {'Builtin.MkPair', [V5 | V9], {'Builtin.MkPair', [V6 | V11], [V7 | V12]}} end end.
'case--unzipWith3,unzipWith3\x{27}-4698'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Builtin.MkPair', V6, V7} -> case V7 of {'Builtin.MkPair', V8, V9} -> case ('nested--4384-4671--in--un--unzipWith3\x{27}'(V0, V1, V2, V4)) of {'Builtin.MkPair', V10, V11} -> case V11 of {'Builtin.MkPair', V12, V13} -> {'Builtin.MkPair', [V6 | V10], {'Builtin.MkPair', [V8 | V12], [V9 | V13]}} end end end end.
'case--case block in unzipWith-4624'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Builtin.MkPair', V6, V7} -> {'Builtin.MkPair', {'Data.List1.:::', V3, V6}, {'Data.List1.:::', V4, V7}} end.
'case--unzipWith-4599'(V0, V1, V2, V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> case ('nested--4362-4504--in--un--unzipWith\x{27}'(V0, V1, V2, V1)) of {'Builtin.MkPair', V6, V7} -> {'Builtin.MkPair', {'Data.List1.:::', V4, V6}, {'Data.List1.:::', V5, V7}} end end.
'case--case block in unzipWith,unzipWith\x{27}-4555'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V7 of {'Builtin.MkPair', V8, V9} -> {'Builtin.MkPair', [V5 | V8], [V6 | V9]} end.
'case--unzipWith,unzipWith\x{27}-4525'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Builtin.MkPair', V6, V7} -> case ('nested--4362-4504--in--un--unzipWith\x{27}'(V0, V1, V2, V4)) of {'Builtin.MkPair', V8, V9} -> {'Builtin.MkPair', [V6 | V8], [V7 | V9]} end end.
'case--max-4024'(V0, V1, V2, V3) -> case V3 of 1 -> V2; 0 -> V1 end.
'case--min-3994'(V0, V1, V2, V3) -> case V3 of 1 -> V2; 0 -> V1 end.
'case--unsnoc,go-2960'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Builtin.MkPair', V6, V7} -> {'Builtin.MkPair', [V4 | V6], V7} end.
'nested--4319-4446--in--un--zipWith3\x{27}'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9) -> case V7 of [] -> []; _ -> case V8 of [] -> []; _ -> case V9 of [] -> []; _ -> case V7 of [E0 | E1] -> (fun (V10, V11) -> case V8 of [E2 | E3] -> (fun (V12, V13) -> case V9 of [E4 | E5] -> (fun (V14, V15) -> [(((V6(V10))(V12))(V14)) | ('nested--4319-4446--in--un--zipWith3\x{27}'(V0, V1, V2, V3, V4, V5, V6, V11, V13, V15))] end(E4, E5)) end end(E2, E3)) end end(E0, E1)) end end end end.
'nested--4288-4398--in--un--zipWith\x{27}'(V0, V1, V2, V3, V4, V5, V6) -> case V5 of [] -> []; _ -> case V6 of [] -> []; _ -> case V5 of [E0 | E1] -> (fun (V7, V8) -> case V6 of [E2 | E3] -> (fun (V9, V10) -> [((V4(V7))(V9)) | ('nested--4288-4398--in--un--zipWith\x{27}'(V0, V1, V2, V3, V4, V8, V10))] end(E2, E3)) end end(E0, E1)) end end end.
'nested--4384-4671--in--un--unzipWith3\x{27}'(V0, V1, V2, V3) -> case V3 of [] -> {'Builtin.MkPair', [], {'Builtin.MkPair', [], []}}; [E0 | E1] -> (fun (V4, V5) -> case (V2(V4)) of {'Builtin.MkPair', V6, V7} -> case V7 of {'Builtin.MkPair', V8, V9} -> case ('nested--4384-4671--in--un--unzipWith3\x{27}'(V0, V1, V2, V5)) of {'Builtin.MkPair', V10, V11} -> case V11 of {'Builtin.MkPair', V12, V13} -> {'Builtin.MkPair', [V6 | V10], {'Builtin.MkPair', [V8 | V12], [V9 | V13]}} end end end end end(E0, E1)) end.
'nested--4362-4504--in--un--unzipWith\x{27}'(V0, V1, V2, V3) -> case V3 of [] -> {'Builtin.MkPair', [], []}; [E0 | E1] -> (fun (V4, V5) -> case (V2(V4)) of {'Builtin.MkPair', V6, V7} -> case ('nested--4362-4504--in--un--unzipWith\x{27}'(V0, V1, V2, V5)) of {'Builtin.MkPair', V8, V9} -> {'Builtin.MkPair', [V6 | V8], [V7 | V9]} end end end(E0, E1)) end.
'nested--2857-2740--in--un--loop'(V0, V1, V2, V3, V4, V5) -> case V5 of [] -> (V2(V4)); [E0 | E1] -> (fun (V6, V7) -> ((V3(V4))(('nested--2857-2740--in--un--loop'(V0, V1, V2, V3, V6, V7)))) end(E0, E1)) end.
'nested--2825-2691--in--un--loop'(V0, V1, V2, V3) -> case V3 of [] -> []; [E0 | E1] -> (fun (V4, V5) -> [V2 | ('nested--2825-2691--in--un--loop'(V0, V1, V4, V5))] end(E0, E1)) end.
'nested--2795-2664--in--un--loop'(V0, V1, V2, V3) -> case V3 of [] -> V2; [E0 | E1] -> (fun (V4, V5) -> ('nested--2795-2664--in--un--loop'(V0, V1, V4, V5)) end(E0, E1)) end.
'nested--3096-2938--in--un--go'(V0, V1, V2, V3) -> case V3 of [] -> {'Builtin.MkPair', [], V2}; [E0 | E1] -> (fun (V4, V5) -> case ('nested--3096-2938--in--un--go'(V0, V1, V4, V5)) of {'Builtin.MkPair', V6, V7} -> {'Builtin.MkPair', [V2 | V6], V7} end end(E0, E1)) end.
'dn--un--zip_Zippable_List1'(V0, V1) -> ('dn--un--zipWith_Zippable_List1'(fun (V2) -> fun (V3) -> {'Builtin.MkPair', V2, V3} end end, V0, V1)).
'dn--un--zipWith_Zippable_List1'(V0, V1, V2) -> case V1 of {'Data.List1.:::', V3, V4} -> case V2 of {'Data.List1.:::', V5, V6} -> {'Data.List1.:::', ((V0(V3))(V5)), ('nested--4288-4398--in--un--zipWith\x{27}'(V3, V4, V5, V6, V0, V4, V6))} end end.
'dn--un--zipWith3_Zippable_List1'(V0, V1, V2, V3) -> case V1 of {'Data.List1.:::', V4, V5} -> case V2 of {'Data.List1.:::', V6, V7} -> case V3 of {'Data.List1.:::', V8, V9} -> {'Data.List1.:::', (((V0(V4))(V6))(V8)), ('nested--4319-4446--in--un--zipWith3\x{27}'(V4, V5, V6, V7, V8, V9, V0, V5, V7, V9))} end end end.
'dn--un--zip3_Zippable_List1'(V0, V1, V2) -> ('dn--un--zipWith3_Zippable_List1'(fun (V3) -> fun (V4) -> fun (V5) -> {'Builtin.MkPair', V3, {'Builtin.MkPair', V4, V5}} end end end, V0, V1, V2)).
'dn--un--unzip_Zippable_List1'(V0) -> ('dn--un--unzipWith_Zippable_List1'(fun (V1) -> V1 end, V0)).
'dn--un--unzipWith_Zippable_List1'(V0, V1) -> case V1 of {'Data.List1.:::', V2, V3} -> case (V0(V2)) of {'Builtin.MkPair', V4, V5} -> case ('nested--4362-4504--in--un--unzipWith\x{27}'(V2, V3, V0, V3)) of {'Builtin.MkPair', V6, V7} -> {'Builtin.MkPair', {'Data.List1.:::', V4, V6}, {'Data.List1.:::', V5, V7}} end end end.
'dn--un--unzipWith3_Zippable_List1'(V0, V1) -> case V1 of {'Data.List1.:::', V2, V3} -> case (V0(V2)) of {'Builtin.MkPair', V4, V5} -> case V5 of {'Builtin.MkPair', V6, V7} -> case ('nested--4384-4671--in--un--unzipWith3\x{27}'(V2, V3, V0, V3)) of {'Builtin.MkPair', V8, V9} -> case V9 of {'Builtin.MkPair', V10, V11} -> {'Builtin.MkPair', {'Data.List1.:::', V4, V8}, {'Builtin.MkPair', {'Data.List1.:::', V6, V10}, {'Data.List1.:::', V7, V11}}} end end end end end.
'dn--un--unzip3_Zippable_List1'(V0) -> ('dn--un--unzipWith3_Zippable_List1'(fun (V1) -> V1 end, V0)).
'dn--un--uninhabited_Uninhabited_(List1 $a)'(V0, V1) -> case V1 of {'Data.List1.:::', V2, V3} -> (begin (V4 = V0), fun (V5) -> (V4(V5)) end end(V2)) end.
'dn--un--traverse_Traversable_List1'(V0, V1, V2) -> case V2 of {'Data.List1.:::', V3, V4} -> case V0 of {'Prelude.Interfaces.MkApplicative', V5, V6, V7} -> ((((V7('erased'))('erased'))(case V0 of {'Prelude.Interfaces.MkApplicative', V8, V9, V10} -> ((((V10('erased'))('erased'))(case V0 of {'Prelude.Interfaces.MkApplicative', V11, V12, V13} -> ((V12('erased'))(fun (V14) -> fun (V15) -> {'Data.List1.:::', V14, V15} end end)) end))((V1(V3)))) end))(('Idris.Idris2.Prelude.Types':'dn--un--traverse_Traversable_List'(V0, V1, V4)))) end end.
'dn--un--toList_Foldable_List1'(V0) -> ('un--forget'(V0)).
'dn--un--show_Show_(List1 $a)'(V0, V1) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_(List $a)'(V0, ('un--forget'(V1)))).
'dn--un--showPrec_Show_(List1 $a)'(V0, V1, V2) -> ('dn--un--show_Show_(List1 $a)'(V0, V2)).
'dn--un--pure_Applicative_List1'(V0) -> ('un--singleton'(V0)).
'dn--un--null_Foldable_List1'(V0) -> 0.
'dn--un--min_Ord_(List1 $a)'(V0, V1, V2) -> case ('dn--un--<_Ord_(List1 $a)'(V0, V1, V2)) of 1 -> V1; 0 -> V2 end.
'dn--un--max_Ord_(List1 $a)'(V0, V1, V2) -> case ('dn--un-->_Ord_(List1 $a)'(V0, V1, V2)) of 1 -> V1; 0 -> V2 end.
'dn--un--map_Functor_List1'(V0, V1) -> case V1 of {'Data.List1.:::', V2, V3} -> {'Data.List1.:::', (V0(V2)), ((begin (V8 = fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V6, V7)) end end end end), fun (V9) -> fun (V10) -> ((((V8('erased'))('erased'))(V9))(V10)) end end end(V0))(V3))} end.
'dn--un--join_Monad_List1'(V0) -> ('dn--un-->>=_Monad_List1'(V0, fun (V1) -> V1 end)).
'dn--un--foldr_Foldable_List1'(V0, V1, V2) -> case V2 of {'Data.List1.:::', V3, V4} -> ((V0(V3))(('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V0, V1, V4)))) end.
'dn--un--foldl_Foldable_List1'(V0, V1, V2) -> case V2 of {'Data.List1.:::', V3, V4} -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V0, ((V0(V1))(V3)), V4)) end.
'dn--un--foldlM_Foldable_List1'(V0, V1, V2, V3) -> ('dn--un--foldl_Foldable_List1'(fun (V4) -> fun (V5) -> case V0 of {'Prelude.Interfaces.MkMonad', V6, V7, V8} -> ((((V7('erased'))('erased'))(V4))(fun (V9) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(V1, V5, V9)) end)) end end end, case V0 of {'Prelude.Interfaces.MkMonad', V10, V11, V12} -> case V10 of {'Prelude.Interfaces.MkApplicative', V13, V14, V15} -> ((V14('erased'))(V2)) end end, V3)).
'dn--un--foldMap_Foldable_List1'(V0, V1, V2) -> case V2 of {'Data.List1.:::', V3, V4} -> ((begin (V7 = case V0 of {'Prelude.Interfaces.MkMonoid', V5, V6} -> V5 end), fun (V8) -> fun (V9) -> ((V7(V8))(V9)) end end end((V1(V3))))(('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V0, V1, V4)))) end.
'dn--un--compare_Ord_(List1 $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types':'dn--un--compare_Ord_(List $a)'(V0, ('un--forget'(V1)), ('un--forget'(V2)))).
'dn--un--__Impl_Zippable_List1'() -> {'Data.Zippable.dn--un--__mkZippable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('dn--un--zipWith_Zippable_List1'(V3, V4, V5)) end end end end end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--zip_Zippable_List1'(V8, V9)) end end end end, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> ('dn--un--zipWith3_Zippable_List1'(V14, V15, V16, V17)) end end end end end end end end, fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('dn--un--zip3_Zippable_List1'(V21, V22, V23)) end end end end end end, fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> ('dn--un--unzipWith_Zippable_List1'(V27, V28)) end end end end end, fun (V29) -> fun (V30) -> fun (V31) -> ('dn--un--unzip_Zippable_List1'(V31)) end end end, fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> fun (V36) -> fun (V37) -> ('dn--un--unzipWith3_Zippable_List1'(V36, V37)) end end end end end end, fun (V38) -> fun (V39) -> fun (V40) -> fun (V41) -> ('dn--un--unzip3_Zippable_List1'(V41)) end end end end}.
'dn--un--__Impl_Uninhabited_(List1 $a)'(V0, V1) -> ('dn--un--uninhabited_Uninhabited_(List1 $a)'(V0, V1)).
'dn--un--__Impl_Traversable_List1'() -> {'Prelude.Interfaces.MkTraversable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_List1'(V2, V3)) end end end end, {'Prelude.Interfaces.MkFoldable', fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('dn--un--foldr_Foldable_List1'(V6, V7, V8)) end end end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--foldl_Foldable_List1'(V11, V12, V13)) end end end end end, fun (V14) -> fun (V15) -> 0 end end, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> ('dn--un--foldlM_Foldable_List1'(V19, V20, V21, V22)) end end end end end end end, fun (V23) -> fun (V24) -> ('un--forget'(V24)) end end, fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> ('dn--un--foldMap_Foldable_List1'(V27, V28, V29)) end end end end end}, fun (V30) -> fun (V31) -> fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> ('dn--un--traverse_Traversable_List1'(V33, V34, V35)) end end end end end end}.
'dn--un--__Impl_Show_(List1 $a)'(V0) -> {'Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_(List1 $a)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_(List1 $a)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Semigroup_(List1 $a)'(V0, V1) -> ('un--++'(V0, V1)).
'dn--un--__Impl_Ord_(List1 $a)'(V0) -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_(List1 $a)'(case V0 of {'Prelude.EqOrd.MkOrd', V3, V4, V5, V6, V7, V8, V9, V10} -> V3 end, V1, V2)) end end, fun (V11) -> fun (V12) -> ('dn--un--/=_Eq_(List1 $a)'(case V0 of {'Prelude.EqOrd.MkOrd', V13, V14, V15, V16, V17, V18, V19, V20} -> V13 end, V11, V12)) end end}, fun (V21) -> fun (V22) -> ('dn--un--compare_Ord_(List1 $a)'(V0, V21, V22)) end end, fun (V23) -> fun (V24) -> ('dn--un--<_Ord_(List1 $a)'(V0, V23, V24)) end end, fun (V25) -> fun (V26) -> ('dn--un-->_Ord_(List1 $a)'(V0, V25, V26)) end end, fun (V27) -> fun (V28) -> ('dn--un--<=_Ord_(List1 $a)'(V0, V27, V28)) end end, fun (V29) -> fun (V30) -> ('dn--un-->=_Ord_(List1 $a)'(V0, V29, V30)) end end, fun (V31) -> fun (V32) -> ('dn--un--max_Ord_(List1 $a)'(V0, V31, V32)) end end, fun (V33) -> fun (V34) -> ('dn--un--min_Ord_(List1 $a)'(V0, V33, V34)) end end}.
'dn--un--__Impl_Monad_List1'() -> {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_List1'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('un--singleton'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_List1'(V8, V9)) end end end end}, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un-->>=_Monad_List1'(V12, V13)) end end end end, fun (V14) -> fun (V15) -> ('dn--un--join_Monad_List1'(V15)) end end}.
'dn--un--__Impl_Functor_List1'(V0, V1, V2, V3) -> ('dn--un--map_Functor_List1'(V2, V3)).
'dn--un--__Impl_Foldable_List1'() -> {'Prelude.Interfaces.MkFoldable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--foldr_Foldable_List1'(V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--foldl_Foldable_List1'(V7, V8, V9)) end end end end end, fun (V10) -> fun (V11) -> 0 end end, fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> ('dn--un--foldlM_Foldable_List1'(V15, V16, V17, V18)) end end end end end end end, fun (V19) -> fun (V20) -> ('un--forget'(V20)) end end, fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> ('dn--un--foldMap_Foldable_List1'(V23, V24, V25)) end end end end end}.
'dn--un--__Impl_Eq_(List1 $a)'(V0) -> {'Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_(List1 $a)'(V0, V1, V2)) end end, fun (V3) -> fun (V4) -> ('dn--un--/=_Eq_(List1 $a)'(V0, V3, V4)) end end}.
'dn--un--__Impl_Applicative_List1'() -> {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_List1'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('un--singleton'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_List1'(V8, V9)) end end end end}.
'dn--un-->_Ord_(List1 $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(List1 $a)'(V0, V1, V2)), 2)).
'dn--un-->>=_Monad_List1'(V0, V1) -> case V0 of {'Data.List1.:::', V2, V3} -> ('un--appendl'((V1(V2)), ('Idris.Idris2.Prelude.Types':'un--listBind'(V3, fun (V4) -> ('un--forget'((V1(V4)))) end)))) end.
'dn--un-->=_Ord_(List1 $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(List1 $a)'(V0, V1, V2)), 0)).
'dn--un--==_Eq_(List1 $a)'(V0, V1, V2) -> case V1 of {'Data.List1.:::', V3, V4} -> case V2 of {'Data.List1.:::', V5, V6} -> case case V0 of {'Prelude.EqOrd.MkEq', V7, V8} -> ((V7(V3))(V5)) end of 1 -> ('Idris.Idris2.Prelude.Types':'dn--un--==_Eq_(List $a)'(V0, V4, V6)); 0 -> 0 end end end.
'dn--un--<_Ord_(List1 $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(List1 $a)'(V0, V1, V2)), 0)).
'dn--un--<=_Ord_(List1 $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(List1 $a)'(V0, V1, V2)), 2)).
'dn--un--<+>_Semigroup_(List1 $a)'(V0, V1) -> ('un--++'(V0, V1)).
'dn--un--<*>_Applicative_List1'(V0, V1) -> case V0 of {'Data.List1.:::', V2, V3} -> ('un--appendl'(('dn--un--map_Functor_List1'(V2, V1)), ('Idris.Idris2.Prelude.Types':'dn--un--<*>_Applicative_List'(V3, ('un--forget'(V1)))))) end.
'dn--un--/=_Eq_(List1 $a)'(V0, V1, V2) -> case ('dn--un--==_Eq_(List1 $a)'(V0, V1, V2)) of 1 -> 0; 0 -> 1 end.
'un--unsnoc'(V0) -> case V0 of {'Data.List1.:::', V1, V2} -> ('nested--3096-2938--in--un--go'(V1, V2, V1, V2)) end.
'un--snoc'(V0, V1) -> ('un--++'(V0, ('un--singleton'(V1)))).
'un--singleton'(V0) -> {'Data.List1.:::', V0, []}.
'un--reverseOnto'(V0, V1) -> case V1 of [] -> V0; [E0 | E1] -> (fun (V2, V3) -> ('un--reverseOnto'({'Data.List1.:::', V2, ('un--forget'(V0))}, V3)) end(E0, E1)) end.
'un--reverse'(V0) -> case V0 of {'Data.List1.:::', V1, V2} -> ('un--reverseOnto'(('un--singleton'(V1)), V2)) end.
'un--length'(V0) -> case V0 of {'Data.List1.:::', V1, V2} -> (('Idris.Idris2.Prelude.Types.List':'un--lengthTR'(V2)) + 1) end.
'un--last'(V0) -> case V0 of {'Data.List1.:::', V1, V2} -> ('nested--2795-2664--in--un--loop'(V1, V2, V1, V2)) end.
'un--lappend'(V0, V1) -> case V0 of [] -> V1; [E0 | E1] -> (fun (V2, V3) -> ('un--++'({'Data.List1.:::', V2, V3}, V1)) end(E0, E1)) end.
'un--init'(V0) -> case V0 of {'Data.List1.:::', V1, V2} -> ('nested--2825-2691--in--un--loop'(V1, V2, V1, V2)) end.
'un--fromList'(V0) -> case V0 of [] -> {'Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V1, V2) -> {'Prelude.Types.Just', {'Data.List1.:::', V1, V2}} end(E0, E1)) end.
'un--forget'(V0) -> case V0 of {'Data.List1.:::', V1, V2} -> [V1 | V2] end.
'un--foldr1By'(V0, V1, V2) -> case V2 of {'Data.List1.:::', V3, V4} -> ('nested--2857-2740--in--un--loop'(V3, V4, V1, V0, V3, V4)) end.
'un--foldr1'(V0, V1) -> ('un--foldr1By'(V0, fun (V2) -> V2 end, V1)).
'un--foldl1By'(V0, V1, V2) -> case V2 of {'Data.List1.:::', V3, V4} -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V0, (V1(V3)), V4)) end.
'un--foldl1'(V0, V1) -> ('un--foldl1By'(V0, fun (V2) -> V2 end, V1)).
'un--filter'(V0, V1) -> ('un--fromList'(('Idris.Idris2.Prelude.Types.List':'un--filterAppend'({'Prelude.Basics.Lin'}, V0, ('un--forget'(V1)))))).
'un--cons'(V0, V1) -> {'Data.List1.:::', V0, ('un--forget'(V1))}.
'un--appendl'(V0, V1) -> case V0 of {'Data.List1.:::', V2, V3} -> {'Data.List1.:::', V2, ('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(V3, V1))} end.
'un--++'(V0, V1) -> ('un--appendl'(V0, ('un--forget'(V1)))).
