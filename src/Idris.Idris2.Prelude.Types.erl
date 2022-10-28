-module('Idris.Idris2.Prelude.Types').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--rangeFromThen-10260'/4,
  'case--case block in rangeFromThenTo-10161'/5,
  'case--rangeFromThenTo-10098'/5,
  'case--rangeFromTo-10000'/4,
  'case--rangeFromThen-9854'/3,
  'case--case block in rangeFromThenTo-9803'/4,
  'case--case block in rangeFromThenTo-9760'/4,
  'case--rangeFromThenTo-9744'/4,
  'case--rangeFromTo-9689'/3,
  'case--takeBefore-9427'/4,
  'case--takeUntil-9374'/4,
  'case--toLower-9063'/2,
  'case--toUpper-9043'/2,
  'case--unpack-8850'/2,
  'case--substr-8772'/4,
  'case--compare-8464'/6,
  'case--max-8355'/4,
  'case--min-8325'/4,
  'case--compare-6195'/6,
  'case--max-6088'/4,
  'case--min-6058'/4,
  'case--max-4245'/4,
  'case--min-4208'/4,
  'case--max-2363'/4,
  'case--min-2333'/4,
  'case-->>=-1840'/5,
  'case--count-1051'/4,
  'case--max-954'/3,
  'case--min-938'/3,
  'case--integerToNat-678'/2,
  'nested--9896-9080--in--un--hexChars'/1,
  'dn--un--uninhabited_Uninhabited_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/2,
  'dn--un--uninhabited_Uninhabited_(|((Builtin.=== Nothing) (Just $x)),((Builtin.~=~ Nothing) (Just $x))|)'/1,
  'dn--un--uninhabited_Uninhabited_(|((Builtin.=== (Just $x)) Nothing),((Builtin.~=~ (Just $x)) Nothing)|)'/1,
  'dn--un--uninhabited_Uninhabited_((Either $a) $b)'/3,
  'dn--un--uninhabited_Uninhabited_((=== (Yes $p)) (No $q))'/1,
  'dn--un--uninhabited_Uninhabited_((=== (Right $p)) (Left $q))'/1,
  'dn--un--uninhabited_Uninhabited_((=== (No $p)) (Yes $q))'/1,
  'dn--un--uninhabited_Uninhabited_((=== (Left $p)) (Right $q))'/1,
  'dn--un--traverse_Traversable_Maybe'/3,
  'dn--un--traverse_Traversable_List'/3,
  'dn--un--traverse_Traversable_(Either $e)'/3,
  'dn--un--toList_Foldable_Maybe'/1,
  'dn--un--toList_Foldable_List'/1,
  'dn--un--toList_Foldable_(Either $e)'/1,
  'dn--un--rangeFrom_Range_Nat'/1,
  'dn--un--rangeFrom_Range_Char'/1,
  'dn--un--rangeFrom_Range_$a'/2,
  'dn--un--rangeFromTo_Range_Nat'/2,
  'dn--un--rangeFromTo_Range_Char'/2,
  'dn--un--rangeFromTo_Range_$a'/3,
  'dn--un--rangeFromThen_Range_Nat'/2,
  'dn--un--rangeFromThen_Range_Char'/2,
  'dn--un--rangeFromThen_Range_$a'/3,
  'dn--un--rangeFromThenTo_Range_Nat'/3,
  'dn--un--rangeFromThenTo_Range_Char'/3,
  'dn--un--rangeFromThenTo_Range_$a'/4,
  'dn--un--pure_Applicative_Maybe'/1,
  'dn--un--pure_Applicative_List'/1,
  'dn--un--pure_Applicative_(Pair $a)'/2,
  'dn--un--pure_Applicative_(Either $e)'/1,
  'dn--un--null_Foldable_Maybe'/1,
  'dn--un--null_Foldable_List'/1,
  'dn--un--null_Foldable_(Either $e)'/1,
  'dn--un--neutral_Monoid_String'/0,
  'dn--un--neutral_Monoid_(Maybe $a)'/0,
  'dn--un--neutral_Monoid_(List $a)'/0,
  'dn--un--min_Ord_Nat'/2,
  'dn--un--min_Ord_(SnocList $a)'/3,
  'dn--un--min_Ord_(Maybe $a)'/3,
  'dn--un--min_Ord_(List $a)'/3,
  'dn--un--min_Ord_((Either $a) $b)'/3,
  'dn--un--max_Ord_Nat'/2,
  'dn--un--max_Ord_(SnocList $a)'/3,
  'dn--un--max_Ord_(Maybe $a)'/3,
  'dn--un--max_Ord_(List $a)'/3,
  'dn--un--max_Ord_((Either $a) $b)'/3,
  'dn--un--map_Functor_Stream'/2,
  'dn--un--map_Functor_Maybe'/2,
  'dn--un--map_Functor_List'/2,
  'dn--un--map_Functor_(Pair $a)'/2,
  'dn--un--map_Functor_(Either $e)'/2,
  'dn--un--mapSnd_Bifunctor_Pair'/2,
  'dn--un--mapSnd_Bifunctor_Either'/2,
  'dn--un--mapFst_Bifunctor_Pair'/2,
  'dn--un--mapFst_Bifunctor_Either'/2,
  'dn--un--join_Monad_Maybe'/1,
  'dn--un--join_Monad_List'/1,
  'dn--un--join_Monad_(Pair $a)'/2,
  'dn--un--join_Monad_(Either $e)'/1,
  'dn--un--fromInteger_Num_Nat'/1,
  'dn--un--foldr_Foldable_Maybe'/3,
  'dn--un--foldr_Foldable_List'/3,
  'dn--un--foldr_Foldable_(Either $e)'/3,
  'dn--un--foldl_Foldable_Maybe'/3,
  'dn--un--foldl_Foldable_List'/3,
  'dn--un--foldl_Foldable_(Either $e)'/3,
  'dn--un--foldlM_Foldable_Maybe'/4,
  'dn--un--foldlM_Foldable_List'/4,
  'dn--un--foldlM_Foldable_(Either $e)'/4,
  'dn--un--foldMap_Foldable_Maybe'/3,
  'dn--un--foldMap_Foldable_List'/3,
  'dn--un--foldMap_Foldable_(Either $e)'/3,
  'dn--un--empty_Alternative_Maybe'/0,
  'dn--un--empty_Alternative_List'/0,
  'dn--un--compare_Ord_Nat'/2,
  'dn--un--compare_Ord_(SnocList $a)'/3,
  'dn--un--compare_Ord_(Maybe $a)'/3,
  'dn--un--compare_Ord_(List $a)'/3,
  'dn--un--compare_Ord_((Either $a) $b)'/3,
  'dn--un--bitraverse_Bitraversable_Pair'/4,
  'dn--un--bitraverse_Bitraversable_Either'/4,
  'dn--un--binull_Bifoldable_Pair'/1,
  'dn--un--binull_Bifoldable_Either'/1,
  'dn--un--bimap_Bifunctor_Pair'/3,
  'dn--un--bimap_Bifunctor_Either'/3,
  'dn--un--bifoldr_Bifoldable_Pair'/4,
  'dn--un--bifoldr_Bifoldable_Either'/4,
  'dn--un--bifoldl_Bifoldable_Pair'/4,
  'dn--un--bifoldl_Bifoldable_Either'/4,
  'dn--un--__Impl_Uninhabited_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/2,
  'dn--un--__Impl_Uninhabited_(|((Builtin.=== Nothing) (Just $x)),((Builtin.~=~ Nothing) (Just $x))|)'/1,
  'dn--un--__Impl_Uninhabited_(|((Builtin.=== (Just $x)) Nothing),((Builtin.~=~ (Just $x)) Nothing)|)'/1,
  'dn--un--__Impl_Uninhabited_((Either $a) $b)'/3,
  'dn--un--__Impl_Uninhabited_((=== (Yes $p)) (No $q))'/1,
  'dn--un--__Impl_Uninhabited_((=== (Right $p)) (Left $q))'/1,
  'dn--un--__Impl_Uninhabited_((=== (No $p)) (Yes $q))'/1,
  'dn--un--__Impl_Uninhabited_((=== (Left $p)) (Right $q))'/1,
  'dn--un--__Impl_Traversable_Maybe'/0,
  'dn--un--__Impl_Traversable_List'/0,
  'dn--un--__Impl_Traversable_(Either $e)'/0,
  'dn--un--__Impl_Semigroup_String'/2,
  'dn--un--__Impl_Semigroup_(Maybe $a)'/2,
  'dn--un--__Impl_Semigroup_(List $a)'/2,
  'dn--un--__Impl_Range_Nat'/0,
  'dn--un--__Impl_Range_Char'/0,
  'dn--un--__Impl_Range_$a'/1,
  'dn--un--__Impl_Ord_Nat'/0,
  'dn--un--__Impl_Ord_(SnocList $a)'/1,
  'dn--un--__Impl_Ord_(Maybe $a)'/1,
  'dn--un--__Impl_Ord_(List $a)'/1,
  'dn--un--__Impl_Ord_((Either $a) $b)'/1,
  'dn--un--__Impl_Num_Nat'/0,
  'dn--un--__Impl_Monoid_String'/0,
  'dn--un--__Impl_Monoid_(Maybe $a)'/0,
  'dn--un--__Impl_Monoid_(List $a)'/0,
  'dn--un--__Impl_Monad_Maybe'/0,
  'dn--un--__Impl_Monad_List'/0,
  'dn--un--__Impl_Monad_(Pair $a)'/1,
  'dn--un--__Impl_Monad_(Either $e)'/0,
  'dn--un--__Impl_Functor_Stream'/4,
  'dn--un--__Impl_Functor_Maybe'/4,
  'dn--un--__Impl_Functor_List'/4,
  'dn--un--__Impl_Functor_(Pair $a)'/4,
  'dn--un--__Impl_Functor_(Either $e)'/4,
  'dn--un--__Impl_Foldable_Maybe'/0,
  'dn--un--__Impl_Foldable_List'/0,
  'dn--un--__Impl_Foldable_(Either $e)'/0,
  'dn--un--__Impl_Eq_Nat'/0,
  'dn--un--__Impl_Eq_(SnocList $a)'/1,
  'dn--un--__Impl_Eq_(Maybe $a)'/1,
  'dn--un--__Impl_Eq_(List $a)'/1,
  'dn--un--__Impl_Eq_((Either $a) $b)'/1,
  'dn--un--__Impl_Bitraversable_Pair'/0,
  'dn--un--__Impl_Bitraversable_Either'/0,
  'dn--un--__Impl_Bifunctor_Pair'/0,
  'dn--un--__Impl_Bifunctor_Either'/0,
  'dn--un--__Impl_Bifoldable_Pair'/0,
  'dn--un--__Impl_Bifoldable_Either'/0,
  'dn--un--__Impl_Applicative_Maybe'/0,
  'dn--un--__Impl_Applicative_List'/0,
  'dn--un--__Impl_Applicative_(Pair $a)'/1,
  'dn--un--__Impl_Applicative_(Either $e)'/0,
  'dn--un--__Impl_Alternative_Maybe'/0,
  'dn--un--__Impl_Alternative_List'/0,
  'dn--un-->_Ord_Nat'/2,
  'dn--un-->_Ord_(SnocList $a)'/3,
  'dn--un-->_Ord_(Maybe $a)'/3,
  'dn--un-->_Ord_(List $a)'/3,
  'dn--un-->_Ord_((Either $a) $b)'/3,
  'dn--un-->>=_Monad_Maybe'/2,
  'dn--un-->>=_Monad_List'/2,
  'dn--un-->>=_Monad_(Pair $a)'/3,
  'dn--un-->>=_Monad_(Either $e)'/2,
  'dn--un-->=_Ord_Nat'/2,
  'dn--un-->=_Ord_(SnocList $a)'/3,
  'dn--un-->=_Ord_(Maybe $a)'/3,
  'dn--un-->=_Ord_(List $a)'/3,
  'dn--un-->=_Ord_((Either $a) $b)'/3,
  'dn--un--==_Eq_Nat'/2,
  'dn--un--==_Eq_(SnocList $a)'/3,
  'dn--un--==_Eq_(Maybe $a)'/3,
  'dn--un--==_Eq_(List $a)'/3,
  'dn--un--==_Eq_((Either $a) $b)'/3,
  'dn--un--<|>_Alternative_Maybe'/2,
  'dn--un--<|>_Alternative_List'/2,
  'dn--un--<_Ord_Nat'/2,
  'dn--un--<_Ord_(SnocList $a)'/3,
  'dn--un--<_Ord_(Maybe $a)'/3,
  'dn--un--<_Ord_(List $a)'/3,
  'dn--un--<_Ord_((Either $a) $b)'/3,
  'dn--un--<=_Ord_Nat'/2,
  'dn--un--<=_Ord_(SnocList $a)'/3,
  'dn--un--<=_Ord_(Maybe $a)'/3,
  'dn--un--<=_Ord_(List $a)'/3,
  'dn--un--<=_Ord_((Either $a) $b)'/3,
  'dn--un--<+>_Semigroup_String'/2,
  'dn--un--<+>_Semigroup_(Maybe $a)'/2,
  'dn--un--<+>_Semigroup_(List $a)'/2,
  'dn--un--<*>_Applicative_Maybe'/2,
  'dn--un--<*>_Applicative_List'/2,
  'dn--un--<*>_Applicative_(Pair $a)'/3,
  'dn--un--<*>_Applicative_(Either $e)'/2,
  'dn--un--/=_Eq_Nat'/2,
  'dn--un--/=_Eq_(SnocList $a)'/3,
  'dn--un--/=_Eq_(Maybe $a)'/3,
  'dn--un--/=_Eq_(List $a)'/3,
  'dn--un--/=_Eq_((Either $a) $b)'/3,
  'dn--un--+_Num_Nat'/2,
  'dn--un--*_Num_Nat'/2,
  'un--whenJust'/3,
  'un--viaEquivalence'/2,
  'un--unpack'/1,
  'un--toUpper'/1,
  'un--toLower'/1,
  'un--tanh'/1,
  'un--tan'/1,
  'un--takeUntil'/2,
  'un--takeBefore'/2,
  'un--take'/2,
  'un--tail'/1,
  'un--substr'/3,
  'un--strUncons'/1,
  'un--strCons'/2,
  'un--sqrt'/1,
  'un--sinh'/1,
  'un--sin'/1,
  'un--reverse'/1,
  'un--rangeFromTo'/3,
  'un--rangeFromThenTo'/4,
  'un--rangeFromThen'/3,
  'un--rangeFrom'/2,
  'un--prim__integerToNat'/1,
  'un--pow'/2,
  'un--plus'/2,
  'un--pi'/0,
  'un--pack'/1,
  'un--ord'/1,
  'un--natToInteger'/1,
  'un--mult'/2,
  'un--minus'/2,
  'un--maybe'/3,
  'un--log'/1,
  'un--listBindOnto'/3,
  'un--listBind'/2,
  'un--isUpper'/1,
  'un--isSpace'/1,
  'un--isOctDigit'/1,
  'un--isNL'/1,
  'un--isLower'/1,
  'un--isHexDigit'/1,
  'un--isDigit'/1,
  'un--isControl'/1,
  'un--isAlphaNum'/1,
  'un--isAlpha'/1,
  'un--integerToNat'/1,
  'un--head'/1,
  'un--getAt'/2,
  'un--floor'/1,
  'un--fastUnpack'/1,
  'un--fastPack'/1,
  'un--fastConcat'/1,
  'un--exp'/1,
  'un--euler'/0,
  'un--equalNat'/2,
  'un--elemBy'/4,
  'un--elem'/4,
  'un--either'/3,
  'un--countFrom'/2,
  'un--count'/3,
  'un--cosh'/1,
  'un--cos'/1,
  'un--compareNat'/2,
  'un--chr'/1,
  'un--ceiling'/1,
  'un--atan'/1,
  'un--asin'/1,
  'un--acos'/1
]).
'case--rangeFromThen-10260'(V0, V1, V2, V3) -> case V3 of 1 -> ('un--countFrom'(V1, fun (V4) -> case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V5, V6, V7} -> case V5 of {'Prelude.Num.MkNum', V8, V9, V10} -> ((V8(V4))(case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V11, V12, V13} -> ((V13(V2))(V1)) end)) end end end)); 0 -> ('un--countFrom'(V1, fun (V14) -> case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V15, V16, V17} -> ((V17(V14))(case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V18, V19, V20} -> ((V20(V1))(V2)) end)) end end)) end.
'case--case block in rangeFromThenTo-10161'(V0, V1, V2, V3, V4) -> case V4 of 1 -> ('dn--un--pure_Applicative_List'(V3)); 0 -> [] end.
'case--rangeFromThenTo-10098'(V0, V1, V2, V3, V4) -> case V4 of 0 -> ('un--takeBefore'(fun (V5) -> case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.EqOrd.MkOrd', V6, V7, V8, V9, V10, V11, V12, V13} -> ((V8(V5))(V3)) end end, ('un--countFrom'(V1, fun (V14) -> case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V15, V16, V17} -> ((V17(V14))(case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V18, V19, V20} -> ((V20(V1))(V2)) end)) end end)))); 1 -> case case case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.EqOrd.MkOrd', V21, V22, V23, V24, V25, V26, V27, V28} -> case V21 of {'Prelude.EqOrd.MkEq', V29, V30} -> ((V29(V1))(V2)) end end of 1 -> case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.EqOrd.MkOrd', V31, V32, V33, V34, V35, V36, V37, V38} -> case V31 of {'Prelude.EqOrd.MkEq', V39, V40} -> ((V39(V2))(V3)) end end; 0 -> 0 end of 1 -> ('dn--un--pure_Applicative_List'(V1)); 0 -> [] end; 2 -> ('un--takeBefore'(fun (V41) -> case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.EqOrd.MkOrd', V42, V43, V44, V45, V46, V47, V48, V49} -> ((V45(V41))(V3)) end end, ('un--countFrom'(V1, fun (V50) -> case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V51, V52, V53} -> case V51 of {'Prelude.Num.MkNum', V54, V55, V56} -> ((V54(V50))(case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V57, V58, V59} -> ((V59(V2))(V1)) end)) end end end)))) end.
'case--rangeFromTo-10000'(V0, V1, V2, V3) -> case V3 of 0 -> ('un--takeUntil'(fun (V4) -> case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.EqOrd.MkOrd', V5, V6, V7, V8, V9, V10, V11, V12} -> ((V10(V4))(V2)) end end, ('un--countFrom'(V1, fun (V13) -> case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V14, V15, V16} -> case V14 of {'Prelude.Num.MkNum', V17, V18, V19} -> ((V17(V13))(case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V20, V21, V22} -> case V20 of {'Prelude.Num.MkNum', V23, V24, V25} -> (V25(1)) end end)) end end end)))); 1 -> ('dn--un--pure_Applicative_List'(V1)); 2 -> ('un--takeUntil'(fun (V26) -> case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.EqOrd.MkOrd', V27, V28, V29, V30, V31, V32, V33, V34} -> ((V31(V26))(V2)) end end, ('un--countFrom'(V1, fun (V35) -> case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V36, V37, V38} -> ((V38(V35))(case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V39, V40, V41} -> case V39 of {'Prelude.Num.MkNum', V42, V43, V44} -> (V44(1)) end end)) end end)))) end.
'case--rangeFromThen-9854'(V0, V1, V2) -> case V2 of 1 -> ('un--countFrom'(V1, fun (V3) -> (('un--prim__integerToNat'((V0 - V1))) + V3) end)); 0 -> ('un--countFrom'(V1, fun (V4) -> ('un--prim__integerToNat'((V4 - ('un--prim__integerToNat'((V1 - V0)))))) end)) end.
'case--case block in rangeFromThenTo-9803'(V0, V1, V2, V3) -> case V3 of 1 -> ('dn--un--pure_Applicative_List'(V2)); 0 -> [] end.
'case--case block in rangeFromThenTo-9760'(V0, V1, V2, V3) -> case V3 of 1 -> ('un--takeBefore'(fun (V4) -> ('dn--un-->_Ord_Nat'(V4, V0)) end, ('un--countFrom'(V2, fun (V5) -> (('un--prim__integerToNat'((V1 - V2))) + V5) end)))); 0 -> [] end.
'case--rangeFromThenTo-9744'(V0, V1, V2, V3) -> case V3 of 0 -> case ('dn--un-->=_Ord_Nat'(V0, V2)) of 1 -> ('un--takeBefore'(fun (V4) -> ('dn--un-->_Ord_Nat'(V4, V0)) end, ('un--countFrom'(V2, fun (V5) -> (('un--prim__integerToNat'((V1 - V2))) + V5) end)))); 0 -> [] end; 1 -> case case (V2 =:= V0) of 'false' -> 0; _ -> 1 end of 1 -> ('dn--un--pure_Applicative_List'(V2)); 0 -> [] end; 2 -> ('un--takeBefore'(fun (V6) -> ('dn--un--<_Ord_Nat'(V6, V0)) end, ('un--countFrom'(V2, fun (V7) -> ('un--prim__integerToNat'((V7 - ('un--prim__integerToNat'((V2 - V1)))))) end)))) end.
'case--rangeFromTo-9689'(V0, V1, V2) -> case V2 of 0 -> ('un--takeUntil'(fun (V3) -> ('dn--un-->=_Ord_Nat'(V3, V0)) end, ('un--countFrom'(V1, fun (V4) -> (V4 + 1) end)))); 1 -> ('dn--un--pure_Applicative_List'(V1)); 2 -> ('un--takeUntil'(fun (V5) -> ('dn--un--<=_Ord_Nat'(V5, V0)) end, ('un--countFrom'(V1, fun (V6) -> ('un--prim__integerToNat'((V6 - 1))) end)))) end.
'case--takeBefore-9427'(V0, V1, V2, V3) -> case V3 of 1 -> []; 0 -> [V0 | ('un--takeBefore'(V2, (V1())))] end.
'case--takeUntil-9374'(V0, V1, V2, V3) -> case V3 of 1 -> [V0 | []]; 0 -> [V0 | ('un--takeUntil'(V2, (V1())))] end.
'case--toLower-9063'(V0, V1) -> case V1 of 1 -> case begin (V2 = (case V0 of E1 when ((erlang:'is_integer'(E1)) andalso (((E1 >= 0) andalso (E1 =< 55295)) orelse ((E1 >= 57344) andalso (E1 =< 1114111)))) -> E1; _ -> 65533 end + 32)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end; 0 -> V0 end.
'case--toUpper-9043'(V0, V1) -> case V1 of 1 -> case begin (V2 = (case V0 of E1 when ((erlang:'is_integer'(E1)) andalso (((E1 >= 0) andalso (E1 =< 55295)) orelse ((E1 >= 57344) andalso (E1 =< 1114111)))) -> E1; _ -> 65533 end - 32)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end; 0 -> V0 end.
'case--unpack-8850'(V0, V1) -> case V1 of {'Prelude.Types.Nothing'} -> []; {'Prelude.Types.Just', V2} -> case V2 of {'Builtin.MkPair', V3, V4} -> [V3 | ('un--unpack'(V4))] end end.
'case--substr-8772'(V0, V1, V2, V3) -> case V3 of 1 -> ('string':'slice'(V0, begin (V4 = V2), case ((V4 band 9223372036854775808) =/= 0) of 'true' -> (V4 bor -9223372036854775808); _ -> (V4 band 9223372036854775807) end end, begin (V5 = V1), case ((V5 band 9223372036854775808) =/= 0) of 'true' -> (V5 bor -9223372036854775808); _ -> (V5 band 9223372036854775807) end end)); 0 -> <<""/utf8>> end.
'case--compare-8464'(V0, V1, V2, V3, V4, V5) -> case V5 of 1 -> case V0 of {'Prelude.EqOrd.MkOrd', V6, V7, V8, V9, V10, V11, V12, V13} -> ((V7(V1))(V3)) end; _ -> V5 end.
'case--max-8355'(V0, V1, V2, V3) -> case V3 of 1 -> V2; 0 -> V1 end.
'case--min-8325'(V0, V1, V2, V3) -> case V3 of 1 -> V2; 0 -> V1 end.
'case--compare-6195'(V0, V1, V2, V3, V4, V5) -> case V5 of 1 -> ('dn--un--compare_Ord_(List $a)'(V0, V2, V4)); _ -> V5 end.
'case--max-6088'(V0, V1, V2, V3) -> case V3 of 1 -> V2; 0 -> V1 end.
'case--min-6058'(V0, V1, V2, V3) -> case V3 of 1 -> V2; 0 -> V1 end.
'case--max-4245'(V0, V1, V2, V3) -> case V3 of 1 -> V2; 0 -> V1 end.
'case--min-4208'(V0, V1, V2, V3) -> case V3 of 1 -> V2; 0 -> V1 end.
'case--max-2363'(V0, V1, V2, V3) -> case V3 of 1 -> V2; 0 -> V1 end.
'case--min-2333'(V0, V1, V2, V3) -> case V3 of 1 -> V2; 0 -> V1 end.
'case-->>=-1840'(V0, V1, V2, V3, V4) -> case V4 of {'Builtin.MkPair', V5, V6} -> {'Builtin.MkPair', ((begin (V9 = case V0 of {'Prelude.Interfaces.MkMonoid', V7, V8} -> V7 end), fun (V10) -> fun (V11) -> ((V9(V10))(V11)) end end end(V1))(V5)), V6} end.
'case--count-1051'(V0, V1, V2, V3) -> case V3 of 1 -> 1; 0 -> 0 end.
'case--max-954'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--min-938'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--integerToNat-678'(V0, V1) -> case V1 of 1 -> 0; 0 -> (('un--prim__integerToNat'((V0 - 1))) + 1) end.
'nested--9896-9080--in--un--hexChars'(V0) -> [$0 | [$1 | [$2 | [$3 | [$4 | [$5 | [$6 | [$7 | [$8 | [$9 | [$A | [$B | [$C | [$D | [$E | [$F | []]]]]]]]]]]]]]]]].
'dn--un--uninhabited_Uninhabited_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1) -> case V0 of {'Prelude.Types.Left', V2} -> case V1 of {'Builtin.MkPair', V3, V4} -> (begin (V5 = V2), fun (V6) -> (V5(V6)) end end(V3)) end; {'Prelude.Types.Right', V7} -> case V1 of {'Builtin.MkPair', V8, V9} -> (begin (V10 = V7), fun (V11) -> (V10(V11)) end end(V9)) end end.
'dn--un--uninhabited_Uninhabited_(|((Builtin.=== Nothing) (Just $x)),((Builtin.~=~ Nothing) (Just $x))|)'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--uninhabited_Uninhabited_(|((Builtin.=== (Just $x)) Nothing),((Builtin.~=~ (Just $x)) Nothing)|)'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--uninhabited_Uninhabited_((Either $a) $b)'(V0, V1, V2) -> case V2 of {'Prelude.Types.Left', V3} -> (begin (V4 = V0), fun (V5) -> (V4(V5)) end end(V3)); {'Prelude.Types.Right', V6} -> (begin (V7 = V1), fun (V8) -> (V7(V8)) end end(V6)) end.
'dn--un--uninhabited_Uninhabited_((=== (Yes $p)) (No $q))'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--uninhabited_Uninhabited_((=== (Right $p)) (Left $q))'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--uninhabited_Uninhabited_((=== (No $p)) (Yes $q))'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--uninhabited_Uninhabited_((=== (Left $p)) (Right $q))'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--traverse_Traversable_Maybe'(V0, V1, V2) -> case V2 of {'Prelude.Types.Nothing'} -> case V0 of {'Prelude.Interfaces.MkApplicative', V3, V4, V5} -> ((V4('erased'))({'Prelude.Types.Nothing'})) end; {'Prelude.Types.Just', V6} -> ((begin (V11 = case V0 of {'Prelude.Interfaces.MkApplicative', V8, V9, V10} -> V8 end), fun (V12) -> fun (V13) -> ((((V11('erased'))('erased'))(V12))(V13)) end end end(fun (V7) -> {'Prelude.Types.Just', V7} end))((V1(V6)))) end.
'dn--un--traverse_Traversable_List'(V0, V1, V2) -> case V2 of [] -> case V0 of {'Prelude.Interfaces.MkApplicative', V3, V4, V5} -> ((V4('erased'))([])) end; [E0 | E1] -> (fun (V6, V7) -> case V0 of {'Prelude.Interfaces.MkApplicative', V8, V9, V10} -> ((((V10('erased'))('erased'))(case V0 of {'Prelude.Interfaces.MkApplicative', V11, V12, V13} -> ((((V13('erased'))('erased'))(case V0 of {'Prelude.Interfaces.MkApplicative', V14, V15, V16} -> ((V15('erased'))(fun (V17) -> fun (V18) -> [V17 | V18] end end)) end))((V1(V6)))) end))(('dn--un--traverse_Traversable_List'(V0, V1, V7)))) end end(E0, E1)) end.
'dn--un--traverse_Traversable_(Either $e)'(V0, V1, V2) -> case V2 of {'Prelude.Types.Left', V3} -> case V0 of {'Prelude.Interfaces.MkApplicative', V4, V5, V6} -> ((V5('erased'))({'Prelude.Types.Left', V3})) end; {'Prelude.Types.Right', V7} -> ((begin (V12 = case V0 of {'Prelude.Interfaces.MkApplicative', V9, V10, V11} -> V9 end), fun (V13) -> fun (V14) -> ((((V12('erased'))('erased'))(V13))(V14)) end end end(fun (V8) -> {'Prelude.Types.Right', V8} end))((V1(V7)))) end.
'dn--un--toList_Foldable_Maybe'(V0) -> ('dn--un--foldr_Foldable_Maybe'(fun (V1) -> fun (V2) -> [V1 | V2] end end, [], V0)).
'dn--un--toList_Foldable_List'(V0) -> V0.
'dn--un--toList_Foldable_(Either $e)'(V0) -> ('dn--un--foldr_Foldable_(Either $e)'(fun (V1) -> fun (V2) -> [V1 | V2] end end, [], V0)).
'dn--un--rangeFrom_Range_Nat'(V0) -> ('un--countFrom'(V0, fun (V1) -> (V1 + 1) end)).
'dn--un--rangeFrom_Range_Char'(V0) -> ('dn--un--map_Functor_Stream'(fun (V1) -> case V1 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end end, ('dn--un--rangeFrom_Range_$a'({'Builtin.MkPair', {'Prelude.Num.MkIntegral', {'Prelude.Num.MkNum', fun (V2) -> fun (V3) -> begin (V4 = (V2 + V3)), case ((V4 band 9223372036854775808) =/= 0) of 'true' -> (V4 bor -9223372036854775808); _ -> (V4 band 9223372036854775807) end end end end, fun (V5) -> fun (V6) -> begin (V7 = (V5 * V6)), case ((V7 band 9223372036854775808) =/= 0) of 'true' -> (V7 bor -9223372036854775808); _ -> (V7 band 9223372036854775807) end end end end, fun (V8) -> begin (V9 = V8), case ((V9 band 9223372036854775808) =/= 0) of 'true' -> (V9 bor -9223372036854775808); _ -> (V9 band 9223372036854775807) end end end}, fun (V10) -> fun (V11) -> ('Idris.Idris2.Prelude.Num':'dn--un--div_Integral_Int'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.Num':'dn--un--mod_Integral_Int'(V12, V13)) end end}, {'Builtin.MkPair', {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V14) -> fun (V15) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Int'(V16, V17)) end end}, fun (V18) -> fun (V19) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Int'(V18, V19)) end end, fun (V20) -> fun (V21) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Int'(V20, V21)) end end, fun (V22) -> fun (V23) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord_Int'(V22, V23)) end end, fun (V24) -> fun (V25) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord_Int'(V24, V25)) end end, fun (V26) -> fun (V27) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord_Int'(V26, V27)) end end, fun (V28) -> fun (V29) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--max_Ord_Int'(V28, V29)) end end, fun (V30) -> fun (V31) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--min_Ord_Int'(V30, V31)) end end}, {'Prelude.Num.MkNeg', {'Prelude.Num.MkNum', fun (V32) -> fun (V33) -> begin (V34 = (V32 + V33)), case ((V34 band 9223372036854775808) =/= 0) of 'true' -> (V34 bor -9223372036854775808); _ -> (V34 band 9223372036854775807) end end end end, fun (V35) -> fun (V36) -> begin (V37 = (V35 * V36)), case ((V37 band 9223372036854775808) =/= 0) of 'true' -> (V37 bor -9223372036854775808); _ -> (V37 band 9223372036854775807) end end end end, fun (V38) -> begin (V39 = V38), case ((V39 band 9223372036854775808) =/= 0) of 'true' -> (V39 bor -9223372036854775808); _ -> (V39 band 9223372036854775807) end end end}, fun (V40) -> begin (V41 = (0 - V40)), case ((V41 band 9223372036854775808) =/= 0) of 'true' -> (V41 bor -9223372036854775808); _ -> (V41 band 9223372036854775807) end end end, fun (V42) -> fun (V43) -> begin (V44 = (V42 - V43)), case ((V44 band 9223372036854775808) =/= 0) of 'true' -> (V44 bor -9223372036854775808); _ -> (V44 band 9223372036854775807) end end end end}}}, case V0 of E1 when ((erlang:'is_integer'(E1)) andalso (((E1 >= 0) andalso (E1 =< 55295)) orelse ((E1 >= 57344) andalso (E1 =< 1114111)))) -> E1; _ -> 65533 end)))).
'dn--un--rangeFrom_Range_$a'(V0, V1) -> ('un--countFrom'(V1, fun (V2) -> case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V3, V4, V5} -> case V3 of {'Prelude.Num.MkNum', V6, V7, V8} -> ((V6(case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V9, V10, V11} -> case V9 of {'Prelude.Num.MkNum', V12, V13, V14} -> (V14(1)) end end))(V2)) end end end)).
'dn--un--rangeFromTo_Range_Nat'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Integer'(V0, V1)) of 0 -> ('un--takeUntil'(fun (V2) -> ('dn--un-->=_Ord_Nat'(V2, V1)) end, ('un--countFrom'(V0, fun (V3) -> (V3 + 1) end)))); 1 -> ('dn--un--pure_Applicative_List'(V0)); 2 -> ('un--takeUntil'(fun (V4) -> ('dn--un--<=_Ord_Nat'(V4, V1)) end, ('un--countFrom'(V0, fun (V5) -> ('un--prim__integerToNat'((V5 - 1))) end)))) end.
'dn--un--rangeFromTo_Range_Char'(V0, V1) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, fun (V2) -> case V2 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end end, ('dn--un--rangeFromTo_Range_$a'({'Builtin.MkPair', {'Prelude.Num.MkIntegral', {'Prelude.Num.MkNum', fun (V3) -> fun (V4) -> begin (V5 = (V3 + V4)), case ((V5 band 9223372036854775808) =/= 0) of 'true' -> (V5 bor -9223372036854775808); _ -> (V5 band 9223372036854775807) end end end end, fun (V6) -> fun (V7) -> begin (V8 = (V6 * V7)), case ((V8 band 9223372036854775808) =/= 0) of 'true' -> (V8 bor -9223372036854775808); _ -> (V8 band 9223372036854775807) end end end end, fun (V9) -> begin (V10 = V9), case ((V10 band 9223372036854775808) =/= 0) of 'true' -> (V10 bor -9223372036854775808); _ -> (V10 band 9223372036854775807) end end end}, fun (V11) -> fun (V12) -> ('Idris.Idris2.Prelude.Num':'dn--un--div_Integral_Int'(V11, V12)) end end, fun (V13) -> fun (V14) -> ('Idris.Idris2.Prelude.Num':'dn--un--mod_Integral_Int'(V13, V14)) end end}, {'Builtin.MkPair', {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V15) -> fun (V16) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(V15, V16)) end end, fun (V17) -> fun (V18) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Int'(V17, V18)) end end}, fun (V19) -> fun (V20) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Int'(V19, V20)) end end, fun (V21) -> fun (V22) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Int'(V21, V22)) end end, fun (V23) -> fun (V24) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord_Int'(V23, V24)) end end, fun (V25) -> fun (V26) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord_Int'(V25, V26)) end end, fun (V27) -> fun (V28) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord_Int'(V27, V28)) end end, fun (V29) -> fun (V30) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--max_Ord_Int'(V29, V30)) end end, fun (V31) -> fun (V32) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--min_Ord_Int'(V31, V32)) end end}, {'Prelude.Num.MkNeg', {'Prelude.Num.MkNum', fun (V33) -> fun (V34) -> begin (V35 = (V33 + V34)), case ((V35 band 9223372036854775808) =/= 0) of 'true' -> (V35 bor -9223372036854775808); _ -> (V35 band 9223372036854775807) end end end end, fun (V36) -> fun (V37) -> begin (V38 = (V36 * V37)), case ((V38 band 9223372036854775808) =/= 0) of 'true' -> (V38 bor -9223372036854775808); _ -> (V38 band 9223372036854775807) end end end end, fun (V39) -> begin (V40 = V39), case ((V40 band 9223372036854775808) =/= 0) of 'true' -> (V40 bor -9223372036854775808); _ -> (V40 band 9223372036854775807) end end end}, fun (V41) -> begin (V42 = (0 - V41)), case ((V42 band 9223372036854775808) =/= 0) of 'true' -> (V42 bor -9223372036854775808); _ -> (V42 band 9223372036854775807) end end end, fun (V43) -> fun (V44) -> begin (V45 = (V43 - V44)), case ((V45 band 9223372036854775808) =/= 0) of 'true' -> (V45 bor -9223372036854775808); _ -> (V45 band 9223372036854775807) end end end end}}}, case V0 of E1 when ((erlang:'is_integer'(E1)) andalso (((E1 >= 0) andalso (E1 =< 55295)) orelse ((E1 >= 57344) andalso (E1 =< 1114111)))) -> E1; _ -> 65533 end, case V1 of E2 when ((erlang:'is_integer'(E2)) andalso (((E2 >= 0) andalso (E2 =< 55295)) orelse ((E2 >= 57344) andalso (E2 =< 1114111)))) -> E2; _ -> 65533 end)))).
'dn--un--rangeFromTo_Range_$a'(V0, V1, V2) -> case case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.EqOrd.MkOrd', V3, V4, V5, V6, V7, V8, V9, V10} -> ((V4(V1))(V2)) end of 0 -> ('un--takeUntil'(fun (V11) -> case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.EqOrd.MkOrd', V12, V13, V14, V15, V16, V17, V18, V19} -> ((V17(V11))(V2)) end end, ('un--countFrom'(V1, fun (V20) -> case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V21, V22, V23} -> case V21 of {'Prelude.Num.MkNum', V24, V25, V26} -> ((V24(V20))(case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V27, V28, V29} -> case V27 of {'Prelude.Num.MkNum', V30, V31, V32} -> (V32(1)) end end)) end end end)))); 1 -> ('dn--un--pure_Applicative_List'(V1)); 2 -> ('un--takeUntil'(fun (V33) -> case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.EqOrd.MkOrd', V34, V35, V36, V37, V38, V39, V40, V41} -> ((V38(V33))(V2)) end end, ('un--countFrom'(V1, fun (V42) -> case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V43, V44, V45} -> ((V45(V42))(case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V46, V47, V48} -> case V46 of {'Prelude.Num.MkNum', V49, V50, V51} -> (V51(1)) end end)) end end)))) end.
'dn--un--rangeFromThen_Range_Nat'(V0, V1) -> case ('dn--un-->_Ord_Nat'(V1, V0)) of 1 -> ('un--countFrom'(V0, fun (V2) -> (('un--prim__integerToNat'((V1 - V0))) + V2) end)); 0 -> ('un--countFrom'(V0, fun (V3) -> ('un--prim__integerToNat'((V3 - ('un--prim__integerToNat'((V0 - V1)))))) end)) end.
'dn--un--rangeFromThen_Range_Char'(V0, V1) -> ('dn--un--map_Functor_Stream'(fun (V2) -> case V2 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end end, ('dn--un--rangeFromThen_Range_$a'({'Builtin.MkPair', {'Prelude.Num.MkIntegral', {'Prelude.Num.MkNum', fun (V3) -> fun (V4) -> begin (V5 = (V3 + V4)), case ((V5 band 9223372036854775808) =/= 0) of 'true' -> (V5 bor -9223372036854775808); _ -> (V5 band 9223372036854775807) end end end end, fun (V6) -> fun (V7) -> begin (V8 = (V6 * V7)), case ((V8 band 9223372036854775808) =/= 0) of 'true' -> (V8 bor -9223372036854775808); _ -> (V8 band 9223372036854775807) end end end end, fun (V9) -> begin (V10 = V9), case ((V10 band 9223372036854775808) =/= 0) of 'true' -> (V10 bor -9223372036854775808); _ -> (V10 band 9223372036854775807) end end end}, fun (V11) -> fun (V12) -> ('Idris.Idris2.Prelude.Num':'dn--un--div_Integral_Int'(V11, V12)) end end, fun (V13) -> fun (V14) -> ('Idris.Idris2.Prelude.Num':'dn--un--mod_Integral_Int'(V13, V14)) end end}, {'Builtin.MkPair', {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V15) -> fun (V16) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(V15, V16)) end end, fun (V17) -> fun (V18) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Int'(V17, V18)) end end}, fun (V19) -> fun (V20) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Int'(V19, V20)) end end, fun (V21) -> fun (V22) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Int'(V21, V22)) end end, fun (V23) -> fun (V24) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord_Int'(V23, V24)) end end, fun (V25) -> fun (V26) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord_Int'(V25, V26)) end end, fun (V27) -> fun (V28) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord_Int'(V27, V28)) end end, fun (V29) -> fun (V30) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--max_Ord_Int'(V29, V30)) end end, fun (V31) -> fun (V32) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--min_Ord_Int'(V31, V32)) end end}, {'Prelude.Num.MkNeg', {'Prelude.Num.MkNum', fun (V33) -> fun (V34) -> begin (V35 = (V33 + V34)), case ((V35 band 9223372036854775808) =/= 0) of 'true' -> (V35 bor -9223372036854775808); _ -> (V35 band 9223372036854775807) end end end end, fun (V36) -> fun (V37) -> begin (V38 = (V36 * V37)), case ((V38 band 9223372036854775808) =/= 0) of 'true' -> (V38 bor -9223372036854775808); _ -> (V38 band 9223372036854775807) end end end end, fun (V39) -> begin (V40 = V39), case ((V40 band 9223372036854775808) =/= 0) of 'true' -> (V40 bor -9223372036854775808); _ -> (V40 band 9223372036854775807) end end end}, fun (V41) -> begin (V42 = (0 - V41)), case ((V42 band 9223372036854775808) =/= 0) of 'true' -> (V42 bor -9223372036854775808); _ -> (V42 band 9223372036854775807) end end end, fun (V43) -> fun (V44) -> begin (V45 = (V43 - V44)), case ((V45 band 9223372036854775808) =/= 0) of 'true' -> (V45 bor -9223372036854775808); _ -> (V45 band 9223372036854775807) end end end end}}}, case V0 of E1 when ((erlang:'is_integer'(E1)) andalso (((E1 >= 0) andalso (E1 =< 55295)) orelse ((E1 >= 57344) andalso (E1 =< 1114111)))) -> E1; _ -> 65533 end, case V1 of E2 when ((erlang:'is_integer'(E2)) andalso (((E2 >= 0) andalso (E2 =< 55295)) orelse ((E2 >= 57344) andalso (E2 =< 1114111)))) -> E2; _ -> 65533 end)))).
'dn--un--rangeFromThen_Range_$a'(V0, V1, V2) -> case case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.EqOrd.MkOrd', V3, V4, V5, V6, V7, V8, V9, V10} -> ((V6(V2))(V1)) end of 1 -> ('un--countFrom'(V1, fun (V11) -> case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V12, V13, V14} -> case V12 of {'Prelude.Num.MkNum', V15, V16, V17} -> ((V15(V11))(case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V18, V19, V20} -> ((V20(V2))(V1)) end)) end end end)); 0 -> ('un--countFrom'(V1, fun (V21) -> case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V22, V23, V24} -> ((V24(V21))(case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V25, V26, V27} -> ((V27(V1))(V2)) end)) end end)) end.
'dn--un--rangeFromThenTo_Range_Nat'(V0, V1, V2) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Integer'(V0, V1)) of 0 -> case ('dn--un-->=_Ord_Nat'(V2, V0)) of 1 -> ('un--takeBefore'(fun (V3) -> ('dn--un-->_Ord_Nat'(V3, V2)) end, ('un--countFrom'(V0, fun (V4) -> (('un--prim__integerToNat'((V1 - V0))) + V4) end)))); 0 -> [] end; 1 -> case case (V0 =:= V2) of 'false' -> 0; _ -> 1 end of 1 -> ('dn--un--pure_Applicative_List'(V0)); 0 -> [] end; 2 -> ('un--takeBefore'(fun (V5) -> ('dn--un--<_Ord_Nat'(V5, V2)) end, ('un--countFrom'(V0, fun (V6) -> ('un--prim__integerToNat'((V6 - ('un--prim__integerToNat'((V0 - V1)))))) end)))) end.
'dn--un--rangeFromThenTo_Range_Char'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, fun (V3) -> case V3 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end end, ('dn--un--rangeFromThenTo_Range_$a'({'Builtin.MkPair', {'Prelude.Num.MkIntegral', {'Prelude.Num.MkNum', fun (V4) -> fun (V5) -> begin (V6 = (V4 + V5)), case ((V6 band 9223372036854775808) =/= 0) of 'true' -> (V6 bor -9223372036854775808); _ -> (V6 band 9223372036854775807) end end end end, fun (V7) -> fun (V8) -> begin (V9 = (V7 * V8)), case ((V9 band 9223372036854775808) =/= 0) of 'true' -> (V9 bor -9223372036854775808); _ -> (V9 band 9223372036854775807) end end end end, fun (V10) -> begin (V11 = V10), case ((V11 band 9223372036854775808) =/= 0) of 'true' -> (V11 bor -9223372036854775808); _ -> (V11 band 9223372036854775807) end end end}, fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.Num':'dn--un--div_Integral_Int'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('Idris.Idris2.Prelude.Num':'dn--un--mod_Integral_Int'(V14, V15)) end end}, {'Builtin.MkPair', {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V16) -> fun (V17) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(V16, V17)) end end, fun (V18) -> fun (V19) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Int'(V18, V19)) end end}, fun (V20) -> fun (V21) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Int'(V20, V21)) end end, fun (V22) -> fun (V23) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Int'(V22, V23)) end end, fun (V24) -> fun (V25) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord_Int'(V24, V25)) end end, fun (V26) -> fun (V27) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord_Int'(V26, V27)) end end, fun (V28) -> fun (V29) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord_Int'(V28, V29)) end end, fun (V30) -> fun (V31) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--max_Ord_Int'(V30, V31)) end end, fun (V32) -> fun (V33) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--min_Ord_Int'(V32, V33)) end end}, {'Prelude.Num.MkNeg', {'Prelude.Num.MkNum', fun (V34) -> fun (V35) -> begin (V36 = (V34 + V35)), case ((V36 band 9223372036854775808) =/= 0) of 'true' -> (V36 bor -9223372036854775808); _ -> (V36 band 9223372036854775807) end end end end, fun (V37) -> fun (V38) -> begin (V39 = (V37 * V38)), case ((V39 band 9223372036854775808) =/= 0) of 'true' -> (V39 bor -9223372036854775808); _ -> (V39 band 9223372036854775807) end end end end, fun (V40) -> begin (V41 = V40), case ((V41 band 9223372036854775808) =/= 0) of 'true' -> (V41 bor -9223372036854775808); _ -> (V41 band 9223372036854775807) end end end}, fun (V42) -> begin (V43 = (0 - V42)), case ((V43 band 9223372036854775808) =/= 0) of 'true' -> (V43 bor -9223372036854775808); _ -> (V43 band 9223372036854775807) end end end, fun (V44) -> fun (V45) -> begin (V46 = (V44 - V45)), case ((V46 band 9223372036854775808) =/= 0) of 'true' -> (V46 bor -9223372036854775808); _ -> (V46 band 9223372036854775807) end end end end}}}, case V0 of E1 when ((erlang:'is_integer'(E1)) andalso (((E1 >= 0) andalso (E1 =< 55295)) orelse ((E1 >= 57344) andalso (E1 =< 1114111)))) -> E1; _ -> 65533 end, case V1 of E2 when ((erlang:'is_integer'(E2)) andalso (((E2 >= 0) andalso (E2 =< 55295)) orelse ((E2 >= 57344) andalso (E2 =< 1114111)))) -> E2; _ -> 65533 end, case V2 of E3 when ((erlang:'is_integer'(E3)) andalso (((E3 >= 0) andalso (E3 =< 55295)) orelse ((E3 >= 57344) andalso (E3 =< 1114111)))) -> E3; _ -> 65533 end)))).
'dn--un--rangeFromThenTo_Range_$a'(V0, V1, V2, V3) -> case case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.EqOrd.MkOrd', V4, V5, V6, V7, V8, V9, V10, V11} -> ((V5(case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V15, V16, V17} -> ((V17(V3))(V1)) end))(case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V12, V13, V14} -> ((V14(V3))(V2)) end)) end of 0 -> ('un--takeBefore'(fun (V18) -> case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.EqOrd.MkOrd', V19, V20, V21, V22, V23, V24, V25, V26} -> ((V21(V18))(V3)) end end, ('un--countFrom'(V1, fun (V27) -> case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V28, V29, V30} -> ((V30(V27))(case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V31, V32, V33} -> ((V33(V1))(V2)) end)) end end)))); 1 -> case case case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.EqOrd.MkOrd', V34, V35, V36, V37, V38, V39, V40, V41} -> case V34 of {'Prelude.EqOrd.MkEq', V42, V43} -> ((V42(V1))(V2)) end end of 1 -> case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.EqOrd.MkOrd', V44, V45, V46, V47, V48, V49, V50, V51} -> case V44 of {'Prelude.EqOrd.MkEq', V52, V53} -> ((V52(V2))(V3)) end end; 0 -> 0 end of 1 -> ('dn--un--pure_Applicative_List'(V1)); 0 -> [] end; 2 -> ('un--takeBefore'(fun (V54) -> case ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.EqOrd.MkOrd', V55, V56, V57, V58, V59, V60, V61, V62} -> ((V58(V54))(V3)) end end, ('un--countFrom'(V1, fun (V63) -> case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V64, V65, V66} -> case V64 of {'Prelude.Num.MkNum', V67, V68, V69} -> ((V67(V63))(case ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0)))) of {'Prelude.Num.MkNeg', V70, V71, V72} -> ((V72(V2))(V1)) end)) end end end)))) end.
'dn--un--pure_Applicative_Maybe'(V0) -> {'Prelude.Types.Just', V0}.
'dn--un--pure_Applicative_List'(V0) -> [V0 | []].
'dn--un--pure_Applicative_(Pair $a)'(V0, V1) -> {'Builtin.MkPair', case V0 of {'Prelude.Interfaces.MkMonoid', V2, V3} -> V3 end, V1}.
'dn--un--pure_Applicative_(Either $e)'(V0) -> {'Prelude.Types.Right', V0}.
'dn--un--null_Foldable_Maybe'(V0) -> case V0 of {'Prelude.Types.Nothing'} -> 1; {'Prelude.Types.Just', V1} -> 0 end.
'dn--un--null_Foldable_List'(V0) -> case V0 of [] -> 1; [E0 | E1] -> (fun (V1, V2) -> 0 end(E0, E1)) end.
'dn--un--null_Foldable_(Either $e)'(V0) -> case V0 of {'Prelude.Types.Left', V1} -> 1; {'Prelude.Types.Right', V2} -> 0 end.
'dn--un--neutral_Monoid_String'() -> <<""/utf8>>.
'dn--un--neutral_Monoid_(Maybe $a)'() -> {'Prelude.Types.Nothing'}.
'dn--un--neutral_Monoid_(List $a)'() -> [].
'dn--un--min_Ord_Nat'(V0, V1) -> case ('dn--un--<_Ord_Nat'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--min_Ord_(SnocList $a)'(V0, V1, V2) -> case ('dn--un--<_Ord_(SnocList $a)'(V0, V1, V2)) of 1 -> V1; 0 -> V2 end.
'dn--un--min_Ord_(Maybe $a)'(V0, V1, V2) -> case ('dn--un--<_Ord_(Maybe $a)'(V0, V1, V2)) of 1 -> V1; 0 -> V2 end.
'dn--un--min_Ord_(List $a)'(V0, V1, V2) -> case ('dn--un--<_Ord_(List $a)'(V0, V1, V2)) of 1 -> V1; 0 -> V2 end.
'dn--un--min_Ord_((Either $a) $b)'(V0, V1, V2) -> case ('dn--un--<_Ord_((Either $a) $b)'(V0, V1, V2)) of 1 -> V1; 0 -> V2 end.
'dn--un--max_Ord_Nat'(V0, V1) -> case ('dn--un-->_Ord_Nat'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--max_Ord_(SnocList $a)'(V0, V1, V2) -> case ('dn--un-->_Ord_(SnocList $a)'(V0, V1, V2)) of 1 -> V1; 0 -> V2 end.
'dn--un--max_Ord_(Maybe $a)'(V0, V1, V2) -> case ('dn--un-->_Ord_(Maybe $a)'(V0, V1, V2)) of 1 -> V1; 0 -> V2 end.
'dn--un--max_Ord_(List $a)'(V0, V1, V2) -> case ('dn--un-->_Ord_(List $a)'(V0, V1, V2)) of 1 -> V1; 0 -> V2 end.
'dn--un--max_Ord_((Either $a) $b)'(V0, V1, V2) -> case ('dn--un-->_Ord_((Either $a) $b)'(V0, V1, V2)) of 1 -> V1; 0 -> V2 end.
'dn--un--map_Functor_Stream'(V0, V1) -> case V1 of {'Prelude.Types.Stream.::', V2, V3} -> {'Prelude.Types.Stream.::', (V0(V2)), fun () -> ((begin (V8 = fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('dn--un--map_Functor_Stream'(V6, V7)) end end end end), fun (V9) -> fun (V10) -> ((((V8('erased'))('erased'))(V9))(V10)) end end end(V0))((V3()))) end} end.
'dn--un--map_Functor_Maybe'(V0, V1) -> case V1 of {'Prelude.Types.Just', V2} -> {'Prelude.Types.Just', (V0(V2))}; {'Prelude.Types.Nothing'} -> {'Prelude.Types.Nothing'} end.
'dn--un--map_Functor_List'(V0, V1) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V0, V1)).
'dn--un--map_Functor_(Pair $a)'(V0, V1) -> case V1 of {'Builtin.MkPair', V2, V3} -> {'Builtin.MkPair', V2, (V0(V3))} end.
'dn--un--map_Functor_(Either $e)'(V0, V1) -> case V1 of {'Prelude.Types.Left', V2} -> {'Prelude.Types.Left', V2}; {'Prelude.Types.Right', V3} -> {'Prelude.Types.Right', (V0(V3))} end.
'dn--un--mapSnd_Bifunctor_Pair'(V0, V1) -> case V1 of {'Builtin.MkPair', V2, V3} -> {'Builtin.MkPair', V2, (V0(V3))} end.
'dn--un--mapSnd_Bifunctor_Either'(V0, V1) -> case V1 of {'Prelude.Types.Left', V2} -> {'Prelude.Types.Left', V2}; {'Prelude.Types.Right', V3} -> {'Prelude.Types.Right', (V0(V3))} end.
'dn--un--mapFst_Bifunctor_Pair'(V0, V1) -> case V1 of {'Builtin.MkPair', V2, V3} -> {'Builtin.MkPair', (V0(V2)), V3} end.
'dn--un--mapFst_Bifunctor_Either'(V0, V1) -> case V1 of {'Prelude.Types.Left', V2} -> {'Prelude.Types.Left', (V0(V2))}; {'Prelude.Types.Right', V3} -> {'Prelude.Types.Right', V3} end.
'dn--un--join_Monad_Maybe'(V0) -> ('dn--un-->>=_Monad_Maybe'(V0, fun (V1) -> V1 end)).
'dn--un--join_Monad_List'(V0) -> ('un--listBind'(V0, fun (V1) -> V1 end)).
'dn--un--join_Monad_(Pair $a)'(V0, V1) -> case V1 of {'Builtin.MkPair', V2, V3} -> case V3 of {'Builtin.MkPair', V4, V5} -> {'Builtin.MkPair', ((begin (V8 = case V0 of {'Prelude.Interfaces.MkMonoid', V6, V7} -> V6 end), fun (V9) -> fun (V10) -> ((V8(V9))(V10)) end end end(V2))(V4)), V5} end end.
'dn--un--join_Monad_(Either $e)'(V0) -> ('dn--un-->>=_Monad_(Either $e)'(V0, fun (V1) -> V1 end)).
'dn--un--fromInteger_Num_Nat'(V0) -> ('un--prim__integerToNat'(V0)).
'dn--un--foldr_Foldable_Maybe'(V0, V1, V2) -> case V2 of {'Prelude.Types.Nothing'} -> V1; {'Prelude.Types.Just', V3} -> ((V0(V3))(V1)) end.
'dn--un--foldr_Foldable_List'(V0, V1, V2) -> case V2 of [] -> V1; [E0 | E1] -> (fun (V3, V4) -> ((V0(V3))(('dn--un--foldr_Foldable_List'(V0, V1, V4)))) end(E0, E1)) end.
'dn--un--foldr_Foldable_(Either $e)'(V0, V1, V2) -> case V2 of {'Prelude.Types.Left', V3} -> V1; {'Prelude.Types.Right', V4} -> ((V0(V4))(V1)) end.
'dn--un--foldl_Foldable_Maybe'(V0, V1, V2) -> (('dn--un--foldr_Foldable_Maybe'(fun (V3) -> fun (V4) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(fun (V5) -> fun (V6) -> fun (V7) -> (V5((V6(V7)))) end end end, fun (V8) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(V0, V3, V8)) end, V4)) end end, fun (V9) -> V9 end, V2))(V1)).
'dn--un--foldl_Foldable_List'(V0, V1, V2) -> case V2 of [] -> V1; [E0 | E1] -> (fun (V3, V4) -> ('dn--un--foldl_Foldable_List'(V0, ((V0(V1))(V3)), V4)) end(E0, E1)) end.
'dn--un--foldl_Foldable_(Either $e)'(V0, V1, V2) -> (('dn--un--foldr_Foldable_(Either $e)'(fun (V3) -> fun (V4) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(fun (V5) -> fun (V6) -> fun (V7) -> (V5((V6(V7)))) end end end, fun (V8) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(V0, V3, V8)) end, V4)) end end, fun (V9) -> V9 end, V2))(V1)).
'dn--un--foldlM_Foldable_Maybe'(V0, V1, V2, V3) -> ('dn--un--foldl_Foldable_Maybe'(fun (V4) -> fun (V5) -> case V0 of {'Prelude.Interfaces.MkMonad', V6, V7, V8} -> ((((V7('erased'))('erased'))(V4))(fun (V9) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(V1, V5, V9)) end)) end end end, case V0 of {'Prelude.Interfaces.MkMonad', V10, V11, V12} -> case V10 of {'Prelude.Interfaces.MkApplicative', V13, V14, V15} -> ((V14('erased'))(V2)) end end, V3)).
'dn--un--foldlM_Foldable_List'(V0, V1, V2, V3) -> ('dn--un--foldl_Foldable_List'(fun (V4) -> fun (V5) -> case V0 of {'Prelude.Interfaces.MkMonad', V6, V7, V8} -> ((((V7('erased'))('erased'))(V4))(fun (V9) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(V1, V5, V9)) end)) end end end, case V0 of {'Prelude.Interfaces.MkMonad', V10, V11, V12} -> case V10 of {'Prelude.Interfaces.MkApplicative', V13, V14, V15} -> ((V14('erased'))(V2)) end end, V3)).
'dn--un--foldlM_Foldable_(Either $e)'(V0, V1, V2, V3) -> ('dn--un--foldl_Foldable_(Either $e)'(fun (V4) -> fun (V5) -> case V0 of {'Prelude.Interfaces.MkMonad', V6, V7, V8} -> ((((V7('erased'))('erased'))(V4))(fun (V9) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(V1, V5, V9)) end)) end end end, case V0 of {'Prelude.Interfaces.MkMonad', V10, V11, V12} -> case V10 of {'Prelude.Interfaces.MkApplicative', V13, V14, V15} -> ((V14('erased'))(V2)) end end, V3)).
'dn--un--foldMap_Foldable_Maybe'(V0, V1, V2) -> ('dn--un--foldr_Foldable_Maybe'(fun (V3) -> (begin (V6 = case V0 of {'Prelude.Interfaces.MkMonoid', V4, V5} -> V4 end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end((V1(V3)))) end, case V0 of {'Prelude.Interfaces.MkMonoid', V9, V10} -> V10 end, V2)).
'dn--un--foldMap_Foldable_List'(V0, V1, V2) -> ('dn--un--foldl_Foldable_List'(fun (V3) -> fun (V4) -> ((begin (V7 = case V0 of {'Prelude.Interfaces.MkMonoid', V5, V6} -> V5 end), fun (V8) -> fun (V9) -> ((V7(V8))(V9)) end end end(V3))((V1(V4)))) end end, case V0 of {'Prelude.Interfaces.MkMonoid', V10, V11} -> V11 end, V2)).
'dn--un--foldMap_Foldable_(Either $e)'(V0, V1, V2) -> ('dn--un--foldr_Foldable_(Either $e)'(fun (V3) -> (begin (V6 = case V0 of {'Prelude.Interfaces.MkMonoid', V4, V5} -> V4 end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end((V1(V3)))) end, case V0 of {'Prelude.Interfaces.MkMonoid', V9, V10} -> V10 end, V2)).
'dn--un--empty_Alternative_Maybe'() -> {'Prelude.Types.Nothing'}.
'dn--un--empty_Alternative_List'() -> [].
'dn--un--compare_Ord_Nat'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Integer'(V0, V1)).
'dn--un--compare_Ord_(SnocList $a)'(V0, V1, V2) -> case V1 of {'Prelude.Basics.Lin'} -> case V2 of {'Prelude.Basics.Lin'} -> 1; {'Prelude.Basics.:<', V3, V4} -> 0 end; {'Prelude.Basics.:<', V5, V6} -> case V2 of {'Prelude.Basics.Lin'} -> 2; {'Prelude.Basics.:<', V7, V8} -> ('case--compare-8464'(V0, V6, V5, V8, V7, ('dn--un--compare_Ord_(SnocList $a)'(V0, V5, V7)))) end end.
'dn--un--compare_Ord_(Maybe $a)'(V0, V1, V2) -> case V1 of {'Prelude.Types.Nothing'} -> case V2 of {'Prelude.Types.Nothing'} -> 1; {'Prelude.Types.Just', V3} -> 0 end; {'Prelude.Types.Just', V4} -> case V2 of {'Prelude.Types.Nothing'} -> 2; {'Prelude.Types.Just', V5} -> case V0 of {'Prelude.EqOrd.MkOrd', V6, V7, V8, V9, V10, V11, V12, V13} -> ((V7(V4))(V5)) end end end.
'dn--un--compare_Ord_(List $a)'(V0, V1, V2) -> case V1 of [] -> case V2 of [] -> 1; [E0 | E1] -> (fun (V3, V4) -> 0 end(E0, E1)) end; [E2 | E3] -> (fun (V5, V6) -> case V2 of [] -> 2; [E4 | E5] -> (fun (V7, V8) -> ('case--compare-6195'(V0, V5, V6, V7, V8, case V0 of {'Prelude.EqOrd.MkOrd', V9, V10, V11, V12, V13, V14, V15, V16} -> ((V10(V5))(V7)) end)) end(E4, E5)) end end(E2, E3)) end.
'dn--un--compare_Ord_((Either $a) $b)'(V0, V1, V2) -> case V1 of {'Prelude.Types.Left', V3} -> case V2 of {'Prelude.Types.Left', V4} -> case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.EqOrd.MkOrd', V5, V6, V7, V8, V9, V10, V11, V12} -> ((V6(V3))(V4)) end; {'Prelude.Types.Right', V13} -> 0 end; {'Prelude.Types.Right', V14} -> case V2 of {'Prelude.Types.Left', V15} -> 2; {'Prelude.Types.Right', V16} -> case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Prelude.EqOrd.MkOrd', V17, V18, V19, V20, V21, V22, V23, V24} -> ((V18(V14))(V16)) end end end.
'dn--un--bitraverse_Bitraversable_Pair'(V0, V1, V2, V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> case V0 of {'Prelude.Interfaces.MkApplicative', V6, V7, V8} -> ((((V8('erased'))('erased'))(case V0 of {'Prelude.Interfaces.MkApplicative', V9, V10, V11} -> ((((V11('erased'))('erased'))(case V0 of {'Prelude.Interfaces.MkApplicative', V12, V13, V14} -> ((V13('erased'))(fun (V15) -> fun (V16) -> {'Builtin.MkPair', V15, V16} end end)) end))((V1(V4)))) end))((V2(V5)))) end end.
'dn--un--bitraverse_Bitraversable_Either'(V0, V1, V2, V3) -> case V3 of {'Prelude.Types.Left', V4} -> ((begin (V9 = case V0 of {'Prelude.Interfaces.MkApplicative', V6, V7, V8} -> V6 end), fun (V10) -> fun (V11) -> ((((V9('erased'))('erased'))(V10))(V11)) end end end(fun (V5) -> {'Prelude.Types.Left', V5} end))((V1(V4)))); {'Prelude.Types.Right', V12} -> ((begin (V17 = case V0 of {'Prelude.Interfaces.MkApplicative', V14, V15, V16} -> V14 end), fun (V18) -> fun (V19) -> ((((V17('erased'))('erased'))(V18))(V19)) end end end(fun (V13) -> {'Prelude.Types.Right', V13} end))((V2(V12)))) end.
'dn--un--binull_Bifoldable_Pair'(V0) -> 0.
'dn--un--binull_Bifoldable_Either'(V0) -> 0.
'dn--un--bimap_Bifunctor_Pair'(V0, V1, V2) -> case V2 of {'Builtin.MkPair', V3, V4} -> {'Builtin.MkPair', (V0(V3)), (V1(V4))} end.
'dn--un--bimap_Bifunctor_Either'(V0, V1, V2) -> case V2 of {'Prelude.Types.Left', V3} -> {'Prelude.Types.Left', (V0(V3))}; {'Prelude.Types.Right', V4} -> {'Prelude.Types.Right', (V1(V4))} end.
'dn--un--bifoldr_Bifoldable_Pair'(V0, V1, V2, V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> ((V0(V4))(((V1(V5))(V2)))) end.
'dn--un--bifoldr_Bifoldable_Either'(V0, V1, V2, V3) -> case V3 of {'Prelude.Types.Left', V4} -> ((V0(V4))(V2)); {'Prelude.Types.Right', V5} -> ((V1(V5))(V2)) end.
'dn--un--bifoldl_Bifoldable_Pair'(V0, V1, V2, V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> ((V1(((V0(V2))(V4))))(V5)) end.
'dn--un--bifoldl_Bifoldable_Either'(V0, V1, V2, V3) -> case V3 of {'Prelude.Types.Left', V4} -> ((V0(V2))(V4)); {'Prelude.Types.Right', V5} -> ((V1(V2))(V5)) end.
'dn--un--__Impl_Uninhabited_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1) -> ('dn--un--uninhabited_Uninhabited_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1)).
'dn--un--__Impl_Uninhabited_(|((Builtin.=== Nothing) (Just $x)),((Builtin.~=~ Nothing) (Just $x))|)'(V0) -> ('dn--un--uninhabited_Uninhabited_(|((Builtin.=== Nothing) (Just $x)),((Builtin.~=~ Nothing) (Just $x))|)'(V0)).
'dn--un--__Impl_Uninhabited_(|((Builtin.=== (Just $x)) Nothing),((Builtin.~=~ (Just $x)) Nothing)|)'(V0) -> ('dn--un--uninhabited_Uninhabited_(|((Builtin.=== (Just $x)) Nothing),((Builtin.~=~ (Just $x)) Nothing)|)'(V0)).
'dn--un--__Impl_Uninhabited_((Either $a) $b)'(V0, V1, V2) -> ('dn--un--uninhabited_Uninhabited_((Either $a) $b)'(V0, V1, V2)).
'dn--un--__Impl_Uninhabited_((=== (Yes $p)) (No $q))'(V0) -> ('dn--un--uninhabited_Uninhabited_((=== (Yes $p)) (No $q))'(V0)).
'dn--un--__Impl_Uninhabited_((=== (Right $p)) (Left $q))'(V0) -> ('dn--un--uninhabited_Uninhabited_((=== (Right $p)) (Left $q))'(V0)).
'dn--un--__Impl_Uninhabited_((=== (No $p)) (Yes $q))'(V0) -> ('dn--un--uninhabited_Uninhabited_((=== (No $p)) (Yes $q))'(V0)).
'dn--un--__Impl_Uninhabited_((=== (Left $p)) (Right $q))'(V0) -> ('dn--un--uninhabited_Uninhabited_((=== (Left $p)) (Right $q))'(V0)).
'dn--un--__Impl_Traversable_Maybe'() -> {'Prelude.Interfaces.MkTraversable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_Maybe'(V2, V3)) end end end end, {'Prelude.Interfaces.MkFoldable', fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('dn--un--foldr_Foldable_Maybe'(V6, V7, V8)) end end end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--foldl_Foldable_Maybe'(V11, V12, V13)) end end end end end, fun (V14) -> fun (V15) -> ('dn--un--null_Foldable_Maybe'(V15)) end end, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> ('dn--un--foldlM_Foldable_Maybe'(V19, V20, V21, V22)) end end end end end end end, fun (V23) -> fun (V24) -> ('dn--un--toList_Foldable_Maybe'(V24)) end end, fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> ('dn--un--foldMap_Foldable_Maybe'(V27, V28, V29)) end end end end end}, fun (V30) -> fun (V31) -> fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> ('dn--un--traverse_Traversable_Maybe'(V33, V34, V35)) end end end end end end}.
'dn--un--__Impl_Traversable_List'() -> {'Prelude.Interfaces.MkTraversable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V2, V3)) end end end end, {'Prelude.Interfaces.MkFoldable', fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('dn--un--foldr_Foldable_List'(V6, V7, V8)) end end end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--foldl_Foldable_List'(V11, V12, V13)) end end end end end, fun (V14) -> fun (V15) -> ('dn--un--null_Foldable_List'(V15)) end end, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> ('dn--un--foldlM_Foldable_List'(V19, V20, V21, V22)) end end end end end end end, fun (V23) -> fun (V24) -> V24 end end, fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> ('dn--un--foldMap_Foldable_List'(V27, V28, V29)) end end end end end}, fun (V30) -> fun (V31) -> fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> ('dn--un--traverse_Traversable_List'(V33, V34, V35)) end end end end end end}.
'dn--un--__Impl_Traversable_(Either $e)'() -> {'Prelude.Interfaces.MkTraversable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> case V3 of {'Prelude.Types.Left', V4} -> {'Prelude.Types.Left', V4}; {'Prelude.Types.Right', V5} -> {'Prelude.Types.Right', (V2(V5))} end end end end end, {'Prelude.Interfaces.MkFoldable', fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('dn--un--foldr_Foldable_(Either $e)'(V8, V9, V10)) end end end end end, fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> ('dn--un--foldl_Foldable_(Either $e)'(V13, V14, V15)) end end end end end, fun (V16) -> fun (V17) -> ('dn--un--null_Foldable_(Either $e)'(V17)) end end, fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> ('dn--un--foldlM_Foldable_(Either $e)'(V21, V22, V23, V24)) end end end end end end end, fun (V25) -> fun (V26) -> ('dn--un--toList_Foldable_(Either $e)'(V26)) end end, fun (V27) -> fun (V28) -> fun (V29) -> fun (V30) -> fun (V31) -> ('dn--un--foldMap_Foldable_(Either $e)'(V29, V30, V31)) end end end end end}, fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> fun (V36) -> fun (V37) -> ('dn--un--traverse_Traversable_(Either $e)'(V35, V36, V37)) end end end end end end}.
'dn--un--__Impl_Semigroup_String'(V0, V1) -> <<V0/binary, V1/binary>>.
'dn--un--__Impl_Semigroup_(Maybe $a)'(V0, V1) -> ('dn--un--<+>_Semigroup_(Maybe $a)'(V0, V1)).
'dn--un--__Impl_Semigroup_(List $a)'(V0, V1) -> ('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(V0, V1)).
'dn--un--__Impl_Range_Nat'() -> {'Prelude.Types.MkRange', fun (V0) -> fun (V1) -> ('dn--un--rangeFromTo_Range_Nat'(V0, V1)) end end, fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--rangeFromThenTo_Range_Nat'(V2, V3, V4)) end end end, fun (V5) -> ('dn--un--rangeFrom_Range_Nat'(V5)) end, fun (V6) -> fun (V7) -> ('dn--un--rangeFromThen_Range_Nat'(V6, V7)) end end}.
'dn--un--__Impl_Range_Char'() -> {'Prelude.Types.MkRange', fun (V0) -> fun (V1) -> ('dn--un--rangeFromTo_Range_Char'(V0, V1)) end end, fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--rangeFromThenTo_Range_Char'(V2, V3, V4)) end end end, fun (V5) -> ('dn--un--rangeFrom_Range_Char'(V5)) end, fun (V6) -> fun (V7) -> ('dn--un--rangeFromThen_Range_Char'(V6, V7)) end end}.
'dn--un--__Impl_Range_$a'(V0) -> {'Prelude.Types.MkRange', fun (V1) -> fun (V2) -> ('dn--un--rangeFromTo_Range_$a'(V0, V1, V2)) end end, fun (V3) -> fun (V4) -> fun (V5) -> ('dn--un--rangeFromThenTo_Range_$a'(V0, V3, V4, V5)) end end end, fun (V6) -> ('dn--un--rangeFrom_Range_$a'(V0, V6)) end, fun (V7) -> fun (V8) -> ('dn--un--rangeFromThen_Range_$a'(V0, V7, V8)) end end}.
'dn--un--__Impl_Ord_Nat'() -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> case (V0 =:= V1) of 'false' -> 0; _ -> 1 end end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Nat'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Integer'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Nat'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Nat'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Nat'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Nat'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Nat'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Nat'(V16, V17)) end end}.
'dn--un--__Impl_Ord_(SnocList $a)'(V0) -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_(SnocList $a)'(case V0 of {'Prelude.EqOrd.MkOrd', V3, V4, V5, V6, V7, V8, V9, V10} -> V3 end, V1, V2)) end end, fun (V11) -> fun (V12) -> ('dn--un--/=_Eq_(SnocList $a)'(case V0 of {'Prelude.EqOrd.MkOrd', V13, V14, V15, V16, V17, V18, V19, V20} -> V13 end, V11, V12)) end end}, fun (V21) -> fun (V22) -> ('dn--un--compare_Ord_(SnocList $a)'(V0, V21, V22)) end end, fun (V23) -> fun (V24) -> ('dn--un--<_Ord_(SnocList $a)'(V0, V23, V24)) end end, fun (V25) -> fun (V26) -> ('dn--un-->_Ord_(SnocList $a)'(V0, V25, V26)) end end, fun (V27) -> fun (V28) -> ('dn--un--<=_Ord_(SnocList $a)'(V0, V27, V28)) end end, fun (V29) -> fun (V30) -> ('dn--un-->=_Ord_(SnocList $a)'(V0, V29, V30)) end end, fun (V31) -> fun (V32) -> ('dn--un--max_Ord_(SnocList $a)'(V0, V31, V32)) end end, fun (V33) -> fun (V34) -> ('dn--un--min_Ord_(SnocList $a)'(V0, V33, V34)) end end}.
'dn--un--__Impl_Ord_(Maybe $a)'(V0) -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_(Maybe $a)'(case V0 of {'Prelude.EqOrd.MkOrd', V3, V4, V5, V6, V7, V8, V9, V10} -> V3 end, V1, V2)) end end, fun (V11) -> fun (V12) -> ('dn--un--/=_Eq_(Maybe $a)'(case V0 of {'Prelude.EqOrd.MkOrd', V13, V14, V15, V16, V17, V18, V19, V20} -> V13 end, V11, V12)) end end}, fun (V21) -> fun (V22) -> ('dn--un--compare_Ord_(Maybe $a)'(V0, V21, V22)) end end, fun (V23) -> fun (V24) -> ('dn--un--<_Ord_(Maybe $a)'(V0, V23, V24)) end end, fun (V25) -> fun (V26) -> ('dn--un-->_Ord_(Maybe $a)'(V0, V25, V26)) end end, fun (V27) -> fun (V28) -> ('dn--un--<=_Ord_(Maybe $a)'(V0, V27, V28)) end end, fun (V29) -> fun (V30) -> ('dn--un-->=_Ord_(Maybe $a)'(V0, V29, V30)) end end, fun (V31) -> fun (V32) -> ('dn--un--max_Ord_(Maybe $a)'(V0, V31, V32)) end end, fun (V33) -> fun (V34) -> ('dn--un--min_Ord_(Maybe $a)'(V0, V33, V34)) end end}.
'dn--un--__Impl_Ord_(List $a)'(V0) -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_(List $a)'(case V0 of {'Prelude.EqOrd.MkOrd', V3, V4, V5, V6, V7, V8, V9, V10} -> V3 end, V1, V2)) end end, fun (V11) -> fun (V12) -> ('dn--un--/=_Eq_(List $a)'(case V0 of {'Prelude.EqOrd.MkOrd', V13, V14, V15, V16, V17, V18, V19, V20} -> V13 end, V11, V12)) end end}, fun (V21) -> fun (V22) -> ('dn--un--compare_Ord_(List $a)'(V0, V21, V22)) end end, fun (V23) -> fun (V24) -> ('dn--un--<_Ord_(List $a)'(V0, V23, V24)) end end, fun (V25) -> fun (V26) -> ('dn--un-->_Ord_(List $a)'(V0, V25, V26)) end end, fun (V27) -> fun (V28) -> ('dn--un--<=_Ord_(List $a)'(V0, V27, V28)) end end, fun (V29) -> fun (V30) -> ('dn--un-->=_Ord_(List $a)'(V0, V29, V30)) end end, fun (V31) -> fun (V32) -> ('dn--un--max_Ord_(List $a)'(V0, V31, V32)) end end, fun (V33) -> fun (V34) -> ('dn--un--min_Ord_(List $a)'(V0, V33, V34)) end end}.
'dn--un--__Impl_Ord_((Either $a) $b)'(V0) -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_((Either $a) $b)'({'Builtin.MkPair', case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.EqOrd.MkOrd', V3, V4, V5, V6, V7, V8, V9, V10} -> V3 end, case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Prelude.EqOrd.MkOrd', V11, V12, V13, V14, V15, V16, V17, V18} -> V11 end}, V1, V2)) end end, fun (V19) -> fun (V20) -> ('dn--un--/=_Eq_((Either $a) $b)'({'Builtin.MkPair', case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.EqOrd.MkOrd', V21, V22, V23, V24, V25, V26, V27, V28} -> V21 end, case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Prelude.EqOrd.MkOrd', V29, V30, V31, V32, V33, V34, V35, V36} -> V29 end}, V19, V20)) end end}, fun (V37) -> fun (V38) -> ('dn--un--compare_Ord_((Either $a) $b)'(V0, V37, V38)) end end, fun (V39) -> fun (V40) -> ('dn--un--<_Ord_((Either $a) $b)'(V0, V39, V40)) end end, fun (V41) -> fun (V42) -> ('dn--un-->_Ord_((Either $a) $b)'(V0, V41, V42)) end end, fun (V43) -> fun (V44) -> ('dn--un--<=_Ord_((Either $a) $b)'(V0, V43, V44)) end end, fun (V45) -> fun (V46) -> ('dn--un-->=_Ord_((Either $a) $b)'(V0, V45, V46)) end end, fun (V47) -> fun (V48) -> ('dn--un--max_Ord_((Either $a) $b)'(V0, V47, V48)) end end, fun (V49) -> fun (V50) -> ('dn--un--min_Ord_((Either $a) $b)'(V0, V49, V50)) end end}.
'dn--un--__Impl_Num_Nat'() -> {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> ('un--prim__integerToNat'(V4)) end}.
'dn--un--__Impl_Monoid_String'() -> {'Prelude.Interfaces.MkMonoid', fun (V0) -> fun (V1) -> <<V0/binary, V1/binary>> end end, <<""/utf8>>}.
'dn--un--__Impl_Monoid_(Maybe $a)'() -> {'Prelude.Interfaces.MkMonoid', fun (V0) -> fun (V1) -> ('dn--un--<+>_Semigroup_(Maybe $a)'(V0, V1)) end end, {'Prelude.Types.Nothing'}}.
'dn--un--__Impl_Monoid_(List $a)'() -> {'Prelude.Interfaces.MkMonoid', fun (V0) -> fun (V1) -> ('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(V0, V1)) end end, []}.
'dn--un--__Impl_Monad_Maybe'() -> {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_Maybe'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> {'Prelude.Types.Just', V5} end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_Maybe'(V8, V9)) end end end end}, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un-->>=_Monad_Maybe'(V12, V13)) end end end end, fun (V14) -> fun (V15) -> ('dn--un--join_Monad_Maybe'(V15)) end end}.
'dn--un--__Impl_Monad_List'() -> {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative_List'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_List'(V8, V9)) end end end end}, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('un--listBind'(V12, V13)) end end end end, fun (V14) -> fun (V15) -> ('dn--un--join_Monad_List'(V15)) end end}.
'dn--un--__Impl_Monad_(Pair $a)'(V0) -> {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> case V4 of {'Builtin.MkPair', V5, V6} -> {'Builtin.MkPair', V5, (V3(V6))} end end end end end, fun (V7) -> fun (V8) -> {'Builtin.MkPair', case V0 of {'Prelude.Interfaces.MkMonoid', V9, V10} -> V10 end, V8} end end, fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> case V13 of {'Builtin.MkPair', V15, V16} -> case V14 of {'Builtin.MkPair', V17, V18} -> {'Builtin.MkPair', ((begin (V21 = case V0 of {'Prelude.Interfaces.MkMonoid', V19, V20} -> V19 end), fun (V22) -> fun (V23) -> ((V21(V22))(V23)) end end end(V15))(V17)), (V16(V18))} end end end end end end}, fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> case V26 of {'Builtin.MkPair', V28, V29} -> case (V27(V29)) of {'Builtin.MkPair', V30, V31} -> {'Builtin.MkPair', ((begin (V34 = case V0 of {'Prelude.Interfaces.MkMonoid', V32, V33} -> V32 end), fun (V35) -> fun (V36) -> ((V34(V35))(V36)) end end end(V28))(V30)), V31} end end end end end end, fun (V37) -> fun (V38) -> case V38 of {'Builtin.MkPair', V39, V40} -> case V40 of {'Builtin.MkPair', V41, V42} -> {'Builtin.MkPair', ((begin (V45 = case V0 of {'Prelude.Interfaces.MkMonoid', V43, V44} -> V43 end), fun (V46) -> fun (V47) -> ((V45(V46))(V47)) end end end(V39))(V41)), V42} end end end end}.
'dn--un--__Impl_Monad_(Either $e)'() -> {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> case V3 of {'Prelude.Types.Left', V4} -> {'Prelude.Types.Left', V4}; {'Prelude.Types.Right', V5} -> {'Prelude.Types.Right', (V2(V5))} end end end end end, fun (V6) -> fun (V7) -> {'Prelude.Types.Right', V7} end end, fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> case V10 of {'Prelude.Types.Left', V12} -> {'Prelude.Types.Left', V12}; {'Prelude.Types.Right', V13} -> case V11 of {'Prelude.Types.Right', V14} -> {'Prelude.Types.Right', (V13(V14))}; {'Prelude.Types.Left', V15} -> {'Prelude.Types.Left', V15} end end end end end end}, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> ('dn--un-->>=_Monad_(Either $e)'(V18, V19)) end end end end, fun (V20) -> fun (V21) -> ('dn--un--join_Monad_(Either $e)'(V21)) end end}.
'dn--un--__Impl_Functor_Stream'(V0, V1, V2, V3) -> ('dn--un--map_Functor_Stream'(V2, V3)).
'dn--un--__Impl_Functor_Maybe'(V0, V1, V2, V3) -> ('dn--un--map_Functor_Maybe'(V2, V3)).
'dn--un--__Impl_Functor_List'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V2, V3)).
'dn--un--__Impl_Functor_(Pair $a)'(V0, V1, V2, V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> {'Builtin.MkPair', V4, (V2(V5))} end.
'dn--un--__Impl_Functor_(Either $e)'(V0, V1, V2, V3) -> case V3 of {'Prelude.Types.Left', V4} -> {'Prelude.Types.Left', V4}; {'Prelude.Types.Right', V5} -> {'Prelude.Types.Right', (V2(V5))} end.
'dn--un--__Impl_Foldable_Maybe'() -> {'Prelude.Interfaces.MkFoldable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--foldr_Foldable_Maybe'(V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--foldl_Foldable_Maybe'(V7, V8, V9)) end end end end end, fun (V10) -> fun (V11) -> ('dn--un--null_Foldable_Maybe'(V11)) end end, fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> ('dn--un--foldlM_Foldable_Maybe'(V15, V16, V17, V18)) end end end end end end end, fun (V19) -> fun (V20) -> ('dn--un--toList_Foldable_Maybe'(V20)) end end, fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> ('dn--un--foldMap_Foldable_Maybe'(V23, V24, V25)) end end end end end}.
'dn--un--__Impl_Foldable_List'() -> {'Prelude.Interfaces.MkFoldable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--foldr_Foldable_List'(V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--foldl_Foldable_List'(V7, V8, V9)) end end end end end, fun (V10) -> fun (V11) -> ('dn--un--null_Foldable_List'(V11)) end end, fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> ('dn--un--foldlM_Foldable_List'(V15, V16, V17, V18)) end end end end end end end, fun (V19) -> fun (V20) -> V20 end end, fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> ('dn--un--foldMap_Foldable_List'(V23, V24, V25)) end end end end end}.
'dn--un--__Impl_Foldable_(Either $e)'() -> {'Prelude.Interfaces.MkFoldable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--foldr_Foldable_(Either $e)'(V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--foldl_Foldable_(Either $e)'(V7, V8, V9)) end end end end end, fun (V10) -> fun (V11) -> ('dn--un--null_Foldable_(Either $e)'(V11)) end end, fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> ('dn--un--foldlM_Foldable_(Either $e)'(V15, V16, V17, V18)) end end end end end end end, fun (V19) -> fun (V20) -> ('dn--un--toList_Foldable_(Either $e)'(V20)) end end, fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> ('dn--un--foldMap_Foldable_(Either $e)'(V23, V24, V25)) end end end end end}.
'dn--un--__Impl_Eq_Nat'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> case (V0 =:= V1) of 'false' -> 0; _ -> 1 end end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Nat'(V2, V3)) end end}.
'dn--un--__Impl_Eq_(SnocList $a)'(V0) -> {'Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_(SnocList $a)'(V0, V1, V2)) end end, fun (V3) -> fun (V4) -> ('dn--un--/=_Eq_(SnocList $a)'(V0, V3, V4)) end end}.
'dn--un--__Impl_Eq_(Maybe $a)'(V0) -> {'Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_(Maybe $a)'(V0, V1, V2)) end end, fun (V3) -> fun (V4) -> ('dn--un--/=_Eq_(Maybe $a)'(V0, V3, V4)) end end}.
'dn--un--__Impl_Eq_(List $a)'(V0) -> {'Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_(List $a)'(V0, V1, V2)) end end, fun (V3) -> fun (V4) -> ('dn--un--/=_Eq_(List $a)'(V0, V3, V4)) end end}.
'dn--un--__Impl_Eq_((Either $a) $b)'(V0) -> {'Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_((Either $a) $b)'(V0, V1, V2)) end end, fun (V3) -> fun (V4) -> ('dn--un--/=_Eq_((Either $a) $b)'(V0, V3, V4)) end end}.
'dn--un--__Impl_Bitraversable_Pair'() -> {'Prelude.Interfaces.MkBitraversable', {'Prelude.Interfaces.MkBifunctor', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> case V6 of {'Builtin.MkPair', V7, V8} -> {'Builtin.MkPair', (V4(V7)), (V5(V8))} end end end end end end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> case V13 of {'Builtin.MkPair', V14, V15} -> {'Builtin.MkPair', (V12(V14)), V15} end end end end end end, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> case V20 of {'Builtin.MkPair', V21, V22} -> {'Builtin.MkPair', V21, (V19(V22))} end end end end end end}, {'Prelude.Interfaces.MkBifoldable', fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> case V29 of {'Builtin.MkPair', V30, V31} -> ((V26(V30))(((V27(V31))(V28)))) end end end end end end end end, fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> fun (V36) -> fun (V37) -> fun (V38) -> case V38 of {'Builtin.MkPair', V39, V40} -> ((V36(((V35(V37))(V39))))(V40)) end end end end end end end end, fun (V41) -> fun (V42) -> fun (V43) -> 0 end end end}, fun (V44) -> fun (V45) -> fun (V46) -> fun (V47) -> fun (V48) -> fun (V49) -> fun (V50) -> fun (V51) -> fun (V52) -> case V52 of {'Builtin.MkPair', V53, V54} -> case V49 of {'Prelude.Interfaces.MkApplicative', V55, V56, V57} -> ((((V57('erased'))('erased'))(case V49 of {'Prelude.Interfaces.MkApplicative', V58, V59, V60} -> ((((V60('erased'))('erased'))(case V49 of {'Prelude.Interfaces.MkApplicative', V61, V62, V63} -> ((V62('erased'))(fun (V64) -> fun (V65) -> {'Builtin.MkPair', V64, V65} end end)) end))((V50(V53)))) end))((V51(V54)))) end end end end end end end end end end end}.
'dn--un--__Impl_Bitraversable_Either'() -> {'Prelude.Interfaces.MkBitraversable', {'Prelude.Interfaces.MkBifunctor', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> case V6 of {'Prelude.Types.Left', V7} -> {'Prelude.Types.Left', (V4(V7))}; {'Prelude.Types.Right', V8} -> {'Prelude.Types.Right', (V5(V8))} end end end end end end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> case V13 of {'Prelude.Types.Left', V14} -> {'Prelude.Types.Left', (V12(V14))}; {'Prelude.Types.Right', V15} -> {'Prelude.Types.Right', V15} end end end end end end, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> case V20 of {'Prelude.Types.Left', V21} -> {'Prelude.Types.Left', V21}; {'Prelude.Types.Right', V22} -> {'Prelude.Types.Right', (V19(V22))} end end end end end end}, {'Prelude.Interfaces.MkBifoldable', fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> case V29 of {'Prelude.Types.Left', V30} -> ((V26(V30))(V28)); {'Prelude.Types.Right', V31} -> ((V27(V31))(V28)) end end end end end end end end, fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> fun (V36) -> fun (V37) -> fun (V38) -> case V38 of {'Prelude.Types.Left', V39} -> ((V35(V37))(V39)); {'Prelude.Types.Right', V40} -> ((V36(V37))(V40)) end end end end end end end end, fun (V41) -> fun (V42) -> fun (V43) -> 0 end end end}, fun (V44) -> fun (V45) -> fun (V46) -> fun (V47) -> fun (V48) -> fun (V49) -> fun (V50) -> fun (V51) -> fun (V52) -> case V52 of {'Prelude.Types.Left', V53} -> ((begin (V58 = case V49 of {'Prelude.Interfaces.MkApplicative', V55, V56, V57} -> V55 end), fun (V59) -> fun (V60) -> ((((V58('erased'))('erased'))(V59))(V60)) end end end(fun (V54) -> {'Prelude.Types.Left', V54} end))((V50(V53)))); {'Prelude.Types.Right', V61} -> ((begin (V66 = case V49 of {'Prelude.Interfaces.MkApplicative', V63, V64, V65} -> V63 end), fun (V67) -> fun (V68) -> ((((V66('erased'))('erased'))(V67))(V68)) end end end(fun (V62) -> {'Prelude.Types.Right', V62} end))((V51(V61)))) end end end end end end end end end end}.
'dn--un--__Impl_Bifunctor_Pair'() -> {'Prelude.Interfaces.MkBifunctor', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> case V6 of {'Builtin.MkPair', V7, V8} -> {'Builtin.MkPair', (V4(V7)), (V5(V8))} end end end end end end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> case V13 of {'Builtin.MkPair', V14, V15} -> {'Builtin.MkPair', (V12(V14)), V15} end end end end end end, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> case V20 of {'Builtin.MkPair', V21, V22} -> {'Builtin.MkPair', V21, (V19(V22))} end end end end end end}.
'dn--un--__Impl_Bifunctor_Either'() -> {'Prelude.Interfaces.MkBifunctor', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> case V6 of {'Prelude.Types.Left', V7} -> {'Prelude.Types.Left', (V4(V7))}; {'Prelude.Types.Right', V8} -> {'Prelude.Types.Right', (V5(V8))} end end end end end end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> case V13 of {'Prelude.Types.Left', V14} -> {'Prelude.Types.Left', (V12(V14))}; {'Prelude.Types.Right', V15} -> {'Prelude.Types.Right', V15} end end end end end end, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> case V20 of {'Prelude.Types.Left', V21} -> {'Prelude.Types.Left', V21}; {'Prelude.Types.Right', V22} -> {'Prelude.Types.Right', (V19(V22))} end end end end end end}.
'dn--un--__Impl_Bifoldable_Pair'() -> {'Prelude.Interfaces.MkBifoldable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> case V6 of {'Builtin.MkPair', V7, V8} -> ((V3(V7))(((V4(V8))(V5)))) end end end end end end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> case V15 of {'Builtin.MkPair', V16, V17} -> ((V13(((V12(V14))(V16))))(V17)) end end end end end end end end, fun (V18) -> fun (V19) -> fun (V20) -> 0 end end end}.
'dn--un--__Impl_Bifoldable_Either'() -> {'Prelude.Interfaces.MkBifoldable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> case V6 of {'Prelude.Types.Left', V7} -> ((V3(V7))(V5)); {'Prelude.Types.Right', V8} -> ((V4(V8))(V5)) end end end end end end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> case V15 of {'Prelude.Types.Left', V16} -> ((V12(V14))(V16)); {'Prelude.Types.Right', V17} -> ((V13(V14))(V17)) end end end end end end end end, fun (V18) -> fun (V19) -> fun (V20) -> 0 end end end}.
'dn--un--__Impl_Applicative_Maybe'() -> {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_Maybe'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> {'Prelude.Types.Just', V5} end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_Maybe'(V8, V9)) end end end end}.
'dn--un--__Impl_Applicative_List'() -> {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative_List'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_List'(V8, V9)) end end end end}.
'dn--un--__Impl_Applicative_(Pair $a)'(V0) -> {'Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> case V4 of {'Builtin.MkPair', V5, V6} -> {'Builtin.MkPair', V5, (V3(V6))} end end end end end, fun (V7) -> fun (V8) -> {'Builtin.MkPair', case V0 of {'Prelude.Interfaces.MkMonoid', V9, V10} -> V10 end, V8} end end, fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> case V13 of {'Builtin.MkPair', V15, V16} -> case V14 of {'Builtin.MkPair', V17, V18} -> {'Builtin.MkPair', ((begin (V21 = case V0 of {'Prelude.Interfaces.MkMonoid', V19, V20} -> V19 end), fun (V22) -> fun (V23) -> ((V21(V22))(V23)) end end end(V15))(V17)), (V16(V18))} end end end end end end}.
'dn--un--__Impl_Applicative_(Either $e)'() -> {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> case V3 of {'Prelude.Types.Left', V4} -> {'Prelude.Types.Left', V4}; {'Prelude.Types.Right', V5} -> {'Prelude.Types.Right', (V2(V5))} end end end end end, fun (V6) -> fun (V7) -> {'Prelude.Types.Right', V7} end end, fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> case V10 of {'Prelude.Types.Left', V12} -> {'Prelude.Types.Left', V12}; {'Prelude.Types.Right', V13} -> case V11 of {'Prelude.Types.Right', V14} -> {'Prelude.Types.Right', (V13(V14))}; {'Prelude.Types.Left', V15} -> {'Prelude.Types.Left', V15} end end end end end end}.
'dn--un--__Impl_Alternative_Maybe'() -> {'Prelude.Interfaces.MkAlternative', {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_Maybe'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> {'Prelude.Types.Just', V5} end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_Maybe'(V8, V9)) end end end end}, fun (V10) -> {'Prelude.Types.Nothing'} end, fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--<|>_Alternative_Maybe'(V12, V13)) end end end}.
'dn--un--__Impl_Alternative_List'() -> {'Prelude.Interfaces.MkAlternative', {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative_List'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_List'(V8, V9)) end end end end}, fun (V10) -> [] end, fun (V11) -> fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(V12, (V13()))) end end end}.
'dn--un-->_Ord_Nat'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Integer'(V0, V1)), 2)).
'dn--un-->_Ord_(SnocList $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(SnocList $a)'(V0, V1, V2)), 2)).
'dn--un-->_Ord_(Maybe $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(Maybe $a)'(V0, V1, V2)), 2)).
'dn--un-->_Ord_(List $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(List $a)'(V0, V1, V2)), 2)).
'dn--un-->_Ord_((Either $a) $b)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_((Either $a) $b)'(V0, V1, V2)), 2)).
'dn--un-->>=_Monad_Maybe'(V0, V1) -> case V0 of {'Prelude.Types.Nothing'} -> {'Prelude.Types.Nothing'}; {'Prelude.Types.Just', V2} -> (V1(V2)) end.
'dn--un-->>=_Monad_List'(V0, V1) -> ('un--listBind'(V0, V1)).
'dn--un-->>=_Monad_(Pair $a)'(V0, V1, V2) -> case V1 of {'Builtin.MkPair', V3, V4} -> case (V2(V4)) of {'Builtin.MkPair', V5, V6} -> {'Builtin.MkPair', ((begin (V9 = case V0 of {'Prelude.Interfaces.MkMonoid', V7, V8} -> V7 end), fun (V10) -> fun (V11) -> ((V9(V10))(V11)) end end end(V3))(V5)), V6} end end.
'dn--un-->>=_Monad_(Either $e)'(V0, V1) -> case V0 of {'Prelude.Types.Left', V2} -> {'Prelude.Types.Left', V2}; {'Prelude.Types.Right', V3} -> (V1(V3)) end.
'dn--un-->=_Ord_Nat'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Integer'(V0, V1)), 0)).
'dn--un-->=_Ord_(SnocList $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(SnocList $a)'(V0, V1, V2)), 0)).
'dn--un-->=_Ord_(Maybe $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(Maybe $a)'(V0, V1, V2)), 0)).
'dn--un-->=_Ord_(List $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(List $a)'(V0, V1, V2)), 0)).
'dn--un-->=_Ord_((Either $a) $b)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_((Either $a) $b)'(V0, V1, V2)), 0)).
'dn--un--==_Eq_Nat'(V0, V1) -> case (V0 =:= V1) of 'false' -> 0; _ -> 1 end.
'dn--un--==_Eq_(SnocList $a)'(V0, V1, V2) -> case V1 of {'Prelude.Basics.Lin'} -> case V2 of {'Prelude.Basics.Lin'} -> 1; _ -> 0 end; {'Prelude.Basics.:<', V3, V4} -> case V2 of {'Prelude.Basics.:<', V5, V6} -> case case V0 of {'Prelude.EqOrd.MkEq', V7, V8} -> ((V7(V4))(V6)) end of 1 -> ('dn--un--==_Eq_(SnocList $a)'(V0, V3, V5)); 0 -> 0 end; _ -> 0 end; _ -> 0 end.
'dn--un--==_Eq_(Maybe $a)'(V0, V1, V2) -> case V1 of {'Prelude.Types.Nothing'} -> case V2 of {'Prelude.Types.Nothing'} -> 1; {'Prelude.Types.Just', V3} -> 0 end; {'Prelude.Types.Just', V4} -> case V2 of {'Prelude.Types.Nothing'} -> 0; {'Prelude.Types.Just', V5} -> case V0 of {'Prelude.EqOrd.MkEq', V6, V7} -> ((V6(V4))(V5)) end end end.
'dn--un--==_Eq_(List $a)'(V0, V1, V2) -> case V1 of [] -> case V2 of [] -> 1; _ -> 0 end; [E0 | E1] -> (fun (V3, V4) -> case V2 of [E2 | E3] -> (fun (V5, V6) -> case case V0 of {'Prelude.EqOrd.MkEq', V7, V8} -> ((V7(V3))(V5)) end of 1 -> ('dn--un--==_Eq_(List $a)'(V0, V4, V6)); 0 -> 0 end end(E2, E3)); _ -> 0 end end(E0, E1)); _ -> 0 end.
'dn--un--==_Eq_((Either $a) $b)'(V0, V1, V2) -> case V1 of {'Prelude.Types.Left', V3} -> case V2 of {'Prelude.Types.Left', V4} -> case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.EqOrd.MkEq', V5, V6} -> ((V5(V3))(V4)) end; _ -> 0 end; {'Prelude.Types.Right', V7} -> case V2 of {'Prelude.Types.Right', V8} -> case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Prelude.EqOrd.MkEq', V9, V10} -> ((V9(V7))(V8)) end; _ -> 0 end; _ -> 0 end.
'dn--un--<|>_Alternative_Maybe'(V0, V1) -> case V0 of {'Prelude.Types.Just', V2} -> {'Prelude.Types.Just', V2}; {'Prelude.Types.Nothing'} -> (V1()) end.
'dn--un--<|>_Alternative_List'(V0, V1) -> ('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(V0, (V1()))).
'dn--un--<_Ord_Nat'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Integer'(V0, V1)), 0)).
'dn--un--<_Ord_(SnocList $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(SnocList $a)'(V0, V1, V2)), 0)).
'dn--un--<_Ord_(Maybe $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(Maybe $a)'(V0, V1, V2)), 0)).
'dn--un--<_Ord_(List $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(List $a)'(V0, V1, V2)), 0)).
'dn--un--<_Ord_((Either $a) $b)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_((Either $a) $b)'(V0, V1, V2)), 0)).
'dn--un--<=_Ord_Nat'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Integer'(V0, V1)), 2)).
'dn--un--<=_Ord_(SnocList $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(SnocList $a)'(V0, V1, V2)), 2)).
'dn--un--<=_Ord_(Maybe $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(Maybe $a)'(V0, V1, V2)), 2)).
'dn--un--<=_Ord_(List $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(List $a)'(V0, V1, V2)), 2)).
'dn--un--<=_Ord_((Either $a) $b)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_((Either $a) $b)'(V0, V1, V2)), 2)).
'dn--un--<+>_Semigroup_String'(V0, V1) -> <<V0/binary, V1/binary>>.
'dn--un--<+>_Semigroup_(Maybe $a)'(V0, V1) -> case V0 of {'Prelude.Types.Nothing'} -> V1; {'Prelude.Types.Just', V2} -> {'Prelude.Types.Just', V2} end.
'dn--un--<+>_Semigroup_(List $a)'(V0, V1) -> ('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(V0, V1)).
'dn--un--<*>_Applicative_Maybe'(V0, V1) -> case V0 of {'Prelude.Types.Just', V2} -> case V1 of {'Prelude.Types.Just', V3} -> {'Prelude.Types.Just', (V2(V3))}; _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end.
'dn--un--<*>_Applicative_List'(V0, V1) -> ('un--listBind'(V0, fun (V2) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V2, V1)) end)).
'dn--un--<*>_Applicative_(Pair $a)'(V0, V1, V2) -> case V1 of {'Builtin.MkPair', V3, V4} -> case V2 of {'Builtin.MkPair', V5, V6} -> {'Builtin.MkPair', ((begin (V9 = case V0 of {'Prelude.Interfaces.MkMonoid', V7, V8} -> V7 end), fun (V10) -> fun (V11) -> ((V9(V10))(V11)) end end end(V3))(V5)), (V4(V6))} end end.
'dn--un--<*>_Applicative_(Either $e)'(V0, V1) -> case V0 of {'Prelude.Types.Left', V2} -> {'Prelude.Types.Left', V2}; {'Prelude.Types.Right', V3} -> case V1 of {'Prelude.Types.Right', V4} -> {'Prelude.Types.Right', (V3(V4))}; {'Prelude.Types.Left', V5} -> {'Prelude.Types.Left', V5} end end.
'dn--un--/=_Eq_Nat'(V0, V1) -> case case (V0 =:= V1) of 'false' -> 0; _ -> 1 end of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_(SnocList $a)'(V0, V1, V2) -> case ('dn--un--==_Eq_(SnocList $a)'(V0, V1, V2)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_(Maybe $a)'(V0, V1, V2) -> case ('dn--un--==_Eq_(Maybe $a)'(V0, V1, V2)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_(List $a)'(V0, V1, V2) -> case ('dn--un--==_Eq_(List $a)'(V0, V1, V2)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_((Either $a) $b)'(V0, V1, V2) -> case ('dn--un--==_Eq_((Either $a) $b)'(V0, V1, V2)) of 1 -> 0; 0 -> 1 end.
'dn--un--+_Num_Nat'(V0, V1) -> (V0 + V1).
'dn--un--*_Num_Nat'(V0, V1) -> (V0 * V1).
'un--whenJust'(V0, V1, V2) -> case V1 of {'Prelude.Types.Just', V3} -> (V2(V3)); {'Prelude.Types.Nothing'} -> case V0 of {'Prelude.Interfaces.MkApplicative', V4, V5, V6} -> ((V5('erased'))({'Builtin.MkUnit'})) end end.
'un--viaEquivalence'(V0, V1) -> case V1 of {'Prelude.Types.Yes', V2} -> {'Prelude.Types.Yes', case V0 of {'Prelude.Types.MkEquivalence', V3, V4} -> (V3(V2)) end}; {'Prelude.Types.No', V5} -> {'Prelude.Types.No', fun (V6) -> (V5(case V0 of {'Prelude.Types.MkEquivalence', V7, V8} -> (V8(V6)) end)) end} end.
'un--unpack'(V0) -> case ('un--strUncons'(V0)) of {'Prelude.Types.Nothing'} -> []; {'Prelude.Types.Just', V1} -> case V1 of {'Builtin.MkPair', V2, V3} -> [V2 | ('un--unpack'(V3))] end end.
'un--toUpper'(V0) -> case ('un--isLower'(V0)) of 1 -> case begin (V1 = (case V0 of E1 when ((erlang:'is_integer'(E1)) andalso (((E1 >= 0) andalso (E1 =< 55295)) orelse ((E1 >= 57344) andalso (E1 =< 1114111)))) -> E1; _ -> 65533 end - 32)), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end; 0 -> V0 end.
'un--toLower'(V0) -> case ('un--isUpper'(V0)) of 1 -> case begin (V1 = (case V0 of E1 when ((erlang:'is_integer'(E1)) andalso (((E1 >= 0) andalso (E1 =< 55295)) orelse ((E1 >= 57344) andalso (E1 =< 1114111)))) -> E1; _ -> 65533 end + 32)), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end; 0 -> V0 end.
'un--tanh'(V0) -> (('un--sinh'(V0)) / ('un--cosh'(V0))).
'un--tan'(V0) -> ('math':'tan'(V0)).
'un--takeUntil'(V0, V1) -> case V1 of {'Prelude.Types.Stream.::', V2, V3} -> case (V0(V2)) of 1 -> [V2 | []]; 0 -> [V2 | ('un--takeUntil'(V0, (V3())))] end end.
'un--takeBefore'(V0, V1) -> case V1 of {'Prelude.Types.Stream.::', V2, V3} -> case (V0(V2)) of 1 -> []; 0 -> [V2 | ('un--takeBefore'(V0, (V3())))] end end.
'un--take'(V0, V1) -> case V0 of 0 -> []; _ -> begin (V2 = (V0 - 1)), case V1 of {'Prelude.Types.Stream.::', V3, V4} -> [V3 | ('un--take'(V2, (V4())))] end end end.
'un--tail'(V0) -> case V0 of {'Prelude.Types.Stream.::', V1, V2} -> (V2()) end.
'un--substr'(V0, V1, V2) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Integer'(V0, ('Idris.Idris2.Prelude.Types.String':'un--length'(V2)))) of 1 -> ('string':'slice'(V2, begin (V3 = V0), case ((V3 band 9223372036854775808) =/= 0) of 'true' -> (V3 bor -9223372036854775808); _ -> (V3 band 9223372036854775807) end end, begin (V4 = V1), case ((V4 band 9223372036854775808) =/= 0) of 'true' -> (V4 bor -9223372036854775808); _ -> (V4 band 9223372036854775807) end end)); 0 -> <<""/utf8>> end.
'un--strUncons'(V0) -> case V0 of <<""/utf8>> -> {'Prelude.Types.Nothing'}; _ -> {'Prelude.Types.Just', {'Builtin.MkPair', ('erlang':'hd'(('string':'next_grapheme'(V0)))), case ('string':'next_grapheme'(V0)) of [E0 | E1] when (erlang:'is_binary'(E1)) -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> <<""/utf8>> end}} end.
'un--strCons'(V0, V1) -> <<('unicode':'characters_to_binary'([V0 | []]))/binary, V1/binary>>.
'un--sqrt'(V0) -> ('math':'sqrt'(V0)).
'un--sinh'(V0) -> ((('math':'pow'(2.718281828459045, V0)) - ('math':'pow'(2.718281828459045, ('erlang':'-'(V0))))) / 2.0).
'un--sin'(V0) -> ('math':'sin'(V0)).
'un--reverse'(V0) -> ('unicode':'characters_to_binary'(('string':'reverse'(V0)))).
'un--rangeFromTo'(V0, V1, V2) -> case V0 of {'Prelude.Types.MkRange', V3, V4, V5, V6} -> ((V3(V1))(V2)) end.
'un--rangeFromThenTo'(V0, V1, V2, V3) -> case V0 of {'Prelude.Types.MkRange', V4, V5, V6, V7} -> (((V5(V1))(V2))(V3)) end.
'un--rangeFromThen'(V0, V1, V2) -> case V0 of {'Prelude.Types.MkRange', V3, V4, V5, V6} -> ((V6(V1))(V2)) end.
'un--rangeFrom'(V0, V1) -> case V0 of {'Prelude.Types.MkRange', V2, V3, V4, V5} -> (V4(V1)) end.
'un--prim__integerToNat'(V0) -> case case case (0 =< V0) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end of 1 -> V0; 0 -> 0 end.
'un--pow'(V0, V1) -> ('math':'pow'(V0, V1)).
'un--plus'(V0, V1) -> case V0 of 0 -> V1; _ -> begin (V2 = (V0 - 1)), ((V2 + V1) + 1) end end.
'un--pi'() -> 3.141592653589793.
'un--pack'(V0) -> case V0 of [] -> <<""/utf8>>; [E0 | E1] -> (fun (V1, V2) -> <<('unicode':'characters_to_binary'([V1 | []]))/binary, ('un--pack'(V2))/binary>> end(E0, E1)) end.
'un--ord'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'un--natToInteger'(V0) -> V0.
'un--mult'(V0, V1) -> case V0 of 0 -> 0; _ -> begin (V2 = (V0 - 1)), (V1 + (V2 * V1)) end end.
'un--minus'(V0, V1) -> case V0 of 0 -> 0; _ -> case V1 of 0 -> V0; _ -> case V0 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V3 = (V1 - 1)), ('un--prim__integerToNat'((V2 - V3))) end end end end end end.
'un--maybe'(V0, V1, V2) -> case V2 of {'Prelude.Types.Nothing'} -> (V0()); {'Prelude.Types.Just', V3} -> ((V1())(V3)) end.
'un--log'(V0) -> ('math':'log'(V0)).
'un--listBindOnto'(V0, V1, V2) -> case V2 of [] -> ('Idris.Idris2.Prelude.Types.List':'un--reverse'(V1)); [E0 | E1] -> (fun (V3, V4) -> ('un--listBindOnto'(V0, ('Idris.Idris2.Prelude.Types.List':'un--reverseOnto'(V1, (V0(V3)))), V4)) end(E0, E1)) end.
'un--listBind'(V0, V1) -> ('un--listBindOnto'(V1, [], V0)).
'un--isUpper'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord_Char'(V0, $A)) of 1 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord_Char'(V0, $Z)); 0 -> 0 end.
'un--isSpace'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V0, $ )) of 1 -> 1; 0 -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V0, $\x{9})) of 1 -> 1; 0 -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V0, $\x{d})) of 1 -> 1; 0 -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V0, $\x{a})) of 1 -> 1; 0 -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V0, $\x{c})) of 1 -> 1; 0 -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V0, $\x{b})) of 1 -> 1; 0 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V0, $\x{a0})) end end end end end end.
'un--isOctDigit'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord_Char'(V0, $0)) of 1 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord_Char'(V0, $7)); 0 -> 0 end.
'un--isNL'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V0, $\x{d})) of 1 -> 1; 0 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V0, $\x{a})) end.
'un--isLower'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord_Char'(V0, $a)) of 1 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord_Char'(V0, $z)); 0 -> 0 end.
'un--isHexDigit'(V0) -> ('un--elem'({'Prelude.Interfaces.MkFoldable', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('dn--un--foldr_Foldable_List'(V3, V4, V5)) end end end end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('dn--un--foldl_Foldable_List'(V8, V9, V10)) end end end end end, fun (V11) -> fun (V12) -> ('dn--un--null_Foldable_List'(V12)) end end, fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> ('dn--un--foldlM_Foldable_List'(V16, V17, V18, V19)) end end end end end end end, fun (V20) -> fun (V21) -> V21 end end, fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> ('dn--un--foldMap_Foldable_List'(V24, V25, V26)) end end end end end}, {'Prelude.EqOrd.MkEq', fun (V27) -> fun (V28) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V27, V28)) end end, fun (V29) -> fun (V30) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Char'(V29, V30)) end end}, ('un--toUpper'(V0)), ('nested--9896-9080--in--un--hexChars'(V0)))).
'un--isDigit'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord_Char'(V0, $0)) of 1 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord_Char'(V0, $9)); 0 -> 0 end.
'un--isControl'(V0) -> case case ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord_Char'(V0, $\x{0})) of 1 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord_Char'(V0, $\x{1f})); 0 -> 0 end of 1 -> 1; 0 -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord_Char'(V0, $\x{7f})) of 1 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord_Char'(V0, $\x{9f})); 0 -> 0 end end.
'un--isAlphaNum'(V0) -> case ('un--isDigit'(V0)) of 1 -> 1; 0 -> ('un--isAlpha'(V0)) end.
'un--isAlpha'(V0) -> case ('un--isUpper'(V0)) of 1 -> 1; 0 -> ('un--isLower'(V0)) end.
'un--integerToNat'(V0) -> case V0 of 0 -> 0; _ -> case case case (V0 =< 0) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end of 1 -> 0; 0 -> (('un--prim__integerToNat'((V0 - 1))) + 1) end end.
'un--head'(V0) -> case V0 of {'Prelude.Types.Stream.::', V1, V2} -> V1 end.
'un--getAt'(V0, V1) -> case V0 of 0 -> case V1 of [E2 | E3] -> (fun (V2, V3) -> {'Prelude.Types.Just', V2} end(E2, E3)); _ -> case V1 of [] -> {'Prelude.Types.Nothing'} end end; _ -> begin (V4 = (V0 - 1)), case V1 of [E0 | E1] -> (fun (V5, V6) -> ('un--getAt'(V4, V6)) end(E0, E1)); _ -> case V1 of [] -> {'Prelude.Types.Nothing'} end end end end.
'un--floor'(V0) -> ('erlang':'floor'(V0)).
'un--fastUnpack'(V0) -> ('string':'to_graphemes'(V0)).
'un--fastPack'(V0) -> ('unicode':'characters_to_binary'(V0)).
'un--fastConcat'(V0) -> ('unicode':'characters_to_binary'(V0)).
'un--exp'(V0) -> ('math':'pow'(2.718281828459045, V0)).
'un--euler'() -> 2.718281828459045.
'un--equalNat'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> 1; _ -> 0 end; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> 0; _ -> begin (V3 = (V1 - 1)), case (V2 =:= V3) of 'false' -> 0; _ -> 1 end end end end end.
'un--elemBy'(V0, V1, V2, V3) -> case V0 of {'Prelude.Interfaces.MkFoldable', V4, V5, V6, V7, V8, V9} -> (((((V9('erased'))('erased'))({'Prelude.Interfaces.MkMonoid', fun (V10) -> fun (V11) -> ('Idris.Idris2.Prelude.Interfaces.Bool.Semigroup':'dn--un--<+>_Semigroup_AnyBool'(V10, V11)) end end, 0}))((V1(V2))))(V3)) end.
'un--elem'(V0, V1, V2, V3) -> ('un--elemBy'(V0, fun (V4) -> fun (V5) -> case V1 of {'Prelude.EqOrd.MkEq', V6, V7} -> ((V6(V4))(V5)) end end end, V2, V3)).
'un--either'(V0, V1, V2) -> case V2 of {'Prelude.Types.Left', V3} -> ((V0())(V3)); {'Prelude.Types.Right', V4} -> ((V1())(V4)) end.
'un--countFrom'(V0, V1) -> {'Prelude.Types.Stream.::', V0, fun () -> ('un--countFrom'((V1(V0)), V1)) end}.
'un--count'(V0, V1, V2) -> case V0 of {'Prelude.Interfaces.MkFoldable', V3, V4, V5, V6, V7, V8} -> (((((V8('erased'))('erased'))({'Prelude.Interfaces.MkMonoid', fun (V10) -> fun (V11) -> ('Idris.Idris2.Prelude.Interfaces.Num.Semigroup':'dn--un--<+>_Semigroup_Additive$a'({'Prelude.Num.MkNum', fun (V12) -> fun (V13) -> (V12 + V13) end end, fun (V14) -> fun (V15) -> (V14 * V15) end end, fun (V16) -> ('un--prim__integerToNat'(V16)) end}, V10, V11)) end end, ('Idris.Idris2.Prelude.Interfaces.Num.Monoid':'dn--un--neutral_Monoid_Additive$a'({'Prelude.Num.MkNum', fun (V17) -> fun (V18) -> (V17 + V18) end end, fun (V19) -> fun (V20) -> (V19 * V20) end end, fun (V21) -> ('un--prim__integerToNat'(V21)) end}))}))(fun (V9) -> case (V1(V9)) of 1 -> 1; 0 -> 0 end end))(V2)) end.
'un--cosh'(V0) -> ((('math':'pow'(2.718281828459045, V0)) + ('math':'pow'(2.718281828459045, ('erlang':'-'(V0))))) / 2.0).
'un--cos'(V0) -> ('math':'cos'(V0)).
'un--compareNat'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> 1; _ -> 0 end; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> 2; _ -> begin (V3 = (V1 - 1)), ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Integer'(V2, V3)) end end end end.
'un--chr'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'un--ceiling'(V0) -> ('erlang':'ceil'(V0)).
'un--atan'(V0) -> ('math':'atan'(V0)).
'un--asin'(V0) -> ('math':'asin'(V0)).
'un--acos'(V0) -> ('math':'acos'(V0)).
