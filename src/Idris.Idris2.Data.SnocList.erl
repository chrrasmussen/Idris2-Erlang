-module('Idris.Idris2.Data.SnocList').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--mapMaybeAppend-6854'/7,
  'with--with block in mapMaybeFusion-6757'/9,
  'with--mapMaybeFusion-6726'/8,
  'with--filterAppend-5962'/6,
  'case--case block in unzipWith3-5012'/7,
  'case--unzipWith3-4981'/4,
  'case--case block in unzipWith-4904'/6,
  'case--unzipWith-4879'/4,
  'case--findIndex-4395'/4,
  'case--find-4308'/4,
  'case--case block in spanBy-3236'/5,
  'case--spanBy-3212'/4,
  'nested--3947-3341--in--un--show\x{27}'/4,
  'dn--un--zip_Zippable_SnocList'/2,
  'dn--un--zipWith_Zippable_SnocList'/3,
  'dn--un--zipWith3_Zippable_SnocList'/4,
  'dn--un--zip3_Zippable_SnocList'/3,
  'dn--un--unzip_Zippable_SnocList'/1,
  'dn--un--unzipWith_Zippable_SnocList'/2,
  'dn--un--unzipWith3_Zippable_SnocList'/2,
  'dn--un--unzip3_Zippable_SnocList'/1,
  'dn--un--uninhabited_Uninhabited_(|((Builtin.=== Lin) ((:< $x) $xs)),((Builtin.~=~ Lin) ((:< $x) $xs))|)'/1,
  'dn--un--uninhabited_Uninhabited_(|((Builtin.=== ((:< $x) $xs)) Lin),((Builtin.~=~ ((:< $x) $xs)) Lin)|)'/1,
  'dn--un--traverse_Traversable_SnocList'/3,
  'dn--un--toList_Foldable_SnocList'/1,
  'dn--un--show_Show_(SnocList $a)'/2,
  'dn--un--showPrec_Show_(SnocList $a)'/3,
  'dn--un--pure_Applicative_SnocList'/1,
  'dn--un--null_Foldable_SnocList'/1,
  'dn--un--neutral_Monoid_(SnocList $a)'/0,
  'dn--un--map_Functor_SnocList'/2,
  'dn--un--join_Monad_SnocList'/1,
  'dn--un--foldr_Foldable_SnocList'/3,
  'dn--un--foldl_Foldable_SnocList'/3,
  'dn--un--foldlM_Foldable_SnocList'/4,
  'dn--un--foldMap_Foldable_SnocList'/3,
  'dn--un--empty_Alternative_SnocList'/0,
  'dn--un--cast_Cast_(SnocList $a)_(List $a)'/1,
  'dn--un--cast_Cast_(List $a)_(SnocList $a)'/1,
  'dn--un--__Impl_Zippable_SnocList'/0,
  'dn--un--__Impl_Uninhabited_(|((Builtin.=== Lin) ((:< $x) $xs)),((Builtin.~=~ Lin) ((:< $x) $xs))|)'/1,
  'dn--un--__Impl_Uninhabited_(|((Builtin.=== ((:< $x) $xs)) Lin),((Builtin.~=~ ((:< $x) $xs)) Lin)|)'/1,
  'dn--un--__Impl_Traversable_SnocList'/0,
  'dn--un--__Impl_Show_(SnocList $a)'/1,
  'dn--un--__Impl_Semigroup_(SnocList $a)'/2,
  'dn--un--__Impl_Monoid_(SnocList $a)'/0,
  'dn--un--__Impl_Monad_SnocList'/0,
  'dn--un--__Impl_Functor_SnocList'/4,
  'dn--un--__Impl_Foldable_SnocList'/0,
  'dn--un--__Impl_Cast_(SnocList $a)_(List $a)'/1,
  'dn--un--__Impl_Cast_(List $a)_(SnocList $a)'/1,
  'dn--un--__Impl_Applicative_SnocList'/0,
  'dn--un--__Impl_Alternative_SnocList'/0,
  'dn--un-->>=_Monad_SnocList'/2,
  'dn--un--<|>_Alternative_SnocList'/2,
  'dn--un--<+>_Semigroup_(SnocList $a)'/2,
  'dn--un--<*>_Applicative_SnocList'/2,
  'un--toListMapMaybe'/2,
  'un--toListMap'/2,
  'un--toListFilter'/2,
  'un--toListCast'/1,
  'un--toListAppend'/2,
  'un--spanBy'/2,
  'un--snocFoldlAsListFoldl'/3,
  'un--reverseReverseOnto'/2,
  'un--reverseInvolutive'/1,
  'un--mapTR\x{27}'/3,
  'un--mapTR'/2,
  'un--mapMaybeFusion'/3,
  'un--mapMaybeCast'/2,
  'un--mapMaybeAppend'/3,
  'un--mapImpl'/2,
  'un--mapFusion'/3,
  'un--mapCast'/2,
  'un--mapAppend'/3,
  'un--isSnoc'/1,
  'un--isLin'/1,
  'un--foldAppend'/4,
  'un--fishAsSnocAppend'/2,
  'un--findIndex'/2,
  'un--find'/2,
  'un--filterCast'/2,
  'un--filterAppend'/3,
  'un--cons'/2,
  'un--chipsAsListAppend'/2,
  'un--castToList'/1,
  'un--castListAppend'/2,
  'un--asList'/1,
  'un--appendLinLeftNeutral'/1,
  'un--appendAssociative'/3,
  'un--SnocBiinjective'/5
]).
'with--mapMaybeAppend-6854'(V0, V1, V2, V3, V4, V5, V6) -> case V4 of {'Prelude.Types.Nothing'} -> ('un--mapMaybeAppend'(V3, V6, V5)); {'Prelude.Types.Just', V7} -> {'Builtin.Refl'} end.
'with--with block in mapMaybeFusion-6757'(V0, V1, V2, V3, V4, V5, V6, V7, V8) -> case V4 of {'Prelude.Types.Nothing'} -> ('un--mapMaybeFusion'(V3, V8, V7)); {'Prelude.Types.Just', V9} -> {'Builtin.Refl'} end.
'with--mapMaybeFusion-6726'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V4 of {'Prelude.Types.Nothing'} -> ('un--mapMaybeFusion'(V7, V3, V6)); {'Prelude.Types.Just', V8} -> ('with--with block in mapMaybeFusion-6757'('erased', 'erased', V8, V7, (V7(V8)), 'erased', V2, V6, V3)) end.
'with--filterAppend-5962'(V0, V1, V2, V3, V4, V5) -> case V3 of 0 -> ('un--filterAppend'(V2, V5, V4)); 1 -> {'Builtin.Refl'} end.
'case--case block in unzipWith3-5012'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Builtin.MkPair', V7, V8} -> case V8 of {'Builtin.MkPair', V9, V10} -> {'Builtin.MkPair', {'Prelude.Basics.:<', V3, V7}, {'Builtin.MkPair', {'Prelude.Basics.:<', V4, V9}, {'Prelude.Basics.:<', V5, V10}}} end end.
'case--unzipWith3-4981'(V0, V1, V2, V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> case V5 of {'Builtin.MkPair', V6, V7} -> case (V2(V0)) of {'Builtin.MkPair', V8, V9} -> case V9 of {'Builtin.MkPair', V10, V11} -> {'Builtin.MkPair', {'Prelude.Basics.:<', V4, V8}, {'Builtin.MkPair', {'Prelude.Basics.:<', V6, V10}, {'Prelude.Basics.:<', V7, V11}}} end end end end.
'case--case block in unzipWith-4904'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Builtin.MkPair', V6, V7} -> {'Builtin.MkPair', {'Prelude.Basics.:<', V3, V6}, {'Prelude.Basics.:<', V4, V7}} end.
'case--unzipWith-4879'(V0, V1, V2, V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> case (V2(V0)) of {'Builtin.MkPair', V6, V7} -> {'Builtin.MkPair', {'Prelude.Basics.:<', V4, V6}, {'Prelude.Basics.:<', V5, V7}} end end.
'case--findIndex-4395'(V0, V1, V2, V3) -> case V3 of 1 -> {'Prelude.Types.Just', 0}; 0 -> ((begin (V9 = fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V7, V8)) end end end end), fun (V10) -> fun (V11) -> ((((V9('erased'))('erased'))(V10))(V11)) end end end(fun (V4) -> (V4 + 1) end))(('un--findIndex'(V2, V1)))) end.
'case--find-4308'(V0, V1, V2, V3) -> case V3 of 1 -> {'Prelude.Types.Just', V0}; 0 -> ('un--find'(V2, V1)) end.
'case--case block in spanBy-3236'(V0, V1, V2, V3, V4) -> case V4 of {'Builtin.MkPair', V5, V6} -> {'Builtin.MkPair', V5, {'Prelude.Basics.:<', V6, V3}} end.
'case--spanBy-3212'(V0, V1, V2, V3) -> case V3 of {'Prelude.Types.Just', V4} -> case ('un--spanBy'(V2, V1)) of {'Builtin.MkPair', V5, V6} -> {'Builtin.MkPair', V5, {'Prelude.Basics.:<', V6, V4}} end; {'Prelude.Types.Nothing'} -> {'Builtin.MkPair', {'Prelude.Basics.:<', V1, V0}, {'Prelude.Basics.Lin'}} end.
'nested--3947-3341--in--un--show\x{27}'(V0, V1, V2, V3) -> case V3 of {'Prelude.Basics.Lin'} -> V2; {'Prelude.Basics.:<', V4, V5} -> ('nested--3947-3341--in--un--show\x{27}'(V0, V1, [case V0 of {'Prelude.Show.MkShow', V6, V7} -> (V6(V5)) end | V2], V4)) end.
'dn--un--zip_Zippable_SnocList'(V0, V1) -> ('dn--un--zipWith_Zippable_SnocList'(fun (V2) -> fun (V3) -> {'Builtin.MkPair', V2, V3} end end, V0, V1)).
'dn--un--zipWith_Zippable_SnocList'(V0, V1, V2) -> case V1 of {'Prelude.Basics.Lin'} -> {'Prelude.Basics.Lin'}; _ -> case V2 of {'Prelude.Basics.Lin'} -> {'Prelude.Basics.Lin'}; _ -> case V1 of {'Prelude.Basics.:<', V3, V4} -> case V2 of {'Prelude.Basics.:<', V5, V6} -> {'Prelude.Basics.:<', ('dn--un--zipWith_Zippable_SnocList'(V0, V3, V5)), ((V0(V4))(V6))} end end end end.
'dn--un--zipWith3_Zippable_SnocList'(V0, V1, V2, V3) -> case V1 of {'Prelude.Basics.Lin'} -> {'Prelude.Basics.Lin'}; _ -> case V2 of {'Prelude.Basics.Lin'} -> {'Prelude.Basics.Lin'}; _ -> case V3 of {'Prelude.Basics.Lin'} -> {'Prelude.Basics.Lin'}; _ -> case V1 of {'Prelude.Basics.:<', V4, V5} -> case V2 of {'Prelude.Basics.:<', V6, V7} -> case V3 of {'Prelude.Basics.:<', V8, V9} -> {'Prelude.Basics.:<', ('dn--un--zipWith3_Zippable_SnocList'(V0, V4, V6, V8)), (((V0(V5))(V7))(V9))} end end end end end end.
'dn--un--zip3_Zippable_SnocList'(V0, V1, V2) -> ('dn--un--zipWith3_Zippable_SnocList'(fun (V3) -> fun (V4) -> fun (V5) -> {'Builtin.MkPair', V3, {'Builtin.MkPair', V4, V5}} end end end, V0, V1, V2)).
'dn--un--unzip_Zippable_SnocList'(V0) -> ('dn--un--unzipWith_Zippable_SnocList'(fun (V1) -> V1 end, V0)).
'dn--un--unzipWith_Zippable_SnocList'(V0, V1) -> case V1 of {'Prelude.Basics.Lin'} -> {'Builtin.MkPair', {'Prelude.Basics.Lin'}, {'Prelude.Basics.Lin'}}; {'Prelude.Basics.:<', V2, V3} -> case ('dn--un--unzipWith_Zippable_SnocList'(V0, V2)) of {'Builtin.MkPair', V4, V5} -> case (V0(V3)) of {'Builtin.MkPair', V6, V7} -> {'Builtin.MkPair', {'Prelude.Basics.:<', V4, V6}, {'Prelude.Basics.:<', V5, V7}} end end end.
'dn--un--unzipWith3_Zippable_SnocList'(V0, V1) -> case V1 of {'Prelude.Basics.Lin'} -> {'Builtin.MkPair', {'Prelude.Basics.Lin'}, {'Builtin.MkPair', {'Prelude.Basics.Lin'}, {'Prelude.Basics.Lin'}}}; {'Prelude.Basics.:<', V2, V3} -> case ('dn--un--unzipWith3_Zippable_SnocList'(V0, V2)) of {'Builtin.MkPair', V4, V5} -> case V5 of {'Builtin.MkPair', V6, V7} -> case (V0(V3)) of {'Builtin.MkPair', V8, V9} -> case V9 of {'Builtin.MkPair', V10, V11} -> {'Builtin.MkPair', {'Prelude.Basics.:<', V4, V8}, {'Builtin.MkPair', {'Prelude.Basics.:<', V6, V10}, {'Prelude.Basics.:<', V7, V11}}} end end end end end.
'dn--un--unzip3_Zippable_SnocList'(V0) -> ('dn--un--unzipWith3_Zippable_SnocList'(fun (V1) -> V1 end, V0)).
'dn--un--uninhabited_Uninhabited_(|((Builtin.=== Lin) ((:< $x) $xs)),((Builtin.~=~ Lin) ((:< $x) $xs))|)'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--uninhabited_Uninhabited_(|((Builtin.=== ((:< $x) $xs)) Lin),((Builtin.~=~ ((:< $x) $xs)) Lin)|)'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--traverse_Traversable_SnocList'(V0, V1, V2) -> case V2 of {'Prelude.Basics.Lin'} -> case V0 of {'Prelude.Interfaces.MkApplicative', V3, V4, V5} -> ((V4('erased'))({'Prelude.Basics.Lin'})) end; {'Prelude.Basics.:<', V6, V7} -> case V0 of {'Prelude.Interfaces.MkApplicative', V8, V9, V10} -> ((((V10('erased'))('erased'))(case V0 of {'Prelude.Interfaces.MkApplicative', V11, V12, V13} -> ((((V13('erased'))('erased'))(case V0 of {'Prelude.Interfaces.MkApplicative', V14, V15, V16} -> ((V15('erased'))(fun (V17) -> fun (V18) -> {'Prelude.Basics.:<', V17, V18} end end)) end))(('dn--un--traverse_Traversable_SnocList'(V0, V1, V6)))) end))((V1(V7)))) end end.
'dn--un--toList_Foldable_SnocList'(V0) -> ('Idris.Idris2.Prelude.Types.SnocList':'un--<>>'(V0, [])).
'dn--un--show_Show_(SnocList $a)'(V0, V1) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V2) -> fun (V3) -> <<V2/binary, V3/binary>> end end, <<""/utf8>>}, fun (V4) -> V4 end, [<<"[< "/utf8>> | ('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(('Idris.Idris2.Data.List':'un--intersperse'(<<", "/utf8>>, ('nested--3947-3341--in--un--show\x{27}'(V0, V1, [], V1)))), [<<"]"/utf8>> | []]))])).
'dn--un--showPrec_Show_(SnocList $a)'(V0, V1, V2) -> ('dn--un--show_Show_(SnocList $a)'(V0, V2)).
'dn--un--pure_Applicative_SnocList'(V0) -> {'Prelude.Basics.:<', {'Prelude.Basics.Lin'}, V0}.
'dn--un--null_Foldable_SnocList'(V0) -> case V0 of {'Prelude.Basics.Lin'} -> 1; {'Prelude.Basics.:<', V1, V2} -> 0 end.
'dn--un--neutral_Monoid_(SnocList $a)'() -> {'Prelude.Basics.Lin'}.
'dn--un--map_Functor_SnocList'(V0, V1) -> ('un--mapTR'(V0, V1)).
'dn--un--join_Monad_SnocList'(V0) -> ('dn--un-->>=_Monad_SnocList'(V0, fun (V1) -> V1 end)).
'dn--un--foldr_Foldable_SnocList'(V0, V1, V2) -> case V2 of {'Prelude.Basics.Lin'} -> V1; {'Prelude.Basics.:<', V3, V4} -> ('dn--un--foldr_Foldable_SnocList'(V0, ((V0(V4))(V1)), V3)) end.
'dn--un--foldl_Foldable_SnocList'(V0, V1, V2) -> case V2 of {'Prelude.Basics.Lin'} -> V1; {'Prelude.Basics.:<', V3, V4} -> ((V0(('dn--un--foldl_Foldable_SnocList'(V0, V1, V3))))(V4)) end.
'dn--un--foldlM_Foldable_SnocList'(V0, V1, V2, V3) -> ('dn--un--foldl_Foldable_SnocList'(fun (V4) -> fun (V5) -> case V0 of {'Prelude.Interfaces.MkMonad', V6, V7, V8} -> ((((V7('erased'))('erased'))(V4))(fun (V9) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(V1, V5, V9)) end)) end end end, case V0 of {'Prelude.Interfaces.MkMonad', V10, V11, V12} -> case V10 of {'Prelude.Interfaces.MkApplicative', V13, V14, V15} -> ((V14('erased'))(V2)) end end, V3)).
'dn--un--foldMap_Foldable_SnocList'(V0, V1, V2) -> ('dn--un--foldr_Foldable_SnocList'(fun (V3) -> fun (V4) -> ((begin (V7 = case V0 of {'Prelude.Interfaces.MkMonoid', V5, V6} -> V5 end), fun (V8) -> fun (V9) -> ((V7(V8))(V9)) end end end((V1(V3))))(V4)) end end, case V0 of {'Prelude.Interfaces.MkMonoid', V10, V11} -> V11 end, V2)).
'dn--un--empty_Alternative_SnocList'() -> {'Prelude.Basics.Lin'}.
'dn--un--cast_Cast_(SnocList $a)_(List $a)'(V0) -> ('Idris.Idris2.Prelude.Types.SnocList':'un--<>>'(V0, [])).
'dn--un--cast_Cast_(List $a)_(SnocList $a)'(V0) -> ('Idris.Idris2.Prelude.Types.SnocList':'un--<><'({'Prelude.Basics.Lin'}, V0)).
'dn--un--__Impl_Zippable_SnocList'() -> {'Data.Zippable.dn--un--__mkZippable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('dn--un--zipWith_Zippable_SnocList'(V3, V4, V5)) end end end end end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--zip_Zippable_SnocList'(V8, V9)) end end end end, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> ('dn--un--zipWith3_Zippable_SnocList'(V14, V15, V16, V17)) end end end end end end end end, fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('dn--un--zip3_Zippable_SnocList'(V21, V22, V23)) end end end end end end, fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> ('dn--un--unzipWith_Zippable_SnocList'(V27, V28)) end end end end end, fun (V29) -> fun (V30) -> fun (V31) -> ('dn--un--unzip_Zippable_SnocList'(V31)) end end end, fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> fun (V36) -> fun (V37) -> ('dn--un--unzipWith3_Zippable_SnocList'(V36, V37)) end end end end end end, fun (V38) -> fun (V39) -> fun (V40) -> fun (V41) -> ('dn--un--unzip3_Zippable_SnocList'(V41)) end end end end}.
'dn--un--__Impl_Uninhabited_(|((Builtin.=== Lin) ((:< $x) $xs)),((Builtin.~=~ Lin) ((:< $x) $xs))|)'(V0) -> ('dn--un--uninhabited_Uninhabited_(|((Builtin.=== Lin) ((:< $x) $xs)),((Builtin.~=~ Lin) ((:< $x) $xs))|)'(V0)).
'dn--un--__Impl_Uninhabited_(|((Builtin.=== ((:< $x) $xs)) Lin),((Builtin.~=~ ((:< $x) $xs)) Lin)|)'(V0) -> ('dn--un--uninhabited_Uninhabited_(|((Builtin.=== ((:< $x) $xs)) Lin),((Builtin.~=~ ((:< $x) $xs)) Lin)|)'(V0)).
'dn--un--__Impl_Traversable_SnocList'() -> {'Prelude.Interfaces.MkTraversable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('un--mapTR'(V2, V3)) end end end end, {'Prelude.Interfaces.MkFoldable', fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('dn--un--foldr_Foldable_SnocList'(V6, V7, V8)) end end end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--foldl_Foldable_SnocList'(V11, V12, V13)) end end end end end, fun (V14) -> fun (V15) -> ('dn--un--null_Foldable_SnocList'(V15)) end end, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> ('dn--un--foldlM_Foldable_SnocList'(V19, V20, V21, V22)) end end end end end end end, fun (V23) -> fun (V24) -> ('dn--un--toList_Foldable_SnocList'(V24)) end end, fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> ('dn--un--foldMap_Foldable_SnocList'(V27, V28, V29)) end end end end end}, fun (V30) -> fun (V31) -> fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> ('dn--un--traverse_Traversable_SnocList'(V33, V34, V35)) end end end end end end}.
'dn--un--__Impl_Show_(SnocList $a)'(V0) -> {'Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_(SnocList $a)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_(SnocList $a)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Semigroup_(SnocList $a)'(V0, V1) -> ('Idris.Idris2.Prelude.Types.SnocList':'un--tailRecAppend'(V0, V1)).
'dn--un--__Impl_Monoid_(SnocList $a)'() -> {'Prelude.Interfaces.MkMonoid', fun (V0) -> fun (V1) -> ('Idris.Idris2.Prelude.Types.SnocList':'un--tailRecAppend'(V0, V1)) end end, {'Prelude.Basics.Lin'}}.
'dn--un--__Impl_Monad_SnocList'() -> {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('un--mapTR'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative_SnocList'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_SnocList'(V8, V9)) end end end end}, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un-->>=_Monad_SnocList'(V12, V13)) end end end end, fun (V14) -> fun (V15) -> ('dn--un--join_Monad_SnocList'(V15)) end end}.
'dn--un--__Impl_Functor_SnocList'(V0, V1, V2, V3) -> ('un--mapTR'(V2, V3)).
'dn--un--__Impl_Foldable_SnocList'() -> {'Prelude.Interfaces.MkFoldable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--foldr_Foldable_SnocList'(V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--foldl_Foldable_SnocList'(V7, V8, V9)) end end end end end, fun (V10) -> fun (V11) -> ('dn--un--null_Foldable_SnocList'(V11)) end end, fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> ('dn--un--foldlM_Foldable_SnocList'(V15, V16, V17, V18)) end end end end end end end, fun (V19) -> fun (V20) -> ('dn--un--toList_Foldable_SnocList'(V20)) end end, fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> ('dn--un--foldMap_Foldable_SnocList'(V23, V24, V25)) end end end end end}.
'dn--un--__Impl_Cast_(SnocList $a)_(List $a)'(V0) -> ('dn--un--cast_Cast_(SnocList $a)_(List $a)'(V0)).
'dn--un--__Impl_Cast_(List $a)_(SnocList $a)'(V0) -> ('dn--un--cast_Cast_(List $a)_(SnocList $a)'(V0)).
'dn--un--__Impl_Applicative_SnocList'() -> {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('un--mapTR'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative_SnocList'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_SnocList'(V8, V9)) end end end end}.
'dn--un--__Impl_Alternative_SnocList'() -> {'Prelude.Interfaces.MkAlternative', {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('un--mapTR'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative_SnocList'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_SnocList'(V8, V9)) end end end end}, fun (V10) -> {'Prelude.Basics.Lin'} end, fun (V11) -> fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.Types.SnocList':'un--tailRecAppend'(V12, (V13()))) end end end}.
'dn--un-->>=_Monad_SnocList'(V0, V1) -> ('dn--un--foldMap_Foldable_SnocList'({'Prelude.Interfaces.MkMonoid', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.Types.SnocList':'un--tailRecAppend'(V2, V3)) end end, {'Prelude.Basics.Lin'}}, V1, V0)).
'dn--un--<|>_Alternative_SnocList'(V0, V1) -> ('Idris.Idris2.Prelude.Types.SnocList':'un--tailRecAppend'(V0, (V1()))).
'dn--un--<+>_Semigroup_(SnocList $a)'(V0, V1) -> ('Idris.Idris2.Prelude.Types.SnocList':'un--tailRecAppend'(V0, V1)).
'dn--un--<*>_Applicative_SnocList'(V0, V1) -> ('dn--un--foldMap_Foldable_SnocList'({'Prelude.Interfaces.MkMonoid', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.Types.SnocList':'un--tailRecAppend'(V2, V3)) end end, {'Prelude.Basics.Lin'}}, fun (V4) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(fun (V5) -> fun (V6) -> ('un--mapTR'(V5, V6)) end end, V1, V4)) end, V0)).
'un--toListMapMaybe'(V0, V1) -> case V1 of {'Prelude.Basics.Lin'} -> {'Builtin.Refl'}; {'Prelude.Basics.:<', V2, V3} -> {'Builtin.Refl'} end.
'un--toListMap'(V0, V1) -> case V1 of {'Prelude.Basics.Lin'} -> {'Builtin.Refl'}; {'Prelude.Basics.:<', V2, V3} -> {'Builtin.Refl'} end.
'un--toListFilter'(V0, V1) -> case V1 of {'Prelude.Basics.Lin'} -> {'Builtin.Refl'}; {'Prelude.Basics.:<', V2, V3} -> {'Builtin.Refl'} end.
'un--toListCast'(V0) -> case V0 of [] -> {'Builtin.Refl'}; [E0 | E1] -> (fun (V1, V2) -> {'Builtin.Refl'} end(E0, E1)) end.
'un--toListAppend'(V0, V1) -> case V1 of {'Prelude.Basics.Lin'} -> {'Builtin.Refl'}; {'Prelude.Basics.:<', V2, V3} -> {'Builtin.Refl'} end.
'un--spanBy'(V0, V1) -> case V1 of {'Prelude.Basics.Lin'} -> {'Builtin.MkPair', {'Prelude.Basics.Lin'}, {'Prelude.Basics.Lin'}}; {'Prelude.Basics.:<', V2, V3} -> case (V0(V3)) of {'Prelude.Types.Just', V4} -> case ('un--spanBy'(V0, V2)) of {'Builtin.MkPair', V5, V6} -> {'Builtin.MkPair', V5, {'Prelude.Basics.:<', V6, V4}} end; {'Prelude.Types.Nothing'} -> {'Builtin.MkPair', {'Prelude.Basics.:<', V2, V3}, {'Prelude.Basics.Lin'}} end end.
'un--snocFoldlAsListFoldl'(V0, V1, V2) -> case V2 of {'Prelude.Basics.Lin'} -> {'Builtin.Refl'}; {'Prelude.Basics.:<', V3, V4} -> {'Builtin.Refl'} end.
'un--reverseReverseOnto'(V0, V1) -> case V1 of {'Prelude.Basics.Lin'} -> {'Builtin.Refl'}; {'Prelude.Basics.:<', V2, V3} -> ('un--reverseReverseOnto'({'Prelude.Basics.:<', V0, V3}, V2)) end.
'un--reverseInvolutive'(V0) -> ('un--reverseReverseOnto'({'Prelude.Basics.Lin'}, V0)).
'un--mapTR\x{27}'(V0, V1, V2) -> case V2 of {'Prelude.Basics.:<', V3, V4} -> ('un--mapTR\x{27}'([(V1(V4)) | V0], V1, V3)); {'Prelude.Basics.Lin'} -> ('Idris.Idris2.Prelude.Types.SnocList':'un--<><'({'Prelude.Basics.Lin'}, V0)) end.
'un--mapTR'(V0, V1) -> ('un--mapTR\x{27}'([], V0, V1)).
'un--mapMaybeFusion'(V0, V1, V2) -> case V2 of {'Prelude.Basics.Lin'} -> {'Builtin.Refl'}; {'Prelude.Basics.:<', V3, V4} -> ('with--mapMaybeFusion-6726'('erased', 'erased', V4, V1, (V1(V4)), 'erased', V3, V0)) end.
'un--mapMaybeCast'(V0, V1) -> case V1 of [] -> {'Builtin.Refl'}; [E0 | E1] -> (fun (V2, V3) -> {'Builtin.Refl'} end(E0, E1)) end.
'un--mapMaybeAppend'(V0, V1, V2) -> case V2 of {'Prelude.Basics.Lin'} -> {'Builtin.Refl'}; {'Prelude.Basics.:<', V3, V4} -> ('with--mapMaybeAppend-6854'('erased', 'erased', V4, V0, (V0(V4)), V3, V1)) end.
'un--mapImpl'(V0, V1) -> case V1 of {'Prelude.Basics.Lin'} -> {'Prelude.Basics.Lin'}; {'Prelude.Basics.:<', V2, V3} -> {'Prelude.Basics.:<', ('un--mapImpl'(V0, V2)), (V0(V3))} end.
'un--mapFusion'(V0, V1, V2) -> case V2 of {'Prelude.Basics.Lin'} -> {'Builtin.Refl'}; {'Prelude.Basics.:<', V3, V4} -> {'Builtin.Refl'} end.
'un--mapCast'(V0, V1) -> case V1 of [] -> {'Builtin.Refl'}; [E0 | E1] -> (fun (V2, V3) -> {'Builtin.Refl'} end(E0, E1)) end.
'un--mapAppend'(V0, V1, V2) -> case V2 of {'Prelude.Basics.Lin'} -> {'Builtin.Refl'}; {'Prelude.Basics.:<', V3, V4} -> {'Builtin.Refl'} end.
'un--isSnoc'(V0) -> case V0 of {'Prelude.Basics.Lin'} -> 0; {'Prelude.Basics.:<', V1, V2} -> 1 end.
'un--isLin'(V0) -> case V0 of {'Prelude.Basics.Lin'} -> 1; {'Prelude.Basics.:<', V1, V2} -> 0 end.
'un--foldAppend'(V0, V1, V2, V3) -> case V3 of {'Prelude.Basics.Lin'} -> {'Builtin.Refl'}; {'Prelude.Basics.:<', V4, V5} -> {'Builtin.Refl'} end.
'un--fishAsSnocAppend'(V0, V1) -> case V1 of [] -> {'Builtin.Refl'}; [E0 | E1] -> (fun (V2, V3) -> {'Builtin.Refl'} end(E0, E1)) end.
'un--findIndex'(V0, V1) -> case V1 of {'Prelude.Basics.Lin'} -> {'Prelude.Types.Nothing'}; {'Prelude.Basics.:<', V2, V3} -> case (V0(V3)) of 1 -> {'Prelude.Types.Just', 0}; 0 -> ((begin (V9 = fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V7, V8)) end end end end), fun (V10) -> fun (V11) -> ((((V9('erased'))('erased'))(V10))(V11)) end end end(fun (V4) -> (V4 + 1) end))(('un--findIndex'(V0, V2)))) end end.
'un--find'(V0, V1) -> case V1 of {'Prelude.Basics.Lin'} -> {'Prelude.Types.Nothing'}; {'Prelude.Basics.:<', V2, V3} -> case (V0(V3)) of 1 -> {'Prelude.Types.Just', V3}; 0 -> ('un--find'(V0, V2)) end end.
'un--filterCast'(V0, V1) -> case V1 of [] -> {'Builtin.Refl'}; [E0 | E1] -> (fun (V2, V3) -> {'Builtin.Refl'} end(E0, E1)) end.
'un--filterAppend'(V0, V1, V2) -> case V2 of {'Prelude.Basics.Lin'} -> {'Builtin.Refl'}; {'Prelude.Basics.:<', V3, V4} -> ('with--filterAppend-5962'('erased', V4, V0, (V0(V4)), V3, V1)) end.
'un--cons'(V0, V1) -> ('Idris.Idris2.Prelude.Types.SnocList':'un--tailRecAppend'({'Prelude.Basics.:<', {'Prelude.Basics.Lin'}, V0}, V1)).
'un--chipsAsListAppend'(V0, V1) -> case V0 of {'Prelude.Basics.Lin'} -> {'Builtin.Refl'}; {'Prelude.Basics.:<', V2, V3} -> {'Builtin.Refl'} end.
'un--castToList'(V0) -> case V0 of {'Prelude.Basics.Lin'} -> {'Builtin.Refl'}; {'Prelude.Basics.:<', V1, V2} -> {'Builtin.Refl'} end.
'un--castListAppend'(V0, V1) -> case V0 of [] -> {'Builtin.Refl'}; [E0 | E1] -> (fun (V2, V3) -> {'Builtin.Refl'} end(E0, E1)) end.
'un--asList'(V0) -> ('Idris.Idris2.Prelude.Types.List':'un--reverse'((begin (V2 = fun (V1) -> ('dn--un--cast_Cast_(SnocList $a)_(List $a)'(V1)) end), fun (V3) -> (V2(V3)) end end(V0)))).
'un--appendLinLeftNeutral'(V0) -> case V0 of {'Prelude.Basics.Lin'} -> {'Builtin.Refl'}; {'Prelude.Basics.:<', V1, V2} -> {'Builtin.Refl'} end.
'un--appendAssociative'(V0, V1, V2) -> case V2 of {'Prelude.Basics.Lin'} -> {'Builtin.Refl'}; {'Prelude.Basics.:<', V3, V4} -> {'Builtin.Refl'} end.
'un--SnocBiinjective'(V0, V1, V2, V3, V4) -> {'Builtin.MkPair', {'Builtin.Refl'}, {'Builtin.Refl'}}.
