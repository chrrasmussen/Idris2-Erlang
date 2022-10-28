-module('Idris.Idris2.Data.Vect').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--overLength-9585'/5,
  'with--exactLength-9545'/5,
  'with--splitAt-7381'/6,
  'with--with block in nubBy,nubBy\x{27}-7103'/9,
  'with--nubBy,nubBy\x{27}-7072'/9,
  'case--case block in unzipWith3-8641'/7,
  'case--unzipWith3-8597'/4,
  'case--case block in unzipWith-8514'/6,
  'case--unzipWith-8477'/4,
  'case--catMaybes-7834'/3,
  'case--case block in partition-7496'/8,
  'case--partition-7464'/4,
  'case--case block in deleteBy-7256'/9,
  'case--deleteBy-7229'/7,
  'case--case block in filter-6935'/6,
  'case--filter-6909'/4,
  'case--findIndices-6707'/5,
  'case--findIndex-6620'/4,
  'case--find-6551'/4,
  'case--lookupBy-6358'/6,
  'case--scanr1-6189'/5,
  'case--scanr-6115'/5,
  'case--compare-5257'/6,
  'case--max-5143'/4,
  'case--min-5106'/4,
  'case--unsnoc-4017'/5,
  'nested--7911-7014--in--un--nubBy\x{27}'/3,
  'nested--5363-4548--in--un--intersperse\x{27}'/5,
  'dn--un--zip_Zippable_(Vect $k)'/2,
  'dn--un--zipWith_Zippable_(Vect $k)'/3,
  'dn--un--zipWith3_Zippable_(Vect $k)'/4,
  'dn--un--zip3_Zippable_(Vect $k)'/3,
  'dn--un--unzip_Zippable_(Vect $k)'/1,
  'dn--un--unzipWith_Zippable_(Vect $k)'/2,
  'dn--un--unzipWith3_Zippable_(Vect $k)'/2,
  'dn--un--unzip3_Zippable_(Vect $k)'/1,
  'dn--un--traverse_Traversable_(Vect $k)'/3,
  'dn--un--toList_Foldable_(Vect $n)'/1,
  'dn--un--show_Show_((Vect $len) $elem)'/2,
  'dn--un--showPrec_Show_((Vect $len) $elem)'/3,
  'dn--un--pure_Applicative_(Vect $k)'/2,
  'dn--un--null_Foldable_(Vect $n)'/1,
  'dn--un--neutral_Monoid_((Vect $k) $a)'/2,
  'dn--un--min_Ord_((Vect $len) $elem)'/3,
  'dn--un--max_Ord_((Vect $len) $elem)'/3,
  'dn--un--map_Functor_(Vect $n)'/2,
  'dn--un--join_Monad_(Vect $k)'/2,
  'dn--un--injective_Injective_(Vect.:: $x)'/4,
  'dn--un--injective_Injective_(%lam RigW Explicit (Just x) ? ((Vect.:: x) $xs))'/4,
  'dn--un--foldr_Foldable_(Vect $n)'/3,
  'dn--un--foldl_Foldable_(Vect $n)'/3,
  'dn--un--foldlM_Foldable_(Vect $n)'/4,
  'dn--un--foldMap_Foldable_(Vect $n)'/3,
  'dn--un--decEq_DecEq_((Vect $n) $a)'/3,
  'dn--un--compare_Ord_((Vect $len) $elem)'/3,
  'dn--un--biinjective_Biinjective_Vect.::'/5,
  'dn--un--__Impl_Zippable_(Vect $k)'/0,
  'dn--un--__Impl_Traversable_(Vect $k)'/0,
  'dn--un--__Impl_Show_((Vect $len) $elem)'/1,
  'dn--un--__Impl_Semigroup_((Vect $k) $a)'/3,
  'dn--un--__Impl_Ord_((Vect $len) $elem)'/1,
  'dn--un--__Impl_Monoid_((Vect $k) $a)'/2,
  'dn--un--__Impl_Monad_(Vect $k)'/1,
  'dn--un--__Impl_Injective_(Vect.:: $x)'/1,
  'dn--un--__Impl_Injective_(%lam RigW Explicit (Just x) ? ((Vect.:: x) $xs))'/1,
  'dn--un--__Impl_Functor_(Vect $n)'/4,
  'dn--un--__Impl_Foldable_(Vect $n)'/0,
  'dn--un--__Impl_Eq_((Vect $n) $a)'/1,
  'dn--un--__Impl_DecEq_((Vect $n) $a)'/3,
  'dn--un--__Impl_Biinjective_Vect.::'/5,
  'dn--un--__Impl_Applicative_(Vect $k)'/1,
  'dn--un-->_Ord_((Vect $len) $elem)'/3,
  'dn--un-->>=_Monad_(Vect $k)'/3,
  'dn--un-->=_Ord_((Vect $len) $elem)'/3,
  'dn--un--==_Eq_((Vect $n) $a)'/3,
  'dn--un--<_Ord_((Vect $len) $elem)'/3,
  'dn--un--<=_Ord_((Vect $len) $elem)'/3,
  'dn--un--<+>_Semigroup_((Vect $k) $a)'/3,
  'dn--un--<*>_Applicative_(Vect $k)'/3,
  'dn--un--/=_Eq_((Vect $n) $a)'/3,
  'un--zipWithIndexLinear'/3,
  'un--zipWith3IndexLinear'/4,
  'un--vectToMaybe'/1,
  'un--updateAt'/3,
  'un--unsnoc'/1,
  'un--transpose'/2,
  'un--toVect'/2,
  'un--take'/2,
  'un--tail'/1,
  'un--splitAt'/2,
  'un--snoc'/2,
  'un--scanr1'/2,
  'un--scanr'/3,
  'un--scanl1'/2,
  'un--scanl'/3,
  'un--reverseOnto'/2,
  'un--reverse'/1,
  'un--replicate'/2,
  'un--replaceAtSameIndex'/2,
  'un--replaceAtDiffIndexPreserves'/4,
  'un--replaceAt'/3,
  'un--partition'/2,
  'un--overLength'/3,
  'un--nubBy'/2,
  'un--nub'/2,
  'un--mergeBy'/3,
  'un--merge'/3,
  'un--maybeToVect'/1,
  'un--mapMaybe'/2,
  'un--lookupBy'/3,
  'un--lookup'/3,
  'un--lengthCorrect'/1,
  'un--length'/1,
  'un--last'/1,
  'un--isSuffixOfBy'/3,
  'un--isSuffixOf'/3,
  'un--isPrefixOfBy'/3,
  'un--isPrefixOf'/3,
  'un--intersperse'/2,
  'un--insertAt'/3,
  'un--init'/1,
  'un--index'/2,
  'un--head'/1,
  'un--hasAnyBy'/3,
  'un--hasAny'/3,
  'un--fromList\x{27}'/2,
  'un--fromList'/1,
  'un--foldrImpl'/4,
  'un--foldr1'/2,
  'un--foldl1'/2,
  'un--findIndices'/2,
  'un--findIndex'/2,
  'un--find'/2,
  'un--filter'/2,
  'un--exactLength'/3,
  'un--elemIndicesBy'/3,
  'un--elemIndices'/3,
  'un--elemIndexBy'/3,
  'un--elemIndex'/3,
  'un--drop\x{27}'/2,
  'un--drop'/2,
  'un--diag'/1,
  'un--deleteBy'/4,
  'un--deleteAt'/2,
  'un--delete'/4,
  'un--concat'/1,
  'un--catMaybes'/1,
  'un--++'/2
]).
'with--overLength-9585'(V0, V1, V2, V3, V4) -> case V2 of {'Data.Nat.CmpLT', V5} -> {'Prelude.Types.Nothing'}; {'Data.Nat.CmpEQ'} -> {'Prelude.Types.Just', {'Builtin.DPair.MkDPair', 0, V4}}; {'Data.Nat.CmpGT', V6} -> {'Prelude.Types.Just', {'Builtin.DPair.MkDPair', (V6 + 1), V4}} end.
'with--exactLength-9545'(V0, V1, V2, V3, V4) -> case V2 of {'Prelude.Types.Yes', V5} -> {'Prelude.Types.Just', V4}; {'Prelude.Types.No', V6} -> {'Prelude.Types.Nothing'} end.
'with--splitAt-7381'(V0, V1, V2, V3, V4, V5) -> case V4 of {'Builtin.MkPair', V6, V7} -> {'Builtin.MkPair', {'Data.Vect.::', V5, V6}, V7} end.
'with--with block in nubBy,nubBy\x{27}-7103'(V0, V1, V2, V3, V4, V5, V6, V7, V8) -> case V8 of {'Builtin.DPair.MkDPair', V9, V10} -> {'Builtin.DPair.MkDPair', (V9 + 1), {'Data.Vect.::', V7, V10}} end.
'with--nubBy,nubBy\x{27}-7072'(V0, V1, V2, V3, V4, V5, V6, V7, V8) -> case V6 of 1 -> ('nested--7911-7014--in--un--nubBy\x{27}'(V5, V4, V8)); 0 -> ('with--with block in nubBy,nubBy\x{27}-7103'('erased', 'erased', 'erased', 'erased', V8, V5, V4, V3, ('nested--7911-7014--in--un--nubBy\x{27}'({'Data.Vect.::', V3, V5}, V4, V8)))) end.
'case--case block in unzipWith3-8641'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Builtin.MkPair', V7, V8} -> case V8 of {'Builtin.MkPair', V9, V10} -> {'Builtin.MkPair', {'Data.Vect.::', V3, V7}, {'Builtin.MkPair', {'Data.Vect.::', V4, V9}, {'Data.Vect.::', V5, V10}}} end end.
'case--unzipWith3-8597'(V0, V1, V2, V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> case V5 of {'Builtin.MkPair', V6, V7} -> case ('dn--un--unzipWith3_Zippable_(Vect $k)'(V2, V1)) of {'Builtin.MkPair', V8, V9} -> case V9 of {'Builtin.MkPair', V10, V11} -> {'Builtin.MkPair', {'Data.Vect.::', V4, V8}, {'Builtin.MkPair', {'Data.Vect.::', V6, V10}, {'Data.Vect.::', V7, V11}}} end end end end.
'case--case block in unzipWith-8514'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Builtin.MkPair', V6, V7} -> {'Builtin.MkPair', {'Data.Vect.::', V3, V6}, {'Data.Vect.::', V4, V7}} end.
'case--unzipWith-8477'(V0, V1, V2, V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> case ('dn--un--unzipWith_Zippable_(Vect $k)'(V2, V1)) of {'Builtin.MkPair', V6, V7} -> {'Builtin.MkPair', {'Data.Vect.::', V4, V6}, {'Data.Vect.::', V5, V7}} end end.
'case--catMaybes-7834'(V0, V1, V2) -> case V2 of {'Builtin.DPair.MkDPair', V3, V4} -> {'Builtin.DPair.MkDPair', (V3 + 1), {'Data.Vect.::', V0, V4}} end.
'case--case block in partition-7496'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V7 of 1 -> {'Builtin.MkPair', {'Builtin.DPair.MkDPair', (V3 + 1), {'Data.Vect.::', V2, V4}}, {'Builtin.DPair.MkDPair', V5, V6}}; 0 -> {'Builtin.MkPair', {'Builtin.DPair.MkDPair', V3, V4}, {'Builtin.DPair.MkDPair', (V5 + 1), {'Data.Vect.::', V2, V6}}} end.
'case--partition-7464'(V0, V1, V2, V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> case V4 of {'Builtin.DPair.MkDPair', V6, V7} -> case V5 of {'Builtin.DPair.MkDPair', V8, V9} -> case (V2(V0)) of 1 -> {'Builtin.MkPair', {'Builtin.DPair.MkDPair', (V6 + 1), {'Data.Vect.::', V0, V7}}, {'Builtin.DPair.MkDPair', V8, V9}}; 0 -> {'Builtin.MkPair', {'Builtin.DPair.MkDPair', V6, V7}, {'Builtin.DPair.MkDPair', (V8 + 1), {'Data.Vect.::', V0, V9}}} end end end end.
'case--case block in deleteBy-7256'(V0, V1, V2, V3, V4, V5, V6, V7, V8) -> case V8 of 1 -> {'Builtin.DPair.MkDPair', V0, V1}; 0 -> {'Builtin.DPair.MkDPair', (V6 + 1), {'Data.Vect.::', V4, V7}} end.
'case--deleteBy-7229'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Builtin.DPair.MkDPair', V7, V8} -> case ((V4(V1))(V2)) of 1 -> {'Builtin.DPair.MkDPair', V0, V3}; 0 -> {'Builtin.DPair.MkDPair', (V7 + 1), {'Data.Vect.::', V2, V8}} end end.
'case--case block in filter-6935'(V0, V1, V2, V3, V4, V5) -> case V5 of 1 -> {'Builtin.DPair.MkDPair', (V2 + 1), {'Data.Vect.::', V3, V4}}; 0 -> {'Builtin.DPair.MkDPair', V2, V4} end.
'case--filter-6909'(V0, V1, V2, V3) -> case V3 of {'Builtin.DPair.MkDPair', V4, V5} -> case (V2(V0)) of 1 -> {'Builtin.DPair.MkDPair', (V4 + 1), {'Data.Vect.::', V0, V5}}; 0 -> {'Builtin.DPair.MkDPair', V4, V5} end end.
'case--findIndices-6707'(V0, V1, V2, V3, V4) -> case V4 of 1 -> [0 | V3]; 0 -> V3 end.
'case--findIndex-6620'(V0, V1, V2, V3) -> case V3 of 1 -> {'Prelude.Types.Just', 0}; 0 -> ((begin (V9 = fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V7, V8)) end end end end), fun (V10) -> fun (V11) -> ((((V9('erased'))('erased'))(V10))(V11)) end end end(fun (V4) -> (V4 + 1) end))(('un--findIndex'(V2, V1)))) end.
'case--find-6551'(V0, V1, V2, V3) -> case V3 of 1 -> {'Prelude.Types.Just', V0}; 0 -> ('un--find'(V2, V1)) end.
'case--lookupBy-6358'(V0, V1, V2, V3, V4, V5) -> case V5 of 1 -> {'Prelude.Types.Just', V2}; 0 -> ('un--lookupBy'(V4, V0, V3)) end.
'case--scanr1-6189'(V0, V1, V2, V3, V4) -> case V4 of {'Builtin.MkPair', V5, V6} -> ('un--scanr'(V3, V6, V5)) end.
'case--scanr-6115'(V0, V1, V2, V3, V4) -> case V4 of {'Data.Vect.::', V5, V6} -> {'Data.Vect.::', ((V3(V1))(V5)), V4} end.
'case--compare-5257'(V0, V1, V2, V3, V4, V5) -> case V5 of 1 -> ('dn--un--compare_Ord_((Vect $len) $elem)'(V0, V2, V4)); _ -> V5 end.
'case--max-5143'(V0, V1, V2, V3) -> case V3 of 1 -> V2; 0 -> V1 end.
'case--min-5106'(V0, V1, V2, V3) -> case V3 of 1 -> V2; 0 -> V1 end.
'case--unsnoc-4017'(V0, V1, V2, V3, V4) -> case V4 of {'Builtin.MkPair', V5, V6} -> {'Builtin.MkPair', {'Data.Vect.::', V2, V5}, V6} end.
'nested--7911-7014--in--un--nubBy\x{27}'(V0, V1, V2) -> case V2 of {'Data.Vect.Nil'} -> {'Builtin.DPair.MkDPair', 0, {'Data.Vect.Nil'}}; {'Data.Vect.::', V3, V4} -> ('with--nubBy,nubBy\x{27}-7072'('erased', 'erased', 'erased', V3, V1, V0, ('Idris.Idris2.Prelude.Types':'un--elemBy'({'Prelude.Interfaces.MkFoldable', fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--foldr_Foldable_(Vect $n)'(V7, V8, V9)) end end end end end, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> ('dn--un--foldl_Foldable_(Vect $n)'(V12, V13, V14)) end end end end end, fun (V15) -> fun (V16) -> ('dn--un--null_Foldable_(Vect $n)'(V16)) end end, fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('dn--un--foldlM_Foldable_(Vect $n)'(V20, V21, V22, V23)) end end end end end end end, fun (V24) -> fun (V25) -> ('dn--un--toList_Foldable_(Vect $n)'(V25)) end end, fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> fun (V30) -> ('dn--un--foldMap_Foldable_(Vect $n)'(V28, V29, V30)) end end end end end}, V1, V3, V0)), 'erased', V4)) end.
'nested--5363-4548--in--un--intersperse\x{27}'(V0, V1, V2, V3, V4) -> case V4 of {'Data.Vect.Nil'} -> {'Data.Vect.Nil'}; {'Data.Vect.::', V5, V6} -> {'Data.Vect.::', V3, {'Data.Vect.::', V5, ('nested--5363-4548--in--un--intersperse\x{27}'(V0, V1, V2, V3, V6))}} end.
'dn--un--zip_Zippable_(Vect $k)'(V0, V1) -> ('dn--un--zipWith_Zippable_(Vect $k)'(fun (V2) -> fun (V3) -> {'Builtin.MkPair', V2, V3} end end, V0, V1)).
'dn--un--zipWith_Zippable_(Vect $k)'(V0, V1, V2) -> case V1 of {'Data.Vect.Nil'} -> case V2 of {'Data.Vect.Nil'} -> {'Data.Vect.Nil'} end; {'Data.Vect.::', V3, V4} -> case V2 of {'Data.Vect.::', V5, V6} -> {'Data.Vect.::', ((V0(V3))(V5)), ('dn--un--zipWith_Zippable_(Vect $k)'(V0, V4, V6))} end end.
'dn--un--zipWith3_Zippable_(Vect $k)'(V0, V1, V2, V3) -> case V1 of {'Data.Vect.Nil'} -> case V2 of {'Data.Vect.Nil'} -> case V3 of {'Data.Vect.Nil'} -> {'Data.Vect.Nil'} end end; {'Data.Vect.::', V4, V5} -> case V2 of {'Data.Vect.::', V6, V7} -> case V3 of {'Data.Vect.::', V8, V9} -> {'Data.Vect.::', (((V0(V4))(V6))(V8)), ('dn--un--zipWith3_Zippable_(Vect $k)'(V0, V5, V7, V9))} end end end.
'dn--un--zip3_Zippable_(Vect $k)'(V0, V1, V2) -> ('dn--un--zipWith3_Zippable_(Vect $k)'(fun (V3) -> fun (V4) -> fun (V5) -> {'Builtin.MkPair', V3, {'Builtin.MkPair', V4, V5}} end end end, V0, V1, V2)).
'dn--un--unzip_Zippable_(Vect $k)'(V0) -> ('dn--un--unzipWith_Zippable_(Vect $k)'(fun (V1) -> V1 end, V0)).
'dn--un--unzipWith_Zippable_(Vect $k)'(V0, V1) -> case V1 of {'Data.Vect.Nil'} -> {'Builtin.MkPair', {'Data.Vect.Nil'}, {'Data.Vect.Nil'}}; {'Data.Vect.::', V2, V3} -> case (V0(V2)) of {'Builtin.MkPair', V4, V5} -> case ('dn--un--unzipWith_Zippable_(Vect $k)'(V0, V3)) of {'Builtin.MkPair', V6, V7} -> {'Builtin.MkPair', {'Data.Vect.::', V4, V6}, {'Data.Vect.::', V5, V7}} end end end.
'dn--un--unzipWith3_Zippable_(Vect $k)'(V0, V1) -> case V1 of {'Data.Vect.Nil'} -> {'Builtin.MkPair', {'Data.Vect.Nil'}, {'Builtin.MkPair', {'Data.Vect.Nil'}, {'Data.Vect.Nil'}}}; {'Data.Vect.::', V2, V3} -> case (V0(V2)) of {'Builtin.MkPair', V4, V5} -> case V5 of {'Builtin.MkPair', V6, V7} -> case ('dn--un--unzipWith3_Zippable_(Vect $k)'(V0, V3)) of {'Builtin.MkPair', V8, V9} -> case V9 of {'Builtin.MkPair', V10, V11} -> {'Builtin.MkPair', {'Data.Vect.::', V4, V8}, {'Builtin.MkPair', {'Data.Vect.::', V6, V10}, {'Data.Vect.::', V7, V11}}} end end end end end.
'dn--un--unzip3_Zippable_(Vect $k)'(V0) -> ('dn--un--unzipWith3_Zippable_(Vect $k)'(fun (V1) -> V1 end, V0)).
'dn--un--traverse_Traversable_(Vect $k)'(V0, V1, V2) -> case V2 of {'Data.Vect.Nil'} -> case V0 of {'Prelude.Interfaces.MkApplicative', V3, V4, V5} -> ((V4('erased'))({'Data.Vect.Nil'})) end; {'Data.Vect.::', V6, V7} -> case V0 of {'Prelude.Interfaces.MkApplicative', V8, V9, V10} -> ((((V10('erased'))('erased'))(case V0 of {'Prelude.Interfaces.MkApplicative', V11, V12, V13} -> ((((V13('erased'))('erased'))(case V0 of {'Prelude.Interfaces.MkApplicative', V14, V15, V16} -> ((V15('erased'))(fun (V17) -> fun (V18) -> {'Data.Vect.::', V17, V18} end end)) end))((V1(V6)))) end))(('dn--un--traverse_Traversable_(Vect $k)'(V0, V1, V7)))) end end.
'dn--un--toList_Foldable_(Vect $n)'(V0) -> ('dn--un--foldr_Foldable_(Vect $n)'(fun (V1) -> fun (V2) -> [V1 | V2] end end, [], V0)).
'dn--un--show_Show_((Vect $len) $elem)'(V0, V1) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_(List $a)'(V0, ('dn--un--toList_Foldable_(Vect $n)'(V1)))).
'dn--un--showPrec_Show_((Vect $len) $elem)'(V0, V1, V2) -> ('dn--un--show_Show_((Vect $len) $elem)'(V0, V2)).
'dn--un--pure_Applicative_(Vect $k)'(V0, V1) -> ('un--replicate'(V0, V1)).
'dn--un--null_Foldable_(Vect $n)'(V0) -> case V0 of {'Data.Vect.Nil'} -> 1; _ -> 0 end.
'dn--un--neutral_Monoid_((Vect $k) $a)'(V0, V1) -> ('un--replicate'(V0, case V1 of {'Prelude.Interfaces.MkMonoid', V2, V3} -> V3 end)).
'dn--un--min_Ord_((Vect $len) $elem)'(V0, V1, V2) -> case ('dn--un--<_Ord_((Vect $len) $elem)'(V0, V1, V2)) of 1 -> V1; 0 -> V2 end.
'dn--un--max_Ord_((Vect $len) $elem)'(V0, V1, V2) -> case ('dn--un-->_Ord_((Vect $len) $elem)'(V0, V1, V2)) of 1 -> V1; 0 -> V2 end.
'dn--un--map_Functor_(Vect $n)'(V0, V1) -> case V1 of {'Data.Vect.Nil'} -> {'Data.Vect.Nil'}; {'Data.Vect.::', V2, V3} -> {'Data.Vect.::', (V0(V2)), ((begin (V8 = fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('dn--un--map_Functor_(Vect $n)'(V6, V7)) end end end end), fun (V9) -> fun (V10) -> ((((V8('erased'))('erased'))(V9))(V10)) end end end(V0))(V3))} end.
'dn--un--join_Monad_(Vect $k)'(V0, V1) -> ('dn--un-->>=_Monad_(Vect $k)'(V0, V1, fun (V2) -> V2 end)).
'dn--un--injective_Injective_(Vect.:: $x)'(V0, V1, V2, V3) -> {'Builtin.Refl'}.
'dn--un--injective_Injective_(%lam RigW Explicit (Just x) ? ((Vect.:: x) $xs))'(V0, V1, V2, V3) -> {'Builtin.Refl'}.
'dn--un--foldr_Foldable_(Vect $n)'(V0, V1, V2) -> ('un--foldrImpl'(V0, V1, fun (V3) -> V3 end, V2)).
'dn--un--foldl_Foldable_(Vect $n)'(V0, V1, V2) -> case V2 of {'Data.Vect.Nil'} -> V1; {'Data.Vect.::', V3, V4} -> ('dn--un--foldl_Foldable_(Vect $n)'(V0, ((V0(V1))(V3)), V4)) end.
'dn--un--foldlM_Foldable_(Vect $n)'(V0, V1, V2, V3) -> ('dn--un--foldl_Foldable_(Vect $n)'(fun (V4) -> fun (V5) -> case V0 of {'Prelude.Interfaces.MkMonad', V6, V7, V8} -> ((((V7('erased'))('erased'))(V4))(fun (V9) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(V1, V5, V9)) end)) end end end, case V0 of {'Prelude.Interfaces.MkMonad', V10, V11, V12} -> case V10 of {'Prelude.Interfaces.MkApplicative', V13, V14, V15} -> ((V14('erased'))(V2)) end end, V3)).
'dn--un--foldMap_Foldable_(Vect $n)'(V0, V1, V2) -> ('dn--un--foldl_Foldable_(Vect $n)'(fun (V3) -> fun (V4) -> ((begin (V7 = case V0 of {'Prelude.Interfaces.MkMonoid', V5, V6} -> V5 end), fun (V8) -> fun (V9) -> ((V7(V8))(V9)) end end end(V3))((V1(V4)))) end end, case V0 of {'Prelude.Interfaces.MkMonoid', V10, V11} -> V11 end, V2)).
'dn--un--decEq_DecEq_((Vect $n) $a)'(V0, V1, V2) -> case V1 of {'Data.Vect.Nil'} -> case V2 of {'Data.Vect.Nil'} -> {'Prelude.Types.Yes', {'Builtin.Refl'}} end; {'Data.Vect.::', V3, V4} -> case V2 of {'Data.Vect.::', V5, V6} -> ('Idris.Idris2.Decidable.Equality.Core':'un--decEqCong2'(((begin (V7 = V0), fun (V8) -> fun (V9) -> ((V7(V8))(V9)) end end end(V3))(V5)), fun () -> ((begin (V12 = fun (V10) -> fun (V11) -> ('dn--un--decEq_DecEq_((Vect $n) $a)'(V0, V10, V11)) end end), fun (V13) -> fun (V14) -> ((V12(V13))(V14)) end end end(V4))(V6)) end)) end end.
'dn--un--compare_Ord_((Vect $len) $elem)'(V0, V1, V2) -> case V1 of {'Data.Vect.Nil'} -> case V2 of {'Data.Vect.Nil'} -> 1 end; {'Data.Vect.::', V3, V4} -> case V2 of {'Data.Vect.::', V5, V6} -> ('case--compare-5257'(V0, V3, V4, V5, V6, case V0 of {'Prelude.EqOrd.MkOrd', V7, V8, V9, V10, V11, V12, V13, V14} -> ((V8(V3))(V5)) end)) end end.
'dn--un--biinjective_Biinjective_Vect.::'(V0, V1, V2, V3, V4) -> {'Builtin.MkPair', {'Builtin.Refl'}, {'Builtin.Refl'}}.
'dn--un--__Impl_Zippable_(Vect $k)'() -> {'Data.Zippable.dn--un--__mkZippable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('dn--un--zipWith_Zippable_(Vect $k)'(V3, V4, V5)) end end end end end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--zip_Zippable_(Vect $k)'(V8, V9)) end end end end, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> ('dn--un--zipWith3_Zippable_(Vect $k)'(V14, V15, V16, V17)) end end end end end end end end, fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('dn--un--zip3_Zippable_(Vect $k)'(V21, V22, V23)) end end end end end end, fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> ('dn--un--unzipWith_Zippable_(Vect $k)'(V27, V28)) end end end end end, fun (V29) -> fun (V30) -> fun (V31) -> ('dn--un--unzip_Zippable_(Vect $k)'(V31)) end end end, fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> fun (V36) -> fun (V37) -> ('dn--un--unzipWith3_Zippable_(Vect $k)'(V36, V37)) end end end end end end, fun (V38) -> fun (V39) -> fun (V40) -> fun (V41) -> ('dn--un--unzip3_Zippable_(Vect $k)'(V41)) end end end end}.
'dn--un--__Impl_Traversable_(Vect $k)'() -> {'Prelude.Interfaces.MkTraversable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_(Vect $n)'(V2, V3)) end end end end, {'Prelude.Interfaces.MkFoldable', fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('dn--un--foldr_Foldable_(Vect $n)'(V6, V7, V8)) end end end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--foldl_Foldable_(Vect $n)'(V11, V12, V13)) end end end end end, fun (V14) -> fun (V15) -> ('dn--un--null_Foldable_(Vect $n)'(V15)) end end, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> ('dn--un--foldlM_Foldable_(Vect $n)'(V19, V20, V21, V22)) end end end end end end end, fun (V23) -> fun (V24) -> ('dn--un--toList_Foldable_(Vect $n)'(V24)) end end, fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> ('dn--un--foldMap_Foldable_(Vect $n)'(V27, V28, V29)) end end end end end}, fun (V30) -> fun (V31) -> fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> ('dn--un--traverse_Traversable_(Vect $k)'(V33, V34, V35)) end end end end end end}.
'dn--un--__Impl_Show_((Vect $len) $elem)'(V0) -> {'Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_((Vect $len) $elem)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_((Vect $len) $elem)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Semigroup_((Vect $k) $a)'(V0, V1, V2) -> ('dn--un--<+>_Semigroup_((Vect $k) $a)'(V0, V1, V2)).
'dn--un--__Impl_Ord_((Vect $len) $elem)'(V0) -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_((Vect $n) $a)'(case V0 of {'Prelude.EqOrd.MkOrd', V3, V4, V5, V6, V7, V8, V9, V10} -> V3 end, V1, V2)) end end, fun (V11) -> fun (V12) -> ('dn--un--/=_Eq_((Vect $n) $a)'(case V0 of {'Prelude.EqOrd.MkOrd', V13, V14, V15, V16, V17, V18, V19, V20} -> V13 end, V11, V12)) end end}, fun (V21) -> fun (V22) -> ('dn--un--compare_Ord_((Vect $len) $elem)'(V0, V21, V22)) end end, fun (V23) -> fun (V24) -> ('dn--un--<_Ord_((Vect $len) $elem)'(V0, V23, V24)) end end, fun (V25) -> fun (V26) -> ('dn--un-->_Ord_((Vect $len) $elem)'(V0, V25, V26)) end end, fun (V27) -> fun (V28) -> ('dn--un--<=_Ord_((Vect $len) $elem)'(V0, V27, V28)) end end, fun (V29) -> fun (V30) -> ('dn--un-->=_Ord_((Vect $len) $elem)'(V0, V29, V30)) end end, fun (V31) -> fun (V32) -> ('dn--un--max_Ord_((Vect $len) $elem)'(V0, V31, V32)) end end, fun (V33) -> fun (V34) -> ('dn--un--min_Ord_((Vect $len) $elem)'(V0, V33, V34)) end end}.
'dn--un--__Impl_Monoid_((Vect $k) $a)'(V0, V1) -> {'Prelude.Interfaces.MkMonoid', fun (V2) -> fun (V3) -> ('dn--un--<+>_Semigroup_((Vect $k) $a)'(case V1 of {'Prelude.Interfaces.MkMonoid', V4, V5} -> V4 end, V2, V3)) end end, ('dn--un--neutral_Monoid_((Vect $k) $a)'(V0, V1))}.
'dn--un--__Impl_Monad_(Vect $k)'(V0) -> {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_(Vect $n)'(V3, V4)) end end end end, fun (V5) -> fun (V6) -> ('un--replicate'(V0, V6)) end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('dn--un--<*>_Applicative_(Vect $k)'(V0, V9, V10)) end end end end}, fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> ('dn--un-->>=_Monad_(Vect $k)'(V0, V13, V14)) end end end end, fun (V15) -> fun (V16) -> ('dn--un--join_Monad_(Vect $k)'(V0, V16)) end end}.
'dn--un--__Impl_Injective_(Vect.:: $x)'(V0) -> {'Control.Function.MkInjective', fun (V1) -> {'Data.Vect.::', V0, V1} end, fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--injective_Injective_(Vect.:: $x)'(V0, V2, V3, V4)) end end end}.
'dn--un--__Impl_Injective_(%lam RigW Explicit (Just x) ? ((Vect.:: x) $xs))'(V0) -> {'Control.Function.MkInjective', fun (V1) -> {'Data.Vect.::', V1, V0} end, fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--injective_Injective_(%lam RigW Explicit (Just x) ? ((Vect.:: x) $xs))'(V0, V2, V3, V4)) end end end}.
'dn--un--__Impl_Functor_(Vect $n)'(V0, V1, V2, V3) -> ('dn--un--map_Functor_(Vect $n)'(V2, V3)).
'dn--un--__Impl_Foldable_(Vect $n)'() -> {'Prelude.Interfaces.MkFoldable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--foldr_Foldable_(Vect $n)'(V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--foldl_Foldable_(Vect $n)'(V7, V8, V9)) end end end end end, fun (V10) -> fun (V11) -> ('dn--un--null_Foldable_(Vect $n)'(V11)) end end, fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> ('dn--un--foldlM_Foldable_(Vect $n)'(V15, V16, V17, V18)) end end end end end end end, fun (V19) -> fun (V20) -> ('dn--un--toList_Foldable_(Vect $n)'(V20)) end end, fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> ('dn--un--foldMap_Foldable_(Vect $n)'(V23, V24, V25)) end end end end end}.
'dn--un--__Impl_Eq_((Vect $n) $a)'(V0) -> {'Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_((Vect $n) $a)'(V0, V1, V2)) end end, fun (V3) -> fun (V4) -> ('dn--un--/=_Eq_((Vect $n) $a)'(V0, V3, V4)) end end}.
'dn--un--__Impl_DecEq_((Vect $n) $a)'(V0, V1, V2) -> ('dn--un--decEq_DecEq_((Vect $n) $a)'(V0, V1, V2)).
'dn--un--__Impl_Biinjective_Vect.::'(V0, V1, V2, V3, V4) -> ('dn--un--biinjective_Biinjective_Vect.::'(V0, V1, V2, V3, V4)).
'dn--un--__Impl_Applicative_(Vect $k)'(V0) -> {'Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_(Vect $n)'(V3, V4)) end end end end, fun (V5) -> fun (V6) -> ('un--replicate'(V0, V6)) end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('dn--un--<*>_Applicative_(Vect $k)'(V0, V9, V10)) end end end end}.
'dn--un-->_Ord_((Vect $len) $elem)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_((Vect $len) $elem)'(V0, V1, V2)), 2)).
'dn--un-->>=_Monad_(Vect $k)'(V0, V1, V2) -> ('un--diag'(('dn--un--map_Functor_(Vect $n)'(V2, V1)))).
'dn--un-->=_Ord_((Vect $len) $elem)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_((Vect $len) $elem)'(V0, V1, V2)), 0)).
'dn--un--==_Eq_((Vect $n) $a)'(V0, V1, V2) -> case V1 of {'Data.Vect.Nil'} -> case V2 of {'Data.Vect.Nil'} -> 1 end; {'Data.Vect.::', V3, V4} -> case V2 of {'Data.Vect.::', V5, V6} -> case case V0 of {'Prelude.EqOrd.MkEq', V7, V8} -> ((V7(V3))(V5)) end of 1 -> ('dn--un--==_Eq_((Vect $n) $a)'(V0, V4, V6)); 0 -> 0 end end end.
'dn--un--<_Ord_((Vect $len) $elem)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_((Vect $len) $elem)'(V0, V1, V2)), 0)).
'dn--un--<=_Ord_((Vect $len) $elem)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_((Vect $len) $elem)'(V0, V1, V2)), 2)).
'dn--un--<+>_Semigroup_((Vect $k) $a)'(V0, V1, V2) -> ('dn--un--zipWith_Zippable_(Vect $k)'(begin (V3 = V0), fun (V4) -> fun (V5) -> ((V3(V4))(V5)) end end end, V1, V2)).
'dn--un--<*>_Applicative_(Vect $k)'(V0, V1, V2) -> ('dn--un--zipWith_Zippable_(Vect $k)'(fun (V3) -> fun (V4) -> (V3(V4)) end end, V1, V2)).
'dn--un--/=_Eq_((Vect $n) $a)'(V0, V1, V2) -> case ('dn--un--==_Eq_((Vect $n) $a)'(V0, V1, V2)) of 1 -> 0; 0 -> 1 end.
'un--zipWithIndexLinear'(V0, V1, V2) -> case V0 of {'Data.Vect.::', V3, V4} -> case V1 of {'Data.Vect.::', V5, V6} -> case V2 of 0 -> {'Builtin.Refl'}; _ -> begin (V7 = (V2 - 1)), ('un--zipWithIndexLinear'(V4, V6, V7)) end end end end.
'un--zipWith3IndexLinear'(V0, V1, V2, V3) -> case V0 of {'Data.Vect.::', V4, V5} -> case V1 of {'Data.Vect.::', V6, V7} -> case V2 of {'Data.Vect.::', V8, V9} -> case V3 of 0 -> {'Builtin.Refl'}; _ -> begin (V10 = (V3 - 1)), ('un--zipWith3IndexLinear'(V5, V7, V9, V10)) end end end end end.
'un--vectToMaybe'(V0) -> case V0 of {'Data.Vect.Nil'} -> {'Prelude.Types.Nothing'}; {'Data.Vect.::', V1, V2} -> {'Prelude.Types.Just', V1} end.
'un--updateAt'(V0, V1, V2) -> case V0 of 0 -> case V2 of {'Data.Vect.::', V3, V4} -> {'Data.Vect.::', (V1(V3)), V4} end; _ -> begin (V5 = (V0 - 1)), case V2 of {'Data.Vect.::', V6, V7} -> {'Data.Vect.::', V6, ('un--updateAt'(V5, V1, V7))} end end end.
'un--unsnoc'(V0) -> case V0 of {'Data.Vect.::', V1, V2} -> case V2 of {'Data.Vect.Nil'} -> {'Builtin.MkPair', {'Data.Vect.Nil'}, V1}; {'Data.Vect.::', V3, V4} -> begin (V5 = {'Data.Vect.::', V3, V4}), case ('un--unsnoc'(V5)) of {'Builtin.MkPair', V6, V7} -> {'Builtin.MkPair', {'Data.Vect.::', V1, V6}, V7} end end end end.
'un--transpose'(V0, V1) -> case V1 of {'Data.Vect.Nil'} -> ('un--replicate'(V0, {'Data.Vect.Nil'})); {'Data.Vect.::', V2, V3} -> ('dn--un--zipWith_Zippable_(Vect $k)'(fun (V4) -> fun (V5) -> {'Data.Vect.::', V4, V5} end end, V2, ('un--transpose'(V0, V3)))) end.
'un--toVect'(V0, V1) -> case V0 of 0 -> case V1 of [] -> {'Prelude.Types.Just', {'Data.Vect.Nil'}}; _ -> {'Prelude.Types.Nothing'} end; _ -> begin (V2 = (V0 - 1)), case V1 of [E0 | E1] -> (fun (V3, V4) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('un--toVect'(V2, V4)), fun (V5) -> {'Prelude.Types.Just', {'Data.Vect.::', V3, V5}} end)) end(E0, E1)); _ -> {'Prelude.Types.Nothing'} end end end.
'un--take'(V0, V1) -> case V0 of 0 -> {'Data.Vect.Nil'}; _ -> begin (V2 = (V0 - 1)), case V1 of {'Data.Vect.::', V3, V4} -> {'Data.Vect.::', V3, ('un--take'(V2, V4))} end end end.
'un--tail'(V0) -> case V0 of {'Data.Vect.::', V1, V2} -> V2 end.
'un--splitAt'(V0, V1) -> case V0 of 0 -> {'Builtin.MkPair', {'Data.Vect.Nil'}, V1}; _ -> begin (V2 = (V0 - 1)), case V1 of {'Data.Vect.::', V3, V4} -> ('with--splitAt-7381'('erased', 'erased', V2, V4, ('un--splitAt'(V2, V4)), V3)) end end end.
'un--snoc'(V0, V1) -> case V0 of {'Data.Vect.Nil'} -> {'Data.Vect.::', V1, {'Data.Vect.Nil'}}; {'Data.Vect.::', V2, V3} -> {'Data.Vect.::', V2, ('un--snoc'(V3, V1))} end.
'un--scanr1'(V0, V1) -> case V1 of {'Data.Vect.Nil'} -> {'Data.Vect.Nil'}; {'Data.Vect.::', V2, V3} -> begin (V4 = {'Data.Vect.::', V2, V3}), case ('un--unsnoc'(V4)) of {'Builtin.MkPair', V5, V6} -> ('un--scanr'(V0, V6, V5)) end end end.
'un--scanr'(V0, V1, V2) -> case V2 of {'Data.Vect.Nil'} -> {'Data.Vect.::', V1, {'Data.Vect.Nil'}}; {'Data.Vect.::', V3, V4} -> ('case--scanr-6115'(V1, V3, V4, V0, ('un--scanr'(V0, V1, V4)))) end.
'un--scanl1'(V0, V1) -> case V1 of {'Data.Vect.Nil'} -> {'Data.Vect.Nil'}; {'Data.Vect.::', V2, V3} -> ('un--scanl'(V0, V2, V3)) end.
'un--scanl'(V0, V1, V2) -> case V2 of {'Data.Vect.Nil'} -> {'Data.Vect.::', V1, {'Data.Vect.Nil'}}; {'Data.Vect.::', V3, V4} -> {'Data.Vect.::', V1, ('un--scanl'(V0, ((V0(V1))(V3)), V4))} end.
'un--reverseOnto'(V0, V1) -> case V1 of {'Data.Vect.Nil'} -> V0; {'Data.Vect.::', V2, V3} -> ('un--reverseOnto'({'Data.Vect.::', V2, V0}, V3)) end.
'un--reverse'(V0) -> ('un--reverseOnto'({'Data.Vect.Nil'}, V0)).
'un--replicate'(V0, V1) -> case V0 of 0 -> {'Data.Vect.Nil'}; _ -> begin (V2 = (V0 - 1)), {'Data.Vect.::', V1, ('un--replicate'(V2, V1))} end end.
'un--replaceAtSameIndex'(V0, V1) -> case V0 of {'Data.Vect.::', V2, V3} -> case V1 of 0 -> {'Builtin.Refl'}; _ -> begin (V4 = (V1 - 1)), ('un--replaceAtSameIndex'(V3, V4)) end end end.
'un--replaceAtDiffIndexPreserves'(V0, V1, V2, V3) -> case V0 of {'Data.Vect.::', V4, V5} -> case V1 of 0 -> case V2 of 0 -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V6) -> V6 end, (V3({'Builtin.Refl'})))); _ -> {'Builtin.Refl'} end; _ -> begin (V7 = (V1 - 1)), case V2 of 0 -> {'Builtin.Refl'}; _ -> begin (V8 = (V2 - 1)), ('un--replaceAtDiffIndexPreserves'(V5, V7, V8, fun (V9) -> (V3({'Builtin.Refl'})) end)) end end end end end.
'un--replaceAt'(V0, V1, V2) -> case V0 of 0 -> case V2 of {'Data.Vect.::', V3, V4} -> {'Data.Vect.::', V1, V4} end; _ -> begin (V5 = (V0 - 1)), case V2 of {'Data.Vect.::', V6, V7} -> {'Data.Vect.::', V6, ('un--replaceAt'(V5, V1, V7))} end end end.
'un--partition'(V0, V1) -> case V1 of {'Data.Vect.Nil'} -> {'Builtin.MkPair', {'Builtin.DPair.MkDPair', 0, {'Data.Vect.Nil'}}, {'Builtin.DPair.MkDPair', 0, {'Data.Vect.Nil'}}}; {'Data.Vect.::', V2, V3} -> case ('un--partition'(V0, V3)) of {'Builtin.MkPair', V4, V5} -> case V4 of {'Builtin.DPair.MkDPair', V6, V7} -> case V5 of {'Builtin.DPair.MkDPair', V8, V9} -> case (V0(V2)) of 1 -> {'Builtin.MkPair', {'Builtin.DPair.MkDPair', (V6 + 1), {'Data.Vect.::', V2, V7}}, {'Builtin.DPair.MkDPair', V8, V9}}; 0 -> {'Builtin.MkPair', {'Builtin.DPair.MkDPair', V6, V7}, {'Builtin.DPair.MkDPair', (V8 + 1), {'Data.Vect.::', V2, V9}}} end end end end end.
'un--overLength'(V0, V1, V2) -> ('with--overLength-9585'(V0, V1, ('Idris.Idris2.Data.Nat':'un--cmp'(V0, V1)), 'erased', V2)).
'un--nubBy'(V0, V1) -> ('nested--7911-7014--in--un--nubBy\x{27}'({'Data.Vect.Nil'}, V0, V1)).
'un--nub'(V0, V1) -> ('un--nubBy'(fun (V2) -> fun (V3) -> case V0 of {'Prelude.EqOrd.MkEq', V4, V5} -> ((V4(V2))(V3)) end end end, V1)).
'un--mergeBy'(V0, V1, V2) -> case V1 of {'Data.Vect.Nil'} -> V2; _ -> case V2 of {'Data.Vect.Nil'} -> V1; _ -> case V1 of {'Data.Vect.::', V3, V4} -> case V2 of {'Data.Vect.::', V5, V6} -> case ((V0(V3))(V5)) of 0 -> {'Data.Vect.::', V3, ('un--mergeBy'(V0, V4, {'Data.Vect.::', V5, V6}))}; _ -> {'Data.Vect.::', V5, ('un--mergeBy'(V0, {'Data.Vect.::', V3, V4}, V6))} end end end end end.
'un--merge'(V0, V1, V2) -> ('un--mergeBy'(fun (V3) -> fun (V4) -> case V0 of {'Prelude.EqOrd.MkOrd', V5, V6, V7, V8, V9, V10, V11, V12} -> ((V6(V3))(V4)) end end end, V1, V2)).
'un--maybeToVect'(V0) -> case V0 of {'Prelude.Types.Nothing'} -> {'Builtin.DPair.MkDPair', 0, {'Data.Vect.Nil'}}; {'Prelude.Types.Just', V1} -> {'Builtin.DPair.MkDPair', 1, {'Data.Vect.::', V1, {'Data.Vect.Nil'}}} end.
'un--mapMaybe'(V0, V1) -> case V1 of {'Data.Vect.Nil'} -> {'Builtin.DPair.MkDPair', 0, {'Data.Vect.Nil'}}; {'Data.Vect.::', V2, V3} -> case ('un--mapMaybe'(V0, V3)) of {'Builtin.DPair.MkDPair', V4, V5} -> case (V0(V2)) of {'Prelude.Types.Just', V6} -> {'Builtin.DPair.MkDPair', (V4 + 1), {'Data.Vect.::', V6, V5}}; {'Prelude.Types.Nothing'} -> {'Builtin.DPair.MkDPair', V4, V5} end end end.
'un--lookupBy'(V0, V1, V2) -> case V2 of {'Data.Vect.Nil'} -> {'Prelude.Types.Nothing'}; {'Data.Vect.::', V3, V4} -> case V3 of {'Builtin.MkPair', V5, V6} -> case ((V0(V1))(V5)) of 1 -> {'Prelude.Types.Just', V6}; 0 -> ('un--lookupBy'(V0, V1, V4)) end end end.
'un--lookup'(V0, V1, V2) -> ('un--lookupBy'(fun (V3) -> fun (V4) -> case V0 of {'Prelude.EqOrd.MkEq', V5, V6} -> ((V5(V3))(V4)) end end end, V1, V2)).
'un--lengthCorrect'(V0) -> case V0 of {'Data.Vect.Nil'} -> {'Builtin.Refl'}; {'Data.Vect.::', V1, V2} -> {'Builtin.Refl'} end.
'un--length'(V0) -> case V0 of {'Data.Vect.Nil'} -> 0; {'Data.Vect.::', V1, V2} -> (('un--length'(V2)) + 1) end.
'un--last'(V0) -> case V0 of {'Data.Vect.::', V1, V2} -> case V2 of {'Data.Vect.Nil'} -> V1; {'Data.Vect.::', V3, V4} -> ('un--last'({'Data.Vect.::', V3, V4})) end end.
'un--isSuffixOfBy'(V0, V1, V2) -> ('un--isPrefixOfBy'(V0, ('un--reverse'(V1)), ('un--reverse'(V2)))).
'un--isSuffixOf'(V0, V1, V2) -> ('un--isSuffixOfBy'(fun (V3) -> fun (V4) -> case V0 of {'Prelude.EqOrd.MkEq', V5, V6} -> ((V5(V3))(V4)) end end end, V1, V2)).
'un--isPrefixOfBy'(V0, V1, V2) -> case V1 of {'Data.Vect.Nil'} -> 1; _ -> case V2 of {'Data.Vect.Nil'} -> 0; _ -> case V1 of {'Data.Vect.::', V3, V4} -> case V2 of {'Data.Vect.::', V5, V6} -> case ((V0(V3))(V5)) of 1 -> ('un--isPrefixOfBy'(V0, V4, V6)); 0 -> 0 end end end end end.
'un--isPrefixOf'(V0, V1, V2) -> ('un--isPrefixOfBy'(fun (V3) -> fun (V4) -> case V0 of {'Prelude.EqOrd.MkEq', V5, V6} -> ((V5(V3))(V4)) end end end, V1, V2)).
'un--intersperse'(V0, V1) -> case V1 of {'Data.Vect.Nil'} -> {'Data.Vect.Nil'}; {'Data.Vect.::', V2, V3} -> {'Data.Vect.::', V2, ('nested--5363-4548--in--un--intersperse\x{27}'(V0, V2, V3, V0, V3))} end.
'un--insertAt'(V0, V1, V2) -> case V0 of 0 -> {'Data.Vect.::', V1, V2}; _ -> begin (V3 = (V0 - 1)), case V2 of {'Data.Vect.::', V4, V5} -> {'Data.Vect.::', V4, ('un--insertAt'(V3, V1, V5))} end end end.
'un--init'(V0) -> case V0 of {'Data.Vect.::', V1, V2} -> case V2 of {'Data.Vect.Nil'} -> {'Data.Vect.Nil'}; {'Data.Vect.::', V3, V4} -> {'Data.Vect.::', V1, ('un--init'({'Data.Vect.::', V3, V4}))} end end.
'un--index'(V0, V1) -> case V0 of 0 -> case V1 of {'Data.Vect.::', V2, V3} -> V2 end; _ -> begin (V4 = (V0 - 1)), case V1 of {'Data.Vect.::', V5, V6} -> ('un--index'(V4, V6)) end end end.
'un--head'(V0) -> case V0 of {'Data.Vect.::', V1, V2} -> V1 end.
'un--hasAnyBy'(V0, V1, V2) -> case V2 of {'Data.Vect.Nil'} -> 0; {'Data.Vect.::', V3, V4} -> case ('Idris.Idris2.Prelude.Types':'un--elemBy'({'Prelude.Interfaces.MkFoldable', fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--foldr_Foldable_(Vect $n)'(V7, V8, V9)) end end end end end, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> ('dn--un--foldl_Foldable_(Vect $n)'(V12, V13, V14)) end end end end end, fun (V15) -> fun (V16) -> ('dn--un--null_Foldable_(Vect $n)'(V16)) end end, fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('dn--un--foldlM_Foldable_(Vect $n)'(V20, V21, V22, V23)) end end end end end end end, fun (V24) -> fun (V25) -> ('dn--un--toList_Foldable_(Vect $n)'(V25)) end end, fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> fun (V30) -> ('dn--un--foldMap_Foldable_(Vect $n)'(V28, V29, V30)) end end end end end}, V0, V3, V1)) of 1 -> 1; 0 -> ('un--hasAnyBy'(V0, V1, V4)) end end.
'un--hasAny'(V0, V1, V2) -> ('un--hasAnyBy'(fun (V3) -> fun (V4) -> case V0 of {'Prelude.EqOrd.MkEq', V5, V6} -> ((V5(V3))(V4)) end end end, V1, V2)).
'un--fromList\x{27}'(V0, V1) -> case V1 of [] -> V0; [E0 | E1] -> (fun (V2, V3) -> ('un--fromList\x{27}'({'Data.Vect.::', V2, V0}, V3)) end(E0, E1)) end.
'un--fromList'(V0) -> ('un--reverse'(('un--fromList\x{27}'({'Data.Vect.Nil'}, V0)))).
'un--foldrImpl'(V0, V1, V2, V3) -> case V3 of {'Data.Vect.Nil'} -> (V2(V1)); {'Data.Vect.::', V4, V5} -> ('un--foldrImpl'(V0, V1, fun (V6) -> (V2(((V0(V4))(V6)))) end, V5)) end.
'un--foldr1'(V0, V1) -> case V1 of {'Data.Vect.::', V2, V3} -> case V3 of {'Data.Vect.Nil'} -> V2; {'Data.Vect.::', V4, V5} -> ((V0(V2))(('un--foldr1'(V0, {'Data.Vect.::', V4, V5})))) end end.
'un--foldl1'(V0, V1) -> case V1 of {'Data.Vect.::', V2, V3} -> ('dn--un--foldl_Foldable_(Vect $n)'(V0, V2, V3)) end.
'un--findIndices'(V0, V1) -> case V1 of {'Data.Vect.Nil'} -> []; {'Data.Vect.::', V2, V3} -> begin (V12 = ((begin (V9 = fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V7, V8)) end end end end), fun (V10) -> fun (V11) -> ((((V9('erased'))('erased'))(V10))(V11)) end end end(fun (V4) -> (V4 + 1) end))(('un--findIndices'(V0, V3))))), case (V0(V2)) of 1 -> [0 | V12]; 0 -> V12 end end end.
'un--findIndex'(V0, V1) -> case V1 of {'Data.Vect.Nil'} -> {'Prelude.Types.Nothing'}; {'Data.Vect.::', V2, V3} -> case (V0(V2)) of 1 -> {'Prelude.Types.Just', 0}; 0 -> ((begin (V9 = fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V7, V8)) end end end end), fun (V10) -> fun (V11) -> ((((V9('erased'))('erased'))(V10))(V11)) end end end(fun (V4) -> (V4 + 1) end))(('un--findIndex'(V0, V3)))) end end.
'un--find'(V0, V1) -> case V1 of {'Data.Vect.Nil'} -> {'Prelude.Types.Nothing'}; {'Data.Vect.::', V2, V3} -> case (V0(V2)) of 1 -> {'Prelude.Types.Just', V2}; 0 -> ('un--find'(V0, V3)) end end.
'un--filter'(V0, V1) -> case V1 of {'Data.Vect.Nil'} -> {'Builtin.DPair.MkDPair', 0, {'Data.Vect.Nil'}}; {'Data.Vect.::', V2, V3} -> case ('un--filter'(V0, V3)) of {'Builtin.DPair.MkDPair', V4, V5} -> case (V0(V2)) of 1 -> {'Builtin.DPair.MkDPair', (V4 + 1), {'Data.Vect.::', V2, V5}}; 0 -> {'Builtin.DPair.MkDPair', V4, V5} end end end.
'un--exactLength'(V0, V1, V2) -> ('with--exactLength-9545'(V0, V1, ((begin (V5 = fun (V3) -> fun (V4) -> ('Idris.Idris2.Decidable.Equality':'dn--un--decEq_DecEq_Nat'(V3, V4)) end end), fun (V6) -> fun (V7) -> ((V5(V6))(V7)) end end end(V0))(V1)), 'erased', V2)).
'un--elemIndicesBy'(V0, V1, V2) -> ('un--findIndices'((V0(V1)), V2)).
'un--elemIndices'(V0, V1, V2) -> ('un--elemIndicesBy'(fun (V3) -> fun (V4) -> case V0 of {'Prelude.EqOrd.MkEq', V5, V6} -> ((V5(V3))(V4)) end end end, V1, V2)).
'un--elemIndexBy'(V0, V1, V2) -> ('un--findIndex'((V0(V1)), V2)).
'un--elemIndex'(V0, V1, V2) -> ('un--elemIndexBy'(fun (V3) -> fun (V4) -> case V0 of {'Prelude.EqOrd.MkEq', V5, V6} -> ((V5(V3))(V4)) end end end, V1, V2)).
'un--drop\x{27}'(V0, V1) -> case V0 of 0 -> V1; _ -> begin (V2 = (V0 - 1)), case V1 of {'Data.Vect.Nil'} -> {'Data.Vect.Nil'}; {'Data.Vect.::', V3, V4} -> ('un--drop\x{27}'(V2, V4)) end end end.
'un--drop'(V0, V1) -> case V0 of 0 -> V1; _ -> begin (V2 = (V0 - 1)), case V1 of {'Data.Vect.::', V3, V4} -> ('un--drop'(V2, V4)) end end end.
'un--diag'(V0) -> case V0 of {'Data.Vect.Nil'} -> {'Data.Vect.Nil'}; {'Data.Vect.::', V1, V2} -> case V1 of {'Data.Vect.::', V3, V4} -> {'Data.Vect.::', V3, ('un--diag'(((begin (V10 = fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--map_Functor_(Vect $n)'(V8, V9)) end end end end), fun (V11) -> fun (V12) -> ((((V10('erased'))('erased'))(V11))(V12)) end end end(fun (V5) -> ('un--tail'(V5)) end))(V2))))} end end.
'un--deleteBy'(V0, V1, V2, V3) -> case V0 of 0 -> case V3 of {'Data.Vect.Nil'} -> {'Builtin.DPair.MkDPair', 0, {'Data.Vect.Nil'}} end; _ -> begin (V4 = (V0 - 1)), case V3 of {'Data.Vect.::', V5, V6} -> case ('un--deleteBy'(V4, V1, V2, V6)) of {'Builtin.DPair.MkDPair', V7, V8} -> case ((V1(V2))(V5)) of 1 -> {'Builtin.DPair.MkDPair', V4, V6}; 0 -> {'Builtin.DPair.MkDPair', (V7 + 1), {'Data.Vect.::', V5, V8}} end end end end end.
'un--deleteAt'(V0, V1) -> case V0 of 0 -> case V1 of {'Data.Vect.::', V2, V3} -> V3 end; _ -> begin (V4 = (V0 - 1)), case V1 of {'Data.Vect.::', V5, V6} -> case V6 of {'Data.Vect.Nil'} -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V7) -> ('Idris.Idris2.Data.Fin':'dn--un--uninhabited_Uninhabited_(Fin Z)'(V7)) end, V4)); {'Data.Vect.::', V8, V9} -> {'Data.Vect.::', V5, ('un--deleteAt'(V4, V6))} end end end end.
'un--delete'(V0, V1, V2, V3) -> ('un--deleteBy'(V0, fun (V4) -> fun (V5) -> case V1 of {'Prelude.EqOrd.MkEq', V6, V7} -> ((V6(V4))(V5)) end end end, V2, V3)).
'un--concat'(V0) -> case V0 of {'Data.Vect.Nil'} -> {'Data.Vect.Nil'}; {'Data.Vect.::', V1, V2} -> ('un--++'(V1, ('un--concat'(V2)))) end.
'un--catMaybes'(V0) -> case V0 of {'Data.Vect.Nil'} -> {'Builtin.DPair.MkDPair', 0, {'Data.Vect.Nil'}}; {'Data.Vect.::', V1, V2} -> case V1 of {'Prelude.Types.Nothing'} -> ('un--catMaybes'(V2)); {'Prelude.Types.Just', V3} -> case ('un--catMaybes'(V2)) of {'Builtin.DPair.MkDPair', V4, V5} -> {'Builtin.DPair.MkDPair', (V4 + 1), {'Data.Vect.::', V3, V5}} end end end.
'un--++'(V0, V1) -> case V0 of {'Data.Vect.Nil'} -> V1; {'Data.Vect.::', V2, V3} -> {'Data.Vect.::', V2, ('un--++'(V3, V1))} end.
