-module('Idris.Idris2.Data.Vect').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--overLength-5301'/5,
  'with--exactLength-5276'/5,
  'with--splitAt-3582'/6,
  'with--with block in nubBy,nubBy\x{27}-3359'/9,
  'with--nubBy,nubBy\x{27}-3331'/9,
  'with--decEq-1728'/9,
  'case--case block in unzipWith3-4556'/7,
  'case--unzipWith3-4514'/4,
  'case--case block in unzipWith-4433'/6,
  'case--unzipWith-4398'/4,
  'case--catMaybes-3949'/3,
  'case--case block in partition-3679'/8,
  'case--partition-3649'/4,
  'case--case block in deleteBy-3480'/9,
  'case--deleteBy-3455'/7,
  'case--case block in filter-3231'/6,
  'case--filter-3207'/4,
  'case--findIndices-3070'/5,
  'case--findIndex-2996'/4,
  'case--find-2939'/4,
  'case--lookupBy-2795'/6,
  'case--compare-2067'/6,
  'case--max-1955'/4,
  'case--min-1920'/4,
  'nested--6292-3295--in--un--nubBy\x{27}'/3,
  'nested--4407-1481--in--un--intersperse\x{27}'/5,
  'nested--4361-1420--in--un--go'/3,
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
  'dn--un--foldr_Foldable_(Vect $n)'/3,
  'dn--un--foldl_Foldable_(Vect $n)'/3,
  'dn--un--foldlM_Foldable_(Vect $n)'/4,
  'dn--un--foldMap_Foldable_(Vect $n)'/3,
  'dn--un--decEq_DecEq_((Vect $n) $a)'/3,
  'dn--un--compare_Ord_((Vect $len) $elem)'/3,
  'dn--un--__Impl_Zippable_(Vect $k)'/0,
  'dn--un--__Impl_Traversable_(Vect $k)'/0,
  'dn--un--__Impl_Show_((Vect $len) $elem)'/1,
  'dn--un--__Impl_Semigroup_((Vect $k) $a)'/3,
  'dn--un--__Impl_Ord_((Vect $len) $elem)'/1,
  'dn--un--__Impl_Monoid_((Vect $k) $a)'/2,
  'dn--un--__Impl_Monad_(Vect $k)'/1,
  'dn--un--__Impl_Functor_(Vect $n)'/4,
  'dn--un--__Impl_Foldable_(Vect $n)'/0,
  'dn--un--__Impl_Eq_((Vect $n) $a)'/1,
  'dn--un--__Impl_DecEq_((Vect $n) $a)'/3,
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
  'un--vectInjective'/1,
  'un--updateAt'/3,
  'un--transpose'/2,
  'un--toVect'/2,
  'un--take'/2,
  'un--tail'/1,
  'un--splitAt'/2,
  'un--snoc'/2,
  'un--scanl1'/2,
  'un--scanl'/3,
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
  'un--elemBy'/3,
  'un--elem'/3,
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
'with--overLength-5301'(V0, V1, V2, V3, V4) -> case V2 of {'Idris.Data.Nat.CmpLT', E0} -> (fun (V5) -> {'Idris.Prelude.Types.Nothing'} end(E0)); {'Idris.Data.Nat.CmpEQ'} -> (fun () -> {'Idris.Prelude.Types.Just', {'Idris.Builtin.DPair.MkDPair', 0, V4}} end()); {'Idris.Data.Nat.CmpGT', E1} -> (fun (V6) -> {'Idris.Prelude.Types.Just', {'Idris.Builtin.DPair.MkDPair', (1 + V6), V4}} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--exactLength-5276'(V0, V1, V2, V3, V4) -> case V2 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V5) -> case V5 of 0 -> {'Idris.Prelude.Types.Just', V4}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V6) -> {'Idris.Prelude.Types.Nothing'} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--splitAt-3582'(V0, V1, V2, V3, V4, V5) -> case V4 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V6, V7) -> {'Idris.Builtin.MkPair', {'Idris.Data.Vect.::', V5, V6}, V7} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--with block in nubBy,nubBy\x{27}-3359'(V0, V1, V2, V3, V4, V5, V6, V7, V8) -> case V8 of {'Idris.Builtin.DPair.MkDPair', E0, E1} -> (fun (V9, V10) -> {'Idris.Builtin.DPair.MkDPair', (1 + V9), {'Idris.Data.Vect.::', V7, V10}} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--nubBy,nubBy\x{27}-3331'(V0, V1, V2, V3, V4, V5, V6, V7, V8) -> case V6 of 1 -> ('nested--6292-3295--in--un--nubBy\x{27}'(V5, V4, V8)); 0 -> ('with--with block in nubBy,nubBy\x{27}-3359'('erased', 'erased', 'erased', V8, 'erased', V5, V4, V3, ('nested--6292-3295--in--un--nubBy\x{27}'({'Idris.Data.Vect.::', V3, V5}, V4, V8)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--decEq-1728'(V0, V1, V2, V3, V4, V5, V6, V7, V8) -> case V7 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V9, V10) -> case V9 of {'Idris.Prelude.Types.Yes', E3} -> (fun (V11) -> case V11 of 0 -> case V10 of {'Idris.Prelude.Types.Yes', E6} -> (fun (V12) -> case V12 of 0 -> {'Idris.Prelude.Types.Yes', 0}; _ -> case V10 of {'Idris.Prelude.Types.No', E7} -> (fun (V13) -> {'Idris.Prelude.Types.No', fun (V14) -> (V13(('Idris.Idris2.Builtin':'un--snd'(('un--vectInjective'(V14)))))) end} end(E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E6)); _ -> case V10 of {'Idris.Prelude.Types.No', E5} -> (fun (V15) -> {'Idris.Prelude.Types.No', fun (V16) -> (V15(('Idris.Idris2.Builtin':'un--snd'(('un--vectInjective'(V16)))))) end} end(E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end; _ -> case V10 of {'Idris.Prelude.Types.No', E4} -> (fun (V17) -> {'Idris.Prelude.Types.No', fun (V18) -> (V17(('Idris.Idris2.Builtin':'un--snd'(('un--vectInjective'(V18)))))) end} end(E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E3)); {'Idris.Prelude.Types.No', E8} -> (fun (V19) -> {'Idris.Prelude.Types.No', fun (V20) -> (V19(('Idris.Idris2.Builtin':'un--fst'(('un--vectInjective'(V20)))))) end} end(E8)); _ -> case V10 of {'Idris.Prelude.Types.No', E2} -> (fun (V21) -> {'Idris.Prelude.Types.No', fun (V22) -> (V21(('Idris.Idris2.Builtin':'un--snd'(('un--vectInjective'(V22)))))) end} end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in unzipWith3-4556'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V7, V8) -> case V8 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V9, V10) -> {'Idris.Builtin.MkPair', {'Idris.Data.Vect.::', V3, V7}, {'Idris.Builtin.MkPair', {'Idris.Data.Vect.::', V4, V9}, {'Idris.Data.Vect.::', V5, V10}}} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--unzipWith3-4514'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V4, V5) -> case V5 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V6, V7) -> case ('dn--un--unzipWith3_Zippable_(Vect $k)'(V2, V1)) of {'Idris.Builtin.MkPair', E4, E5} -> (fun (V8, V9) -> case V9 of {'Idris.Builtin.MkPair', E6, E7} -> (fun (V10, V11) -> {'Idris.Builtin.MkPair', {'Idris.Data.Vect.::', V4, V8}, {'Idris.Builtin.MkPair', {'Idris.Data.Vect.::', V6, V10}, {'Idris.Data.Vect.::', V7, V11}}} end(E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in unzipWith-4433'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V6, V7) -> {'Idris.Builtin.MkPair', {'Idris.Data.Vect.::', V3, V6}, {'Idris.Data.Vect.::', V4, V7}} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--unzipWith-4398'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V4, V5) -> case ('dn--un--unzipWith_Zippable_(Vect $k)'(V2, V1)) of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V6, V7) -> {'Idris.Builtin.MkPair', {'Idris.Data.Vect.::', V4, V6}, {'Idris.Data.Vect.::', V5, V7}} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--catMaybes-3949'(V0, V1, V2) -> case V2 of {'Idris.Builtin.DPair.MkDPair', E0, E1} -> (fun (V3, V4) -> {'Idris.Builtin.DPair.MkDPair', (1 + V3), {'Idris.Data.Vect.::', V0, V4}} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in partition-3679'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V7 of 1 -> {'Idris.Builtin.MkPair', {'Idris.Builtin.DPair.MkDPair', (1 + V3), {'Idris.Data.Vect.::', V2, V4}}, {'Idris.Builtin.DPair.MkDPair', V5, V6}}; 0 -> {'Idris.Builtin.MkPair', {'Idris.Builtin.DPair.MkDPair', V3, V4}, {'Idris.Builtin.DPair.MkDPair', (1 + V5), {'Idris.Data.Vect.::', V2, V6}}}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--partition-3649'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V4, V5) -> case V4 of {'Idris.Builtin.DPair.MkDPair', E2, E3} -> (fun (V6, V7) -> case V5 of {'Idris.Builtin.DPair.MkDPair', E4, E5} -> (fun (V8, V9) -> case (V2(V0)) of 1 -> {'Idris.Builtin.MkPair', {'Idris.Builtin.DPair.MkDPair', (1 + V6), {'Idris.Data.Vect.::', V0, V7}}, {'Idris.Builtin.DPair.MkDPair', V8, V9}}; 0 -> {'Idris.Builtin.MkPair', {'Idris.Builtin.DPair.MkDPair', V6, V7}, {'Idris.Builtin.DPair.MkDPair', (1 + V8), {'Idris.Data.Vect.::', V0, V9}}}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in deleteBy-3480'(V0, V1, V2, V3, V4, V5, V6, V7, V8) -> case V8 of 1 -> {'Idris.Builtin.DPair.MkDPair', V0, V1}; 0 -> {'Idris.Builtin.DPair.MkDPair', (1 + V6), {'Idris.Data.Vect.::', V4, V7}}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--deleteBy-3455'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Idris.Builtin.DPair.MkDPair', E0, E1} -> (fun (V7, V8) -> case ((V4(V1))(V2)) of 1 -> {'Idris.Builtin.DPair.MkDPair', V0, V3}; 0 -> {'Idris.Builtin.DPair.MkDPair', (1 + V7), {'Idris.Data.Vect.::', V2, V8}}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in filter-3231'(V0, V1, V2, V3, V4, V5) -> case V5 of 1 -> {'Idris.Builtin.DPair.MkDPair', (1 + V2), {'Idris.Data.Vect.::', V3, V4}}; 0 -> {'Idris.Builtin.DPair.MkDPair', V2, V4}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--filter-3207'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.DPair.MkDPair', E0, E1} -> (fun (V4, V5) -> case (V2(V0)) of 1 -> {'Idris.Builtin.DPair.MkDPair', (1 + V4), {'Idris.Data.Vect.::', V0, V5}}; 0 -> {'Idris.Builtin.DPair.MkDPair', V4, V5}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--findIndices-3070'(V0, V1, V2, V3, V4) -> case V4 of 1 -> [0 | V3]; 0 -> V3; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--findIndex-2996'(V0, V1, V2, V3) -> case V3 of 1 -> {'Idris.Prelude.Types.Just', 0}; 0 -> ('Idris.Idris2.Prelude.Interfaces':'un--<$>'(fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V6, V7)) end end end end, fun (V8) -> (1 + V8) end, ('un--findIndex'(V2, V1)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--find-2939'(V0, V1, V2, V3) -> case V3 of 1 -> {'Idris.Prelude.Types.Just', V0}; 0 -> ('un--find'(V2, V1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--lookupBy-2795'(V0, V1, V2, V3, V4, V5) -> case V5 of 1 -> {'Idris.Prelude.Types.Just', V2}; 0 -> ('un--lookupBy'(V4, V0, V3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-2067'(V0, V1, V2, V3, V4, V5) -> case V5 of 1 -> ('dn--un--compare_Ord_((Vect $len) $elem)'(V0, V2, V4)); _ -> V5 end.
'case--max-1955'(V0, V1, V2, V3) -> case V3 of 1 -> V2; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-1920'(V0, V1, V2, V3) -> case V3 of 1 -> V2; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--6292-3295--in--un--nubBy\x{27}'(V0, V1, V2) -> case V2 of {'Idris.Data.Vect.Nil'} -> (fun () -> {'Idris.Builtin.DPair.MkDPair', 0, {'Idris.Data.Vect.Nil'}} end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V3, V4) -> ('with--nubBy,nubBy\x{27}-3331'('erased', 'erased', 'erased', V3, V1, V0, ('un--elemBy'(V1, V3, V0)), 'erased', V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--4407-1481--in--un--intersperse\x{27}'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Data.Vect.Nil'} -> (fun () -> {'Idris.Data.Vect.Nil'} end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V5, V6) -> {'Idris.Data.Vect.::', V3, {'Idris.Data.Vect.::', V5, ('nested--4407-1481--in--un--intersperse\x{27}'(V0, V1, V2, V3, V6))}} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--4361-1420--in--un--go'(V0, V1, V2) -> case V2 of {'Idris.Data.Vect.Nil'} -> (fun () -> V1 end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V3, V4) -> ('nested--4361-1420--in--un--go'(V0, {'Idris.Data.Vect.::', V3, V1}, V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--zip_Zippable_(Vect $k)'(V0, V1) -> ('dn--un--zipWith_Zippable_(Vect $k)'(fun (V2) -> fun (V3) -> {'Idris.Builtin.MkPair', V2, V3} end end, V0, V1)).
'dn--un--zipWith_Zippable_(Vect $k)'(V0, V1, V2) -> case V1 of {'Idris.Data.Vect.Nil'} -> (fun () -> case V2 of {'Idris.Data.Vect.Nil'} -> (fun () -> {'Idris.Data.Vect.Nil'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V3, V4) -> case V2 of {'Idris.Data.Vect.::', E2, E3} -> (fun (V5, V6) -> {'Idris.Data.Vect.::', ((V0(V3))(V5)), ('dn--un--zipWith_Zippable_(Vect $k)'(V0, V4, V6))} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--zipWith3_Zippable_(Vect $k)'(V0, V1, V2, V3) -> case V1 of {'Idris.Data.Vect.Nil'} -> (fun () -> case V2 of {'Idris.Data.Vect.Nil'} -> (fun () -> case V3 of {'Idris.Data.Vect.Nil'} -> (fun () -> {'Idris.Data.Vect.Nil'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V4, V5) -> case V2 of {'Idris.Data.Vect.::', E2, E3} -> (fun (V6, V7) -> case V3 of {'Idris.Data.Vect.::', E4, E5} -> (fun (V8, V9) -> {'Idris.Data.Vect.::', (((V0(V4))(V6))(V8)), ('dn--un--zipWith3_Zippable_(Vect $k)'(V0, V5, V7, V9))} end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--zip3_Zippable_(Vect $k)'(V0, V1, V2) -> ('dn--un--zipWith3_Zippable_(Vect $k)'(fun (V3) -> fun (V4) -> fun (V5) -> {'Idris.Builtin.MkPair', V3, {'Idris.Builtin.MkPair', V4, V5}} end end end, V0, V1, V2)).
'dn--un--unzip_Zippable_(Vect $k)'(V0) -> ('dn--un--unzipWith_Zippable_(Vect $k)'(fun (V1) -> V1 end, V0)).
'dn--un--unzipWith_Zippable_(Vect $k)'(V0, V1) -> case V1 of {'Idris.Data.Vect.Nil'} -> (fun () -> {'Idris.Builtin.MkPair', {'Idris.Data.Vect.Nil'}, {'Idris.Data.Vect.Nil'}} end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V2, V3) -> case (V0(V2)) of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V4, V5) -> case ('dn--un--unzipWith_Zippable_(Vect $k)'(V0, V3)) of {'Idris.Builtin.MkPair', E4, E5} -> (fun (V6, V7) -> {'Idris.Builtin.MkPair', {'Idris.Data.Vect.::', V4, V6}, {'Idris.Data.Vect.::', V5, V7}} end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--unzipWith3_Zippable_(Vect $k)'(V0, V1) -> case V1 of {'Idris.Data.Vect.Nil'} -> (fun () -> {'Idris.Builtin.MkPair', {'Idris.Data.Vect.Nil'}, {'Idris.Builtin.MkPair', {'Idris.Data.Vect.Nil'}, {'Idris.Data.Vect.Nil'}}} end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V2, V3) -> case (V0(V2)) of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V4, V5) -> case V5 of {'Idris.Builtin.MkPair', E4, E5} -> (fun (V6, V7) -> case ('dn--un--unzipWith3_Zippable_(Vect $k)'(V0, V3)) of {'Idris.Builtin.MkPair', E6, E7} -> (fun (V8, V9) -> case V9 of {'Idris.Builtin.MkPair', E8, E9} -> (fun (V10, V11) -> {'Idris.Builtin.MkPair', {'Idris.Data.Vect.::', V4, V8}, {'Idris.Builtin.MkPair', {'Idris.Data.Vect.::', V6, V10}, {'Idris.Data.Vect.::', V7, V11}}} end(E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--unzip3_Zippable_(Vect $k)'(V0) -> ('dn--un--unzipWith3_Zippable_(Vect $k)'(fun (V1) -> V1 end, V0)).
'dn--un--traverse_Traversable_(Vect $k)'(V0, V1, V2) -> case V2 of {'Idris.Data.Vect.Nil'} -> (fun () -> case V0 of {'Idris.Prelude.Interfaces.MkApplicative', E0, E1, E2} -> (fun (V3, V4, V5) -> ((V4('erased'))({'Idris.Data.Vect.Nil'})) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); {'Idris.Data.Vect.::', E3, E4} -> (fun (V6, V7) -> case V0 of {'Idris.Prelude.Interfaces.MkApplicative', E5, E6, E7} -> (fun (V8, V9, V10) -> ((((V10('erased'))('erased'))(case V0 of {'Idris.Prelude.Interfaces.MkApplicative', E8, E9, E10} -> (fun (V11, V12, V13) -> ((((V13('erased'))('erased'))(case V0 of {'Idris.Prelude.Interfaces.MkApplicative', E11, E12, E13} -> (fun (V14, V15, V16) -> ((V15('erased'))(fun (V17) -> fun (V18) -> {'Idris.Data.Vect.::', V17, V18} end end)) end(E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end))((V1(V6)))) end(E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end))(('dn--un--traverse_Traversable_(Vect $k)'(V0, V1, V7)))) end(E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--toList_Foldable_(Vect $n)'(V0) -> ('dn--un--foldr_Foldable_(Vect $n)'(fun (V1) -> fun (V2) -> [V1 | V2] end end, [], V0)).
'dn--un--show_Show_((Vect $len) $elem)'(V0, V1) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_(List $a)'(V0, ('dn--un--toList_Foldable_(Vect $n)'(V1)))).
'dn--un--showPrec_Show_((Vect $len) $elem)'(V0, V1, V2) -> ('dn--un--show_Show_((Vect $len) $elem)'(V0, V2)).
'dn--un--pure_Applicative_(Vect $k)'(V0, V1) -> ('un--replicate'(V0, V1)).
'dn--un--null_Foldable_(Vect $n)'(V0) -> case V0 of {'Idris.Data.Vect.Nil'} -> (fun () -> fun () -> 1 end end()); _ -> fun () -> 0 end end.
'dn--un--neutral_Monoid_((Vect $k) $a)'(V0, V1) -> ('un--replicate'(V0, case V1 of {'Idris.Prelude.Interfaces.MkMonoid', E0, E1} -> (fun (V2, V3) -> V3 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)).
'dn--un--min_Ord_((Vect $len) $elem)'(V0, V1, V2) -> case ('dn--un--<_Ord_((Vect $len) $elem)'(V0, V1, V2)) of 1 -> V1; 0 -> V2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_((Vect $len) $elem)'(V0, V1, V2) -> case ('dn--un-->_Ord_((Vect $len) $elem)'(V0, V1, V2)) of 1 -> V1; 0 -> V2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--map_Functor_(Vect $n)'(V0, V1) -> case V1 of {'Idris.Data.Vect.Nil'} -> (fun () -> {'Idris.Data.Vect.Nil'} end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V2, V3) -> {'Idris.Data.Vect.::', (V0(V2)), ('dn--un--map_Functor_(Vect $n)'(V0, V3))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--join_Monad_(Vect $k)'(V0, V1) -> ('dn--un-->>=_Monad_(Vect $k)'(V0, V1, fun (V2) -> V2 end)).
'dn--un--foldr_Foldable_(Vect $n)'(V0, V1, V2) -> ('un--foldrImpl'(V0, V1, fun (V3) -> V3 end, V2)).
'dn--un--foldl_Foldable_(Vect $n)'(V0, V1, V2) -> case V2 of {'Idris.Data.Vect.Nil'} -> (fun () -> V1 end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V3, V4) -> ('dn--un--foldl_Foldable_(Vect $n)'(V0, ((V0(V1))(V3)), V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--foldlM_Foldable_(Vect $n)'(V0, V1, V2, V3) -> ('dn--un--foldl_Foldable_(Vect $n)'(fun (V4) -> fun (V5) -> case V0 of {'Idris.Prelude.Interfaces.MkMonad', E0, E1, E2} -> (fun (V6, V7, V8) -> ((((V7('erased'))('erased'))(V4))(fun (V9) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(V1, V5, V9)) end)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, case V0 of {'Idris.Prelude.Interfaces.MkMonad', E3, E4, E5} -> (fun (V10, V11, V12) -> case V10 of {'Idris.Prelude.Interfaces.MkApplicative', E6, E7, E8} -> (fun (V13, V14, V15) -> ((V14('erased'))(V2)) end(E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V3)).
'dn--un--foldMap_Foldable_(Vect $n)'(V0, V1, V2) -> ('dn--un--foldl_Foldable_(Vect $n)'(fun (V3) -> fun (V4) -> case V0 of {'Idris.Prelude.Interfaces.MkMonoid', E0, E1} -> (fun (V5, V6) -> ((V5(V3))((V1(V4)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, case V0 of {'Idris.Prelude.Interfaces.MkMonoid', E2, E3} -> (fun (V7, V8) -> V8 end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V2)).
'dn--un--decEq_DecEq_((Vect $n) $a)'(V0, V1, V2) -> case V1 of {'Idris.Data.Vect.Nil'} -> (fun () -> case V2 of {'Idris.Data.Vect.Nil'} -> (fun () -> {'Idris.Prelude.Types.Yes', 0} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V3, V4) -> case V2 of {'Idris.Data.Vect.::', E2, E3} -> (fun (V5, V6) -> ('with--decEq-1728'('erased', V0, 'erased', V3, V4, V5, V6, {'Idris.Builtin.MkPair', ((V0(V3))(V5)), ('dn--un--decEq_DecEq_((Vect $n) $a)'(V0, V4, V6))}, 'erased')) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--compare_Ord_((Vect $len) $elem)'(V0, V1, V2) -> case V1 of {'Idris.Data.Vect.Nil'} -> (fun () -> case V2 of {'Idris.Data.Vect.Nil'} -> (fun () -> 1 end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V3, V4) -> case V2 of {'Idris.Data.Vect.::', E2, E3} -> (fun (V5, V6) -> ('case--compare-2067'(V0, V3, V4, V5, V6, case V0 of {'Idris.Prelude.EqOrd.MkOrd', E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V7, V8, V9, V10, V11, V12, V13, V14) -> ((V8(V3))(V5)) end(E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Impl_Zippable_(Vect $k)'() -> {'Idris.Data.Zippable.dn--un--__mkZippable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('dn--un--zipWith_Zippable_(Vect $k)'(V3, V4, V5)) end end end end end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--zip_Zippable_(Vect $k)'(V8, V9)) end end end end, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> ('dn--un--zipWith3_Zippable_(Vect $k)'(V14, V15, V16, V17)) end end end end end end end end, fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('dn--un--zip3_Zippable_(Vect $k)'(V21, V22, V23)) end end end end end end, fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> ('dn--un--unzipWith_Zippable_(Vect $k)'(V27, V28)) end end end end end, fun (V29) -> fun (V30) -> fun (V31) -> ('dn--un--unzip_Zippable_(Vect $k)'(V31)) end end end, fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> fun (V36) -> fun (V37) -> ('dn--un--unzipWith3_Zippable_(Vect $k)'(V36, V37)) end end end end end end, fun (V38) -> fun (V39) -> fun (V40) -> fun (V41) -> ('dn--un--unzip3_Zippable_(Vect $k)'(V41)) end end end end}.
'dn--un--__Impl_Traversable_(Vect $k)'() -> {'Idris.Prelude.Interfaces.MkTraversable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_(Vect $n)'(V2, V3)) end end end end, {'Idris.Prelude.Interfaces.MkFoldable', fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('dn--un--foldr_Foldable_(Vect $n)'(V6, V7, V8)) end end end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--foldl_Foldable_(Vect $n)'(V11, V12, V13)) end end end end end, fun (V14) -> fun (V15) -> ('dn--un--null_Foldable_(Vect $n)'(V15)) end end, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> ('dn--un--foldlM_Foldable_(Vect $n)'(V19, V20, V21, V22)) end end end end end end end, fun (V23) -> fun (V24) -> ('dn--un--toList_Foldable_(Vect $n)'(V24)) end end, fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> ('dn--un--foldMap_Foldable_(Vect $n)'(V27, V28, V29)) end end end end end}, fun (V30) -> fun (V31) -> fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> ('dn--un--traverse_Traversable_(Vect $k)'(V33, V34, V35)) end end end end end end}.
'dn--un--__Impl_Show_((Vect $len) $elem)'(V0) -> {'Idris.Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_((Vect $len) $elem)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_((Vect $len) $elem)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Semigroup_((Vect $k) $a)'(V0, V1, V2) -> ('dn--un--<+>_Semigroup_((Vect $k) $a)'(V0, V1, V2)).
'dn--un--__Impl_Ord_((Vect $len) $elem)'(V0) -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_((Vect $n) $a)'(case V0 of {'Idris.Prelude.EqOrd.MkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V3, V4, V5, V6, V7, V8, V9, V10) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V1, V2)) end end, fun (V11) -> fun (V12) -> ('dn--un--/=_Eq_((Vect $n) $a)'(case V0 of {'Idris.Prelude.EqOrd.MkOrd', E8, E9, E10, E11, E12, E13, E14, E15} -> (fun (V13, V14, V15, V16, V17, V18, V19, V20) -> V13 end(E8, E9, E10, E11, E12, E13, E14, E15)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V11, V12)) end end}, fun (V21) -> fun (V22) -> ('dn--un--compare_Ord_((Vect $len) $elem)'(V0, V21, V22)) end end, fun (V23) -> fun (V24) -> ('dn--un--<_Ord_((Vect $len) $elem)'(V0, V23, V24)) end end, fun (V25) -> fun (V26) -> ('dn--un-->_Ord_((Vect $len) $elem)'(V0, V25, V26)) end end, fun (V27) -> fun (V28) -> ('dn--un--<=_Ord_((Vect $len) $elem)'(V0, V27, V28)) end end, fun (V29) -> fun (V30) -> ('dn--un-->=_Ord_((Vect $len) $elem)'(V0, V29, V30)) end end, fun (V31) -> fun (V32) -> ('dn--un--max_Ord_((Vect $len) $elem)'(V0, V31, V32)) end end, fun (V33) -> fun (V34) -> ('dn--un--min_Ord_((Vect $len) $elem)'(V0, V33, V34)) end end}.
'dn--un--__Impl_Monoid_((Vect $k) $a)'(V0, V1) -> {'Idris.Prelude.Interfaces.MkMonoid', fun (V2) -> fun (V3) -> ('dn--un--<+>_Semigroup_((Vect $k) $a)'(case V1 of {'Idris.Prelude.Interfaces.MkMonoid', E0, E1} -> (fun (V4, V5) -> V4 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V2, V3)) end end, ('dn--un--neutral_Monoid_((Vect $k) $a)'(V0, V1))}.
'dn--un--__Impl_Monad_(Vect $k)'(V0) -> {'Idris.Prelude.Interfaces.MkMonad', {'Idris.Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_(Vect $n)'(V3, V4)) end end end end, fun (V5) -> fun (V6) -> ('dn--un--pure_Applicative_(Vect $k)'(V0, V6)) end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('dn--un--<*>_Applicative_(Vect $k)'(V0, V9, V10)) end end end end}, fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> ('dn--un-->>=_Monad_(Vect $k)'(V0, V13, V14)) end end end end, fun (V15) -> fun (V16) -> ('dn--un--join_Monad_(Vect $k)'(V0, V16)) end end}.
'dn--un--__Impl_Functor_(Vect $n)'(V0, V1, V2, V3) -> ('dn--un--map_Functor_(Vect $n)'(V2, V3)).
'dn--un--__Impl_Foldable_(Vect $n)'() -> {'Idris.Prelude.Interfaces.MkFoldable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--foldr_Foldable_(Vect $n)'(V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--foldl_Foldable_(Vect $n)'(V7, V8, V9)) end end end end end, fun (V10) -> fun (V11) -> ('dn--un--null_Foldable_(Vect $n)'(V11)) end end, fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> ('dn--un--foldlM_Foldable_(Vect $n)'(V15, V16, V17, V18)) end end end end end end end, fun (V19) -> fun (V20) -> ('dn--un--toList_Foldable_(Vect $n)'(V20)) end end, fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> ('dn--un--foldMap_Foldable_(Vect $n)'(V23, V24, V25)) end end end end end}.
'dn--un--__Impl_Eq_((Vect $n) $a)'(V0) -> {'Idris.Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_((Vect $n) $a)'(V0, V1, V2)) end end, fun (V3) -> fun (V4) -> ('dn--un--/=_Eq_((Vect $n) $a)'(V0, V3, V4)) end end}.
'dn--un--__Impl_DecEq_((Vect $n) $a)'(V0, V1, V2) -> ('dn--un--decEq_DecEq_((Vect $n) $a)'(V0, V1, V2)).
'dn--un--__Impl_Applicative_(Vect $k)'(V0) -> {'Idris.Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_(Vect $n)'(V3, V4)) end end end end, fun (V5) -> fun (V6) -> ('dn--un--pure_Applicative_(Vect $k)'(V0, V6)) end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('dn--un--<*>_Applicative_(Vect $k)'(V0, V9, V10)) end end end end}.
'dn--un-->_Ord_((Vect $len) $elem)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_((Vect $len) $elem)'(V0, V1, V2)), 2)).
'dn--un-->>=_Monad_(Vect $k)'(V0, V1, V2) -> ('un--diag'(('dn--un--map_Functor_(Vect $n)'(V2, V1)))).
'dn--un-->=_Ord_((Vect $len) $elem)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_((Vect $len) $elem)'(V0, V1, V2)), 0)).
'dn--un--==_Eq_((Vect $n) $a)'(V0, V1, V2) -> case V1 of {'Idris.Data.Vect.Nil'} -> (fun () -> case V2 of {'Idris.Data.Vect.Nil'} -> (fun () -> 1 end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V3, V4) -> case V2 of {'Idris.Data.Vect.::', E2, E3} -> (fun (V5, V6) -> case case V0 of {'Idris.Prelude.EqOrd.MkEq', E4, E5} -> (fun (V7, V8) -> ((V7(V3))(V5)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of 1 -> ('dn--un--==_Eq_((Vect $n) $a)'(V0, V4, V6)); 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--<_Ord_((Vect $len) $elem)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_((Vect $len) $elem)'(V0, V1, V2)), 0)).
'dn--un--<=_Ord_((Vect $len) $elem)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_((Vect $len) $elem)'(V0, V1, V2)), 2)).
'dn--un--<+>_Semigroup_((Vect $k) $a)'(V0, V1, V2) -> ('dn--un--zipWith_Zippable_(Vect $k)'(fun (V3) -> fun (V4) -> ((V0(V3))(V4)) end end, V1, V2)).
'dn--un--<*>_Applicative_(Vect $k)'(V0, V1, V2) -> ('dn--un--zipWith_Zippable_(Vect $k)'(fun (V3) -> fun (V4) -> ('Idris.Idris2.Prelude.Basics':'un--apply'(V3, V4)) end end, V1, V2)).
'dn--un--/=_Eq_((Vect $n) $a)'(V0, V1, V2) -> case ('dn--un--==_Eq_((Vect $n) $a)'(V0, V1, V2)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--zipWithIndexLinear'(V0, V1, V2) -> case V0 of {'Idris.Data.Vect.::', E0, E1} -> (fun (V3, V4) -> case V1 of {'Idris.Data.Vect.::', E2, E3} -> (fun (V5, V6) -> case V2 of 0 -> 0; _ -> begin (V7 = (V2 - 1)), ('un--zipWithIndexLinear'(V4, V6, V7)) end end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--zipWith3IndexLinear'(V0, V1, V2, V3) -> case V0 of {'Idris.Data.Vect.::', E0, E1} -> (fun (V4, V5) -> case V1 of {'Idris.Data.Vect.::', E2, E3} -> (fun (V6, V7) -> case V2 of {'Idris.Data.Vect.::', E4, E5} -> (fun (V8, V9) -> case V3 of 0 -> 0; _ -> begin (V10 = (V3 - 1)), ('un--zipWith3IndexLinear'(V5, V7, V9, V10)) end end end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--vectToMaybe'(V0) -> case V0 of {'Idris.Data.Vect.Nil'} -> (fun () -> {'Idris.Prelude.Types.Nothing'} end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V1, V2) -> {'Idris.Prelude.Types.Just', V1} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--vectInjective'(V0) -> case V0 of 0 -> {'Idris.Builtin.MkPair', 0, 0}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--updateAt'(V0, V1, V2) -> case V0 of 0 -> case V2 of {'Idris.Data.Vect.::', E2, E3} -> (fun (V3, V4) -> {'Idris.Data.Vect.::', (V1(V3)), V4} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> begin (V5 = (V0 - 1)), case V2 of {'Idris.Data.Vect.::', E0, E1} -> (fun (V6, V7) -> {'Idris.Data.Vect.::', V6, ('un--updateAt'(V5, V1, V7))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--transpose'(V0, V1) -> case V1 of {'Idris.Data.Vect.Nil'} -> (fun () -> ('un--replicate'(V0, {'Idris.Data.Vect.Nil'})) end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V2, V3) -> ('dn--un--zipWith_Zippable_(Vect $k)'(fun (V4) -> fun (V5) -> {'Idris.Data.Vect.::', V4, V5} end end, V2, ('un--transpose'(V0, V3)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--toVect'(V0, V1) -> case V0 of 0 -> case V1 of [] -> {'Idris.Prelude.Types.Just', {'Idris.Data.Vect.Nil'}}; _ -> {'Idris.Prelude.Types.Nothing'} end; _ -> begin (V2 = (V0 - 1)), case V1 of [E0 | E1] -> (fun (V3, V4) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('un--toVect'(V2, V4)), fun (V5) -> ('Idris.Idris2.Prelude.Types':'dn--un--pure_Applicative_Maybe'({'Idris.Data.Vect.::', V3, V5})) end)) end(E0, E1)); _ -> {'Idris.Prelude.Types.Nothing'} end end end.
'un--take'(V0, V1) -> case V0 of 0 -> {'Idris.Data.Vect.Nil'}; _ -> begin (V2 = (V0 - 1)), case V1 of {'Idris.Data.Vect.::', E0, E1} -> (fun (V3, V4) -> {'Idris.Data.Vect.::', V3, ('un--take'(V2, V4))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--tail'(V0) -> case V0 of {'Idris.Data.Vect.::', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--splitAt'(V0, V1) -> case V0 of 0 -> {'Idris.Builtin.MkPair', {'Idris.Data.Vect.Nil'}, V1}; _ -> begin (V2 = (V0 - 1)), case V1 of {'Idris.Data.Vect.::', E0, E1} -> (fun (V3, V4) -> ('with--splitAt-3582'('erased', 'erased', V2, V4, ('un--splitAt'(V2, V4)), V3)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--snoc'(V0, V1) -> case V0 of {'Idris.Data.Vect.Nil'} -> (fun () -> {'Idris.Data.Vect.::', V1, {'Idris.Data.Vect.Nil'}} end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V2, V3) -> {'Idris.Data.Vect.::', V2, ('un--snoc'(V3, V1))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--scanl1'(V0, V1) -> case V1 of {'Idris.Data.Vect.Nil'} -> (fun () -> {'Idris.Data.Vect.Nil'} end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V2, V3) -> ('un--scanl'(V0, V2, V3)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--scanl'(V0, V1, V2) -> case V2 of {'Idris.Data.Vect.Nil'} -> (fun () -> {'Idris.Data.Vect.::', V1, {'Idris.Data.Vect.Nil'}} end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V3, V4) -> {'Idris.Data.Vect.::', V1, ('un--scanl'(V0, ((V0(V1))(V3)), V4))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--reverse'(V0) -> ('nested--4361-1420--in--un--go'(V0, {'Idris.Data.Vect.Nil'}, V0)).
'un--replicate'(V0, V1) -> case V0 of 0 -> {'Idris.Data.Vect.Nil'}; _ -> begin (V2 = (V0 - 1)), {'Idris.Data.Vect.::', V1, ('un--replicate'(V2, V1))} end end.
'un--replaceAtSameIndex'(V0, V1) -> case V0 of {'Idris.Data.Vect.::', E0, E1} -> (fun (V2, V3) -> case V1 of 0 -> 0; _ -> begin (V4 = (V1 - 1)), ('un--replaceAtSameIndex'(V3, V4)) end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--replaceAtDiffIndexPreserves'(V0, V1, V2, V3) -> case V0 of {'Idris.Data.Vect.::', E0, E1} -> (fun (V4, V5) -> case V1 of 0 -> case V2 of 0 -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V6) -> ('Idris.Idris2.Prelude.Uninhabited':'dn--un--uninhabited_Uninhabited_Void'(V6)) end, (V3(0)))); _ -> 0 end; _ -> begin (V7 = (V1 - 1)), case V2 of 0 -> 0; _ -> begin (V8 = (V2 - 1)), ('un--replaceAtDiffIndexPreserves'(V5, V7, V8, fun (V9) -> (V3(('Idris.Idris2.Prelude.Basics':'un--cong'(V9)))) end)) end end end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--replaceAt'(V0, V1, V2) -> case V0 of 0 -> case V2 of {'Idris.Data.Vect.::', E2, E3} -> (fun (V3, V4) -> {'Idris.Data.Vect.::', V1, V4} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> begin (V5 = (V0 - 1)), case V2 of {'Idris.Data.Vect.::', E0, E1} -> (fun (V6, V7) -> {'Idris.Data.Vect.::', V6, ('un--replaceAt'(V5, V1, V7))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--partition'(V0, V1) -> case V1 of {'Idris.Data.Vect.Nil'} -> (fun () -> {'Idris.Builtin.MkPair', {'Idris.Builtin.DPair.MkDPair', 0, {'Idris.Data.Vect.Nil'}}, {'Idris.Builtin.DPair.MkDPair', 0, {'Idris.Data.Vect.Nil'}}} end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V2, V3) -> case ('un--partition'(V0, V3)) of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V4, V5) -> case V4 of {'Idris.Builtin.DPair.MkDPair', E4, E5} -> (fun (V6, V7) -> case V5 of {'Idris.Builtin.DPair.MkDPair', E6, E7} -> (fun (V8, V9) -> case (V0(V2)) of 1 -> {'Idris.Builtin.MkPair', {'Idris.Builtin.DPair.MkDPair', (1 + V6), {'Idris.Data.Vect.::', V2, V7}}, {'Idris.Builtin.DPair.MkDPair', V8, V9}}; 0 -> {'Idris.Builtin.MkPair', {'Idris.Builtin.DPair.MkDPair', V6, V7}, {'Idris.Builtin.DPair.MkDPair', (1 + V8), {'Idris.Data.Vect.::', V2, V9}}}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--overLength'(V0, V1, V2) -> ('with--overLength-5301'(V0, V1, ('Idris.Idris2.Data.Nat':'un--cmp'(V0, V1)), 'erased', V2)).
'un--nubBy'(V0, V1) -> ('nested--6292-3295--in--un--nubBy\x{27}'({'Idris.Data.Vect.Nil'}, V0, V1)).
'un--nub'(V0, V1) -> ('un--nubBy'(fun (V2) -> fun (V3) -> case V0 of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V4, V5) -> ((V4(V2))(V3)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V1)).
'un--mergeBy'(V0, V1, V2) -> case V1 of {'Idris.Data.Vect.Nil'} -> (fun () -> V2 end()); _ -> case V2 of {'Idris.Data.Vect.Nil'} -> (fun () -> V1 end()); _ -> case V1 of {'Idris.Data.Vect.::', E0, E1} -> (fun (V3, V4) -> case V2 of {'Idris.Data.Vect.::', E2, E3} -> (fun (V5, V6) -> case ((V0(V3))(V5)) of 0 -> {'Idris.Data.Vect.::', V3, ('un--mergeBy'(V0, V4, {'Idris.Data.Vect.::', V5, V6}))}; _ -> {'Idris.Data.Vect.::', V5, ('un--mergeBy'(V0, {'Idris.Data.Vect.::', V3, V4}, V6))} end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--merge'(V0, V1, V2) -> ('un--mergeBy'(fun (V3) -> fun (V4) -> case V0 of {'Idris.Prelude.EqOrd.MkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V5, V6, V7, V8, V9, V10, V11, V12) -> ((V6(V3))(V4)) end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V1, V2)).
'un--maybeToVect'(V0) -> case V0 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> {'Idris.Builtin.DPair.MkDPair', 0, {'Idris.Data.Vect.Nil'}} end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V1) -> {'Idris.Builtin.DPair.MkDPair', (1 + 0), {'Idris.Data.Vect.::', V1, {'Idris.Data.Vect.Nil'}}} end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--mapMaybe'(V0, V1) -> case V1 of {'Idris.Data.Vect.Nil'} -> (fun () -> {'Idris.Builtin.DPair.MkDPair', 0, {'Idris.Data.Vect.Nil'}} end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V2, V3) -> case ('un--mapMaybe'(V0, V3)) of {'Idris.Builtin.DPair.MkDPair', E2, E3} -> (fun (V4, V5) -> case (V0(V2)) of {'Idris.Prelude.Types.Just', E4} -> (fun (V6) -> {'Idris.Builtin.DPair.MkDPair', (1 + V4), {'Idris.Data.Vect.::', V6, V5}} end(E4)); {'Idris.Prelude.Types.Nothing'} -> (fun () -> {'Idris.Builtin.DPair.MkDPair', V4, V5} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lookupBy'(V0, V1, V2) -> case V2 of {'Idris.Data.Vect.Nil'} -> (fun () -> {'Idris.Prelude.Types.Nothing'} end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V3, V4) -> case V3 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V5, V6) -> case ((V0(V1))(V5)) of 1 -> {'Idris.Prelude.Types.Just', V6}; 0 -> ('un--lookupBy'(V0, V1, V4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lookup'(V0, V1, V2) -> ('un--lookupBy'(fun (V3) -> fun (V4) -> case V0 of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V5, V6) -> ((V5(V3))(V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V1, V2)).
'un--lengthCorrect'(V0) -> case V0 of {'Idris.Data.Vect.Nil'} -> (fun () -> 0 end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V1, V2) -> 0 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--length'(V0) -> case V0 of {'Idris.Data.Vect.Nil'} -> (fun () -> 0 end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V1, V2) -> ('Idris.Idris2.Prelude.Types':'dn--un--+_Num_Nat'((1 + 0), ('un--length'(V2)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--last'(V0) -> case V0 of {'Idris.Data.Vect.::', E0, E1} -> (fun (V1, V2) -> case V2 of {'Idris.Data.Vect.Nil'} -> (fun () -> V1 end()); {'Idris.Data.Vect.::', E2, E3} -> (fun (V3, V4) -> ('un--last'({'Idris.Data.Vect.::', V3, V4})) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--isSuffixOfBy'(V0, V1, V2) -> ('un--isPrefixOfBy'(V0, ('un--reverse'(V1)), ('un--reverse'(V2)))).
'un--isSuffixOf'(V0, V1, V2) -> ('un--isSuffixOfBy'(fun (V3) -> fun (V4) -> case V0 of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V5, V6) -> ((V5(V3))(V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V1, V2)).
'un--isPrefixOfBy'(V0, V1, V2) -> case V1 of {'Idris.Data.Vect.Nil'} -> (fun () -> 1 end()); _ -> case V2 of {'Idris.Data.Vect.Nil'} -> (fun () -> 0 end()); _ -> case V1 of {'Idris.Data.Vect.::', E0, E1} -> (fun (V3, V4) -> case V2 of {'Idris.Data.Vect.::', E2, E3} -> (fun (V5, V6) -> case ((V0(V3))(V5)) of 1 -> ('un--isPrefixOfBy'(V0, V4, V6)); 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--isPrefixOf'(V0, V1, V2) -> ('un--isPrefixOfBy'(fun (V3) -> fun (V4) -> case V0 of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V5, V6) -> ((V5(V3))(V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V1, V2)).
'un--intersperse'(V0, V1) -> case V1 of {'Idris.Data.Vect.Nil'} -> (fun () -> {'Idris.Data.Vect.Nil'} end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V2, V3) -> {'Idris.Data.Vect.::', V2, ('nested--4407-1481--in--un--intersperse\x{27}'(V0, V2, V3, V0, V3))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--insertAt'(V0, V1, V2) -> case V0 of 0 -> {'Idris.Data.Vect.::', V1, V2}; _ -> begin (V3 = (V0 - 1)), case V2 of {'Idris.Data.Vect.::', E0, E1} -> (fun (V4, V5) -> {'Idris.Data.Vect.::', V4, ('un--insertAt'(V3, V1, V5))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--init'(V0) -> case V0 of {'Idris.Data.Vect.::', E0, E1} -> (fun (V1, V2) -> case V2 of {'Idris.Data.Vect.Nil'} -> (fun () -> {'Idris.Data.Vect.Nil'} end()); {'Idris.Data.Vect.::', E2, E3} -> (fun (V3, V4) -> {'Idris.Data.Vect.::', V1, ('un--init'({'Idris.Data.Vect.::', V3, V4}))} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--index'(V0, V1) -> case V0 of 0 -> case V1 of {'Idris.Data.Vect.::', E2, E3} -> (fun (V2, V3) -> V2 end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> begin (V4 = (V0 - 1)), case V1 of {'Idris.Data.Vect.::', E0, E1} -> (fun (V5, V6) -> ('un--index'(V4, V6)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--head'(V0) -> case V0 of {'Idris.Data.Vect.::', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--hasAnyBy'(V0, V1, V2) -> case V2 of {'Idris.Data.Vect.Nil'} -> (fun () -> 0 end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V3, V4) -> case ('un--elemBy'(V0, V3, V1)) of 1 -> 1; 0 -> ('un--hasAnyBy'(V0, V1, V4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--hasAny'(V0, V1, V2) -> ('un--hasAnyBy'(fun (V3) -> fun (V4) -> case V0 of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V5, V6) -> ((V5(V3))(V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V1, V2)).
'un--fromList\x{27}'(V0, V1) -> case V1 of [] -> V0; [E0 | E1] -> (fun (V2, V3) -> ('un--fromList\x{27}'({'Idris.Data.Vect.::', V2, V0}, V3)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--fromList'(V0) -> ('un--reverse'(('un--fromList\x{27}'({'Idris.Data.Vect.Nil'}, V0)))).
'un--foldrImpl'(V0, V1, V2, V3) -> case V3 of {'Idris.Data.Vect.Nil'} -> (fun () -> (V2(V1)) end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V4, V5) -> ('un--foldrImpl'(V0, V1, fun (V6) -> (V2(((V0(V4))(V6)))) end, V5)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--foldr1'(V0, V1) -> case V1 of {'Idris.Data.Vect.::', E0, E1} -> (fun (V2, V3) -> case V3 of {'Idris.Data.Vect.Nil'} -> (fun () -> V2 end()); {'Idris.Data.Vect.::', E2, E3} -> (fun (V4, V5) -> ((V0(V2))(('un--foldr1'(V0, {'Idris.Data.Vect.::', V4, V5})))) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--foldl1'(V0, V1) -> case V1 of {'Idris.Data.Vect.::', E0, E1} -> (fun (V2, V3) -> ('dn--un--foldl_Foldable_(Vect $n)'(V0, V2, V3)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--findIndices'(V0, V1) -> case V1 of {'Idris.Data.Vect.Nil'} -> (fun () -> [] end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V2, V3) -> begin (V9 = ('Idris.Idris2.Prelude.Interfaces':'un--<$>'(fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_List'(V6, V7)) end end end end, fun (V8) -> (1 + V8) end, ('un--findIndices'(V0, V3))))), case (V0(V2)) of 1 -> [0 | V9]; 0 -> V9; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--findIndex'(V0, V1) -> case V1 of {'Idris.Data.Vect.Nil'} -> (fun () -> {'Idris.Prelude.Types.Nothing'} end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V2, V3) -> case (V0(V2)) of 1 -> {'Idris.Prelude.Types.Just', 0}; 0 -> ('Idris.Idris2.Prelude.Interfaces':'un--<$>'(fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V6, V7)) end end end end, fun (V8) -> (1 + V8) end, ('un--findIndex'(V0, V3)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--find'(V0, V1) -> case V1 of {'Idris.Data.Vect.Nil'} -> (fun () -> {'Idris.Prelude.Types.Nothing'} end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V2, V3) -> case (V0(V2)) of 1 -> {'Idris.Prelude.Types.Just', V2}; 0 -> ('un--find'(V0, V3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--filter'(V0, V1) -> case V1 of {'Idris.Data.Vect.Nil'} -> (fun () -> {'Idris.Builtin.DPair.MkDPair', 0, {'Idris.Data.Vect.Nil'}} end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V2, V3) -> case ('un--filter'(V0, V3)) of {'Idris.Builtin.DPair.MkDPair', E2, E3} -> (fun (V4, V5) -> case (V0(V2)) of 1 -> {'Idris.Builtin.DPair.MkDPair', (1 + V4), {'Idris.Data.Vect.::', V2, V5}}; 0 -> {'Idris.Builtin.DPair.MkDPair', V4, V5}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--exactLength'(V0, V1, V2) -> ('with--exactLength-5276'(V0, V1, ('Idris.Idris2.Decidable.Equality':'dn--un--decEq_DecEq_Nat'(V0, V1)), 'erased', V2)).
'un--elemIndicesBy'(V0, V1, V2) -> ('un--findIndices'((V0(V1)), V2)).
'un--elemIndices'(V0, V1, V2) -> ('un--elemIndicesBy'(fun (V3) -> fun (V4) -> case V0 of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V5, V6) -> ((V5(V3))(V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V1, V2)).
'un--elemIndexBy'(V0, V1, V2) -> ('un--findIndex'((V0(V1)), V2)).
'un--elemIndex'(V0, V1, V2) -> ('un--elemIndexBy'(fun (V3) -> fun (V4) -> case V0 of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V5, V6) -> ((V5(V3))(V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V1, V2)).
'un--elemBy'(V0, V1, V2) -> case V2 of {'Idris.Data.Vect.Nil'} -> (fun () -> 0 end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V3, V4) -> case ((V0(V1))(V3)) of 1 -> 1; 0 -> ('un--elemBy'(V0, V1, V4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--elem'(V0, V1, V2) -> ('un--elemBy'(fun (V3) -> fun (V4) -> case V0 of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V5, V6) -> ((V5(V3))(V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V1, V2)).
'un--drop\x{27}'(V0, V1) -> case V0 of 0 -> V1; _ -> begin (V2 = (V0 - 1)), case V1 of {'Idris.Data.Vect.Nil'} -> (fun () -> {'Idris.Data.Vect.Nil'} end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V3, V4) -> ('un--drop\x{27}'(V2, V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--drop'(V0, V1) -> case V0 of 0 -> V1; _ -> begin (V2 = (V0 - 1)), case V1 of {'Idris.Data.Vect.::', E0, E1} -> (fun (V3, V4) -> ('un--drop'(V2, V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--diag'(V0) -> case V0 of {'Idris.Data.Vect.Nil'} -> (fun () -> {'Idris.Data.Vect.Nil'} end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V1, V2) -> case V1 of {'Idris.Data.Vect.::', E2, E3} -> (fun (V3, V4) -> {'Idris.Data.Vect.::', V3, ('un--diag'(('dn--un--map_Functor_(Vect $n)'(fun (V5) -> ('un--tail'(V5)) end, V2))))} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--deleteBy'(V0, V1, V2, V3) -> case V0 of 0 -> case V3 of {'Idris.Data.Vect.Nil'} -> (fun () -> {'Idris.Builtin.DPair.MkDPair', 0, {'Idris.Data.Vect.Nil'}} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> begin (V4 = (V0 - 1)), case V3 of {'Idris.Data.Vect.::', E0, E1} -> (fun (V5, V6) -> case ('un--deleteBy'(V4, V1, V2, V6)) of {'Idris.Builtin.DPair.MkDPair', E2, E3} -> (fun (V7, V8) -> case ((V1(V2))(V5)) of 1 -> {'Idris.Builtin.DPair.MkDPair', V4, V6}; 0 -> {'Idris.Builtin.DPair.MkDPair', (1 + V7), {'Idris.Data.Vect.::', V5, V8}}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--deleteAt'(V0, V1) -> case V0 of 0 -> case V1 of {'Idris.Data.Vect.::', E4, E5} -> (fun (V2, V3) -> V3 end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> begin (V4 = (V0 - 1)), case V1 of {'Idris.Data.Vect.::', E0, E1} -> (fun (V5, V6) -> case V6 of {'Idris.Data.Vect.Nil'} -> (fun () -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V7) -> ('Idris.Idris2.Data.Fin':'dn--un--uninhabited_Uninhabited_(Fin Z)'(V7)) end, V4)) end()); {'Idris.Data.Vect.::', E2, E3} -> (fun (V8, V9) -> {'Idris.Data.Vect.::', V5, ('un--deleteAt'(V4, V6))} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--delete'(V0, V1, V2, V3) -> ('un--deleteBy'(V0, fun (V4) -> fun (V5) -> case V1 of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V6, V7) -> ((V6(V4))(V5)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V2, V3)).
'un--concat'(V0) -> case V0 of {'Idris.Data.Vect.Nil'} -> (fun () -> {'Idris.Data.Vect.Nil'} end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V1, V2) -> ('un--++'(V1, ('un--concat'(V2)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--catMaybes'(V0) -> case V0 of {'Idris.Data.Vect.Nil'} -> (fun () -> {'Idris.Builtin.DPair.MkDPair', 0, {'Idris.Data.Vect.Nil'}} end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V1, V2) -> case V1 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> ('un--catMaybes'(V2)) end()); {'Idris.Prelude.Types.Just', E2} -> (fun (V3) -> case ('un--catMaybes'(V2)) of {'Idris.Builtin.DPair.MkDPair', E3, E4} -> (fun (V4, V5) -> {'Idris.Builtin.DPair.MkDPair', (1 + V4), {'Idris.Data.Vect.::', V3, V5}} end(E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--++'(V0, V1) -> case V0 of {'Idris.Data.Vect.Nil'} -> (fun () -> V1 end()); {'Idris.Data.Vect.::', E0, E1} -> (fun (V2, V3) -> {'Idris.Data.Vect.::', V2, ('un--++'(V3, V1))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
