-module('Idris.Idris2.Data.List').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--inBounds-728'/5,
  'case--groupBy-3645'/4,
  'case--case block in groupBy,go-3581'/9,
  'case--groupBy,go-3555'/7,
  'case--mapMaybe-3133'/4,
  'case--case block in unzipWith3-2589'/7,
  'case--unzipWith3-2552'/4,
  'case--case block in unzipWith-2481'/6,
  'case--unzipWith-2451'/4,
  'case--replaceWhen-1982'/5,
  'case--tails-1937'/1,
  'case--inits-1908'/1,
  'case--case block in partition-1855'/6,
  'case--partition-1837'/4,
  'case--splitAt-1791'/4,
  'case--split-1725'/3,
  'case--case block in span-1661'/4,
  'case--span-1644'/4,
  'case--case block in spanBy-1595'/5,
  'case--spanBy-1552'/4,
  'case--deleteBy-1442'/5,
  'case--nubBy,nubBy\x{27}-1371'/5,
  'case--lookupBy-1264'/6,
  'case--findIndices,h-1201'/5,
  'case--findIndex-1145'/4,
  'case--find-1099'/4,
  'case--filter-1054'/4,
  'case--dropWhile-1011'/4,
  'case--takeWhile-967'/4,
  'case--unfoldr-893'/3,
  'case--iterate-855'/3,
  'case--with block in inBounds-752'/5,
  'nested--6095-3492--in--un--spreadHeads'/4,
  'nested--5924-3315--in--un--splitRec'/5,
  'nested--5924-3316--in--un--split'/3,
  'nested--3903-1352--in--un--nubBy\x{27}'/3,
  'nested--3740-1188--in--un--h'/3,
  'nested--6139-3537--in--un--go'/5,
  'dn--un--zip_Zippable_List'/2,
  'dn--un--zipWith_Zippable_List'/3,
  'dn--un--zipWith3_Zippable_List'/4,
  'dn--un--zip3_Zippable_List'/3,
  'dn--un--unzip_Zippable_List'/1,
  'dn--un--unzipWith_Zippable_List'/2,
  'dn--un--unzipWith3_Zippable_List'/2,
  'dn--un--unzip3_Zippable_List'/1,
  'dn--un--uninhabited_Uninhabited_(|((=== Nil) ((:: $x) $xs)),((~=~ Nil) ((:: $x) $xs))|)'/1,
  'dn--un--uninhabited_Uninhabited_(|((=== ((:: $x) $xs)) Nil),((~=~ ((:: $x) $xs)) Nil)|)'/1,
  'dn--un--uninhabited_Uninhabited_(|((=== ((:: $x) $xs)) ((:: $y) $ys)),((~=~ ((:: $x) $xs)) ((:: $y) $ys))|)'/2,
  'dn--un--uninhabited_Uninhabited_(NonEmpty Nil)'/1,
  'dn--un--uninhabited_Uninhabited_((InBounds (S $k)) ((:: $x) $xs))'/2,
  'dn--un--uninhabited_Uninhabited_((InBounds $k) Nil)'/1,
  'dn--un--__Impl_Zippable_List'/0,
  'dn--un--__Impl_Uninhabited_(|((=== Nil) ((:: $x) $xs)),((~=~ Nil) ((:: $x) $xs))|)'/1,
  'dn--un--__Impl_Uninhabited_(|((=== ((:: $x) $xs)) Nil),((~=~ ((:: $x) $xs)) Nil)|)'/1,
  'dn--un--__Impl_Uninhabited_(|((=== ((:: $x) $xs)) ((:: $y) $ys)),((~=~ ((:: $x) $xs)) ((:: $y) $ys))|)'/2,
  'dn--un--__Impl_Uninhabited_(NonEmpty Nil)'/1,
  'dn--un--__Impl_Uninhabited_((InBounds (S $k)) ((:: $x) $xs))'/2,
  'dn--un--__Impl_Uninhabited_((InBounds $k) Nil)'/1,
  'un--unionBy'/3,
  'un--union'/3,
  'un--unfoldr'/2,
  'un--transpose'/1,
  'un--toList1\x{27}'/1,
  'un--toList1'/1,
  'un--takeWhile'/2,
  'un--take'/2,
  'un--tails'/1,
  'un--tail\x{27}'/1,
  'un--tail'/1,
  'un--splitOn'/3,
  'un--splitAt'/2,
  'un--split'/2,
  'un--spanBy'/2,
  'un--span'/2,
  'un--sorted'/2,
  'un--sortBy'/2,
  'un--sort'/2,
  'un--snoc'/2,
  'un--reverseOnto'/2,
  'un--reverseInvolutive'/1,
  'un--reverse'/1,
  'un--revAppend'/2,
  'un--replicate'/2,
  'un--replaceWhen'/3,
  'un--replaceOn'/4,
  'un--partition'/2,
  'un--nubBy'/2,
  'un--nub'/2,
  'un--mergeReplicate'/2,
  'un--mergeBy'/3,
  'un--merge'/3,
  'un--mapMaybe'/2,
  'un--lookupBy'/3,
  'un--lookup'/3,
  'un--lengthMap'/1,
  'un--last\x{27}'/1,
  'un--last'/1,
  'un--iterateN'/3,
  'un--iterate'/2,
  'un--isSuffixOfBy'/3,
  'un--isSuffixOf'/3,
  'un--isPrefixOfBy'/3,
  'un--isPrefixOf'/3,
  'un--isNil'/1,
  'un--isInfixOf'/3,
  'un--isCons'/1,
  'un--intersperse'/2,
  'un--intersectBy'/3,
  'un--intersectAllBy'/2,
  'un--intersectAll'/2,
  'un--intersect'/3,
  'un--intercalate'/2,
  'un--inits'/1,
  'un--init\x{27}'/1,
  'un--init'/1,
  'un--index\x{27}'/2,
  'un--index'/2,
  'un--inBounds'/2,
  'un--head\x{27}'/1,
  'un--head'/1,
  'un--groupWith'/3,
  'un--groupBy'/2,
  'un--groupAllWith'/3,
  'un--group'/2,
  'un--foldr1By'/3,
  'un--foldr1'/2,
  'un--foldl1By'/3,
  'un--foldl1'/2,
  'un--findIndices'/2,
  'un--findIndex'/2,
  'un--find'/2,
  'un--filter'/2,
  'un--elemBy'/3,
  'un--dropWhile'/2,
  'un--dropFusion'/3,
  'un--drop'/2,
  'un--deleteBy'/3,
  'un--delete'/3,
  'un--consInjective'/1,
  'un--catMaybes'/1,
  'un--break'/2,
  'un--appendNilRightNeutral'/1,
  'un--appendAssociative'/3
]).
'with--inBounds-728'(V0, V1, V2, V3, V4) -> case V3 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V5) -> {'Idris.Prelude.Types.Yes', (1 + V5)} end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V6) -> {'Idris.Prelude.Types.No', fun (V7) -> case V7 of 0 -> ('erlang':'throw'("Nat case not covered")); _ -> begin (V8 = (V7 - 1)), (V6(V8)) end end end} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--groupBy-3645'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V4, V5) -> [V4 | V5] end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in groupBy,go-3581'(V0, V1, V2, V3, V4, V5, V6, V7, V8) -> case V8 of 1 -> {'Idris.Builtin.MkPair', ('Idris.Idris2.Data.List1':'un--cons'(V3, V6)), V7}; 0 -> {'Idris.Builtin.MkPair', ('Idris.Idris2.Data.List1':'un--singleton'(V3)), [V6 | V7]}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--groupBy,go-3555'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V7, V8) -> case ((V2(V5))(V3)) of 1 -> {'Idris.Builtin.MkPair', ('Idris.Idris2.Data.List1':'un--cons'(V5, V7)), V8}; 0 -> {'Idris.Builtin.MkPair', ('Idris.Idris2.Data.List1':'un--singleton'(V5)), [V7 | V8]}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--mapMaybe-3133'(V0, V1, V2, V3) -> case V3 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> ('un--mapMaybe'(V2, V1)) end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V4) -> [V4 | ('un--mapMaybe'(V2, V1))] end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in unzipWith3-2589'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V7, V8) -> case V8 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V9, V10) -> {'Idris.Builtin.MkPair', [V3 | V7], {'Idris.Builtin.MkPair', [V4 | V9], [V5 | V10]}} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--unzipWith3-2552'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V4, V5) -> case V5 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V6, V7) -> case ('dn--un--unzipWith3_Zippable_List'(V2, V1)) of {'Idris.Builtin.MkPair', E4, E5} -> (fun (V8, V9) -> case V9 of {'Idris.Builtin.MkPair', E6, E7} -> (fun (V10, V11) -> {'Idris.Builtin.MkPair', [V4 | V8], {'Idris.Builtin.MkPair', [V6 | V10], [V7 | V11]}} end(E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in unzipWith-2481'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V6, V7) -> {'Idris.Builtin.MkPair', [V3 | V6], [V4 | V7]} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--unzipWith-2451'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V4, V5) -> case ('dn--un--unzipWith_Zippable_List'(V2, V1)) of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V6, V7) -> {'Idris.Builtin.MkPair', [V4 | V6], [V5 | V7]} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--replaceWhen-1982'(V0, V1, V2, V3, V4) -> case V4 of 1 -> V0; 0 -> V3; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--tails-1937'(V0) -> case V0 of [] -> []; [E0 | E1] -> (fun (V1, V2) -> ('un--tails'(V2)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--inits-1908'(V0) -> case V0 of [] -> []; [E0 | E1] -> (fun (V1, V2) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_List'(fun (V3) -> [V1 | V3] end, ('un--inits'(V2)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in partition-1855'(V0, V1, V2, V3, V4, V5) -> case V5 of 1 -> {'Idris.Builtin.MkPair', [V2 | V3], V4}; 0 -> {'Idris.Builtin.MkPair', V3, [V2 | V4]}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--partition-1837'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V4, V5) -> case (V2(V0)) of 1 -> {'Idris.Builtin.MkPair', [V0 | V4], V5}; 0 -> {'Idris.Builtin.MkPair', V4, [V0 | V5]}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--splitAt-1791'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V4, V5) -> {'Idris.Builtin.MkPair', [V1 | V4], V5} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--split-1725'(V0, V1, V2) -> case V2 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V3, V4) -> case V4 of [] -> ('Idris.Idris2.Data.List1':'un--singleton'(V3)); [E2 | E3] -> (fun (V5, V6) -> {'Idris.Data.List1.:::', V3, ('Idris.Idris2.Data.List1':'un--forget'(('un--split'(V1, V6))))} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in span-1661'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V4, V5) -> {'Idris.Builtin.MkPair', [V2 | V4], V5} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--span-1644'(V0, V1, V2, V3) -> case V3 of 1 -> case ('un--span'(V2, V1)) of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V4, V5) -> {'Idris.Builtin.MkPair', [V0 | V4], V5} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; 0 -> {'Idris.Builtin.MkPair', [], [V0 | V1]}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in spanBy-1595'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V5, V6) -> {'Idris.Builtin.MkPair', [V3 | V5], V6} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--spanBy-1552'(V0, V1, V2, V3) -> case V3 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> {'Idris.Builtin.MkPair', [], [V0 | V1]} end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V4) -> case ('un--spanBy'(V2, V1)) of {'Idris.Builtin.MkPair', E1, E2} -> (fun (V5, V6) -> {'Idris.Builtin.MkPair', [V4 | V5], V6} end(E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--deleteBy-1442'(V0, V1, V2, V3, V4) -> case V4 of 1 -> V2; 0 -> [V1 | ('un--deleteBy'(V3, V0, V2))]; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--nubBy,nubBy\x{27}-1371'(V0, V1, V2, V3, V4) -> case V4 of 1 -> ('nested--3903-1352--in--un--nubBy\x{27}'(V3, V2, V1)); 0 -> [V0 | ('nested--3903-1352--in--un--nubBy\x{27}'([V0 | V3], V2, V1))]; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--lookupBy-1264'(V0, V1, V2, V3, V4, V5) -> case V5 of 1 -> {'Idris.Prelude.Types.Just', V2}; 0 -> ('un--lookupBy'(V4, V0, V3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--findIndices,h-1201'(V0, V1, V2, V3, V4) -> case V4 of 1 -> [V3 | ('nested--3740-1188--in--un--h'(V0, (1 + V3), V2))]; 0 -> ('nested--3740-1188--in--un--h'(V0, (1 + V3), V2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--findIndex-1145'(V0, V1, V2, V3) -> case V3 of 1 -> {'Idris.Prelude.Types.Just', 0}; 0 -> ('Idris.Idris2.Prelude.Interfaces':'un--<$>'(fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V6, V7)) end end end end, fun (V8) -> (1 + V8) end, ('un--findIndex'(V2, V1)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--find-1099'(V0, V1, V2, V3) -> case V3 of 1 -> {'Idris.Prelude.Types.Just', V0}; 0 -> ('un--find'(V2, V1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--filter-1054'(V0, V1, V2, V3) -> case V3 of 1 -> [V0 | ('un--filter'(V2, V1))]; 0 -> ('un--filter'(V2, V1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--dropWhile-1011'(V0, V1, V2, V3) -> case V3 of 1 -> ('un--dropWhile'(V2, V1)); 0 -> [V0 | V1]; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--takeWhile-967'(V0, V1, V2, V3) -> case V3 of 1 -> [V0 | ('un--takeWhile'(V2, V1))]; 0 -> []; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--unfoldr-893'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> [] end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V3) -> case V3 of {'Idris.Builtin.MkPair', E1, E2} -> (fun (V4, V5) -> [V4 | ('un--unfoldr'(V1, V5))] end(E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--iterate-855'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> [] end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V3) -> ('un--iterate'(V1, V3)) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--with block in inBounds-752'(V0, V1, V2, V3, V4) -> case V4 of 0 -> ('erlang':'throw'("Nat case not covered")); _ -> begin (V5 = (V4 - 1)), (V2(V5)) end end.
'nested--6095-3492--in--un--spreadHeads'(V0, V1, V2, V3) -> case V2 of [] -> V3; [E0 | E1] -> (fun (V4, V5) -> case V3 of [] -> [[V4 | []] | ('nested--6095-3492--in--un--spreadHeads'(V0, V1, V5, []))]; [E2 | E3] -> (fun (V6, V7) -> [[V4 | V6] | ('nested--6095-3492--in--un--spreadHeads'(V0, V1, V5, V7))] end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--5924-3315--in--un--splitRec'(V0, V1, V2, V3, V4) -> case V2 of [E0 | E1] -> (fun (V5, V6) -> case V6 of [E2 | E3] -> (fun (V7, V8) -> case V3 of [E4 | E5] -> (fun (V9, V10) -> ('nested--5924-3315--in--un--splitRec'(V0, V1, V8, V10, fun (V11) -> (V4([V9 | V11])) end)) end(E4, E5)); _ -> {'Idris.Builtin.MkPair', V3, (V4([]))} end end(E2, E3)); _ -> {'Idris.Builtin.MkPair', V3, (V4([]))} end end(E0, E1)); _ -> {'Idris.Builtin.MkPair', V3, (V4([]))} end.
'nested--5924-3316--in--un--split'(V0, V1, V2) -> ('nested--5924-3315--in--un--splitRec'(V0, V1, V2, V2, fun (V3) -> V3 end)).
'nested--3903-1352--in--un--nubBy\x{27}'(V0, V1, V2) -> case V2 of [] -> []; [E0 | E1] -> (fun (V3, V4) -> case ('un--elemBy'(V1, V3, V0)) of 1 -> ('nested--3903-1352--in--un--nubBy\x{27}'(V0, V1, V4)); 0 -> [V3 | ('nested--3903-1352--in--un--nubBy\x{27}'([V3 | V0], V1, V4))]; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--3740-1188--in--un--h'(V0, V1, V2) -> case V2 of [] -> []; [E0 | E1] -> (fun (V3, V4) -> case (V0(V3)) of 1 -> [V1 | ('nested--3740-1188--in--un--h'(V0, (1 + V1), V4))]; 0 -> ('nested--3740-1188--in--un--h'(V0, (1 + V1), V4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--6139-3537--in--un--go'(V0, V1, V2, V3, V4) -> case V4 of [] -> {'Idris.Builtin.MkPair', ('Idris.Idris2.Data.List1':'un--singleton'(V3)), []}; [E0 | E1] -> (fun (V5, V6) -> case ('nested--6139-3537--in--un--go'(V0, V1, V2, V5, V6)) of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V7, V8) -> case ((V2(V3))(V5)) of 1 -> {'Idris.Builtin.MkPair', ('Idris.Idris2.Data.List1':'un--cons'(V3, V7)), V8}; 0 -> {'Idris.Builtin.MkPair', ('Idris.Idris2.Data.List1':'un--singleton'(V3)), [V7 | V8]}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--zip_Zippable_List'(V0, V1) -> ('dn--un--zipWith_Zippable_List'(fun (V2) -> fun (V3) -> {'Idris.Builtin.MkPair', V2, V3} end end, V0, V1)).
'dn--un--zipWith_Zippable_List'(V0, V1, V2) -> case V1 of [] -> []; _ -> case V2 of [] -> []; _ -> case V1 of [E0 | E1] -> (fun (V3, V4) -> case V2 of [E2 | E3] -> (fun (V5, V6) -> [((V0(V3))(V5)) | ('dn--un--zipWith_Zippable_List'(V0, V4, V6))] end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'dn--un--zipWith3_Zippable_List'(V0, V1, V2, V3) -> case V1 of [] -> []; _ -> case V2 of [] -> []; _ -> case V3 of [] -> []; _ -> case V1 of [E0 | E1] -> (fun (V4, V5) -> case V2 of [E2 | E3] -> (fun (V6, V7) -> case V3 of [E4 | E5] -> (fun (V8, V9) -> [(((V0(V4))(V6))(V8)) | ('dn--un--zipWith3_Zippable_List'(V0, V5, V7, V9))] end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end.
'dn--un--zip3_Zippable_List'(V0, V1, V2) -> ('dn--un--zipWith3_Zippable_List'(fun (V3) -> fun (V4) -> fun (V5) -> {'Idris.Builtin.MkPair', V3, {'Idris.Builtin.MkPair', V4, V5}} end end end, V0, V1, V2)).
'dn--un--unzip_Zippable_List'(V0) -> ('dn--un--unzipWith_Zippable_List'(fun (V1) -> V1 end, V0)).
'dn--un--unzipWith_Zippable_List'(V0, V1) -> case V1 of [] -> {'Idris.Builtin.MkPair', [], []}; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V4, V5) -> case ('dn--un--unzipWith_Zippable_List'(V0, V3)) of {'Idris.Builtin.MkPair', E4, E5} -> (fun (V6, V7) -> {'Idris.Builtin.MkPair', [V4 | V6], [V5 | V7]} end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--unzipWith3_Zippable_List'(V0, V1) -> case V1 of [] -> {'Idris.Builtin.MkPair', [], {'Idris.Builtin.MkPair', [], []}}; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V4, V5) -> case V5 of {'Idris.Builtin.MkPair', E4, E5} -> (fun (V6, V7) -> case ('dn--un--unzipWith3_Zippable_List'(V0, V3)) of {'Idris.Builtin.MkPair', E6, E7} -> (fun (V8, V9) -> case V9 of {'Idris.Builtin.MkPair', E8, E9} -> (fun (V10, V11) -> {'Idris.Builtin.MkPair', [V4 | V8], {'Idris.Builtin.MkPair', [V6 | V10], [V7 | V11]}} end(E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--unzip3_Zippable_List'(V0) -> ('dn--un--unzipWith3_Zippable_List'(fun (V1) -> V1 end, V0)).
'dn--un--uninhabited_Uninhabited_(|((=== Nil) ((:: $x) $xs)),((~=~ Nil) ((:: $x) $xs))|)'(V0) -> ('erlang':'throw'("No clauses")).
'dn--un--uninhabited_Uninhabited_(|((=== ((:: $x) $xs)) Nil),((~=~ ((:: $x) $xs)) Nil)|)'(V0) -> ('erlang':'throw'("No clauses")).
'dn--un--uninhabited_Uninhabited_(|((=== ((:: $x) $xs)) ((:: $y) $ys)),((~=~ ((:: $x) $xs)) ((:: $y) $ys))|)'(V0, V1) -> case V0 of {'Idris.Prelude.Types.Left', E0} -> (fun (V2) -> case V1 of 0 -> (V2(0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V3) -> case V1 of 0 -> (V3(0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--uninhabited_Uninhabited_(NonEmpty Nil)'(V0) -> ('erlang':'throw'("No clauses")).
'dn--un--uninhabited_Uninhabited_((InBounds (S $k)) ((:: $x) $xs))'(V0, V1) -> case V1 of 0 -> ('erlang':'throw'("Nat case not covered")); _ -> begin (V2 = (V1 - 1)), (V0(V2)) end end.
'dn--un--uninhabited_Uninhabited_((InBounds $k) Nil)'(V0) -> ('erlang':'throw'("No clauses")).
'dn--un--__Impl_Zippable_List'() -> {'Idris.Data.Zippable.dn--un--__mkZippable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('dn--un--zipWith_Zippable_List'(V3, V4, V5)) end end end end end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--zip_Zippable_List'(V8, V9)) end end end end, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> ('dn--un--zipWith3_Zippable_List'(V14, V15, V16, V17)) end end end end end end end end, fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('dn--un--zip3_Zippable_List'(V21, V22, V23)) end end end end end end, fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> ('dn--un--unzipWith_Zippable_List'(V27, V28)) end end end end end, fun (V29) -> fun (V30) -> fun (V31) -> ('dn--un--unzip_Zippable_List'(V31)) end end end, fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> fun (V36) -> fun (V37) -> ('dn--un--unzipWith3_Zippable_List'(V36, V37)) end end end end end end, fun (V38) -> fun (V39) -> fun (V40) -> fun (V41) -> ('dn--un--unzip3_Zippable_List'(V41)) end end end end}.
'dn--un--__Impl_Uninhabited_(|((=== Nil) ((:: $x) $xs)),((~=~ Nil) ((:: $x) $xs))|)'(V0) -> ('dn--un--uninhabited_Uninhabited_(|((=== Nil) ((:: $x) $xs)),((~=~ Nil) ((:: $x) $xs))|)'(V0)).
'dn--un--__Impl_Uninhabited_(|((=== ((:: $x) $xs)) Nil),((~=~ ((:: $x) $xs)) Nil)|)'(V0) -> ('dn--un--uninhabited_Uninhabited_(|((=== ((:: $x) $xs)) Nil),((~=~ ((:: $x) $xs)) Nil)|)'(V0)).
'dn--un--__Impl_Uninhabited_(|((=== ((:: $x) $xs)) ((:: $y) $ys)),((~=~ ((:: $x) $xs)) ((:: $y) $ys))|)'(V0, V1) -> ('dn--un--uninhabited_Uninhabited_(|((=== ((:: $x) $xs)) ((:: $y) $ys)),((~=~ ((:: $x) $xs)) ((:: $y) $ys))|)'(V0, V1)).
'dn--un--__Impl_Uninhabited_(NonEmpty Nil)'(V0) -> ('dn--un--uninhabited_Uninhabited_(NonEmpty Nil)'(V0)).
'dn--un--__Impl_Uninhabited_((InBounds (S $k)) ((:: $x) $xs))'(V0, V1) -> ('dn--un--uninhabited_Uninhabited_((InBounds (S $k)) ((:: $x) $xs))'(V0, V1)).
'dn--un--__Impl_Uninhabited_((InBounds $k) Nil)'(V0) -> ('dn--un--uninhabited_Uninhabited_((InBounds $k) Nil)'(V0)).
'un--unionBy'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types.List':'un--++'(V1, ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(fun (V3) -> fun (V4) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(fun (V5) -> fun (V6) -> ('un--deleteBy'(V0, V5, V6)) end end, V3, V4)) end end, ('un--nubBy'(V0, V2)), V1)))).
'un--union'(V0, V1, V2) -> ('un--unionBy'(fun (V3) -> fun (V4) -> case V0 of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V5, V6) -> ((V5(V3))(V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V1, V2)).
'un--unfoldr'(V0, V1) -> case (V0(V1)) of {'Idris.Prelude.Types.Nothing'} -> (fun () -> [] end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V2) -> case V2 of {'Idris.Builtin.MkPair', E1, E2} -> (fun (V3, V4) -> [V3 | ('un--unfoldr'(V0, V4))] end(E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--transpose'(V0) -> case V0 of [] -> []; [E0 | E1] -> (fun (V1, V2) -> ('nested--6095-3492--in--un--spreadHeads'(V1, V2, V1, ('un--transpose'(V2)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--toList1\x{27}'(V0) -> case V0 of [] -> {'Idris.Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V1, V2) -> {'Idris.Prelude.Types.Just', {'Idris.Data.List1.:::', V1, V2}} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--toList1'(V0) -> case V0 of [E0 | E1] -> (fun (V1, V2) -> {'Idris.Data.List1.:::', V1, V2} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--takeWhile'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of 1 -> [V2 | ('un--takeWhile'(V0, V3))]; 0 -> []; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--take'(V0, V1) -> case V0 of 0 -> []; _ -> begin (V2 = (V0 - 1)), case V1 of [E0 | E1] -> (fun (V3, V4) -> [V3 | ('un--take'(V2, V4))] end(E0, E1)); _ -> [] end end end.
'un--tails'(V0) -> [V0 | case V0 of [] -> []; [E0 | E1] -> (fun (V1, V2) -> ('un--tails'(V2)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end].
'un--tail\x{27}'(V0) -> case V0 of [] -> {'Idris.Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V1, V2) -> {'Idris.Prelude.Types.Just', V2} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--tail'(V0) -> case V0 of [E0 | E1] -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--splitOn'(V0, V1, V2) -> ('un--split'(fun (V3) -> case V0 of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V4, V5) -> ((V4(V3))(V1)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end, V2)).
'un--splitAt'(V0, V1) -> case V0 of 0 -> {'Idris.Builtin.MkPair', [], V1}; _ -> begin (V2 = (V0 - 1)), case V1 of [] -> {'Idris.Builtin.MkPair', [], []}; [E0 | E1] -> (fun (V3, V4) -> case ('un--splitAt'(V2, V4)) of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V5, V6) -> {'Idris.Builtin.MkPair', [V3 | V5], V6} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--split'(V0, V1) -> case ('un--break'(V0, V1)) of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V2, V3) -> case V3 of [] -> ('Idris.Idris2.Data.List1':'un--singleton'(V2)); [E2 | E3] -> (fun (V4, V5) -> {'Idris.Data.List1.:::', V2, ('Idris.Idris2.Data.List1':'un--forget'(('un--split'(V0, V5))))} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--spanBy'(V0, V1) -> case V1 of [] -> {'Idris.Builtin.MkPair', [], []}; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of {'Idris.Prelude.Types.Nothing'} -> (fun () -> {'Idris.Builtin.MkPair', [], [V2 | V3]} end()); {'Idris.Prelude.Types.Just', E2} -> (fun (V4) -> case ('un--spanBy'(V0, V3)) of {'Idris.Builtin.MkPair', E3, E4} -> (fun (V5, V6) -> {'Idris.Builtin.MkPair', [V4 | V5], V6} end(E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--span'(V0, V1) -> case V1 of [] -> {'Idris.Builtin.MkPair', [], []}; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of 1 -> case ('un--span'(V0, V3)) of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V4, V5) -> {'Idris.Builtin.MkPair', [V2 | V4], V5} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; 0 -> {'Idris.Builtin.MkPair', [], [V2 | V3]}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--sorted'(V0, V1) -> case V1 of [E0 | E1] -> (fun (V2, V3) -> case V3 of [E2 | E3] -> (fun (V4, V5) -> case case V0 of {'Idris.Prelude.EqOrd.MkOrd', E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V6, V7, V8, V9, V10, V11, V12, V13) -> ((V10(V2))(V4)) end(E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of 1 -> ('un--sorted'(V0, V3)); 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> 1 end end(E0, E1)); _ -> 1 end.
'un--sortBy'(V0, V1) -> case V1 of [] -> []; [E2 | E3] -> (fun (V2, V3) -> case V3 of [] -> [V2 | []]; _ -> case ('nested--5924-3316--in--un--split'(V1, V0, V1)) of {'Idris.Builtin.MkPair', E4, E5} -> (fun (V4, V5) -> ('un--mergeBy'(V0, ('un--sortBy'(V0, V4)), ('un--sortBy'(V0, V5)))) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E2, E3)); _ -> case ('nested--5924-3316--in--un--split'(V1, V0, V1)) of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V6, V7) -> ('un--mergeBy'(V0, ('un--sortBy'(V0, V6)), ('un--sortBy'(V0, V7)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.
'un--sort'(V0, V1) -> ('un--sortBy'(fun (V2) -> fun (V3) -> case V0 of {'Idris.Prelude.EqOrd.MkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V4, V5, V6, V7, V8, V9, V10, V11) -> ((V5(V2))(V3)) end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V1)).
'un--snoc'(V0, V1) -> ('Idris.Idris2.Prelude.Types.List':'un--++'(V0, [V1 | []])).
'un--reverseOnto'(V0, V1) -> case V1 of [] -> V0; [E0 | E1] -> (fun (V2, V3) -> ('un--reverseOnto'([V2 | V0], V3)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--reverseInvolutive'(V0) -> case V0 of [] -> 0; [E0 | E1] -> (fun (V1, V2) -> ('Idris.Idris2.Prelude.Basics':'un--cong'(('un--reverseInvolutive'(V2)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--reverse'(V0) -> ('un--reverseOnto'([], V0)).
'un--revAppend'(V0, V1) -> case V0 of [] -> 0; [E0 | E1] -> (fun (V2, V3) -> 0 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--replicate'(V0, V1) -> case V0 of 0 -> []; _ -> begin (V2 = (V0 - 1)), [V1 | ('un--replicate'(V2, V1))] end end.
'un--replaceWhen'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_List'(fun (V3) -> case (V0(V3)) of 1 -> V1; 0 -> V3; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end, V2)).
'un--replaceOn'(V0, V1, V2, V3) -> ('un--replaceWhen'(fun (V4) -> case V0 of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V5, V6) -> ((V5(V4))(V1)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end, V2, V3)).
'un--partition'(V0, V1) -> case V1 of [] -> {'Idris.Builtin.MkPair', [], []}; [E0 | E1] -> (fun (V2, V3) -> case ('un--partition'(V0, V3)) of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V4, V5) -> case (V0(V2)) of 1 -> {'Idris.Builtin.MkPair', [V2 | V4], V5}; 0 -> {'Idris.Builtin.MkPair', V4, [V2 | V5]}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--nubBy'(V0, V1) -> ('nested--3903-1352--in--un--nubBy\x{27}'([], V0, V1)).
'un--nub'(V0, V1) -> ('un--nubBy'(fun (V2) -> fun (V3) -> case V0 of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V4, V5) -> ((V4(V2))(V3)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V1)).
'un--mergeReplicate'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> [V0 | [V2 | ('un--mergeReplicate'(V0, V3))]] end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--mergeBy'(V0, V1, V2) -> case V1 of [] -> V2; _ -> case V2 of [] -> V1; _ -> case V1 of [E0 | E1] -> (fun (V3, V4) -> case V2 of [E2 | E3] -> (fun (V5, V6) -> case ((V0(V3))(V5)) of 0 -> [V3 | ('un--mergeBy'(V0, V4, [V5 | V6]))]; _ -> [V5 | ('un--mergeBy'(V0, [V3 | V4], V6))] end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--merge'(V0, V1, V2) -> ('un--mergeBy'(fun (V3) -> fun (V4) -> case V0 of {'Idris.Prelude.EqOrd.MkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V5, V6, V7, V8, V9, V10, V11, V12) -> ((V6(V3))(V4)) end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V1, V2)).
'un--mapMaybe'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of {'Idris.Prelude.Types.Nothing'} -> (fun () -> ('un--mapMaybe'(V0, V3)) end()); {'Idris.Prelude.Types.Just', E2} -> (fun (V4) -> [V4 | ('un--mapMaybe'(V0, V3))] end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lookupBy'(V0, V1, V2) -> case V2 of [] -> {'Idris.Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V3, V4) -> case V3 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V5, V6) -> case ((V0(V1))(V5)) of 1 -> {'Idris.Prelude.Types.Just', V6}; 0 -> ('un--lookupBy'(V0, V1, V4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lookup'(V0, V1, V2) -> ('un--lookupBy'(fun (V3) -> fun (V4) -> case V0 of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V5, V6) -> ((V5(V3))(V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V1, V2)).
'un--lengthMap'(V0) -> case V0 of [] -> 0; [E0 | E1] -> (fun (V1, V2) -> ('Idris.Idris2.Prelude.Basics':'un--cong'(('un--lengthMap'(V2)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--last\x{27}'(V0) -> case V0 of [] -> {'Idris.Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V1, V2) -> {'Idris.Prelude.Types.Just', ('un--last'(V0))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--last'(V0) -> case V0 of [E0 | E1] -> (fun (V1, V2) -> case V2 of [] -> V1; [E2 | E3] -> (fun (V3, V4) -> ('un--last'(V2)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--iterateN'(V0, V1, V2) -> case V0 of 0 -> []; _ -> begin (V3 = (V0 - 1)), [V2 | ('un--iterateN'(V3, V1, (V1(V2))))] end end.
'un--iterate'(V0, V1) -> [V1 | case (V0(V1)) of {'Idris.Prelude.Types.Nothing'} -> (fun () -> [] end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V2) -> ('un--iterate'(V0, V2)) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end].
'un--isSuffixOfBy'(V0, V1, V2) -> ('un--isPrefixOfBy'(V0, ('un--reverse'(V1)), ('un--reverse'(V2)))).
'un--isSuffixOf'(V0, V1, V2) -> ('un--isSuffixOfBy'(fun (V3) -> fun (V4) -> case V0 of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V5, V6) -> ((V5(V3))(V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V1, V2)).
'un--isPrefixOfBy'(V0, V1, V2) -> case V1 of [] -> 1; _ -> case V2 of [] -> 0; _ -> case V1 of [E0 | E1] -> (fun (V3, V4) -> case V2 of [E2 | E3] -> (fun (V5, V6) -> case ((V0(V3))(V5)) of 1 -> ('un--isPrefixOfBy'(V0, V4, V6)); 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--isPrefixOf'(V0, V1, V2) -> ('un--isPrefixOfBy'(fun (V3) -> fun (V4) -> case V0 of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V5, V6) -> ((V5(V3))(V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V1, V2)).
'un--isNil'(V0) -> case V0 of [] -> 1; _ -> 0 end.
'un--isInfixOf'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Interfaces':'un--any'({'Idris.Prelude.Interfaces.MkFoldable', fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V5, V6, V7)) end end end end end, fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V10, V11, V12)) end end end end end, fun (V13) -> fun (V14) -> ('Idris.Idris2.Prelude.Types':'dn--un--null_Foldable_List'(V14)) end end, fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldlM_Foldable_List'(V18, V19, V20, V21)) end end end end end end end, fun (V22) -> fun (V23) -> ('Idris.Idris2.Prelude.Types':'dn--un--toList_Foldable_List'(V23)) end end, fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V26, V27, V28)) end end end end end}, fun (V29) -> ('un--isPrefixOf'(V0, V1, V29)) end, ('un--tails'(V2)))).
'un--isCons'(V0) -> case V0 of [] -> 0; _ -> 1 end.
'un--intersperse'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> [V2 | ('un--mergeReplicate'(V0, V3))] end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--intersectBy'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_List'(V1, fun (V3) -> ('Idris.Idris2.Prelude.Interfaces':'un-->>'({'Idris.Prelude.Interfaces.MkMonad', {'Idris.Prelude.Interfaces.MkApplicative', fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_List'(V6, V7)) end end end end, fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.Types':'dn--un--pure_Applicative_List'(V9)) end end, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.Types':'dn--un--<*>_Applicative_List'(V12, V13)) end end end end}, fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_List'(V16, V17)) end end end end, fun (V18) -> fun (V19) -> ('Idris.Idris2.Prelude.Types':'dn--un--join_Monad_List'(V19)) end end}, ('Idris.Idris2.Prelude.Interfaces':'un--guard'({'Idris.Prelude.Interfaces.MkAlternative', {'Idris.Prelude.Interfaces.MkApplicative', fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_List'(V22, V23)) end end end end, fun (V24) -> fun (V25) -> ('Idris.Idris2.Prelude.Types':'dn--un--pure_Applicative_List'(V25)) end end, fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> ('Idris.Idris2.Prelude.Types':'dn--un--<*>_Applicative_List'(V28, V29)) end end end end}, fun (V30) -> ('Idris.Idris2.Prelude.Types':'dn--un--empty_Alternative_List'()) end, fun (V31) -> fun (V32) -> fun (V33) -> ('Idris.Idris2.Prelude.Types':'dn--un--<|>_Alternative_List'(V32, V33)) end end end}, ('Idris.Idris2.Prelude.Interfaces':'un--any'({'Idris.Prelude.Interfaces.MkFoldable', fun (V34) -> fun (V35) -> fun (V36) -> fun (V37) -> fun (V38) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V36, V37, V38)) end end end end end, fun (V39) -> fun (V40) -> fun (V41) -> fun (V42) -> fun (V43) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V41, V42, V43)) end end end end end, fun (V44) -> fun (V45) -> ('Idris.Idris2.Prelude.Types':'dn--un--null_Foldable_List'(V45)) end end, fun (V46) -> fun (V47) -> fun (V48) -> fun (V49) -> fun (V50) -> fun (V51) -> fun (V52) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldlM_Foldable_List'(V49, V50, V51, V52)) end end end end end end end, fun (V53) -> fun (V54) -> ('Idris.Idris2.Prelude.Types':'dn--un--toList_Foldable_List'(V54)) end end, fun (V55) -> fun (V56) -> fun (V57) -> fun (V58) -> fun (V59) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V57, V58, V59)) end end end end end}, (V0(V3)), V2)))), fun () -> ('Idris.Idris2.Prelude.Types':'dn--un--pure_Applicative_List'(V3)) end)) end)).
'un--intersectAllBy'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> ('un--filter'(fun (V4) -> ('Idris.Idris2.Prelude.Interfaces':'un--all'({'Idris.Prelude.Interfaces.MkFoldable', fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V7, V8, V9)) end end end end end, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V12, V13, V14)) end end end end end, fun (V15) -> fun (V16) -> ('Idris.Idris2.Prelude.Types':'dn--un--null_Foldable_List'(V16)) end end, fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldlM_Foldable_List'(V20, V21, V22, V23)) end end end end end end end, fun (V24) -> fun (V25) -> ('Idris.Idris2.Prelude.Types':'dn--un--toList_Foldable_List'(V25)) end end, fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> fun (V30) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V28, V29, V30)) end end end end end}, fun (V31) -> ('un--elemBy'(V0, V4, V31)) end, V3)) end, V2)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--intersectAll'(V0, V1) -> ('un--intersectAllBy'(fun (V2) -> fun (V3) -> case V0 of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V4, V5) -> ((V4(V2))(V3)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V1)).
'un--intersect'(V0, V1, V2) -> ('un--intersectBy'(fun (V3) -> fun (V4) -> case V0 of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V5, V6) -> ((V5(V3))(V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V1, V2)).
'un--intercalate'(V0, V1) -> ('Idris.Idris2.Prelude.Interfaces':'un--concat'({'Idris.Builtin.MkPair', {'Idris.Prelude.Interfaces.MkFoldable', fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V4, V5, V6)) end end end end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V9, V10, V11)) end end end end end, fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.Types':'dn--un--null_Foldable_List'(V13)) end end, fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldlM_Foldable_List'(V17, V18, V19, V20)) end end end end end end end, fun (V21) -> fun (V22) -> ('Idris.Idris2.Prelude.Types':'dn--un--toList_Foldable_List'(V22)) end end, fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V25, V26, V27)) end end end end end}, {'Idris.Prelude.Interfaces.MkMonoid', fun (V28) -> fun (V29) -> ('Idris.Idris2.Prelude.Types':'dn--un--<+>_Semigroup_(List $a)'(V28, V29)) end end, ('Idris.Idris2.Prelude.Types':'dn--un--neutral_Monoid_(List $a)'())}}, ('un--intersperse'(V0, V1)))).
'un--inits'(V0) -> [[] | case V0 of [] -> []; [E0 | E1] -> (fun (V1, V2) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_List'(fun (V3) -> [V1 | V3] end, ('un--inits'(V2)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end].
'un--init\x{27}'(V0) -> case V0 of [] -> {'Idris.Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V1, V2) -> {'Idris.Prelude.Types.Just', ('un--init'(V0))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--init'(V0) -> case V0 of [E0 | E1] -> (fun (V1, V2) -> case V2 of [] -> []; [E2 | E3] -> (fun (V3, V4) -> [V1 | ('un--init'(V2))] end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--index\x{27}'(V0, V1) -> case V0 of [E0 | E1] -> (fun (V2, V3) -> case V1 of 0 -> V2; _ -> begin (V4 = (V1 - 1)), ('un--index\x{27}'(V3, V4)) end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--index'(V0, V1) -> case V0 of 0 -> case V1 of [E2 | E3] -> (fun (V2, V3) -> V2 end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> begin (V4 = (V0 - 1)), case V1 of [E0 | E1] -> (fun (V5, V6) -> ('un--index'(V4, V6)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--inBounds'(V0, V1) -> case V1 of [] -> {'Idris.Prelude.Types.No', fun (V2) -> ('dn--un--uninhabited_Uninhabited_((InBounds $k) Nil)'(V2)) end}; _ -> case V0 of 0 -> case V1 of [E2 | E3] -> (fun (V3, V4) -> {'Idris.Prelude.Types.Yes', 0} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> begin (V5 = (V0 - 1)), case V1 of [E0 | E1] -> (fun (V6, V7) -> ('with--inBounds-728'('erased', V5, V7, ('un--inBounds'(V5, V7)), V6)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end.
'un--head\x{27}'(V0) -> case V0 of [] -> {'Idris.Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V1, V2) -> {'Idris.Prelude.Types.Just', V1} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--head'(V0) -> case V0 of [E0 | E1] -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--groupWith'(V0, V1, V2) -> ('un--groupBy'(fun (V3) -> fun (V4) -> case V0 of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V5, V6) -> ((V5((V1(V3))))((V1(V4)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V2)).
'un--groupBy'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> case ('nested--6139-3537--in--un--go'(V2, V3, V0, V2, V3)) of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V4, V5) -> [V4 | V5] end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--groupAllWith'(V0, V1, V2) -> ('un--groupWith'(case V0 of {'Idris.Prelude.EqOrd.MkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V3, V4, V5, V6, V7, V8, V9, V10) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V1, ('un--sortBy'(fun (V11) -> fun (V12) -> ('Idris.Idris2.Prelude.EqOrd':'un--comparing'(V0, V1, V11, V12)) end end, V2)))).
'un--group'(V0, V1) -> ('un--groupBy'(fun (V2) -> fun (V3) -> case V0 of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V4, V5) -> ((V4(V2))(V3)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V1)).
'un--foldr1By'(V0, V1, V2) -> case V2 of [E0 | E1] -> (fun (V3, V4) -> case V4 of [] -> (V1(V3)); [E2 | E3] -> (fun (V5, V6) -> ((V0(V3))(('un--foldr1By'(V0, V1, V4)))) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--foldr1'(V0, V1) -> ('un--foldr1By'(V0, fun (V2) -> V2 end, V1)).
'un--foldl1By'(V0, V1, V2) -> case V2 of [E0 | E1] -> (fun (V3, V4) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V0, (V1(V3)), V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--foldl1'(V0, V1) -> ('un--foldl1By'(V0, fun (V2) -> V2 end, V1)).
'un--findIndices'(V0, V1) -> ('nested--3740-1188--in--un--h'(V0, 0, V1)).
'un--findIndex'(V0, V1) -> case V1 of [] -> {'Idris.Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of 1 -> {'Idris.Prelude.Types.Just', 0}; 0 -> ('Idris.Idris2.Prelude.Interfaces':'un--<$>'(fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V6, V7)) end end end end, fun (V8) -> (1 + V8) end, ('un--findIndex'(V0, V3)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--find'(V0, V1) -> case V1 of [] -> {'Idris.Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of 1 -> {'Idris.Prelude.Types.Just', V2}; 0 -> ('un--find'(V0, V3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--filter'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of 1 -> [V2 | ('un--filter'(V0, V3))]; 0 -> ('un--filter'(V0, V3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--elemBy'(V0, V1, V2) -> case V2 of [] -> 0; [E0 | E1] -> (fun (V3, V4) -> case ((V0(V1))(V3)) of 1 -> 1; 0 -> ('un--elemBy'(V0, V1, V4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--dropWhile'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of 1 -> ('un--dropWhile'(V0, V3)); 0 -> [V2 | V3]; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--dropFusion'(V0, V1, V2) -> case V0 of 0 -> 0; _ -> begin (V3 = (V0 - 1)), case V1 of 0 -> 0; _ -> begin (V4 = (V1 - 1)), case V2 of [] -> 0; [E0 | E1] -> (fun (V5, V6) -> ('un--dropFusion'((1 + V3), V4, V6)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end end.
'un--drop'(V0, V1) -> case V0 of 0 -> V1; _ -> begin (V2 = (V0 - 1)), case V1 of [] -> []; [E0 | E1] -> (fun (V3, V4) -> ('un--drop'(V2, V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--deleteBy'(V0, V1, V2) -> case V2 of [] -> []; [E0 | E1] -> (fun (V3, V4) -> case ((V0(V1))(V3)) of 1 -> V4; 0 -> [V3 | ('un--deleteBy'(V0, V1, V4))]; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--delete'(V0, V1, V2) -> ('un--deleteBy'(fun (V3) -> fun (V4) -> case V0 of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V5, V6) -> ((V5(V3))(V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V1, V2)).
'un--consInjective'(V0) -> case V0 of 0 -> {'Idris.Builtin.MkPair', 0, 0}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--catMaybes'(V0) -> ('un--mapMaybe'(fun (V1) -> V1 end, V0)).
'un--break'(V0, V1) -> ('un--span'(fun (V2) -> case (V0(V2)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end, V1)).
'un--appendNilRightNeutral'(V0) -> case V0 of [] -> 0; [E0 | E1] -> (fun (V1, V2) -> 0 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--appendAssociative'(V0, V1, V2) -> case V0 of [] -> 0; [E0 | E1] -> (fun (V3, V4) -> 0 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
