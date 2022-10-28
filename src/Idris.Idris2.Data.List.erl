-module('Idris.Idris2.Data.List').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--mapMaybeAppend-8835'/7,
  'with--with block in mapMaybeFusion-8740'/9,
  'with--mapMaybeFusion-8709'/8,
  'with--filterAppend-8607'/6,
  'with--inBounds-3222'/5,
  'case--groupBy-7310'/4,
  'case--case block in groupBy,go-7244'/9,
  'case--groupBy,go-7216'/7,
  'case--suffixOfBy-7001'/4,
  'case--case block in unzipWith3-5798'/7,
  'case--unzipWith3-5759'/4,
  'case--case block in unzipWith-5686'/6,
  'case--unzipWith-5654'/4,
  'case--replaceWhen-4974'/5,
  'case--tails-4856'/1,
  'case--inits-4820'/1,
  'case--case block in partition-4761'/6,
  'case--partition-4741'/4,
  'case--splitAt-4685'/4,
  'case--split-4610'/3,
  'case--case block in span-4513'/4,
  'case--span-4494'/4,
  'case--case block in spanBy-4433'/5,
  'case--spanBy-4388'/4,
  'case--deleteBy-4149'/5,
  'case--nubBy,nubBy\x{27}-3970'/5,
  'case--lookupBy-3833'/6,
  'case--findIndices,h-3748'/5,
  'case--findIndex-3673'/4,
  'case--find-3615'/4,
  'case--dropWhile-3561'/4,
  'case--takeWhile-3506'/4,
  'case--unfoldr-3411'/3,
  'case--iterate-3362'/3,
  'case--with block in inBounds-3252'/5,
  'nested--7677-7125--in--un--spreadHeads'/4,
  'nested--7233-6697--in--un--splitRec'/5,
  'nested--7233-6698--in--un--split'/3,
  'nested--4385-3930--in--un--nubBy\x{27}'/3,
  'nested--4181-3727--in--un--h'/3,
  'nested--7732-7190--in--un--go'/5,
  'nested--7370-6835--in--un--go'/4,
  'dn--un--zip_Zippable_List'/2,
  'dn--un--zipWith_Zippable_List'/3,
  'dn--un--zipWith3_Zippable_List'/4,
  'dn--un--zip3_Zippable_List'/3,
  'dn--un--unzip_Zippable_List'/1,
  'dn--un--unzipWith_Zippable_List'/2,
  'dn--un--unzipWith3_Zippable_List'/2,
  'dn--un--unzip3_Zippable_List'/1,
  'dn--un--uninhabited_Uninhabited_(|((Builtin.=== Nil) ((:: $x) $xs)),((Builtin.~=~ Nil) ((:: $x) $xs))|)'/1,
  'dn--un--uninhabited_Uninhabited_(|((Builtin.=== ((:: $x) $xs)) Nil),((Builtin.~=~ ((:: $x) $xs)) Nil)|)'/1,
  'dn--un--uninhabited_Uninhabited_(|((Builtin.=== ((:: $x) $xs)) ((:: $y) $ys)),((Builtin.~=~ ((:: $x) $xs)) ((:: $y) $ys))|)'/2,
  'dn--un--uninhabited_Uninhabited_(NonEmpty Nil)'/1,
  'dn--un--uninhabited_Uninhabited_((InBounds (S $k)) ((:: $x) $xs))'/2,
  'dn--un--uninhabited_Uninhabited_((InBounds $k) Nil)'/1,
  'dn--un--biinjective_Biinjective_Prelude.::'/5,
  'dn--un--__Impl_Zippable_List'/0,
  'dn--un--__Impl_Uninhabited_(|((Builtin.=== Nil) ((:: $x) $xs)),((Builtin.~=~ Nil) ((:: $x) $xs))|)'/1,
  'dn--un--__Impl_Uninhabited_(|((Builtin.=== ((:: $x) $xs)) Nil),((Builtin.~=~ ((:: $x) $xs)) Nil)|)'/1,
  'dn--un--__Impl_Uninhabited_(|((Builtin.=== ((:: $x) $xs)) ((:: $y) $ys)),((Builtin.~=~ ((:: $x) $xs)) ((:: $y) $ys))|)'/2,
  'dn--un--__Impl_Uninhabited_(NonEmpty Nil)'/1,
  'dn--un--__Impl_Uninhabited_((InBounds (S $k)) ((:: $x) $xs))'/2,
  'dn--un--__Impl_Uninhabited_((InBounds $k) Nil)'/1,
  'dn--un--__Impl_Biinjective_Prelude.::'/5,
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
  'un--suffixOfBy'/3,
  'un--splitOn'/3,
  'un--splitAt'/2,
  'un--split'/2,
  'un--spanBy'/2,
  'un--span'/2,
  'un--sorted'/2,
  'un--sortBy'/2,
  'un--sort'/2,
  'un--snoc'/2,
  'un--singleton'/1,
  'un--reverseReverseOnto'/2,
  'un--reverseInvolutive'/1,
  'un--revAppend'/2,
  'un--replicateTR'/3,
  'un--replicate'/2,
  'un--replaceWhen'/3,
  'un--replaceOn'/4,
  'un--replaceAt'/3,
  'un--prefixOfBy'/3,
  'un--partition'/2,
  'un--nubBy'/2,
  'un--nub'/2,
  'un--mergeReplicate'/2,
  'un--mergeBy'/3,
  'un--merge'/3,
  'un--mapMaybeFusion'/3,
  'un--mapMaybeAppend'/3,
  'un--mapFusion'/3,
  'un--mapAppend'/3,
  'un--lookupBy'/3,
  'un--lookup'/3,
  'un--lengthReplicate'/1,
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
  'un--interleave'/2,
  'un--intercalate'/2,
  'un--insertAt'/3,
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
  'un--foldlAppend'/4,
  'un--foldl1By'/3,
  'un--foldl1'/2,
  'un--findIndices'/2,
  'un--findIndex'/2,
  'un--find'/2,
  'un--filterAppend'/3,
  'un--dropWhile'/2,
  'un--dropFusion'/3,
  'un--drop'/2,
  'un--deleteFirstsBy'/3,
  'un--deleteBy'/3,
  'un--deleteAt'/2,
  'un--delete'/3,
  'un--consInjective'/1,
  'un--catMaybes'/1,
  'un--break'/2,
  'un--appendNilRightNeutral'/1,
  'un--appendAssociative'/3,
  'un--\x{5c}\x{5c}'/3
]).
'with--mapMaybeAppend-8835'(V0, V1, V2, V3, V4, V5, V6) -> case V4 of {'Prelude.Types.Nothing'} -> {'Builtin.Refl'}; {'Prelude.Types.Just', V7} -> {'Builtin.Refl'} end.
'with--with block in mapMaybeFusion-8740'(V0, V1, V2, V3, V4, V5, V6, V7, V8) -> case V4 of {'Prelude.Types.Nothing'} -> ('un--mapMaybeFusion'(V3, V8, V7)); {'Prelude.Types.Just', V9} -> {'Builtin.Refl'} end.
'with--mapMaybeFusion-8709'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V4 of {'Prelude.Types.Nothing'} -> ('un--mapMaybeFusion'(V7, V3, V6)); {'Prelude.Types.Just', V8} -> ('with--with block in mapMaybeFusion-8740'('erased', 'erased', V8, V7, (V7(V8)), 'erased', V2, V6, V3)) end.
'with--filterAppend-8607'(V0, V1, V2, V3, V4, V5) -> case V3 of 0 -> {'Builtin.Refl'}; 1 -> {'Builtin.Refl'} end.
'with--inBounds-3222'(V0, V1, V2, V3, V4) -> case V3 of {'Prelude.Types.Yes', V5} -> {'Prelude.Types.Yes', (V5 + 1)}; {'Prelude.Types.No', V6} -> {'Prelude.Types.No', fun (V7) -> case V7 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V8 = (V7 - 1)), (V6(V8)) end end end} end.
'case--groupBy-7310'(V0, V1, V2, V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> [V4 | V5] end.
'case--case block in groupBy,go-7244'(V0, V1, V2, V3, V4, V5, V6, V7, V8) -> case V8 of 1 -> {'Builtin.MkPair', ('Idris.Idris2.Data.List1':'un--cons'(V3, V6)), V7}; 0 -> {'Builtin.MkPair', ('Idris.Idris2.Data.List1':'un--singleton'(V3)), [V6 | V7]} end.
'case--groupBy,go-7216'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Builtin.MkPair', V7, V8} -> case ((V2(V5))(V3)) of 1 -> {'Builtin.MkPair', ('Idris.Idris2.Data.List1':'un--cons'(V5, V7)), V8}; 0 -> {'Builtin.MkPair', ('Idris.Idris2.Data.List1':'un--singleton'(V5)), [V7 | V8]} end end.
'case--suffixOfBy-7001'(V0, V1, V2, V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> {'Prelude.Types.Just', {'Builtin.MkPair', ('Idris.Idris2.Prelude.Types.List':'un--reverse'(V5)), ('Idris.Idris2.Prelude.Types.List':'un--reverse'(V4))}} end.
'case--case block in unzipWith3-5798'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Builtin.MkPair', V7, V8} -> case V8 of {'Builtin.MkPair', V9, V10} -> {'Builtin.MkPair', [V3 | V7], {'Builtin.MkPair', [V4 | V9], [V5 | V10]}} end end.
'case--unzipWith3-5759'(V0, V1, V2, V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> case V5 of {'Builtin.MkPair', V6, V7} -> case ('dn--un--unzipWith3_Zippable_List'(V2, V1)) of {'Builtin.MkPair', V8, V9} -> case V9 of {'Builtin.MkPair', V10, V11} -> {'Builtin.MkPair', [V4 | V8], {'Builtin.MkPair', [V6 | V10], [V7 | V11]}} end end end end.
'case--case block in unzipWith-5686'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Builtin.MkPair', V6, V7} -> {'Builtin.MkPair', [V3 | V6], [V4 | V7]} end.
'case--unzipWith-5654'(V0, V1, V2, V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> case ('dn--un--unzipWith_Zippable_List'(V2, V1)) of {'Builtin.MkPair', V6, V7} -> {'Builtin.MkPair', [V4 | V6], [V5 | V7]} end end.
'case--replaceWhen-4974'(V0, V1, V2, V3, V4) -> case V4 of 1 -> V0; 0 -> V3 end.
'case--tails-4856'(V0) -> case V0 of [] -> []; [E0 | E1] -> (fun (V1, V2) -> ('un--tails'(V2)) end(E0, E1)) end.
'case--inits-4820'(V0) -> case V0 of [] -> []; [E0 | E1] -> (fun (V1, V2) -> ((begin (V8 = fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V6, V7)) end end end end), fun (V9) -> fun (V10) -> ((((V8('erased'))('erased'))(V9))(V10)) end end end(fun (V3) -> [V1 | V3] end))(('un--inits'(V2)))) end(E0, E1)) end.
'case--case block in partition-4761'(V0, V1, V2, V3, V4, V5) -> case V5 of 1 -> {'Builtin.MkPair', [V2 | V3], V4}; 0 -> {'Builtin.MkPair', V3, [V2 | V4]} end.
'case--partition-4741'(V0, V1, V2, V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> case (V2(V0)) of 1 -> {'Builtin.MkPair', [V0 | V4], V5}; 0 -> {'Builtin.MkPair', V4, [V0 | V5]} end end.
'case--splitAt-4685'(V0, V1, V2, V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> {'Builtin.MkPair', [V1 | V4], V5} end.
'case--split-4610'(V0, V1, V2) -> case V2 of {'Builtin.MkPair', V3, V4} -> case V4 of [] -> ('Idris.Idris2.Data.List1':'un--singleton'(V3)); [E0 | E1] -> (fun (V5, V6) -> {'Data.List1.:::', V3, ('Idris.Idris2.Data.List1':'un--forget'(('un--split'(V1, V6))))} end(E0, E1)) end end.
'case--case block in span-4513'(V0, V1, V2, V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> {'Builtin.MkPair', [V2 | V4], V5} end.
'case--span-4494'(V0, V1, V2, V3) -> case V3 of 1 -> case ('un--span'(V2, V1)) of {'Builtin.MkPair', V4, V5} -> {'Builtin.MkPair', [V0 | V4], V5} end; 0 -> {'Builtin.MkPair', [], [V0 | V1]} end.
'case--case block in spanBy-4433'(V0, V1, V2, V3, V4) -> case V4 of {'Builtin.MkPair', V5, V6} -> {'Builtin.MkPair', [V3 | V5], V6} end.
'case--spanBy-4388'(V0, V1, V2, V3) -> case V3 of {'Prelude.Types.Nothing'} -> {'Builtin.MkPair', [], [V0 | V1]}; {'Prelude.Types.Just', V4} -> case ('un--spanBy'(V2, V1)) of {'Builtin.MkPair', V5, V6} -> {'Builtin.MkPair', [V4 | V5], V6} end end.
'case--deleteBy-4149'(V0, V1, V2, V3, V4) -> case V4 of 1 -> V2; 0 -> [V1 | ('un--deleteBy'(V3, V0, V2))] end.
'case--nubBy,nubBy\x{27}-3970'(V0, V1, V2, V3, V4) -> case V4 of 1 -> ('nested--4385-3930--in--un--nubBy\x{27}'(V3, V2, V1)); 0 -> [V0 | ('nested--4385-3930--in--un--nubBy\x{27}'([V0 | V3], V2, V1))] end.
'case--lookupBy-3833'(V0, V1, V2, V3, V4, V5) -> case V5 of 1 -> {'Prelude.Types.Just', V2}; 0 -> ('un--lookupBy'(V4, V0, V3)) end.
'case--findIndices,h-3748'(V0, V1, V2, V3, V4) -> case V4 of 1 -> [V3 | ('nested--4181-3727--in--un--h'(V0, (V3 + 1), V2))]; 0 -> ('nested--4181-3727--in--un--h'(V0, (V3 + 1), V2)) end.
'case--findIndex-3673'(V0, V1, V2, V3) -> case V3 of 1 -> {'Prelude.Types.Just', 0}; 0 -> ((begin (V9 = fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V7, V8)) end end end end), fun (V10) -> fun (V11) -> ((((V9('erased'))('erased'))(V10))(V11)) end end end(fun (V4) -> (V4 + 1) end))(('un--findIndex'(V2, V1)))) end.
'case--find-3615'(V0, V1, V2, V3) -> case V3 of 1 -> {'Prelude.Types.Just', V0}; 0 -> ('un--find'(V2, V1)) end.
'case--dropWhile-3561'(V0, V1, V2, V3) -> case V3 of 1 -> ('un--dropWhile'(V2, V1)); 0 -> [V0 | V1] end.
'case--takeWhile-3506'(V0, V1, V2, V3) -> case V3 of 1 -> [V0 | ('un--takeWhile'(V2, V1))]; 0 -> [] end.
'case--unfoldr-3411'(V0, V1, V2) -> case V2 of {'Prelude.Types.Nothing'} -> []; {'Prelude.Types.Just', V3} -> case V3 of {'Builtin.MkPair', V4, V5} -> [V4 | ('un--unfoldr'(V1, V5))] end end.
'case--iterate-3362'(V0, V1, V2) -> case V2 of {'Prelude.Types.Nothing'} -> []; {'Prelude.Types.Just', V3} -> ('un--iterate'(V1, V3)) end.
'case--with block in inBounds-3252'(V0, V1, V2, V3, V4) -> case V4 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V5 = (V4 - 1)), (V2(V5)) end end.
'nested--7677-7125--in--un--spreadHeads'(V0, V1, V2, V3) -> case V2 of [] -> V3; [E0 | E1] -> (fun (V4, V5) -> case V3 of [] -> [[V4 | []] | ('nested--7677-7125--in--un--spreadHeads'(V0, V1, V5, []))]; [E2 | E3] -> (fun (V6, V7) -> [[V4 | V6] | ('nested--7677-7125--in--un--spreadHeads'(V0, V1, V5, V7))] end(E2, E3)) end end(E0, E1)) end.
'nested--7233-6697--in--un--splitRec'(V0, V1, V2, V3, V4) -> case V2 of [E0 | E1] -> (fun (V5, V6) -> case V6 of [E2 | E3] -> (fun (V7, V8) -> case V3 of [E4 | E5] -> (fun (V9, V10) -> ('nested--7233-6697--in--un--splitRec'(V0, V1, V8, V10, fun (V11) -> (V4([V9 | V11])) end)) end(E4, E5)); _ -> {'Builtin.MkPair', V3, (V4([]))} end end(E2, E3)); _ -> {'Builtin.MkPair', V3, (V4([]))} end end(E0, E1)); _ -> {'Builtin.MkPair', V3, (V4([]))} end.
'nested--7233-6698--in--un--split'(V0, V1, V2) -> ('nested--7233-6697--in--un--splitRec'(V0, V1, V2, V2, fun (V3) -> V3 end)).
'nested--4385-3930--in--un--nubBy\x{27}'(V0, V1, V2) -> case V2 of [] -> []; [E0 | E1] -> (fun (V3, V4) -> case ('Idris.Idris2.Prelude.Types':'un--elemBy'({'Prelude.Interfaces.MkFoldable', fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V7, V8, V9)) end end end end end, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V12, V13, V14)) end end end end end, fun (V15) -> fun (V16) -> ('Idris.Idris2.Prelude.Types':'dn--un--null_Foldable_List'(V16)) end end, fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldlM_Foldable_List'(V20, V21, V22, V23)) end end end end end end end, fun (V24) -> fun (V25) -> V25 end end, fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> fun (V30) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V28, V29, V30)) end end end end end}, V1, V3, V0)) of 1 -> ('nested--4385-3930--in--un--nubBy\x{27}'(V0, V1, V4)); 0 -> [V3 | ('nested--4385-3930--in--un--nubBy\x{27}'([V3 | V0], V1, V4))] end end(E0, E1)) end.
'nested--4181-3727--in--un--h'(V0, V1, V2) -> case V2 of [] -> []; [E0 | E1] -> (fun (V3, V4) -> case (V0(V3)) of 1 -> [V1 | ('nested--4181-3727--in--un--h'(V0, (V1 + 1), V4))]; 0 -> ('nested--4181-3727--in--un--h'(V0, (V1 + 1), V4)) end end(E0, E1)) end.
'nested--7732-7190--in--un--go'(V0, V1, V2, V3, V4) -> case V4 of [] -> {'Builtin.MkPair', ('Idris.Idris2.Data.List1':'un--singleton'(V3)), []}; [E0 | E1] -> (fun (V5, V6) -> case ('nested--7732-7190--in--un--go'(V0, V1, V2, V5, V6)) of {'Builtin.MkPair', V7, V8} -> case ((V2(V3))(V5)) of 1 -> {'Builtin.MkPair', ('Idris.Idris2.Data.List1':'un--cons'(V3, V7)), V8}; 0 -> {'Builtin.MkPair', ('Idris.Idris2.Data.List1':'un--singleton'(V3)), [V7 | V8]} end end end(E0, E1)) end.
'nested--7370-6835--in--un--go'(V0, V1, V2, V3) -> case V2 of [] -> {'Prelude.Types.Just', {'Builtin.MkPair', ('Idris.Idris2.Prelude.Types.SnocList':'un--<>>'(V1, [])), V3}}; _ -> case V3 of [] -> {'Prelude.Types.Nothing'}; _ -> case V2 of [E0 | E1] -> (fun (V4, V5) -> case V3 of [E2 | E3] -> (fun (V6, V7) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(((V0(V4))(V6)), fun (V8) -> ('nested--7370-6835--in--un--go'(V0, {'Prelude.Basics.:<', V1, V8}, V5, V7)) end)) end(E2, E3)) end end(E0, E1)) end end end.
'dn--un--zip_Zippable_List'(V0, V1) -> ('dn--un--zipWith_Zippable_List'(fun (V2) -> fun (V3) -> {'Builtin.MkPair', V2, V3} end end, V0, V1)).
'dn--un--zipWith_Zippable_List'(V0, V1, V2) -> case V1 of [] -> []; _ -> case V2 of [] -> []; _ -> case V1 of [E0 | E1] -> (fun (V3, V4) -> case V2 of [E2 | E3] -> (fun (V5, V6) -> [((V0(V3))(V5)) | ('dn--un--zipWith_Zippable_List'(V0, V4, V6))] end(E2, E3)) end end(E0, E1)) end end end.
'dn--un--zipWith3_Zippable_List'(V0, V1, V2, V3) -> case V1 of [] -> []; _ -> case V2 of [] -> []; _ -> case V3 of [] -> []; _ -> case V1 of [E0 | E1] -> (fun (V4, V5) -> case V2 of [E2 | E3] -> (fun (V6, V7) -> case V3 of [E4 | E5] -> (fun (V8, V9) -> [(((V0(V4))(V6))(V8)) | ('dn--un--zipWith3_Zippable_List'(V0, V5, V7, V9))] end(E4, E5)) end end(E2, E3)) end end(E0, E1)) end end end end.
'dn--un--zip3_Zippable_List'(V0, V1, V2) -> ('dn--un--zipWith3_Zippable_List'(fun (V3) -> fun (V4) -> fun (V5) -> {'Builtin.MkPair', V3, {'Builtin.MkPair', V4, V5}} end end end, V0, V1, V2)).
'dn--un--unzip_Zippable_List'(V0) -> ('dn--un--unzipWith_Zippable_List'(fun (V1) -> V1 end, V0)).
'dn--un--unzipWith_Zippable_List'(V0, V1) -> case V1 of [] -> {'Builtin.MkPair', [], []}; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of {'Builtin.MkPair', V4, V5} -> case ('dn--un--unzipWith_Zippable_List'(V0, V3)) of {'Builtin.MkPair', V6, V7} -> {'Builtin.MkPair', [V4 | V6], [V5 | V7]} end end end(E0, E1)) end.
'dn--un--unzipWith3_Zippable_List'(V0, V1) -> case V1 of [] -> {'Builtin.MkPair', [], {'Builtin.MkPair', [], []}}; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of {'Builtin.MkPair', V4, V5} -> case V5 of {'Builtin.MkPair', V6, V7} -> case ('dn--un--unzipWith3_Zippable_List'(V0, V3)) of {'Builtin.MkPair', V8, V9} -> case V9 of {'Builtin.MkPair', V10, V11} -> {'Builtin.MkPair', [V4 | V8], {'Builtin.MkPair', [V6 | V10], [V7 | V11]}} end end end end end(E0, E1)) end.
'dn--un--unzip3_Zippable_List'(V0) -> ('dn--un--unzipWith3_Zippable_List'(fun (V1) -> V1 end, V0)).
'dn--un--uninhabited_Uninhabited_(|((Builtin.=== Nil) ((:: $x) $xs)),((Builtin.~=~ Nil) ((:: $x) $xs))|)'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--uninhabited_Uninhabited_(|((Builtin.=== ((:: $x) $xs)) Nil),((Builtin.~=~ ((:: $x) $xs)) Nil)|)'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--uninhabited_Uninhabited_(|((Builtin.=== ((:: $x) $xs)) ((:: $y) $ys)),((Builtin.~=~ ((:: $x) $xs)) ((:: $y) $ys))|)'(V0, V1) -> case V0 of {'Prelude.Types.Left', V2} -> (begin (V3 = V2), fun (V4) -> (V3(V4)) end end({'Builtin.Refl'})); {'Prelude.Types.Right', V5} -> (begin (V6 = V5), fun (V7) -> (V6(V7)) end end({'Builtin.Refl'})) end.
'dn--un--uninhabited_Uninhabited_(NonEmpty Nil)'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--uninhabited_Uninhabited_((InBounds (S $k)) ((:: $x) $xs))'(V0, V1) -> case V1 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V2 = (V1 - 1)), (begin (V3 = V0), fun (V4) -> (V3(V4)) end end(V2)) end end.
'dn--un--uninhabited_Uninhabited_((InBounds $k) Nil)'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--biinjective_Biinjective_Prelude.::'(V0, V1, V2, V3, V4) -> {'Builtin.MkPair', {'Builtin.Refl'}, {'Builtin.Refl'}}.
'dn--un--__Impl_Zippable_List'() -> {'Data.Zippable.dn--un--__mkZippable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('dn--un--zipWith_Zippable_List'(V3, V4, V5)) end end end end end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--zip_Zippable_List'(V8, V9)) end end end end, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> ('dn--un--zipWith3_Zippable_List'(V14, V15, V16, V17)) end end end end end end end end, fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('dn--un--zip3_Zippable_List'(V21, V22, V23)) end end end end end end, fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> ('dn--un--unzipWith_Zippable_List'(V27, V28)) end end end end end, fun (V29) -> fun (V30) -> fun (V31) -> ('dn--un--unzip_Zippable_List'(V31)) end end end, fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> fun (V36) -> fun (V37) -> ('dn--un--unzipWith3_Zippable_List'(V36, V37)) end end end end end end, fun (V38) -> fun (V39) -> fun (V40) -> fun (V41) -> ('dn--un--unzip3_Zippable_List'(V41)) end end end end}.
'dn--un--__Impl_Uninhabited_(|((Builtin.=== Nil) ((:: $x) $xs)),((Builtin.~=~ Nil) ((:: $x) $xs))|)'(V0) -> ('dn--un--uninhabited_Uninhabited_(|((Builtin.=== Nil) ((:: $x) $xs)),((Builtin.~=~ Nil) ((:: $x) $xs))|)'(V0)).
'dn--un--__Impl_Uninhabited_(|((Builtin.=== ((:: $x) $xs)) Nil),((Builtin.~=~ ((:: $x) $xs)) Nil)|)'(V0) -> ('dn--un--uninhabited_Uninhabited_(|((Builtin.=== ((:: $x) $xs)) Nil),((Builtin.~=~ ((:: $x) $xs)) Nil)|)'(V0)).
'dn--un--__Impl_Uninhabited_(|((Builtin.=== ((:: $x) $xs)) ((:: $y) $ys)),((Builtin.~=~ ((:: $x) $xs)) ((:: $y) $ys))|)'(V0, V1) -> ('dn--un--uninhabited_Uninhabited_(|((Builtin.=== ((:: $x) $xs)) ((:: $y) $ys)),((Builtin.~=~ ((:: $x) $xs)) ((:: $y) $ys))|)'(V0, V1)).
'dn--un--__Impl_Uninhabited_(NonEmpty Nil)'(V0) -> ('dn--un--uninhabited_Uninhabited_(NonEmpty Nil)'(V0)).
'dn--un--__Impl_Uninhabited_((InBounds (S $k)) ((:: $x) $xs))'(V0, V1) -> ('dn--un--uninhabited_Uninhabited_((InBounds (S $k)) ((:: $x) $xs))'(V0, V1)).
'dn--un--__Impl_Uninhabited_((InBounds $k) Nil)'(V0) -> ('dn--un--uninhabited_Uninhabited_((InBounds $k) Nil)'(V0)).
'dn--un--__Impl_Biinjective_Prelude.::'(V0, V1, V2, V3, V4) -> ('dn--un--biinjective_Biinjective_Prelude.::'(V0, V1, V2, V3, V4)).
'un--unionBy'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(V1, ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(fun (V3) -> fun (V4) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(fun (V5) -> fun (V6) -> ('un--deleteBy'(V0, V5, V6)) end end, V3, V4)) end end, ('un--nubBy'(V0, V2)), V1)))).
'un--union'(V0, V1, V2) -> ('un--unionBy'(fun (V3) -> fun (V4) -> case V0 of {'Prelude.EqOrd.MkEq', V5, V6} -> ((V5(V3))(V4)) end end end, V1, V2)).
'un--unfoldr'(V0, V1) -> case (V0(V1)) of {'Prelude.Types.Nothing'} -> []; {'Prelude.Types.Just', V2} -> case V2 of {'Builtin.MkPair', V3, V4} -> [V3 | ('un--unfoldr'(V0, V4))] end end.
'un--transpose'(V0) -> case V0 of [] -> []; [E0 | E1] -> (fun (V1, V2) -> ('nested--7677-7125--in--un--spreadHeads'(V1, V2, V1, ('un--transpose'(V2)))) end(E0, E1)) end.
'un--toList1\x{27}'(V0) -> case V0 of [] -> {'Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V1, V2) -> {'Prelude.Types.Just', {'Data.List1.:::', V1, V2}} end(E0, E1)) end.
'un--toList1'(V0) -> case V0 of [E0 | E1] -> (fun (V1, V2) -> {'Data.List1.:::', V1, V2} end(E0, E1)) end.
'un--takeWhile'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of 1 -> [V2 | ('un--takeWhile'(V0, V3))]; 0 -> [] end end(E0, E1)) end.
'un--take'(V0, V1) -> case V0 of 0 -> []; _ -> begin (V2 = (V0 - 1)), case V1 of [E0 | E1] -> (fun (V3, V4) -> [V3 | ('un--take'(V2, V4))] end(E0, E1)); _ -> [] end end end.
'un--tails'(V0) -> [V0 | case V0 of [] -> []; [E0 | E1] -> (fun (V1, V2) -> ('un--tails'(V2)) end(E0, E1)) end].
'un--tail\x{27}'(V0) -> case V0 of [] -> {'Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V1, V2) -> {'Prelude.Types.Just', V2} end(E0, E1)) end.
'un--tail'(V0) -> case V0 of [E0 | E1] -> (fun (V1, V2) -> V2 end(E0, E1)) end.
'un--suffixOfBy'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('un--prefixOfBy'(V0, ('Idris.Idris2.Prelude.Types.List':'un--reverse'(V1)), ('Idris.Idris2.Prelude.Types.List':'un--reverse'(V2)))), fun (V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> {'Prelude.Types.Just', {'Builtin.MkPair', ('Idris.Idris2.Prelude.Types.List':'un--reverse'(V5)), ('Idris.Idris2.Prelude.Types.List':'un--reverse'(V4))}} end end)).
'un--splitOn'(V0, V1, V2) -> ('un--split'(fun (V3) -> case V0 of {'Prelude.EqOrd.MkEq', V4, V5} -> ((V4(V3))(V1)) end end, V2)).
'un--splitAt'(V0, V1) -> case V0 of 0 -> {'Builtin.MkPair', [], V1}; _ -> begin (V2 = (V0 - 1)), case V1 of [] -> {'Builtin.MkPair', [], []}; [E0 | E1] -> (fun (V3, V4) -> case ('un--splitAt'(V2, V4)) of {'Builtin.MkPair', V5, V6} -> {'Builtin.MkPair', [V3 | V5], V6} end end(E0, E1)) end end end.
'un--split'(V0, V1) -> case ('un--break'(V0, V1)) of {'Builtin.MkPair', V2, V3} -> case V3 of [] -> ('Idris.Idris2.Data.List1':'un--singleton'(V2)); [E0 | E1] -> (fun (V4, V5) -> {'Data.List1.:::', V2, ('Idris.Idris2.Data.List1':'un--forget'(('un--split'(V0, V5))))} end(E0, E1)) end end.
'un--spanBy'(V0, V1) -> case V1 of [] -> {'Builtin.MkPair', [], []}; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of {'Prelude.Types.Nothing'} -> {'Builtin.MkPair', [], [V2 | V3]}; {'Prelude.Types.Just', V4} -> case ('un--spanBy'(V0, V3)) of {'Builtin.MkPair', V5, V6} -> {'Builtin.MkPair', [V4 | V5], V6} end end end(E0, E1)) end.
'un--span'(V0, V1) -> case V1 of [] -> {'Builtin.MkPair', [], []}; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of 1 -> case ('un--span'(V0, V3)) of {'Builtin.MkPair', V4, V5} -> {'Builtin.MkPair', [V2 | V4], V5} end; 0 -> {'Builtin.MkPair', [], [V2 | V3]} end end(E0, E1)) end.
'un--sorted'(V0, V1) -> case V1 of [E0 | E1] -> (fun (V2, V3) -> case V3 of [E2 | E3] -> (fun (V4, V5) -> case case V0 of {'Prelude.EqOrd.MkOrd', V6, V7, V8, V9, V10, V11, V12, V13} -> ((V10(V2))(V4)) end of 1 -> ('un--sorted'(V0, V3)); 0 -> 0 end end(E2, E3)); _ -> 1 end end(E0, E1)); _ -> 1 end.
'un--sortBy'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> case V3 of [] -> [V2 | []]; _ -> case ('nested--7233-6698--in--un--split'(V1, V0, V1)) of {'Builtin.MkPair', V4, V5} -> ('un--mergeBy'(V0, ('un--sortBy'(V0, V4)), ('un--sortBy'(V0, V5)))) end end end(E0, E1)); _ -> case ('nested--7233-6698--in--un--split'(V1, V0, V1)) of {'Builtin.MkPair', V6, V7} -> ('un--mergeBy'(V0, ('un--sortBy'(V0, V6)), ('un--sortBy'(V0, V7)))) end end.
'un--sort'(V0, V1) -> ('un--sortBy'(fun (V2) -> fun (V3) -> case V0 of {'Prelude.EqOrd.MkOrd', V4, V5, V6, V7, V8, V9, V10, V11} -> ((V5(V2))(V3)) end end end, V1)).
'un--snoc'(V0, V1) -> ('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(V0, [V1 | []])).
'un--singleton'(V0) -> [V0 | []].
'un--reverseReverseOnto'(V0, V1) -> case V1 of [] -> {'Builtin.Refl'}; [E0 | E1] -> (fun (V2, V3) -> ('un--reverseReverseOnto'([V2 | V0], V3)) end(E0, E1)) end.
'un--reverseInvolutive'(V0) -> ('un--reverseReverseOnto'([], V0)).
'un--revAppend'(V0, V1) -> case V0 of [] -> {'Builtin.Refl'}; [E0 | E1] -> (fun (V2, V3) -> {'Builtin.Refl'} end(E0, E1)) end.
'un--replicateTR'(V0, V1, V2) -> case V1 of 0 -> V0; _ -> begin (V3 = (V1 - 1)), ('un--replicateTR'([V2 | V0], V3, V2)) end end.
'un--replicate'(V0, V1) -> case V0 of 0 -> []; _ -> begin (V2 = (V0 - 1)), [V1 | ('un--replicate'(V2, V1))] end end.
'un--replaceWhen'(V0, V1, V2) -> ((begin (V8 = fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V6, V7)) end end end end), fun (V9) -> fun (V10) -> ((((V8('erased'))('erased'))(V9))(V10)) end end end(fun (V3) -> case (V0(V3)) of 1 -> V1; 0 -> V3 end end))(V2)).
'un--replaceOn'(V0, V1, V2, V3) -> ('un--replaceWhen'(fun (V4) -> case V0 of {'Prelude.EqOrd.MkEq', V5, V6} -> ((V5(V4))(V1)) end end, V2, V3)).
'un--replaceAt'(V0, V1, V2) -> case V0 of 0 -> case V2 of [E2 | E3] -> (fun (V3, V4) -> [V1 | V4] end(E2, E3)) end; _ -> begin (V5 = (V0 - 1)), case V2 of [E0 | E1] -> (fun (V6, V7) -> [V6 | ('un--replaceAt'(V5, V1, V7))] end(E0, E1)) end end end.
'un--prefixOfBy'(V0, V1, V2) -> ('nested--7370-6835--in--un--go'(V0, {'Prelude.Basics.Lin'}, V1, V2)).
'un--partition'(V0, V1) -> case V1 of [] -> {'Builtin.MkPair', [], []}; [E0 | E1] -> (fun (V2, V3) -> case ('un--partition'(V0, V3)) of {'Builtin.MkPair', V4, V5} -> case (V0(V2)) of 1 -> {'Builtin.MkPair', [V2 | V4], V5}; 0 -> {'Builtin.MkPair', V4, [V2 | V5]} end end end(E0, E1)) end.
'un--nubBy'(V0, V1) -> ('nested--4385-3930--in--un--nubBy\x{27}'([], V0, V1)).
'un--nub'(V0, V1) -> ('un--nubBy'(fun (V2) -> fun (V3) -> case V0 of {'Prelude.EqOrd.MkEq', V4, V5} -> ((V4(V2))(V3)) end end end, V1)).
'un--mergeReplicate'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> [V0 | [V2 | ('un--mergeReplicate'(V0, V3))]] end(E0, E1)) end.
'un--mergeBy'(V0, V1, V2) -> case V1 of [] -> V2; _ -> case V2 of [] -> V1; _ -> case V1 of [E0 | E1] -> (fun (V3, V4) -> case V2 of [E2 | E3] -> (fun (V5, V6) -> case ((V0(V3))(V5)) of 0 -> [V3 | ('un--mergeBy'(V0, V4, [V5 | V6]))]; _ -> [V5 | ('un--mergeBy'(V0, [V3 | V4], V6))] end end(E2, E3)) end end(E0, E1)) end end end.
'un--merge'(V0, V1, V2) -> ('un--mergeBy'(fun (V3) -> fun (V4) -> case V0 of {'Prelude.EqOrd.MkOrd', V5, V6, V7, V8, V9, V10, V11, V12} -> ((V6(V3))(V4)) end end end, V1, V2)).
'un--mapMaybeFusion'(V0, V1, V2) -> case V2 of [] -> {'Builtin.Refl'}; [E0 | E1] -> (fun (V3, V4) -> ('with--mapMaybeFusion-8709'('erased', 'erased', V3, V1, (V1(V3)), 'erased', V4, V0)) end(E0, E1)) end.
'un--mapMaybeAppend'(V0, V1, V2) -> case V1 of [] -> {'Builtin.Refl'}; [E0 | E1] -> (fun (V3, V4) -> ('with--mapMaybeAppend-8835'('erased', 'erased', V3, V0, (V0(V3)), V4, V2)) end(E0, E1)) end.
'un--mapFusion'(V0, V1, V2) -> case V2 of [] -> {'Builtin.Refl'}; [E0 | E1] -> (fun (V3, V4) -> {'Builtin.Refl'} end(E0, E1)) end.
'un--mapAppend'(V0, V1, V2) -> case V1 of [] -> {'Builtin.Refl'}; [E0 | E1] -> (fun (V3, V4) -> {'Builtin.Refl'} end(E0, E1)) end.
'un--lookupBy'(V0, V1, V2) -> case V2 of [] -> {'Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V3, V4) -> case V3 of {'Builtin.MkPair', V5, V6} -> case ((V0(V1))(V5)) of 1 -> {'Prelude.Types.Just', V6}; 0 -> ('un--lookupBy'(V0, V1, V4)) end end end(E0, E1)) end.
'un--lookup'(V0, V1, V2) -> ('un--lookupBy'(fun (V3) -> fun (V4) -> case V0 of {'Prelude.EqOrd.MkEq', V5, V6} -> ((V5(V3))(V4)) end end end, V1, V2)).
'un--lengthReplicate'(V0) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end.
'un--lengthMap'(V0) -> case V0 of [] -> {'Builtin.Refl'}; [E0 | E1] -> (fun (V1, V2) -> {'Builtin.Refl'} end(E0, E1)) end.
'un--last\x{27}'(V0) -> case V0 of [] -> {'Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V1, V2) -> {'Prelude.Types.Just', ('un--last'(V0))} end(E0, E1)) end.
'un--last'(V0) -> case V0 of [E0 | E1] -> (fun (V1, V2) -> case V2 of [] -> V1; [E2 | E3] -> (fun (V3, V4) -> ('un--last'(V2)) end(E2, E3)) end end(E0, E1)) end.
'un--iterateN'(V0, V1, V2) -> case V0 of 0 -> []; _ -> begin (V3 = (V0 - 1)), [V2 | ('un--iterateN'(V3, V1, (V1(V2))))] end end.
'un--iterate'(V0, V1) -> [V1 | case (V0(V1)) of {'Prelude.Types.Nothing'} -> []; {'Prelude.Types.Just', V2} -> ('un--iterate'(V0, V2)) end].
'un--isSuffixOfBy'(V0, V1, V2) -> ('un--isPrefixOfBy'(V0, ('Idris.Idris2.Prelude.Types.List':'un--reverse'(V1)), ('Idris.Idris2.Prelude.Types.List':'un--reverse'(V2)))).
'un--isSuffixOf'(V0, V1, V2) -> ('un--isSuffixOfBy'(fun (V3) -> fun (V4) -> case V0 of {'Prelude.EqOrd.MkEq', V5, V6} -> ((V5(V3))(V4)) end end end, V1, V2)).
'un--isPrefixOfBy'(V0, V1, V2) -> case V1 of [] -> 1; _ -> case V2 of [] -> 0; _ -> case V1 of [E0 | E1] -> (fun (V3, V4) -> case V2 of [E2 | E3] -> (fun (V5, V6) -> case ((V0(V3))(V5)) of 1 -> ('un--isPrefixOfBy'(V0, V4, V6)); 0 -> 0 end end(E2, E3)) end end(E0, E1)) end end end.
'un--isPrefixOf'(V0, V1, V2) -> ('un--isPrefixOfBy'(fun (V3) -> fun (V4) -> case V0 of {'Prelude.EqOrd.MkEq', V5, V6} -> ((V5(V3))(V4)) end end end, V1, V2)).
'un--isNil'(V0) -> case V0 of [] -> 1; _ -> 0 end.
'un--isInfixOf'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V3) -> fun (V4) -> ('Idris.Idris2.Prelude.Interfaces.Bool.Semigroup':'dn--un--<+>_Semigroup_AnyBool'(V3, V4)) end end, 0}, fun (V5) -> ('un--isPrefixOf'(V0, V1, V5)) end, ('un--tails'(V2)))).
'un--isCons'(V0) -> case V0 of [] -> 0; _ -> 1 end.
'un--intersperse'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> [V2 | ('un--mergeReplicate'(V0, V3))] end(E0, E1)) end.
'un--intersectBy'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types':'un--listBind'(V1, fun (V3) -> ('Idris.Idris2.Prelude.Types':'un--listBind'(('Idris.Idris2.Prelude.Interfaces':'un--guard'({'Prelude.Interfaces.MkAlternative', {'Prelude.Interfaces.MkApplicative', fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V6, V7)) end end end end, fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.Types':'dn--un--pure_Applicative_List'(V9)) end end, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.Types':'dn--un--<*>_Applicative_List'(V12, V13)) end end end end}, fun (V14) -> [] end, fun (V15) -> fun (V16) -> fun (V17) -> ('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(V16, (V17()))) end end end}, ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V18) -> fun (V19) -> ('Idris.Idris2.Prelude.Interfaces.Bool.Semigroup':'dn--un--<+>_Semigroup_AnyBool'(V18, V19)) end end, 0}, (V0(V3)), V2)))), fun (V20) -> ('Idris.Idris2.Prelude.Types':'dn--un--pure_Applicative_List'(V3)) end)) end)).
'un--intersectAllBy'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> ('Idris.Idris2.Prelude.Types.List':'un--filterAppend'({'Prelude.Basics.Lin'}, fun (V4) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V5) -> fun (V6) -> ('Idris.Idris2.Prelude.Interfaces.Bool.Semigroup':'dn--un--<+>_Semigroup_AllBool'(V5, V6)) end end, 1}, fun (V7) -> ('Idris.Idris2.Prelude.Types':'un--elemBy'({'Prelude.Interfaces.MkFoldable', fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V10, V11, V12)) end end end end end, fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V15, V16, V17)) end end end end end, fun (V18) -> fun (V19) -> ('Idris.Idris2.Prelude.Types':'dn--un--null_Foldable_List'(V19)) end end, fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldlM_Foldable_List'(V23, V24, V25, V26)) end end end end end end end, fun (V27) -> fun (V28) -> V28 end end, fun (V29) -> fun (V30) -> fun (V31) -> fun (V32) -> fun (V33) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V31, V32, V33)) end end end end end}, V0, V4, V7)) end, V3)) end, V2)) end(E0, E1)) end.
'un--intersectAll'(V0, V1) -> ('un--intersectAllBy'(fun (V2) -> fun (V3) -> case V0 of {'Prelude.EqOrd.MkEq', V4, V5} -> ((V4(V2))(V3)) end end end, V1)).
'un--intersect'(V0, V1, V2) -> ('un--intersectBy'(fun (V3) -> fun (V4) -> case V0 of {'Prelude.EqOrd.MkEq', V5, V6} -> ((V5(V3))(V4)) end end end, V1, V2)).
'un--interleave'(V0, V1) -> case V0 of [] -> V1; [E0 | E1] -> (fun (V2, V3) -> [V2 | ('un--interleave'(V1, V3))] end(E0, E1)) end.
'un--intercalate'(V0, V1) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(V2, V3)) end end, []}, fun (V4) -> V4 end, ('un--intersperse'(V0, V1)))).
'un--insertAt'(V0, V1, V2) -> case V0 of 0 -> [V1 | V2]; _ -> begin (V3 = (V0 - 1)), case V2 of [E0 | E1] -> (fun (V4, V5) -> [V4 | ('un--insertAt'(V3, V1, V5))] end(E0, E1)) end end end.
'un--inits'(V0) -> [[] | case V0 of [] -> []; [E0 | E1] -> (fun (V1, V2) -> ((begin (V8 = fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V6, V7)) end end end end), fun (V9) -> fun (V10) -> ((((V8('erased'))('erased'))(V9))(V10)) end end end(fun (V3) -> [V1 | V3] end))(('un--inits'(V2)))) end(E0, E1)) end].
'un--init\x{27}'(V0) -> case V0 of [] -> {'Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V1, V2) -> {'Prelude.Types.Just', ('un--init'(V0))} end(E0, E1)) end.
'un--init'(V0) -> case V0 of [E0 | E1] -> (fun (V1, V2) -> case V2 of [] -> []; [E2 | E3] -> (fun (V3, V4) -> [V1 | ('un--init'(V2))] end(E2, E3)) end end(E0, E1)) end.
'un--index\x{27}'(V0, V1) -> case V0 of [E0 | E1] -> (fun (V2, V3) -> case V1 of 0 -> V2; _ -> begin (V4 = (V1 - 1)), ('un--index\x{27}'(V3, V4)) end end end(E0, E1)) end.
'un--index'(V0, V1) -> case V0 of 0 -> case V1 of [E2 | E3] -> (fun (V2, V3) -> V2 end(E2, E3)) end; _ -> begin (V4 = (V0 - 1)), case V1 of [E0 | E1] -> (fun (V5, V6) -> ('un--index'(V4, V6)) end(E0, E1)) end end end.
'un--inBounds'(V0, V1) -> case V1 of [] -> {'Prelude.Types.No', begin (V3 = fun (V2) -> ('dn--un--uninhabited_Uninhabited_((InBounds $k) Nil)'(V2)) end), fun (V4) -> (V3(V4)) end end}; _ -> case V0 of 0 -> case V1 of [E2 | E3] -> (fun (V5, V6) -> {'Prelude.Types.Yes', 0} end(E2, E3)) end; _ -> begin (V7 = (V0 - 1)), case V1 of [E0 | E1] -> (fun (V8, V9) -> ('with--inBounds-3222'('erased', V7, V9, ('un--inBounds'(V7, V9)), V8)) end(E0, E1)) end end end end.
'un--head\x{27}'(V0) -> case V0 of [] -> {'Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V1, V2) -> {'Prelude.Types.Just', V1} end(E0, E1)) end.
'un--head'(V0) -> case V0 of [E0 | E1] -> (fun (V1, V2) -> V1 end(E0, E1)) end.
'un--groupWith'(V0, V1, V2) -> ('un--groupBy'(fun (V3) -> fun (V4) -> case V0 of {'Prelude.EqOrd.MkEq', V5, V6} -> ((V5((V1(V3))))((V1(V4)))) end end end, V2)).
'un--groupBy'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> case ('nested--7732-7190--in--un--go'(V2, V3, V0, V2, V3)) of {'Builtin.MkPair', V4, V5} -> [V4 | V5] end end(E0, E1)) end.
'un--groupAllWith'(V0, V1, V2) -> ('un--groupWith'(case V0 of {'Prelude.EqOrd.MkOrd', V3, V4, V5, V6, V7, V8, V9, V10} -> V3 end, V1, ('un--sortBy'(fun (V11) -> fun (V12) -> ('Idris.Idris2.Prelude.EqOrd':'un--comparing'(V0, V1, V11, V12)) end end, V2)))).
'un--group'(V0, V1) -> ('un--groupBy'(fun (V2) -> fun (V3) -> case V0 of {'Prelude.EqOrd.MkEq', V4, V5} -> ((V4(V2))(V3)) end end end, V1)).
'un--foldr1By'(V0, V1, V2) -> case V2 of [E0 | E1] -> (fun (V3, V4) -> case V4 of [] -> (V1(V3)); [E2 | E3] -> (fun (V5, V6) -> ((V0(V3))(('un--foldr1By'(V0, V1, V4)))) end(E2, E3)) end end(E0, E1)) end.
'un--foldr1'(V0, V1) -> ('un--foldr1By'(V0, fun (V2) -> V2 end, V1)).
'un--foldlAppend'(V0, V1, V2, V3) -> case V2 of [] -> {'Builtin.Refl'}; [E0 | E1] -> (fun (V4, V5) -> {'Builtin.Refl'} end(E0, E1)) end.
'un--foldl1By'(V0, V1, V2) -> case V2 of [E0 | E1] -> (fun (V3, V4) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V0, (V1(V3)), V4)) end(E0, E1)) end.
'un--foldl1'(V0, V1) -> ('un--foldl1By'(V0, fun (V2) -> V2 end, V1)).
'un--findIndices'(V0, V1) -> ('nested--4181-3727--in--un--h'(V0, 0, V1)).
'un--findIndex'(V0, V1) -> case V1 of [] -> {'Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of 1 -> {'Prelude.Types.Just', 0}; 0 -> ((begin (V9 = fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V7, V8)) end end end end), fun (V10) -> fun (V11) -> ((((V9('erased'))('erased'))(V10))(V11)) end end end(fun (V4) -> (V4 + 1) end))(('un--findIndex'(V0, V3)))) end end(E0, E1)) end.
'un--find'(V0, V1) -> case V1 of [] -> {'Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of 1 -> {'Prelude.Types.Just', V2}; 0 -> ('un--find'(V0, V3)) end end(E0, E1)) end.
'un--filterAppend'(V0, V1, V2) -> case V1 of [] -> {'Builtin.Refl'}; [E0 | E1] -> (fun (V3, V4) -> ('with--filterAppend-8607'('erased', V3, V0, (V0(V3)), V4, V2)) end(E0, E1)) end.
'un--dropWhile'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of 1 -> ('un--dropWhile'(V0, V3)); 0 -> [V2 | V3] end end(E0, E1)) end.
'un--dropFusion'(V0, V1, V2) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> begin (V3 = (V0 - 1)), case V1 of 0 -> {'Builtin.Refl'}; _ -> begin (V4 = (V1 - 1)), case V2 of [] -> {'Builtin.Refl'}; [E0 | E1] -> (fun (V5, V6) -> ('un--dropFusion'((V3 + 1), V4, V6)) end(E0, E1)) end end end end end.
'un--drop'(V0, V1) -> case V0 of 0 -> V1; _ -> begin (V2 = (V0 - 1)), case V1 of [] -> []; [E0 | E1] -> (fun (V3, V4) -> ('un--drop'(V2, V4)) end(E0, E1)) end end end.
'un--deleteFirstsBy'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(fun (V3) -> fun (V4) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(fun (V5) -> fun (V6) -> ('un--deleteBy'(V0, V5, V6)) end end, V3, V4)) end end, V1, V2)).
'un--deleteBy'(V0, V1, V2) -> case V2 of [] -> []; [E0 | E1] -> (fun (V3, V4) -> case ((V0(V1))(V3)) of 1 -> V4; 0 -> [V3 | ('un--deleteBy'(V0, V1, V4))] end end(E0, E1)) end.
'un--deleteAt'(V0, V1) -> case V0 of 0 -> case V1 of [E2 | E3] -> (fun (V2, V3) -> V3 end(E2, E3)) end; _ -> begin (V4 = (V0 - 1)), case V1 of [E0 | E1] -> (fun (V5, V6) -> [V5 | ('un--deleteAt'(V4, V6))] end(E0, E1)) end end end.
'un--delete'(V0, V1, V2) -> ('un--deleteBy'(fun (V3) -> fun (V4) -> case V0 of {'Prelude.EqOrd.MkEq', V5, V6} -> ((V5(V3))(V4)) end end end, V1, V2)).
'un--consInjective'(V0) -> {'Builtin.MkPair', {'Builtin.Refl'}, {'Builtin.Refl'}}.
'un--catMaybes'(V0) -> ('Idris.Idris2.Prelude.Types.List':'un--mapMaybeAppend'({'Prelude.Basics.Lin'}, fun (V1) -> V1 end, V0)).
'un--break'(V0, V1) -> ('un--span'(fun (V2) -> case (V0(V2)) of 1 -> 0; 0 -> 1 end end, V1)).
'un--appendNilRightNeutral'(V0) -> case V0 of [] -> {'Builtin.Refl'}; [E0 | E1] -> (fun (V1, V2) -> {'Builtin.Refl'} end(E0, E1)) end.
'un--appendAssociative'(V0, V1, V2) -> case V0 of [] -> {'Builtin.Refl'}; [E0 | E1] -> (fun (V3, V4) -> {'Builtin.Refl'} end(E0, E1)) end.
'un--\x{5c}\x{5c}'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(fun (V3) -> fun (V4) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(fun (V5) -> fun (V6) -> ('un--delete'(V0, V5, V6)) end end, V3, V4)) end end, V1, V2)).
