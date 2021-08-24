-module('Idris.Idris2.Data.List1').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--case block in unzipWith3-2292'/7,
  'case--unzipWith3-2263'/4,
  'case--case block in unzipWith3,unzipWith3\x{27}-2206'/9,
  'case--unzipWith3,unzipWith3\x{27}-2172'/6,
  'case--case block in unzipWith-2104'/6,
  'case--unzipWith-2081'/4,
  'case--case block in unzipWith,unzipWith\x{27}-2039'/8,
  'case--unzipWith,unzipWith\x{27}-2011'/6,
  'case--unsnoc,go-955'/6,
  'nested--3518-1947--in--un--zipWith3\x{27}'/10,
  'nested--3510-1906--in--un--zipWith\x{27}'/7,
  'nested--3537-2150--in--un--unzipWith3\x{27}'/4,
  'nested--3529-1995--in--un--unzipWith\x{27}'/4,
  'nested--2565-848--in--un--loop'/6,
  'nested--2544-825--in--un--loop'/4,
  'nested--2525-809--in--un--loop'/4,
  'nested--2682-941--in--un--go'/4,
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
  'un--last'/1,
  'un--lappend'/2,
  'un--init'/1,
  'un--fromList'/1,
  'un--forget'/1,
  'un--foldr1By'/3,
  'un--foldr1'/2,
  'un--foldl1By'/3,
  'un--foldl1'/2,
  'un--consInjective'/1,
  'un--cons'/2,
  'un--appendl'/2,
  'un--++'/2
]).
'case--case block in unzipWith3-2292'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V7, V8) -> case V8 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V9, V10) -> {'Idris.Builtin.MkPair', {'Idris.Data.List1.:::', V3, V7}, {'Idris.Builtin.MkPair', {'Idris.Data.List1.:::', V4, V9}, {'Idris.Data.List1.:::', V5, V10}}} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--unzipWith3-2263'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V4, V5) -> case V5 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V6, V7) -> case ('nested--3537-2150--in--un--unzipWith3\x{27}'(V0, V1, V2, V1)) of {'Idris.Builtin.MkPair', E4, E5} -> (fun (V8, V9) -> case V9 of {'Idris.Builtin.MkPair', E6, E7} -> (fun (V10, V11) -> {'Idris.Builtin.MkPair', {'Idris.Data.List1.:::', V4, V8}, {'Idris.Builtin.MkPair', {'Idris.Data.List1.:::', V6, V10}, {'Idris.Data.List1.:::', V7, V11}}} end(E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in unzipWith3,unzipWith3\x{27}-2206'(V0, V1, V2, V3, V4, V5, V6, V7, V8) -> case V8 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V9, V10) -> case V10 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V11, V12) -> {'Idris.Builtin.MkPair', [V5 | V9], {'Idris.Builtin.MkPair', [V6 | V11], [V7 | V12]}} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--unzipWith3,unzipWith3\x{27}-2172'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V6, V7) -> case V7 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V8, V9) -> case ('nested--3537-2150--in--un--unzipWith3\x{27}'(V0, V1, V2, V4)) of {'Idris.Builtin.MkPair', E4, E5} -> (fun (V10, V11) -> case V11 of {'Idris.Builtin.MkPair', E6, E7} -> (fun (V12, V13) -> {'Idris.Builtin.MkPair', [V6 | V10], {'Idris.Builtin.MkPair', [V8 | V12], [V9 | V13]}} end(E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in unzipWith-2104'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V6, V7) -> {'Idris.Builtin.MkPair', {'Idris.Data.List1.:::', V3, V6}, {'Idris.Data.List1.:::', V4, V7}} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--unzipWith-2081'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V4, V5) -> case ('nested--3529-1995--in--un--unzipWith\x{27}'(V0, V1, V2, V1)) of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V6, V7) -> {'Idris.Builtin.MkPair', {'Idris.Data.List1.:::', V4, V6}, {'Idris.Data.List1.:::', V5, V7}} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in unzipWith,unzipWith\x{27}-2039'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V7 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V8, V9) -> {'Idris.Builtin.MkPair', [V5 | V8], [V6 | V9]} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--unzipWith,unzipWith\x{27}-2011'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V6, V7) -> case ('nested--3529-1995--in--un--unzipWith\x{27}'(V0, V1, V2, V4)) of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V8, V9) -> {'Idris.Builtin.MkPair', [V6 | V8], [V7 | V9]} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--unsnoc,go-955'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V6, V7) -> {'Idris.Builtin.MkPair', [V4 | V6], V7} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--3518-1947--in--un--zipWith3\x{27}'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9) -> case V7 of [] -> []; _ -> case V8 of [] -> []; _ -> case V9 of [] -> []; _ -> case V7 of [E0 | E1] -> (fun (V10, V11) -> case V8 of [E2 | E3] -> (fun (V12, V13) -> case V9 of [E4 | E5] -> (fun (V14, V15) -> [(((V6(V10))(V12))(V14)) | ('nested--3518-1947--in--un--zipWith3\x{27}'(V0, V1, V2, V3, V4, V5, V6, V11, V13, V15))] end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end.
'nested--3510-1906--in--un--zipWith\x{27}'(V0, V1, V2, V3, V4, V5, V6) -> case V5 of [] -> []; _ -> case V6 of [] -> []; _ -> case V5 of [E0 | E1] -> (fun (V7, V8) -> case V6 of [E2 | E3] -> (fun (V9, V10) -> [((V4(V7))(V9)) | ('nested--3510-1906--in--un--zipWith\x{27}'(V0, V1, V2, V3, V4, V8, V10))] end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'nested--3537-2150--in--un--unzipWith3\x{27}'(V0, V1, V2, V3) -> case V3 of [] -> {'Idris.Builtin.MkPair', [], {'Idris.Builtin.MkPair', [], []}}; [E0 | E1] -> (fun (V4, V5) -> case (V2(V4)) of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V6, V7) -> case V7 of {'Idris.Builtin.MkPair', E4, E5} -> (fun (V8, V9) -> case ('nested--3537-2150--in--un--unzipWith3\x{27}'(V0, V1, V2, V5)) of {'Idris.Builtin.MkPair', E6, E7} -> (fun (V10, V11) -> case V11 of {'Idris.Builtin.MkPair', E8, E9} -> (fun (V12, V13) -> {'Idris.Builtin.MkPair', [V6 | V10], {'Idris.Builtin.MkPair', [V8 | V12], [V9 | V13]}} end(E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--3529-1995--in--un--unzipWith\x{27}'(V0, V1, V2, V3) -> case V3 of [] -> {'Idris.Builtin.MkPair', [], []}; [E0 | E1] -> (fun (V4, V5) -> case (V2(V4)) of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V6, V7) -> case ('nested--3529-1995--in--un--unzipWith\x{27}'(V0, V1, V2, V5)) of {'Idris.Builtin.MkPair', E4, E5} -> (fun (V8, V9) -> {'Idris.Builtin.MkPair', [V6 | V8], [V7 | V9]} end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--2565-848--in--un--loop'(V0, V1, V2, V3, V4, V5) -> case V5 of [] -> (V2(V4)); [E0 | E1] -> (fun (V6, V7) -> ((V3(V4))(('nested--2565-848--in--un--loop'(V0, V1, V2, V3, V6, V7)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--2544-825--in--un--loop'(V0, V1, V2, V3) -> case V3 of [] -> []; [E0 | E1] -> (fun (V4, V5) -> [V2 | ('nested--2544-825--in--un--loop'(V0, V1, V4, V5))] end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--2525-809--in--un--loop'(V0, V1, V2, V3) -> case V3 of [] -> V2; [E0 | E1] -> (fun (V4, V5) -> ('nested--2525-809--in--un--loop'(V0, V1, V4, V5)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--2682-941--in--un--go'(V0, V1, V2, V3) -> case V3 of [] -> {'Idris.Builtin.MkPair', [], V2}; [E0 | E1] -> (fun (V4, V5) -> case ('nested--2682-941--in--un--go'(V0, V1, V4, V5)) of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V6, V7) -> {'Idris.Builtin.MkPair', [V2 | V6], V7} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--zip_Zippable_List1'(V0, V1) -> ('dn--un--zipWith_Zippable_List1'(fun (V2) -> fun (V3) -> {'Idris.Builtin.MkPair', V2, V3} end end, V0, V1)).
'dn--un--zipWith_Zippable_List1'(V0, V1, V2) -> case V1 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V3, V4) -> case V2 of {'Idris.Data.List1.:::', E2, E3} -> (fun (V5, V6) -> {'Idris.Data.List1.:::', ((V0(V3))(V5)), ('nested--3510-1906--in--un--zipWith\x{27}'(V3, V4, V5, V6, V0, V4, V6))} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--zipWith3_Zippable_List1'(V0, V1, V2, V3) -> case V1 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V4, V5) -> case V2 of {'Idris.Data.List1.:::', E2, E3} -> (fun (V6, V7) -> case V3 of {'Idris.Data.List1.:::', E4, E5} -> (fun (V8, V9) -> {'Idris.Data.List1.:::', (((V0(V4))(V6))(V8)), ('nested--3518-1947--in--un--zipWith3\x{27}'(V4, V5, V6, V7, V8, V9, V0, V5, V7, V9))} end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--zip3_Zippable_List1'(V0, V1, V2) -> ('dn--un--zipWith3_Zippable_List1'(fun (V3) -> fun (V4) -> fun (V5) -> {'Idris.Builtin.MkPair', V3, {'Idris.Builtin.MkPair', V4, V5}} end end end, V0, V1, V2)).
'dn--un--unzip_Zippable_List1'(V0) -> ('dn--un--unzipWith_Zippable_List1'(fun (V1) -> V1 end, V0)).
'dn--un--unzipWith_Zippable_List1'(V0, V1) -> case V1 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V2, V3) -> case (V0(V2)) of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V4, V5) -> case ('nested--3529-1995--in--un--unzipWith\x{27}'(V2, V3, V0, V3)) of {'Idris.Builtin.MkPair', E4, E5} -> (fun (V6, V7) -> {'Idris.Builtin.MkPair', {'Idris.Data.List1.:::', V4, V6}, {'Idris.Data.List1.:::', V5, V7}} end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--unzipWith3_Zippable_List1'(V0, V1) -> case V1 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V2, V3) -> case (V0(V2)) of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V4, V5) -> case V5 of {'Idris.Builtin.MkPair', E4, E5} -> (fun (V6, V7) -> case ('nested--3537-2150--in--un--unzipWith3\x{27}'(V2, V3, V0, V3)) of {'Idris.Builtin.MkPair', E6, E7} -> (fun (V8, V9) -> case V9 of {'Idris.Builtin.MkPair', E8, E9} -> (fun (V10, V11) -> {'Idris.Builtin.MkPair', {'Idris.Data.List1.:::', V4, V8}, {'Idris.Builtin.MkPair', {'Idris.Data.List1.:::', V6, V10}, {'Idris.Data.List1.:::', V7, V11}}} end(E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--unzip3_Zippable_List1'(V0) -> ('dn--un--unzipWith3_Zippable_List1'(fun (V1) -> V1 end, V0)).
'dn--un--uninhabited_Uninhabited_(List1 $a)'(V0, V1) -> case V1 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V2, V3) -> (V0(V2)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--traverse_Traversable_List1'(V0, V1, V2) -> case V2 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V3, V4) -> case V0 of {'Idris.Prelude.Interfaces.MkApplicative', E2, E3, E4} -> (fun (V5, V6, V7) -> ((((V7('erased'))('erased'))(case V0 of {'Idris.Prelude.Interfaces.MkApplicative', E5, E6, E7} -> (fun (V8, V9, V10) -> ((((V10('erased'))('erased'))(case V0 of {'Idris.Prelude.Interfaces.MkApplicative', E8, E9, E10} -> (fun (V11, V12, V13) -> ((V12('erased'))(fun (V14) -> fun (V15) -> {'Idris.Data.List1.:::', V14, V15} end end)) end(E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end))((V1(V3)))) end(E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end))(('Idris.Idris2.Prelude.Types':'dn--un--traverse_Traversable_List'(V0, V1, V4)))) end(E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--toList_Foldable_List1'(V0) -> ('un--forget'(V0)).
'dn--un--show_Show_(List1 $a)'(V0, V1) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_(List $a)'(V0, ('un--forget'(V1)))).
'dn--un--showPrec_Show_(List1 $a)'(V0, V1, V2) -> ('dn--un--show_Show_(List1 $a)'(V0, V2)).
'dn--un--pure_Applicative_List1'(V0) -> ('un--singleton'(V0)).
'dn--un--null_Foldable_List1'(V0) -> fun () -> 0 end.
'dn--un--min_Ord_(List1 $a)'(V0, V1, V2) -> case ('dn--un--<_Ord_(List1 $a)'(V0, V1, V2)) of 1 -> V1; 0 -> V2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_(List1 $a)'(V0, V1, V2) -> case ('dn--un-->_Ord_(List1 $a)'(V0, V1, V2)) of 1 -> V1; 0 -> V2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--map_Functor_List1'(V0, V1) -> case V1 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V2, V3) -> {'Idris.Data.List1.:::', (V0(V2)), ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_List'(V0, V3))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--join_Monad_List1'(V0) -> ('dn--un-->>=_Monad_List1'(V0, fun (V1) -> V1 end)).
'dn--un--foldr_Foldable_List1'(V0, V1, V2) -> case V2 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V3, V4) -> ((V0(V3))(('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V0, V1, V4)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--foldl_Foldable_List1'(V0, V1, V2) -> case V2 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V3, V4) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V0, ((V0(V1))(V3)), V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--foldlM_Foldable_List1'(V0, V1, V2, V3) -> ('dn--un--foldl_Foldable_List1'(fun (V4) -> fun (V5) -> case V0 of {'Idris.Prelude.Interfaces.MkMonad', E0, E1, E2} -> (fun (V6, V7, V8) -> ((((V7('erased'))('erased'))(V4))(fun (V9) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(V1, V5, V9)) end)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, case V0 of {'Idris.Prelude.Interfaces.MkMonad', E3, E4, E5} -> (fun (V10, V11, V12) -> case V10 of {'Idris.Prelude.Interfaces.MkApplicative', E6, E7, E8} -> (fun (V13, V14, V15) -> ((V14('erased'))(V2)) end(E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V3)).
'dn--un--foldMap_Foldable_List1'(V0, V1, V2) -> case V2 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V3, V4) -> case V0 of {'Idris.Prelude.Interfaces.MkMonoid', E2, E3} -> (fun (V5, V6) -> ((V5((V1(V3))))(('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V0, V1, V4)))) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--compare_Ord_(List1 $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types':'dn--un--compare_Ord_(List $a)'(V0, ('un--forget'(V1)), ('un--forget'(V2)))).
'dn--un--__Impl_Zippable_List1'() -> {'Idris.Data.Zippable.dn--un--__mkZippable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('dn--un--zipWith_Zippable_List1'(V3, V4, V5)) end end end end end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--zip_Zippable_List1'(V8, V9)) end end end end, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> ('dn--un--zipWith3_Zippable_List1'(V14, V15, V16, V17)) end end end end end end end end, fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('dn--un--zip3_Zippable_List1'(V21, V22, V23)) end end end end end end, fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> ('dn--un--unzipWith_Zippable_List1'(V27, V28)) end end end end end, fun (V29) -> fun (V30) -> fun (V31) -> ('dn--un--unzip_Zippable_List1'(V31)) end end end, fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> fun (V36) -> fun (V37) -> ('dn--un--unzipWith3_Zippable_List1'(V36, V37)) end end end end end end, fun (V38) -> fun (V39) -> fun (V40) -> fun (V41) -> ('dn--un--unzip3_Zippable_List1'(V41)) end end end end}.
'dn--un--__Impl_Uninhabited_(List1 $a)'(V0, V1) -> ('dn--un--uninhabited_Uninhabited_(List1 $a)'(V0, V1)).
'dn--un--__Impl_Traversable_List1'() -> {'Idris.Prelude.Interfaces.MkTraversable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_List1'(V2, V3)) end end end end, {'Idris.Prelude.Interfaces.MkFoldable', fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('dn--un--foldr_Foldable_List1'(V6, V7, V8)) end end end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--foldl_Foldable_List1'(V11, V12, V13)) end end end end end, fun (V14) -> fun (V15) -> ('dn--un--null_Foldable_List1'(V15)) end end, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> ('dn--un--foldlM_Foldable_List1'(V19, V20, V21, V22)) end end end end end end end, fun (V23) -> fun (V24) -> ('dn--un--toList_Foldable_List1'(V24)) end end, fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> ('dn--un--foldMap_Foldable_List1'(V27, V28, V29)) end end end end end}, fun (V30) -> fun (V31) -> fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> ('dn--un--traverse_Traversable_List1'(V33, V34, V35)) end end end end end end}.
'dn--un--__Impl_Show_(List1 $a)'(V0) -> {'Idris.Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_(List1 $a)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_(List1 $a)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Semigroup_(List1 $a)'(V0, V1) -> ('dn--un--<+>_Semigroup_(List1 $a)'(V0, V1)).
'dn--un--__Impl_Ord_(List1 $a)'(V0) -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_(List1 $a)'(case V0 of {'Idris.Prelude.EqOrd.MkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V3, V4, V5, V6, V7, V8, V9, V10) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V1, V2)) end end, fun (V11) -> fun (V12) -> ('dn--un--/=_Eq_(List1 $a)'(case V0 of {'Idris.Prelude.EqOrd.MkOrd', E8, E9, E10, E11, E12, E13, E14, E15} -> (fun (V13, V14, V15, V16, V17, V18, V19, V20) -> V13 end(E8, E9, E10, E11, E12, E13, E14, E15)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V11, V12)) end end}, fun (V21) -> fun (V22) -> ('dn--un--compare_Ord_(List1 $a)'(V0, V21, V22)) end end, fun (V23) -> fun (V24) -> ('dn--un--<_Ord_(List1 $a)'(V0, V23, V24)) end end, fun (V25) -> fun (V26) -> ('dn--un-->_Ord_(List1 $a)'(V0, V25, V26)) end end, fun (V27) -> fun (V28) -> ('dn--un--<=_Ord_(List1 $a)'(V0, V27, V28)) end end, fun (V29) -> fun (V30) -> ('dn--un-->=_Ord_(List1 $a)'(V0, V29, V30)) end end, fun (V31) -> fun (V32) -> ('dn--un--max_Ord_(List1 $a)'(V0, V31, V32)) end end, fun (V33) -> fun (V34) -> ('dn--un--min_Ord_(List1 $a)'(V0, V33, V34)) end end}.
'dn--un--__Impl_Monad_List1'() -> {'Idris.Prelude.Interfaces.MkMonad', {'Idris.Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_List1'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative_List1'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_List1'(V8, V9)) end end end end}, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un-->>=_Monad_List1'(V12, V13)) end end end end, fun (V14) -> fun (V15) -> ('dn--un--join_Monad_List1'(V15)) end end}.
'dn--un--__Impl_Functor_List1'(V0, V1, V2, V3) -> ('dn--un--map_Functor_List1'(V2, V3)).
'dn--un--__Impl_Foldable_List1'() -> {'Idris.Prelude.Interfaces.MkFoldable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--foldr_Foldable_List1'(V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--foldl_Foldable_List1'(V7, V8, V9)) end end end end end, fun (V10) -> fun (V11) -> ('dn--un--null_Foldable_List1'(V11)) end end, fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> ('dn--un--foldlM_Foldable_List1'(V15, V16, V17, V18)) end end end end end end end, fun (V19) -> fun (V20) -> ('dn--un--toList_Foldable_List1'(V20)) end end, fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> ('dn--un--foldMap_Foldable_List1'(V23, V24, V25)) end end end end end}.
'dn--un--__Impl_Eq_(List1 $a)'(V0) -> {'Idris.Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_(List1 $a)'(V0, V1, V2)) end end, fun (V3) -> fun (V4) -> ('dn--un--/=_Eq_(List1 $a)'(V0, V3, V4)) end end}.
'dn--un--__Impl_Applicative_List1'() -> {'Idris.Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_List1'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative_List1'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_List1'(V8, V9)) end end end end}.
'dn--un-->_Ord_(List1 $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(List1 $a)'(V0, V1, V2)), 2)).
'dn--un-->>=_Monad_List1'(V0, V1) -> case V0 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V2, V3) -> ('un--appendl'((V1(V2)), ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_List'(V3, fun (V4) -> ('un--forget'((V1(V4)))) end)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un-->=_Ord_(List1 $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(List1 $a)'(V0, V1, V2)), 0)).
'dn--un--==_Eq_(List1 $a)'(V0, V1, V2) -> case V1 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V3, V4) -> case V2 of {'Idris.Data.List1.:::', E2, E3} -> (fun (V5, V6) -> case case V0 of {'Idris.Prelude.EqOrd.MkEq', E4, E5} -> (fun (V7, V8) -> ((V7(V3))(V5)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of 1 -> ('Idris.Idris2.Prelude.Types':'dn--un--==_Eq_(List $a)'(V0, V4, V6)); 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--<_Ord_(List1 $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(List1 $a)'(V0, V1, V2)), 0)).
'dn--un--<=_Ord_(List1 $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(List1 $a)'(V0, V1, V2)), 2)).
'dn--un--<+>_Semigroup_(List1 $a)'(V0, V1) -> ('un--++'(V0, V1)).
'dn--un--<*>_Applicative_List1'(V0, V1) -> case V0 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V2, V3) -> ('un--appendl'(('dn--un--map_Functor_List1'(V2, V1)), ('Idris.Idris2.Prelude.Types':'dn--un--<*>_Applicative_List'(V3, ('un--forget'(V1)))))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--/=_Eq_(List1 $a)'(V0, V1, V2) -> case ('dn--un--==_Eq_(List1 $a)'(V0, V1, V2)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--unsnoc'(V0) -> case V0 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V1, V2) -> ('nested--2682-941--in--un--go'(V1, V2, V1, V2)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--snoc'(V0, V1) -> ('un--++'(V0, ('un--singleton'(V1)))).
'un--singleton'(V0) -> {'Idris.Data.List1.:::', V0, []}.
'un--reverseOnto'(V0, V1) -> case V1 of [] -> V0; [E0 | E1] -> (fun (V2, V3) -> ('un--reverseOnto'({'Idris.Data.List1.:::', V2, ('un--forget'(V0))}, V3)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--reverse'(V0) -> case V0 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V1, V2) -> ('un--reverseOnto'(('un--singleton'(V1)), V2)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--last'(V0) -> case V0 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V1, V2) -> ('nested--2525-809--in--un--loop'(V1, V2, V1, V2)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lappend'(V0, V1) -> case V0 of [] -> V1; [E0 | E1] -> (fun (V2, V3) -> ('un--++'({'Idris.Data.List1.:::', V2, V3}, V1)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--init'(V0) -> case V0 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V1, V2) -> ('nested--2544-825--in--un--loop'(V1, V2, V1, V2)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--fromList'(V0) -> case V0 of [] -> {'Idris.Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V1, V2) -> {'Idris.Prelude.Types.Just', {'Idris.Data.List1.:::', V1, V2}} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--forget'(V0) -> case V0 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V1, V2) -> [V1 | V2] end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--foldr1By'(V0, V1, V2) -> case V2 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V3, V4) -> ('nested--2565-848--in--un--loop'(V3, V4, V1, V0, V3, V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--foldr1'(V0, V1) -> ('un--foldr1By'(V0, fun (V2) -> V2 end, V1)).
'un--foldl1By'(V0, V1, V2) -> case V2 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V3, V4) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V0, (V1(V3)), V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--foldl1'(V0, V1) -> ('un--foldl1By'(V0, fun (V2) -> V2 end, V1)).
'un--consInjective'(V0) -> case V0 of 0 -> {'Idris.Builtin.MkPair', 0, 0}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--cons'(V0, V1) -> {'Idris.Data.List1.:::', V0, ('un--forget'(V1))}.
'un--appendl'(V0, V1) -> case V0 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V2, V3) -> {'Idris.Data.List1.:::', V2, ('Idris.Idris2.Prelude.Types.List':'un--++'(V3, V1))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--++'(V0, V1) -> ('un--appendl'(V0, ('un--forget'(V1)))).
