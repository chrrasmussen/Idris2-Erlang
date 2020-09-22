-module('Idris.Idris2.Data.List').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--inBounds-1202'/5,
  'case--sortBy-3341'/4,
  'case--mergeBy-3194'/7,
  'case--mapMaybe-2951'/6,
  'case--replaceOn-2295'/7,
  'case--tails-2243'/2,
  'case--inits-2215'/2,
  'case--case block in partition-2156'/7,
  'case--partition-2135'/5,
  'case--splitAt-2083'/5,
  'case--split-2012'/4,
  'case--case block in span-1938'/5,
  'case--span-1918'/5,
  'case--deleteBy-1799'/6,
  'case--nubBy,nubBy\x{27}-1716'/6,
  'case--lookupBy-1595'/8,
  'case--find-1525'/5,
  'case--filter-1470'/5,
  'case--dropWhile-1416'/5,
  'case--takeWhile-1361'/5,
  'case--iterate-1308'/4,
  'case--with block in inBounds-1231'/6,
  'nested--4419-3478--in--un--spreadHeads'/5,
  'nested--4227-3291--in--un--splitRec'/7,
  'nested--4227-3292--in--un--split'/4,
  'nested--2625-1698--in--un--nubBy\x{27}'/4,
  'dn--un--uninhabited_Uninhabited__(|((=== Nil) ((Prelude.:: $x) $xs)),((~=~ Nil) ((Prelude.:: $x) $xs))|)'/4,
  'dn--un--uninhabited_Uninhabited__(|((=== ((Prelude.:: $x) $xs)) Nil),((~=~ ((Prelude.:: $x) $xs)) Nil)|)'/4,
  'dn--un--uninhabited_Uninhabited__(NonEmpty Nil)'/3,
  'dn--un--uninhabited_Uninhabited__((InBounds $k) Nil)'/4,
  'dn--un--__Impl_Uninhabited_(|((=== Nil) ((Prelude.:: $x) $xs)),((~=~ Nil) ((Prelude.:: $x) $xs))|)'/4,
  'dn--un--__Impl_Uninhabited_(|((=== ((Prelude.:: $x) $xs)) Nil),((~=~ ((Prelude.:: $x) $xs)) Nil)|)'/4,
  'dn--un--__Impl_Uninhabited_(NonEmpty Nil)'/2,
  'dn--un--__Impl_Uninhabited_((InBounds $k) Nil)'/3,
  'un--zipWith3'/8,
  'un--zipWith'/6,
  'un--zip3'/6,
  'un--zip'/4,
  'un--unionBy'/4,
  'un--union'/4,
  'un--transpose'/2,
  'un--toList'/3,
  'un--takeWhile'/3,
  'un--take'/3,
  'un--tails'/2,
  'un--tail\x{27}'/2,
  'un--tail'/3,
  'un--splitOn'/4,
  'un--splitAt'/3,
  'un--split'/3,
  'un--span'/3,
  'un--sorted'/3,
  'un--sortBy'/3,
  'un--sort'/3,
  'un--snoc'/3,
  'un--reverseOnto'/3,
  'un--reverse'/2,
  'un--revOnto'/3,
  'un--revAppend'/3,
  'un--replicate'/3,
  'un--replaceOn'/5,
  'un--partition'/3,
  'un--nubBy'/3,
  'un--nub'/3,
  'un--mergeReplicate'/3,
  'un--mergeBy'/4,
  'un--merge'/4,
  'un--mapMaybe'/4,
  'un--lookupBy'/5,
  'un--lookup'/5,
  'un--lengthMap'/4,
  'un--last\x{27}'/2,
  'un--last'/3,
  'un--iterate'/3,
  'un--isSuffixOfBy'/4,
  'un--isSuffixOf'/4,
  'un--isPrefixOfBy'/4,
  'un--isPrefixOf'/4,
  'un--isNil'/2,
  'un--isInfixOf'/4,
  'un--isCons'/2,
  'un--intersperse'/3,
  'un--intersectBy'/4,
  'un--intersectAllBy'/3,
  'un--intersectAll'/3,
  'un--intersect'/4,
  'un--intercalate'/3,
  'un--inits'/2,
  'un--init\x{27}'/2,
  'un--init'/3,
  'un--index'/4,
  'un--inBounds'/3,
  'un--head\x{27}'/2,
  'un--head'/3,
  'un--foldr1\x{27}'/3,
  'un--foldr1'/4,
  'un--foldl1\x{27}'/3,
  'un--foldl1'/4,
  'un--find'/3,
  'un--filter'/3,
  'un--elemBy'/4,
  'un--dropWhile'/3,
  'un--dropFusion'/4,
  'un--drop'/3,
  'un--deleteBy'/4,
  'un--delete'/4,
  'un--consInjective'/7,
  'un--break'/3,
  'un--appendNilRightNeutral'/2,
  'un--appendAssociative'/4
]).
'with--inBounds-1202'(V0, V1, V2, V3, V4) -> case V3 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V5) -> {'Idris.Prelude.Types.Yes', {'Idris.Data.List.InLater', V5}} end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V6) -> {'Idris.Prelude.Types.No', fun (V7) -> case V7 of {'Idris.Data.List.InLater', E2} -> (fun (V8) -> (V6(V8)) end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--sortBy-3341'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V4, V5) -> ('un--mergeBy'('erased', V2, ('un--sortBy'('erased', V2, V4)), ('un--sortBy'('erased', V2, V5)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--mergeBy-3194'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of 0 -> [V1 | ('un--mergeBy'('erased', V5, V2, [V3 | V4]))]; _ -> [V3 | ('un--mergeBy'('erased', V5, [V1 | V2], V4))] end.
'case--mapMaybe-2951'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> ('un--mapMaybe'('erased', 'erased', V4, V3)) end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V6) -> [V6 | ('un--mapMaybe'('erased', 'erased', V4, V3))] end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--replaceOn-2295'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of 0 -> V3; 1 -> V5; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--tails-2243'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> ('un--tails'('erased', V3)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--inits-2215'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__List'('erased', 'erased', fun (V4) -> [V2 | V4] end, ('un--inits'('erased', V3)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in partition-2156'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of 0 -> {'Idris.Builtin.MkPair', [V3 | V4], V5}; 1 -> {'Idris.Builtin.MkPair', V4, [V3 | V5]}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--partition-2135'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V5, V6) -> ('case--case block in partition-2156'('erased', V2, V3, V1, V5, V6, (V3(V1)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--splitAt-2083'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V5, V6) -> {'Idris.Builtin.MkPair', [V2 | V5], V6} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--split-2012'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V4, V5) -> case V5 of [] -> ('Idris.Idris2.Data.List1':'un--singleton'('erased', V4)); [E2 | E3] -> (fun (V6, V7) -> ('Idris.Idris2.Data.List1':'un--cons'('erased', V4, ('un--split'('erased', V2, V7)))) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in span-1938'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V5, V6) -> {'Idris.Builtin.MkPair', [V3 | V5], V6} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--span-1918'(V0, V1, V2, V3, V4) -> case V4 of 0 -> ('case--case block in span-1938'('erased', V2, V3, V1, ('un--span'('erased', V3, V2)))); 1 -> {'Idris.Builtin.MkPair', [], [V1 | V2]}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--deleteBy-1799'(V0, V1, V2, V3, V4, V5) -> case V5 of 0 -> V3; 1 -> [V2 | ('un--deleteBy'('erased', V4, V1, V3))]; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--nubBy,nubBy\x{27}-1716'(V0, V1, V2, V3, V4, V5) -> case V5 of 0 -> ('nested--2625-1698--in--un--nubBy\x{27}'('erased', V4, V3, V2)); 1 -> [V1 | ('nested--2625-1698--in--un--nubBy\x{27}'('erased', [V1 | V4], V3, V2))]; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--lookupBy-1595'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V7 of 0 -> {'Idris.Prelude.Types.Just', V4}; 1 -> ('un--lookupBy'('erased', 'erased', V6, V2, V5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--find-1525'(V0, V1, V2, V3, V4) -> case V4 of 0 -> {'Idris.Prelude.Types.Just', V1}; 1 -> ('un--find'('erased', V3, V2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--filter-1470'(V0, V1, V2, V3, V4) -> case V4 of 0 -> [V1 | ('un--filter'('erased', V3, V2))]; 1 -> ('un--filter'('erased', V3, V2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--dropWhile-1416'(V0, V1, V2, V3, V4) -> case V4 of 0 -> ('un--dropWhile'('erased', V3, V2)); 1 -> [V1 | V2]; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--takeWhile-1361'(V0, V1, V2, V3, V4) -> case V4 of 0 -> [V1 | ('un--takeWhile'('erased', V3, V2))]; 1 -> []; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--iterate-1308'(V0, V1, V2, V3) -> case V3 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> [] end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V4) -> ('un--iterate'('erased', V2, V4)) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--with block in inBounds-1231'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Idris.Data.List.InLater', E0} -> (fun (V6) -> (V3(V6)) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--4419-3478--in--un--spreadHeads'(V0, V1, V2, V3, V4) -> case V3 of [] -> V4; [E0 | E1] -> (fun (V5, V6) -> case V4 of [] -> [[V5 | []] | ('nested--4419-3478--in--un--spreadHeads'('erased', V1, V2, V6, []))]; [E2 | E3] -> (fun (V7, V8) -> [[V5 | V7] | ('nested--4419-3478--in--un--spreadHeads'('erased', V1, V2, V6, V8))] end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--4227-3291--in--un--splitRec'(V0, V1, V2, V3, V4, V5, V6) -> case V4 of [E0 | E1] -> (fun (V7, V8) -> case V8 of [E2 | E3] -> (fun (V9, V10) -> case V5 of [E4 | E5] -> (fun (V11, V12) -> ('nested--4227-3291--in--un--splitRec'('erased', V1, V2, 'erased', V10, V12, fun (V13) -> (V6([V11 | V13])) end)) end(E4, E5)); _ -> {'Idris.Builtin.MkPair', V5, (V6([]))} end end(E2, E3)); _ -> {'Idris.Builtin.MkPair', V5, (V6([]))} end end(E0, E1)); _ -> {'Idris.Builtin.MkPair', V5, (V6([]))} end.
'nested--4227-3292--in--un--split'(V0, V1, V2, V3) -> ('nested--4227-3291--in--un--splitRec'('erased', V1, V2, 'erased', V3, V3, fun (V4) -> V4 end)).
'nested--2625-1698--in--un--nubBy\x{27}'(V0, V1, V2, V3) -> case V3 of [] -> []; [E0 | E1] -> (fun (V4, V5) -> ('case--nubBy,nubBy\x{27}-1716'('erased', V4, V5, V2, V1, ('un--elemBy'('erased', V2, V4, V1)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--uninhabited_Uninhabited__(|((=== Nil) ((Prelude.:: $x) $xs)),((~=~ Nil) ((Prelude.:: $x) $xs))|)'(V0, V1, V2, V3) -> ('erlang':'throw'("No clauses")).
'dn--un--uninhabited_Uninhabited__(|((=== ((Prelude.:: $x) $xs)) Nil),((~=~ ((Prelude.:: $x) $xs)) Nil)|)'(V0, V1, V2, V3) -> ('erlang':'throw'("No clauses")).
'dn--un--uninhabited_Uninhabited__(NonEmpty Nil)'(V0, V1, V2) -> ('erlang':'throw'("No clauses")).
'dn--un--uninhabited_Uninhabited__((InBounds $k) Nil)'(V0, V1, V2, V3) -> ('erlang':'throw'("No clauses")).
'dn--un--__Impl_Uninhabited_(|((=== Nil) ((Prelude.:: $x) $xs)),((~=~ Nil) ((Prelude.:: $x) $xs))|)'(V0, V1, V2, V3) -> ('dn--un--uninhabited_Uninhabited__(|((=== Nil) ((Prelude.:: $x) $xs)),((~=~ Nil) ((Prelude.:: $x) $xs))|)'('erased', 'erased', 'erased', V3)).
'dn--un--__Impl_Uninhabited_(|((=== ((Prelude.:: $x) $xs)) Nil),((~=~ ((Prelude.:: $x) $xs)) Nil)|)'(V0, V1, V2, V3) -> ('dn--un--uninhabited_Uninhabited__(|((=== ((Prelude.:: $x) $xs)) Nil),((~=~ ((Prelude.:: $x) $xs)) Nil)|)'('erased', 'erased', 'erased', V3)).
'dn--un--__Impl_Uninhabited_(NonEmpty Nil)'(V0, V1) -> ('dn--un--uninhabited_Uninhabited__(NonEmpty Nil)'('erased', 'erased', V1)).
'dn--un--__Impl_Uninhabited_((InBounds $k) Nil)'(V0, V1, V2) -> ('dn--un--uninhabited_Uninhabited__((InBounds $k) Nil)'('erased', 'erased', 'erased', V2)).
'un--zipWith3'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V5 of [] -> []; _ -> case V6 of [] -> []; _ -> case V7 of [] -> []; _ -> case V5 of [E0 | E1] -> (fun (V8, V9) -> case V6 of [E2 | E3] -> (fun (V10, V11) -> case V7 of [E4 | E5] -> (fun (V12, V13) -> [(((V4(V8))(V10))(V12)) | ('un--zipWith3'('erased', 'erased', 'erased', 'erased', V4, V9, V11, V13))] end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end.
'un--zipWith'(V0, V1, V2, V3, V4, V5) -> case V4 of [] -> []; _ -> case V5 of [] -> []; _ -> case V4 of [E0 | E1] -> (fun (V6, V7) -> case V5 of [E2 | E3] -> (fun (V8, V9) -> [((V3(V6))(V8)) | ('un--zipWith'('erased', 'erased', 'erased', V3, V7, V9))] end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--zip3'(V0, V1, V2, V3, V4, V5) -> ('un--zipWith3'('erased', 'erased', 'erased', 'erased', fun (V6) -> fun (V7) -> fun (V8) -> {'Idris.Builtin.MkPair', V6, {'Idris.Builtin.MkPair', V7, V8}} end end end, V3, V4, V5)).
'un--zip'(V0, V1, V2, V3) -> ('un--zipWith'('erased', 'erased', 'erased', fun (V4) -> fun (V5) -> {'Idris.Builtin.MkPair', V4, V5} end end, V2, V3)).
'un--unionBy'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.Types.List':'un--++'('erased', V2, ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable__List'('erased', 'erased', fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.Basics':'un--flip'('erased', 'erased', 'erased', fun (V6) -> fun (V7) -> ('un--deleteBy'('erased', V1, V6, V7)) end end, V4, V5)) end end, ('un--nubBy'('erased', V1, V3)), V2)))).
'un--union'(V0, V1, V2, V3) -> ('un--unionBy'('erased', case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E0, E1} -> (fun (V4, V5) -> fun (V6) -> fun (V7) -> ((V4(V6))(V7)) end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V2, V3)).
'un--transpose'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> ('nested--4419-3478--in--un--spreadHeads'('erased', V2, V3, V2, ('un--transpose'('erased', V3)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--toList'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', E0, E1} -> (fun (V3, V4) -> fun (V5) -> (((((V3('erased'))('erased'))(fun (V6) -> fun (V7) -> [V6 | V7] end end))([]))(V5)) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--takeWhile'(V0, V1, V2) -> case V2 of [] -> []; [E0 | E1] -> (fun (V3, V4) -> ('case--takeWhile-1361'('erased', V3, V4, V1, (V1(V3)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--take'(V0, V1, V2) -> case V1 of 0 -> []; _ -> begin (V3 = (V1 - 1)), case V2 of [E0 | E1] -> (fun (V4, V5) -> [V4 | ('un--take'('erased', V3, V5))] end(E0, E1)); _ -> [] end end end.
'un--tails'(V0, V1) -> [V1 | case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> ('un--tails'('erased', V3)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end].
'un--tail\x{27}'(V0, V1) -> case V1 of [] -> {'Idris.Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V2, V3) -> {'Idris.Prelude.Types.Just', V3} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--tail'(V0, V1, V2) -> case V1 of [E0 | E1] -> (fun (V3, V4) -> V4 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--splitOn'(V0, V1, V2, V3) -> ('un--split'('erased', fun (V4) -> case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E0, E1} -> (fun (V5, V6) -> ((V5(V4))(V2)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end, V3)).
'un--splitAt'(V0, V1, V2) -> case V1 of 0 -> {'Idris.Builtin.MkPair', [], V2}; _ -> begin (V3 = (V1 - 1)), case V2 of [] -> {'Idris.Builtin.MkPair', [], []}; [E0 | E1] -> (fun (V4, V5) -> ('case--splitAt-2083'('erased', V3, V4, V5, ('un--splitAt'('erased', V3, V5)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--split'(V0, V1, V2) -> ('case--split-2012'('erased', V2, V1, ('un--break'('erased', V1, V2)))).
'un--span'(V0, V1, V2) -> case V2 of [] -> {'Idris.Builtin.MkPair', [], []}; [E0 | E1] -> (fun (V3, V4) -> ('case--span-1918'('erased', V3, V4, V1, (V1(V3)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--sorted'(V0, V1, V2) -> case V2 of [E0 | E1] -> (fun (V3, V4) -> case V4 of [E2 | E3] -> (fun (V5, V6) -> ('Idris.Idris2.Prelude.Basics':'un--&&'(case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V7, V8, V9, V10, V11, V12, V13, V14) -> ((V11(V3))(V5)) end(E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, fun () -> ('un--sorted'('erased', V1, V4)) end)) end(E2, E3)); _ -> 0 end end(E0, E1)); _ -> 0 end.
'un--sortBy'(V0, V1, V2) -> case V2 of [] -> []; [E0 | E1] -> (fun (V3, V4) -> case V4 of [] -> [V3 | []]; _ -> ('case--sortBy-3341'('erased', V2, V1, ('nested--4227-3292--in--un--split'('erased', V2, V1, V2)))) end end(E0, E1)); _ -> ('case--sortBy-3341'('erased', V2, V1, ('nested--4227-3292--in--un--split'('erased', V2, V1, V2)))) end.
'un--sort'(V0, V1, V2) -> ('un--sortBy'('erased', case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V3, V4, V5, V6, V7, V8, V9, V10) -> fun (V11) -> fun (V12) -> ((V4(V11))(V12)) end end end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V2)).
'un--snoc'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types.List':'un--++'('erased', V1, [V2 | []])).
'un--reverseOnto'(V0, V1, V2) -> case V2 of [] -> V1; [E0 | E1] -> (fun (V3, V4) -> ('un--reverseOnto'('erased', [V3 | V1], V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--reverse'(V0, V1) -> ('un--reverseOnto'('erased', [], V1)).
'un--revOnto'(V0, V1, V2) -> case V2 of [] -> {'Idris.Builtin.Refl'}; [E0 | E1] -> (fun (V3, V4) -> {'Idris.Builtin.Refl'} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--revAppend'(V0, V1, V2) -> case V1 of [] -> {'Idris.Builtin.Refl'}; [E0 | E1] -> (fun (V3, V4) -> {'Idris.Builtin.Refl'} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--replicate'(V0, V1, V2) -> case V1 of 0 -> []; _ -> begin (V3 = (V1 - 1)), [V2 | ('un--replicate'('erased', V3, V2))] end end.
'un--replaceOn'(V0, V1, V2, V3, V4) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__List'('erased', 'erased', fun (V5) -> ('case--replaceOn-2295'('erased', V1, V2, V3, V4, V5, case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E0, E1} -> (fun (V6, V7) -> ((V6(V5))(V2)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end, V4)).
'un--partition'(V0, V1, V2) -> case V2 of [] -> {'Idris.Builtin.MkPair', [], []}; [E0 | E1] -> (fun (V3, V4) -> ('case--partition-2135'('erased', V3, V4, V1, ('un--partition'('erased', V1, V4)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--nubBy'(V0, V1, V2) -> ('nested--2625-1698--in--un--nubBy\x{27}'('erased', [], V1, V2)).
'un--nub'(V0, V1, V2) -> ('un--nubBy'('erased', case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E0, E1} -> (fun (V3, V4) -> fun (V5) -> fun (V6) -> ((V3(V5))(V6)) end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V2)).
'un--mergeReplicate'(V0, V1, V2) -> case V2 of [] -> []; [E0 | E1] -> (fun (V3, V4) -> [V1 | [V3 | ('un--mergeReplicate'('erased', V1, V4))]] end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--mergeBy'(V0, V1, V2, V3) -> case V2 of [] -> V3; _ -> case V3 of [] -> V2; _ -> case V2 of [E0 | E1] -> (fun (V4, V5) -> case V3 of [E2 | E3] -> (fun (V6, V7) -> ('case--mergeBy-3194'('erased', V4, V5, V6, V7, V1, ((V1(V4))(V6)))) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--merge'(V0, V1, V2, V3) -> ('un--mergeBy'('erased', case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V4, V5, V6, V7, V8, V9, V10, V11) -> fun (V12) -> fun (V13) -> ((V5(V12))(V13)) end end end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V2, V3)).
'un--mapMaybe'(V0, V1, V2, V3) -> case V3 of [] -> []; [E0 | E1] -> (fun (V4, V5) -> ('case--mapMaybe-2951'('erased', 'erased', V4, V5, V2, (V2(V4)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lookupBy'(V0, V1, V2, V3, V4) -> case V4 of [] -> {'Idris.Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V5, V6) -> case V5 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V7, V8) -> ('case--lookupBy-1595'('erased', 'erased', V3, V7, V8, V6, V2, ((V2(V3))(V7)))) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lookup'(V0, V1, V2, V3, V4) -> ('un--lookupBy'('erased', 'erased', case V2 of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E0, E1} -> (fun (V5, V6) -> fun (V7) -> fun (V8) -> ((V5(V7))(V8)) end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V3, V4)).
'un--lengthMap'(V0, V1, V2, V3) -> case V3 of [] -> {'Idris.Builtin.Refl'}; [E0 | E1] -> (fun (V4, V5) -> ('Idris.Idris2.Prelude.Basics':'un--cong'('erased', 'erased', 'erased', 'erased', 'erased', ('un--lengthMap'('erased', 'erased', 'erased', V5)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--last\x{27}'(V0, V1) -> case V1 of [] -> {'Idris.Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V2, V3) -> {'Idris.Prelude.Types.Just', ('un--last'('erased', V1, 'erased'))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--last'(V0, V1, V2) -> case V1 of [E0 | E1] -> (fun (V3, V4) -> case V4 of [] -> V3; [E2 | E3] -> (fun (V5, V6) -> ('un--last'('erased', [V5 | V6], 'erased')) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--iterate'(V0, V1, V2) -> [V2 | ('case--iterate-1308'('erased', V2, V1, (V1(V2))))].
'un--isSuffixOfBy'(V0, V1, V2, V3) -> ('un--isPrefixOfBy'('erased', V1, ('un--reverse'('erased', V2)), ('un--reverse'('erased', V3)))).
'un--isSuffixOf'(V0, V1, V2, V3) -> ('un--isSuffixOfBy'('erased', case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E0, E1} -> (fun (V4, V5) -> fun (V6) -> fun (V7) -> ((V4(V6))(V7)) end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V2, V3)).
'un--isPrefixOfBy'(V0, V1, V2, V3) -> case V2 of [] -> 0; _ -> case V3 of [] -> 1; _ -> case V2 of [E0 | E1] -> (fun (V4, V5) -> case V3 of [E2 | E3] -> (fun (V6, V7) -> ('Idris.Idris2.Prelude.Basics':'un--&&'(((V1(V4))(V6)), fun () -> ('un--isPrefixOfBy'('erased', V1, V5, V7)) end)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--isPrefixOf'(V0, V1, V2, V3) -> ('un--isPrefixOfBy'('erased', case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E0, E1} -> (fun (V4, V5) -> fun (V6) -> fun (V7) -> ((V4(V6))(V7)) end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V2, V3)).
'un--isNil'(V0, V1) -> case V1 of [] -> 0; _ -> 1 end.
'un--isInfixOf'(V0, V1, V2, V3) -> (('Idris.Idris2.Prelude.Interfaces':'un--any'('erased', 'erased', {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable__List'('erased', 'erased', V6, V7, V8)) end end end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable__List'('erased', 'erased', V11, V12, V13)) end end end end end}, fun (V14) -> ('un--isPrefixOf'('erased', V1, V2, V14)) end))(('un--tails'('erased', V3)))).
'un--isCons'(V0, V1) -> case V1 of [] -> 1; _ -> 0 end.
'un--intersperse'(V0, V1, V2) -> case V2 of [] -> []; [E0 | E1] -> (fun (V3, V4) -> [V3 | ('un--mergeReplicate'('erased', V1, V4))] end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--intersectBy'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad__List'('erased', 'erased', V2, fun (V4) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad__List'('erased', 'erased', ('Idris.Idris2.Prelude.Interfaces':'un--guard'('erased', {'Idris.Prelude.Interfaces.dn--un--__mkAlternative', {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__List'('erased', 'erased', V7, V8)) end end end end, fun (V9) -> fun (V10) -> ('Idris.Idris2.Prelude.Types':'dn--un--pure_Applicative__List'('erased', V10)) end end, fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> ('Idris.Idris2.Prelude.Types':'dn--un--<*>_Applicative__List'('erased', 'erased', V13, V14)) end end end end}, fun (V15) -> ('Idris.Idris2.Prelude.Types':'dn--un--empty_Alternative__List'('erased')) end, fun (V16) -> fun (V17) -> fun (V18) -> ('Idris.Idris2.Prelude.Types':'dn--un--<|>_Alternative__List'('erased', V17, V18)) end end end}, (('Idris.Idris2.Prelude.Interfaces':'un--any'('erased', 'erased', {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable__List'('erased', 'erased', V21, V22, V23)) end end end end end, fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable__List'('erased', 'erased', V26, V27, V28)) end end end end end}, (V1(V4))))(V3)))), fun (V29) -> ('Idris.Idris2.Prelude.Types':'dn--un--pure_Applicative__List'('erased', V4)) end)) end)).
'un--intersectAllBy'(V0, V1, V2) -> case V2 of [] -> []; [E0 | E1] -> (fun (V3, V4) -> ('un--filter'('erased', fun (V5) -> (('Idris.Idris2.Prelude.Interfaces':'un--all'('erased', 'erased', {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable__List'('erased', 'erased', V8, V9, V10)) end end end end end, fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable__List'('erased', 'erased', V13, V14, V15)) end end end end end}, fun (V16) -> ('un--elemBy'('erased', V1, V5, V16)) end))(V4)) end, V3)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--intersectAll'(V0, V1, V2) -> ('un--intersectAllBy'('erased', case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E0, E1} -> (fun (V3, V4) -> fun (V5) -> fun (V6) -> ((V3(V5))(V6)) end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V2)).
'un--intersect'(V0, V1, V2, V3) -> ('un--intersectBy'('erased', case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E0, E1} -> (fun (V4, V5) -> fun (V6) -> fun (V7) -> ((V4(V6))(V7)) end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V2, V3)).
'un--intercalate'(V0, V1, V2) -> (('Idris.Idris2.Prelude.Interfaces':'un--concat'('erased', 'erased', {'Idris.Builtin.MkPair', {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable__List'('erased', 'erased', V5, V6, V7)) end end end end end, fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable__List'('erased', 'erased', V10, V11, V12)) end end end end end}, {'Idris.Prelude.Interfaces.dn--un--__mkMonoid', fun (V13) -> fun (V14) -> ('Idris.Idris2.Prelude.Types':'dn--un--<+>_Semigroup__(List $a)'('erased', V13, V14)) end end, ('Idris.Idris2.Prelude.Types':'dn--un--neutral_Monoid__(List $a)'('erased'))}}))(('un--intersperse'('erased', V1, V2)))).
'un--inits'(V0, V1) -> [[] | case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__List'('erased', 'erased', fun (V4) -> [V2 | V4] end, ('un--inits'('erased', V3)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end].
'un--init\x{27}'(V0, V1) -> case V1 of [] -> {'Idris.Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V2, V3) -> {'Idris.Prelude.Types.Just', ('un--init'('erased', V1, 'erased'))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--init'(V0, V1, V2) -> case V1 of [E0 | E1] -> (fun (V3, V4) -> case V4 of [] -> []; [E2 | E3] -> (fun (V5, V6) -> [V3 | ('un--init'('erased', [V5 | V6], 'erased'))] end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--index'(V0, V1, V2, V3) -> case V1 of 0 -> case V2 of [E3 | E4] -> (fun (V4, V5) -> case V3 of {'Idris.Data.List.InFirst'} -> (fun () -> V4 end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> begin (V6 = (V1 - 1)), case V2 of [E0 | E1] -> (fun (V7, V8) -> case V3 of {'Idris.Data.List.InLater', E2} -> (fun (V9) -> ('un--index'('erased', V6, V8, V9)) end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--inBounds'(V0, V1, V2) -> case V2 of [] -> {'Idris.Prelude.Types.No', fun (V3) -> ('dn--un--uninhabited_Uninhabited__((InBounds $k) Nil)'('erased', 'erased', 'erased', V3)) end}; _ -> case V1 of 0 -> case V2 of [E2 | E3] -> (fun (V4, V5) -> {'Idris.Prelude.Types.Yes', {'Idris.Data.List.InFirst'}} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> begin (V6 = (V1 - 1)), case V2 of [E0 | E1] -> (fun (V7, V8) -> ('with--inBounds-1202'('erased', V6, V8, ('un--inBounds'('erased', V6, V8)), V7)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end.
'un--head\x{27}'(V0, V1) -> case V1 of [] -> {'Idris.Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V2, V3) -> {'Idris.Prelude.Types.Just', V2} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--head'(V0, V1, V2) -> case V1 of [E0 | E1] -> (fun (V3, V4) -> V3 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--foldr1\x{27}'(V0, V1, V2) -> case V2 of [] -> {'Idris.Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V3, V4) -> {'Idris.Prelude.Types.Just', ('un--foldr1'('erased', V1, V2, 'erased'))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--foldr1'(V0, V1, V2, V3) -> case V2 of [E0 | E1] -> (fun (V4, V5) -> case V5 of [] -> V4; [E2 | E3] -> (fun (V6, V7) -> ((V1(V4))(('un--foldr1'('erased', V1, [V6 | V7], 'erased')))) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--foldl1\x{27}'(V0, V1, V2) -> case V2 of [] -> {'Idris.Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V3, V4) -> {'Idris.Prelude.Types.Just', ('un--foldl1'('erased', V1, V2, 'erased'))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--foldl1'(V0, V1, V2, V3) -> case V2 of [E0 | E1] -> (fun (V4, V5) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable__List'('erased', 'erased', V1, V4, V5)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--find'(V0, V1, V2) -> case V2 of [] -> {'Idris.Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V3, V4) -> ('case--find-1525'('erased', V3, V4, V1, (V1(V3)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--filter'(V0, V1, V2) -> case V2 of [] -> []; [E0 | E1] -> (fun (V3, V4) -> ('case--filter-1470'('erased', V3, V4, V1, (V1(V3)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--elemBy'(V0, V1, V2, V3) -> case V3 of [] -> 1; [E0 | E1] -> (fun (V4, V5) -> ('Idris.Idris2.Prelude.Basics':'un--||'(((V1(V2))(V4)), fun () -> ('un--elemBy'('erased', V1, V2, V5)) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--dropWhile'(V0, V1, V2) -> case V2 of [] -> []; [E0 | E1] -> (fun (V3, V4) -> ('case--dropWhile-1416'('erased', V3, V4, V1, (V1(V3)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--dropFusion'(V0, V1, V2, V3) -> case V1 of 0 -> {'Idris.Builtin.Refl'}; _ -> begin (V4 = (V1 - 1)), case V2 of 0 -> {'Idris.Builtin.Refl'}; _ -> begin (V5 = (V2 - 1)), case V3 of [] -> {'Idris.Builtin.Refl'}; [E0 | E1] -> (fun (V6, V7) -> ('un--dropFusion'('erased', (1 + V4), V5, V7)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end end.
'un--drop'(V0, V1, V2) -> case V1 of 0 -> V2; _ -> begin (V3 = (V1 - 1)), case V2 of [] -> []; [E0 | E1] -> (fun (V4, V5) -> ('un--drop'('erased', V3, V5)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--deleteBy'(V0, V1, V2, V3) -> case V3 of [] -> []; [E0 | E1] -> (fun (V4, V5) -> ('case--deleteBy-1799'('erased', V2, V4, V5, V1, ((V1(V2))(V4)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--delete'(V0, V1, V2, V3) -> ('un--deleteBy'('erased', case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E0, E1} -> (fun (V4, V5) -> fun (V6) -> fun (V7) -> ((V4(V6))(V7)) end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V2, V3)).
'un--consInjective'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Idris.Builtin.Refl'} -> (fun () -> {'Idris.Builtin.MkPair', {'Idris.Builtin.Refl'}, {'Idris.Builtin.Refl'}} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--break'(V0, V1, V2) -> ('un--span'('erased', fun (V3) -> ('Idris.Idris2.Prelude.Basics':'un--not'((V1(V3)))) end, V2)).
'un--appendNilRightNeutral'(V0, V1) -> case V1 of [] -> {'Idris.Builtin.Refl'}; [E0 | E1] -> (fun (V2, V3) -> {'Idris.Builtin.Refl'} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--appendAssociative'(V0, V1, V2, V3) -> case V1 of [] -> {'Idris.Builtin.Refl'}; [E0 | E1] -> (fun (V4, V5) -> {'Idris.Builtin.Refl'} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
