-module('Idris.Idris2.Prelude.Types').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--rangeFromThen-5076'/5,
  'case--case block in case block in rangeFromThenTo-5004'/6,
  'case--case block in rangeFromThenTo-4939'/6,
  'case--rangeFromThenTo-4876'/6,
  'case--case block in rangeFromTo-4807'/5,
  'case--rangeFromTo-4754'/5,
  'case--rangeFromThen-4682'/3,
  'case--case block in case block in rangeFromThenTo-4634'/4,
  'case--case block in rangeFromThenTo-4620'/4,
  'case--case block in rangeFromThenTo-4580'/4,
  'case--rangeFromThenTo-4566'/4,
  'case--case block in rangeFromTo-4531'/3,
  'case--rangeFromTo-4503'/3,
  'case--takeBefore-4348'/5,
  'case--takeUntil-4297'/5,
  'case--toLower-3732'/2,
  'case--toUpper-3718'/2,
  'case--unpack-3613'/2,
  'case--substr-3564'/4,
  'case--compare-2874'/7,
  'case--max-2765'/5,
  'case--min-2737'/5,
  'case--max-1879'/6,
  'case--min-1844'/6,
  'case--max-1021'/5,
  'case--min-993'/5,
  'case--max-613'/3,
  'case--min-599'/3,
  'case--integerToNat-488'/2,
  'nested--3849-3744--in--un--hexChars'/1,
  'dn--un--uninhabited_Uninhabited__(|((=== Nothing) (Just $x)),((~=~ Nothing) (Just $x))|)'/3,
  'dn--un--uninhabited_Uninhabited__(|((=== (Just $x)) Nothing),((~=~ (Just $x)) Nothing)|)'/3,
  'dn--un--traverse_Traversable__Maybe'/6,
  'dn--un--traverse_Traversable__List'/6,
  'dn--un--traverse_Traversable__(Either $e)'/7,
  'dn--un--rangeFrom_Range__Nat'/1,
  'dn--un--rangeFrom_Range__$a'/3,
  'dn--un--rangeFromTo_Range__Nat'/2,
  'dn--un--rangeFromTo_Range__$a'/4,
  'dn--un--rangeFromThen_Range__Nat'/2,
  'dn--un--rangeFromThen_Range__$a'/4,
  'dn--un--rangeFromThenTo_Range__Nat'/3,
  'dn--un--rangeFromThenTo_Range__$a'/5,
  'dn--un--pure_Applicative__Maybe'/2,
  'dn--un--pure_Applicative__List'/2,
  'dn--un--pure_Applicative__(Either $e)'/3,
  'dn--un--neutral_Monoid__String'/0,
  'dn--un--neutral_Monoid__(Maybe $a)'/1,
  'dn--un--neutral_Monoid__(List $a)'/1,
  'dn--un--min_Ord__Nat'/2,
  'dn--un--min_Ord__(Maybe $a)'/4,
  'dn--un--min_Ord__(List $a)'/4,
  'dn--un--min_Ord__((Either $a) $b)'/5,
  'dn--un--max_Ord__Nat'/2,
  'dn--un--max_Ord__(Maybe $a)'/4,
  'dn--un--max_Ord__(List $a)'/4,
  'dn--un--max_Ord__((Either $a) $b)'/5,
  'dn--un--map_Functor__Stream'/4,
  'dn--un--map_Functor__Maybe'/4,
  'dn--un--map_Functor__List'/4,
  'dn--un--map_Functor__(Pair $a)'/5,
  'dn--un--map_Functor__(Either $e)'/5,
  'dn--un--join_Monad__Maybe'/2,
  'dn--un--join_Monad__List'/2,
  'dn--un--join_Monad__(Either $e)'/3,
  'dn--un--fromInteger_Num__Nat'/1,
  'dn--un--foldr_Foldable__Maybe'/5,
  'dn--un--foldr_Foldable__List'/5,
  'dn--un--foldr_Foldable__(Either $e)'/6,
  'dn--un--foldl_Foldable__Maybe'/5,
  'dn--un--foldl_Foldable__List'/5,
  'dn--un--foldl_Foldable__(Either $e)'/6,
  'dn--un--empty_Alternative__Maybe'/1,
  'dn--un--empty_Alternative__List'/1,
  'dn--un--compare_Ord__Nat'/2,
  'dn--un--compare_Ord__(Maybe $a)'/4,
  'dn--un--compare_Ord__(List $a)'/4,
  'dn--un--compare_Ord__((Either $a) $b)'/5,
  'dn--un--cast_Cast__String_Integer'/1,
  'dn--un--cast_Cast__String_Int'/1,
  'dn--un--cast_Cast__String_Double'/1,
  'dn--un--cast_Cast__Nat_Integer'/1,
  'dn--un--cast_Cast__Nat_Int'/1,
  'dn--un--cast_Cast__Nat_Double'/1,
  'dn--un--cast_Cast__Integer_String'/1,
  'dn--un--cast_Cast__Integer_Int'/1,
  'dn--un--cast_Cast__Integer_Double'/1,
  'dn--un--cast_Cast__Integer_Bits8'/1,
  'dn--un--cast_Cast__Integer_Bits64'/1,
  'dn--un--cast_Cast__Integer_Bits32'/1,
  'dn--un--cast_Cast__Integer_Bits16'/1,
  'dn--un--cast_Cast__Int_String'/1,
  'dn--un--cast_Cast__Int_Integer'/1,
  'dn--un--cast_Cast__Int_Double'/1,
  'dn--un--cast_Cast__Int_Char'/1,
  'dn--un--cast_Cast__Int_Bits8'/1,
  'dn--un--cast_Cast__Int_Bits64'/1,
  'dn--un--cast_Cast__Int_Bits32'/1,
  'dn--un--cast_Cast__Int_Bits16'/1,
  'dn--un--cast_Cast__Double_String'/1,
  'dn--un--cast_Cast__Double_Integer'/1,
  'dn--un--cast_Cast__Double_Int'/1,
  'dn--un--cast_Cast__Char_String'/1,
  'dn--un--cast_Cast__Char_Integer'/1,
  'dn--un--cast_Cast__Char_Int'/1,
  'dn--un--cast_Cast__Bits8_Integer'/1,
  'dn--un--cast_Cast__Bits8_Int'/1,
  'dn--un--cast_Cast__Bits8_Bits64'/1,
  'dn--un--cast_Cast__Bits8_Bits32'/1,
  'dn--un--cast_Cast__Bits8_Bits16'/1,
  'dn--un--cast_Cast__Bits64_Integer'/1,
  'dn--un--cast_Cast__Bits64_Int'/1,
  'dn--un--cast_Cast__Bits64_Bits8'/1,
  'dn--un--cast_Cast__Bits64_Bits32'/1,
  'dn--un--cast_Cast__Bits64_Bits16'/1,
  'dn--un--cast_Cast__Bits32_Integer'/1,
  'dn--un--cast_Cast__Bits32_Int'/1,
  'dn--un--cast_Cast__Bits32_Bits8'/1,
  'dn--un--cast_Cast__Bits32_Bits64'/1,
  'dn--un--cast_Cast__Bits32_Bits16'/1,
  'dn--un--cast_Cast__Bits16_Integer'/1,
  'dn--un--cast_Cast__Bits16_Int'/1,
  'dn--un--cast_Cast__Bits16_Bits8'/1,
  'dn--un--cast_Cast__Bits16_Bits64'/1,
  'dn--un--cast_Cast__Bits16_Bits32'/1,
  'dn--un--__Impl_Uninhabited_(|((=== Nothing) (Just $x)),((~=~ Nothing) (Just $x))|)'/3,
  'dn--un--__Impl_Uninhabited_(|((=== (Just $x)) Nothing),((~=~ (Just $x)) Nothing)|)'/3,
  'dn--un--__Impl_Traversable_Maybe'/0,
  'dn--un--__Impl_Traversable_List'/0,
  'dn--un--__Impl_Traversable_(Either $e)'/1,
  'dn--un--__Impl_Semigroup_String'/2,
  'dn--un--__Impl_Semigroup_(Maybe $a)'/3,
  'dn--un--__Impl_Semigroup_(List $a)'/3,
  'dn--un--__Impl_Range_Nat'/0,
  'dn--un--__Impl_Range_$a'/2,
  'dn--un--__Impl_Ord_Nat'/0,
  'dn--un--__Impl_Ord_(Maybe $a)'/2,
  'dn--un--__Impl_Ord_(List $a)'/2,
  'dn--un--__Impl_Ord_((Either $a) $b)'/3,
  'dn--un--__Impl_Num_Nat'/0,
  'dn--un--__Impl_Monoid_String'/0,
  'dn--un--__Impl_Monoid_(Maybe $a)'/1,
  'dn--un--__Impl_Monoid_(List $a)'/1,
  'dn--un--__Impl_Monad_Maybe'/0,
  'dn--un--__Impl_Monad_List'/0,
  'dn--un--__Impl_Monad_(Either $e)'/1,
  'dn--un--__Impl_Functor_Stream'/4,
  'dn--un--__Impl_Functor_Maybe'/4,
  'dn--un--__Impl_Functor_List'/4,
  'dn--un--__Impl_Functor_(Pair $a)'/5,
  'dn--un--__Impl_Functor_(Either $e)'/5,
  'dn--un--__Impl_Foldable_Maybe'/0,
  'dn--un--__Impl_Foldable_List'/0,
  'dn--un--__Impl_Foldable_(Either $e)'/1,
  'dn--un--__Impl_Eq_Nat'/0,
  'dn--un--__Impl_Eq_(Maybe $a)'/2,
  'dn--un--__Impl_Eq_(List $a)'/2,
  'dn--un--__Impl_Eq_((Either $a) $b)'/3,
  'dn--un--__Impl_Cast_String_Integer'/1,
  'dn--un--__Impl_Cast_String_Int'/1,
  'dn--un--__Impl_Cast_String_Double'/1,
  'dn--un--__Impl_Cast_Nat_Integer'/1,
  'dn--un--__Impl_Cast_Nat_Int'/1,
  'dn--un--__Impl_Cast_Nat_Double'/1,
  'dn--un--__Impl_Cast_Integer_String'/1,
  'dn--un--__Impl_Cast_Integer_Int'/1,
  'dn--un--__Impl_Cast_Integer_Double'/1,
  'dn--un--__Impl_Cast_Integer_Bits8'/1,
  'dn--un--__Impl_Cast_Integer_Bits64'/1,
  'dn--un--__Impl_Cast_Integer_Bits32'/1,
  'dn--un--__Impl_Cast_Integer_Bits16'/1,
  'dn--un--__Impl_Cast_Int_String'/1,
  'dn--un--__Impl_Cast_Int_Integer'/1,
  'dn--un--__Impl_Cast_Int_Double'/1,
  'dn--un--__Impl_Cast_Int_Char'/1,
  'dn--un--__Impl_Cast_Int_Bits8'/1,
  'dn--un--__Impl_Cast_Int_Bits64'/1,
  'dn--un--__Impl_Cast_Int_Bits32'/1,
  'dn--un--__Impl_Cast_Int_Bits16'/1,
  'dn--un--__Impl_Cast_Double_String'/1,
  'dn--un--__Impl_Cast_Double_Integer'/1,
  'dn--un--__Impl_Cast_Double_Int'/1,
  'dn--un--__Impl_Cast_Char_String'/1,
  'dn--un--__Impl_Cast_Char_Integer'/1,
  'dn--un--__Impl_Cast_Char_Int'/1,
  'dn--un--__Impl_Cast_Bits8_Integer'/1,
  'dn--un--__Impl_Cast_Bits8_Int'/1,
  'dn--un--__Impl_Cast_Bits8_Bits64'/1,
  'dn--un--__Impl_Cast_Bits8_Bits32'/1,
  'dn--un--__Impl_Cast_Bits8_Bits16'/1,
  'dn--un--__Impl_Cast_Bits64_Integer'/1,
  'dn--un--__Impl_Cast_Bits64_Int'/1,
  'dn--un--__Impl_Cast_Bits64_Bits8'/1,
  'dn--un--__Impl_Cast_Bits64_Bits32'/1,
  'dn--un--__Impl_Cast_Bits64_Bits16'/1,
  'dn--un--__Impl_Cast_Bits32_Integer'/1,
  'dn--un--__Impl_Cast_Bits32_Int'/1,
  'dn--un--__Impl_Cast_Bits32_Bits8'/1,
  'dn--un--__Impl_Cast_Bits32_Bits64'/1,
  'dn--un--__Impl_Cast_Bits32_Bits16'/1,
  'dn--un--__Impl_Cast_Bits16_Integer'/1,
  'dn--un--__Impl_Cast_Bits16_Int'/1,
  'dn--un--__Impl_Cast_Bits16_Bits8'/1,
  'dn--un--__Impl_Cast_Bits16_Bits64'/1,
  'dn--un--__Impl_Cast_Bits16_Bits32'/1,
  'dn--un--__Impl_Applicative_Maybe'/0,
  'dn--un--__Impl_Applicative_List'/0,
  'dn--un--__Impl_Applicative_(Either $e)'/1,
  'dn--un--__Impl_Alternative_Maybe'/0,
  'dn--un--__Impl_Alternative_List'/0,
  'dn--un-->_Ord__Nat'/2,
  'dn--un-->_Ord__(Maybe $a)'/4,
  'dn--un-->_Ord__(List $a)'/4,
  'dn--un-->_Ord__((Either $a) $b)'/5,
  'dn--un-->>=_Monad__Maybe'/4,
  'dn--un-->>=_Monad__List'/4,
  'dn--un-->>=_Monad__(Either $e)'/5,
  'dn--un-->=_Ord__Nat'/2,
  'dn--un-->=_Ord__(Maybe $a)'/4,
  'dn--un-->=_Ord__(List $a)'/4,
  'dn--un-->=_Ord__((Either $a) $b)'/5,
  'dn--un--==_Eq__Nat'/2,
  'dn--un--==_Eq__(Maybe $a)'/4,
  'dn--un--==_Eq__(List $a)'/4,
  'dn--un--==_Eq__((Either $a) $b)'/5,
  'dn--un--<|>_Alternative__Maybe'/3,
  'dn--un--<|>_Alternative__List'/3,
  'dn--un--<_Ord__Nat'/2,
  'dn--un--<_Ord__(Maybe $a)'/4,
  'dn--un--<_Ord__(List $a)'/4,
  'dn--un--<_Ord__((Either $a) $b)'/5,
  'dn--un--<=_Ord__Nat'/2,
  'dn--un--<=_Ord__(Maybe $a)'/4,
  'dn--un--<=_Ord__(List $a)'/4,
  'dn--un--<=_Ord__((Either $a) $b)'/5,
  'dn--un--<+>_Semigroup__String'/2,
  'dn--un--<+>_Semigroup__(Maybe $a)'/3,
  'dn--un--<+>_Semigroup__(List $a)'/3,
  'dn--un--<*>_Applicative__Maybe'/4,
  'dn--un--<*>_Applicative__List'/4,
  'dn--un--<*>_Applicative__(Either $e)'/5,
  'dn--un--/=_Eq__Nat'/2,
  'dn--un--/=_Eq__(Maybe $a)'/4,
  'dn--un--/=_Eq__(List $a)'/4,
  'dn--un--/=_Eq__((Either $a) $b)'/5,
  'dn--un--+_Num__Nat'/2,
  'dn--un--*_Num__Nat'/2,
  'un--unpack'/1,
  'un--toUpper'/1,
  'un--toLower'/1,
  'un--tanh'/1,
  'un--tan'/1,
  'un--takeUntil'/3,
  'un--takeBefore'/3,
  'un--take'/3,
  'un--tail'/2,
  'un--substr'/3,
  'un--strUncons'/1,
  'un--strCons'/2,
  'un--sqrt'/1,
  'un--sinh'/1,
  'un--sin'/1,
  'un--reverse'/1,
  'un--rangeFromTo'/2,
  'un--rangeFromThenTo'/2,
  'un--rangeFromThen'/2,
  'un--rangeFrom'/2,
  'un--pow'/2,
  'un--plus'/2,
  'un--pi'/0,
  'un--pack'/1,
  'un--ord'/1,
  'un--natToInteger'/1,
  'un--mult'/2,
  'un--minus'/2,
  'un--maybe'/5,
  'un--mapFst'/5,
  'un--log'/1,
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
  'un--head'/2,
  'un--floor'/1,
  'un--fastPack'/1,
  'un--exp'/1,
  'un--euler'/0,
  'un--elem'/4,
  'un--either'/6,
  'un--countFrom'/3,
  'un--cosh'/1,
  'un--cos'/1,
  'un--chr'/1,
  'un--ceiling'/1,
  'un--cast'/4,
  'un--atan'/1,
  'un--asin'/1,
  'un--acos'/1
]).
'case--rangeFromThen-5076'(V0, V1, V2, V3, V4) -> case V4 of 0 -> ('un--countFrom'('erased', V2, fun (V5) -> case case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.Num.dn--un--__mkNeg', E6, E7, E8} -> (fun (V6, V7, V8) -> V6 end(E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of {'Idris.Prelude.Num.dn--un--__mkNum', E0, E1, E2} -> (fun (V9, V10, V11) -> ((V9(V5))(case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.Num.dn--un--__mkNeg', E3, E4, E5} -> (fun (V12, V13, V14) -> ((V14(V3))(V2)) end(E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end)); 1 -> ('un--countFrom'('erased', V2, fun (V15) -> case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.Num.dn--un--__mkNeg', E9, E10, E11} -> (fun (V16, V17, V18) -> ((V18(V15))(case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.Num.dn--un--__mkNeg', E12, E13, E14} -> (fun (V19, V20, V21) -> ((V21(V2))(V3)) end(E12, E13, E14)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end(E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in case block in rangeFromThenTo-5004'(V0, V1, V2, V3, V4, V5) -> case V5 of 0 -> [V2 | []]; 1 -> []; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in rangeFromThenTo-4939'(V0, V1, V2, V3, V4, V5) -> case V5 of 0 -> ('un--takeBefore'('erased', fun (V6) -> case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V7, V8, V9, V10, V11, V12, V13, V14) -> ((V9(V6))(V2)) end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end, ('un--countFrom'('erased', V4, fun (V15) -> case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.Num.dn--un--__mkNeg', E8, E9, E10} -> (fun (V16, V17, V18) -> ((V18(V15))(case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.Num.dn--un--__mkNeg', E11, E12, E13} -> (fun (V19, V20, V21) -> ((V21(V4))(V3)) end(E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end(E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end)))); 1 -> ('case--case block in case block in rangeFromThenTo-5004'('erased', V1, V4, V3, V2, ('Idris.Idris2.Prelude.Basics':'un--&&'(case case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E16, E17, E18, E19, E20, E21, E22, E23} -> (fun (V22, V23, V24, V25, V26, V27, V28, V29) -> V22 end(E16, E17, E18, E19, E20, E21, E22, E23)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E14, E15} -> (fun (V30, V31) -> ((V30(V4))(V3)) end(E14, E15)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, fun () -> case case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E26, E27, E28, E29, E30, E31, E32, E33} -> (fun (V32, V33, V34, V35, V36, V37, V38, V39) -> V32 end(E26, E27, E28, E29, E30, E31, E32, E33)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E24, E25} -> (fun (V40, V41) -> ((V40(V3))(V2)) end(E24, E25)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--rangeFromThenTo-4876'(V0, V1, V2, V3, V4, V5) -> case V5 of 0 -> ('un--takeBefore'('erased', fun (V6) -> case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V7, V8, V9, V10, V11, V12, V13, V14) -> ((V10(V6))(V4)) end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end, ('un--countFrom'('erased', V2, fun (V15) -> case case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.Num.dn--un--__mkNeg', E14, E15, E16} -> (fun (V16, V17, V18) -> V16 end(E14, E15, E16)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of {'Idris.Prelude.Num.dn--un--__mkNum', E8, E9, E10} -> (fun (V19, V20, V21) -> ((V19(V15))(case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.Num.dn--un--__mkNeg', E11, E12, E13} -> (fun (V22, V23, V24) -> ((V24(V3))(V2)) end(E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end(E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end)))); 1 -> ('case--case block in rangeFromThenTo-4939'('erased', V1, V4, V3, V2, case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E17, E18, E19, E20, E21, E22, E23, E24} -> (fun (V25, V26, V27, V28, V29, V30, V31, V32) -> ((V27(case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.Num.dn--un--__mkNeg', E25, E26, E27} -> (fun (V36, V37, V38) -> ((V38(V4))(V2)) end(E25, E26, E27)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end))(case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.Num.dn--un--__mkNeg', E28, E29, E30} -> (fun (V33, V34, V35) -> ((V35(V4))(V3)) end(E28, E29, E30)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end(E17, E18, E19, E20, E21, E22, E23, E24)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in rangeFromTo-4807'(V0, V1, V2, V3, V4) -> case V4 of 0 -> ('un--takeUntil'('erased', fun (V5) -> case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V6, V7, V8, V9, V10, V11, V12, V13) -> ((V10(V5))(V2)) end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end, ('un--countFrom'('erased', V3, fun (V14) -> case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.Num.dn--un--__mkNeg', E8, E9, E10} -> (fun (V15, V16, V17) -> ((V17(V14))(case case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.Num.dn--un--__mkNeg', E14, E15, E16} -> (fun (V18, V19, V20) -> V18 end(E14, E15, E16)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of {'Idris.Prelude.Num.dn--un--__mkNum', E11, E12, E13} -> (fun (V21, V22, V23) -> (V23(1)) end(E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end(E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end)))); 1 -> [V3 | []]; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--rangeFromTo-4754'(V0, V1, V2, V3, V4) -> case V4 of 0 -> ('un--takeUntil'('erased', fun (V5) -> case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V6, V7, V8, V9, V10, V11, V12, V13) -> ((V11(V5))(V3)) end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end, ('un--countFrom'('erased', V2, fun (V14) -> case case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.Num.dn--un--__mkNeg', E17, E18, E19} -> (fun (V15, V16, V17) -> V15 end(E17, E18, E19)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of {'Idris.Prelude.Num.dn--un--__mkNum', E8, E9, E10} -> (fun (V18, V19, V20) -> ((V18(V14))(case case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.Num.dn--un--__mkNeg', E14, E15, E16} -> (fun (V21, V22, V23) -> V21 end(E14, E15, E16)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of {'Idris.Prelude.Num.dn--un--__mkNum', E11, E12, E13} -> (fun (V24, V25, V26) -> (V26(1)) end(E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end(E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end)))); 1 -> ('case--case block in rangeFromTo-4807'('erased', V1, V3, V2, case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E20, E21, E22, E23, E24, E25, E26, E27} -> (fun (V27, V28, V29, V30, V31, V32, V33, V34) -> ((V30(V2))(V3)) end(E20, E21, E22, E23, E24, E25, E26, E27)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--rangeFromThen-4682'(V0, V1, V2) -> case V2 of 0 -> ('un--countFrom'('erased', V1, fun (V3) -> (('un--minus'(V0, V1)) + V3) end)); 1 -> ('un--countFrom'('erased', V1, fun (V4) -> ('un--minus'(V4, ('un--minus'(V1, V0)))) end)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in case block in rangeFromThenTo-4634'(V0, V1, V2, V3) -> case V3 of 0 -> [V2 | []]; 1 -> []; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in rangeFromThenTo-4620'(V0, V1, V2, V3) -> case V3 of 0 -> ('case--case block in case block in rangeFromThenTo-4634'(V0, V1, V2, ('dn--un--==_Eq__Nat'(V2, V0)))); 1 -> ('un--takeBefore'('erased', fun (V4) -> ('dn--un--<_Ord__Nat'(V4, V0)) end, ('un--countFrom'('erased', V2, fun (V5) -> ('un--minus'(V5, ('un--minus'(V2, V1)))) end)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in rangeFromThenTo-4580'(V0, V1, V2, V3) -> case V3 of 0 -> ('un--takeBefore'('erased', fun (V4) -> ('dn--un-->_Ord__Nat'(V4, V0)) end, ('un--countFrom'('erased', V2, fun (V5) -> (('un--minus'(V1, V2)) + V5) end)))); 1 -> []; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--rangeFromThenTo-4566'(V0, V1, V2, V3) -> case V3 of 0 -> ('case--case block in rangeFromThenTo-4580'(V0, V1, V2, ('dn--un-->_Ord__Nat'(V0, V2)))); 1 -> ('case--case block in rangeFromThenTo-4620'(V0, V1, V2, ('dn--un--==_Eq__Nat'(V2, V1)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in rangeFromTo-4531'(V0, V1, V2) -> case V2 of 0 -> ('un--takeUntil'('erased', fun (V3) -> ('dn--un--<=_Ord__Nat'(V3, V0)) end, ('un--countFrom'('erased', V1, fun (V4) -> ('un--minus'(V4, (1 + 0))) end)))); 1 -> [V1 | []]; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--rangeFromTo-4503'(V0, V1, V2) -> case V2 of 0 -> ('un--takeUntil'('erased', fun (V3) -> ('dn--un-->=_Ord__Nat'(V3, V0)) end, ('un--countFrom'('erased', V1, fun (V4) -> (1 + V4) end)))); 1 -> ('case--case block in rangeFromTo-4531'(V0, V1, ('dn--un-->_Ord__Nat'(V1, V0)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--takeBefore-4348'(V0, V1, V2, V3, V4) -> case V4 of 0 -> []; 1 -> [V1 | ('un--takeBefore'('erased', V3, (V2())))]; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--takeUntil-4297'(V0, V1, V2, V3, V4) -> case V4 of 0 -> [V1 | []]; 1 -> [V1 | ('un--takeUntil'('erased', V3, (V2())))]; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--toLower-3732'(V0, V1) -> case V1 of 0 -> case ((case V0 of E1 when (((erlang:'is_integer'(E1)) andalso (E1 >= 0)) andalso (E1 =< 1114111)) -> E1; _ -> 65533 end + 32) rem 9223372036854775808) of E0 when (((erlang:'is_integer'(E0)) andalso (E0 >= 0)) andalso (E0 =< 1114111)) -> E0; _ -> 65533 end; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--toUpper-3718'(V0, V1) -> case V1 of 0 -> case ('Idris.Idris2.Prelude.Num':'dn--un---_Neg__Int'(case V0 of E1 when (((erlang:'is_integer'(E1)) andalso (E1 >= 0)) andalso (E1 =< 1114111)) -> E1; _ -> 65533 end, 32)) of E0 when (((erlang:'is_integer'(E0)) andalso (E0 >= 0)) andalso (E0 =< 1114111)) -> E0; _ -> 65533 end; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--unpack-3613'(V0, V1) -> case V1 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> [] end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V2) -> case V2 of {'Idris.Builtin.MkPair', E1, E2} -> (fun (V3, V4) -> [V3 | ('un--unpack'(V4))] end(E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--substr-3564'(V0, V1, V2, V3) -> case V3 of 0 -> ('string':'slice'(V0, ('un--natToInteger'(V2)), ('un--natToInteger'(V1)))); 1 -> <<""/utf8>>; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-2874'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of 1 -> ('dn--un--compare_Ord__(List $a)'('erased', V1, V3, V5)); _ -> V6 end.
'case--max-2765'(V0, V1, V2, V3, V4) -> case V4 of 0 -> V3; 1 -> V2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-2737'(V0, V1, V2, V3, V4) -> case V4 of 0 -> V3; 1 -> V2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-1879'(V0, V1, V2, V3, V4, V5) -> case V5 of 0 -> V4; 1 -> V3; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-1844'(V0, V1, V2, V3, V4, V5) -> case V5 of 0 -> V4; 1 -> V3; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-1021'(V0, V1, V2, V3, V4) -> case V4 of 0 -> V3; 1 -> V2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-993'(V0, V1, V2, V3, V4) -> case V4 of 0 -> V3; 1 -> V2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-613'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-599'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--integerToNat-488'(V0, V1) -> case V1 of 0 -> 0; 1 -> (1 + (V0 - 1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--3849-3744--in--un--hexChars'(V0) -> [$0 | [$1 | [$2 | [$3 | [$4 | [$5 | [$6 | [$7 | [$8 | [$9 | [$A | [$B | [$C | [$D | [$E | [$F | []]]]]]]]]]]]]]]]].
'dn--un--uninhabited_Uninhabited__(|((=== Nothing) (Just $x)),((~=~ Nothing) (Just $x))|)'(V0, V1, V2) -> ('erlang':'throw'("No clauses")).
'dn--un--uninhabited_Uninhabited__(|((=== (Just $x)) Nothing),((~=~ (Just $x)) Nothing)|)'(V0, V1, V2) -> ('erlang':'throw'("No clauses")).
'dn--un--traverse_Traversable__Maybe'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> case V3 of {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', E0, E1, E2} -> (fun (V6, V7, V8) -> ((V7('erased'))({'Idris.Prelude.Types.Nothing'})) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); {'Idris.Prelude.Types.Just', E3} -> (fun (V9) -> case V3 of {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', E4, E5, E6} -> (fun (V10, V11, V12) -> ((((V12('erased'))('erased'))(case V3 of {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', E7, E8, E9} -> (fun (V13, V14, V15) -> ((V14('erased'))(fun (V16) -> {'Idris.Prelude.Types.Just', V16} end)) end(E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end))((V4(V9)))) end(E4, E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--traverse_Traversable__List'(V0, V1, V2, V3, V4, V5) -> case V5 of [] -> case V3 of {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', E0, E1, E2} -> (fun (V6, V7, V8) -> ((V7('erased'))([])) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; [E3 | E4] -> (fun (V9, V10) -> case V3 of {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', E5, E6, E7} -> (fun (V11, V12, V13) -> ((((V13('erased'))('erased'))(case V3 of {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', E8, E9, E10} -> (fun (V14, V15, V16) -> ((((V16('erased'))('erased'))(case V3 of {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', E11, E12, E13} -> (fun (V17, V18, V19) -> ((V18('erased'))(fun (V20) -> fun (V21) -> [V20 | V21] end end)) end(E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end))((V4(V9)))) end(E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end))(('dn--un--traverse_Traversable__List'('erased', 'erased', 'erased', V3, V4, V10)))) end(E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--traverse_Traversable__(Either $e)'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Idris.Prelude.Types.Left', E0} -> (fun (V7) -> case V4 of {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', E1, E2, E3} -> (fun (V8, V9, V10) -> ((V9('erased'))({'Idris.Prelude.Types.Left', V7})) end(E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.Right', E4} -> (fun (V11) -> ('Idris.Idris2.Prelude.Interfaces':'un--<$>'('erased', 'erased', 'erased', case V4 of {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', E5, E6, E7} -> (fun (V12, V13, V14) -> V12 end(E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, fun (V15) -> {'Idris.Prelude.Types.Right', V15} end, (V5(V11)))) end(E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--rangeFrom_Range__Nat'(V0) -> ('un--countFrom'('erased', V0, fun (V1) -> (1 + V1) end)).
'dn--un--rangeFrom_Range__$a'(V0, V1, V2) -> ('un--countFrom'('erased', V2, fun (V3) -> case case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.Num.dn--un--__mkNeg', E9, E10, E11} -> (fun (V4, V5, V6) -> V4 end(E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of {'Idris.Prelude.Num.dn--un--__mkNum', E0, E1, E2} -> (fun (V7, V8, V9) -> ((V7(case case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.Num.dn--un--__mkNeg', E6, E7, E8} -> (fun (V10, V11, V12) -> V10 end(E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of {'Idris.Prelude.Num.dn--un--__mkNum', E3, E4, E5} -> (fun (V13, V14, V15) -> (V15(1)) end(E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end))(V3)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end)).
'dn--un--rangeFromTo_Range__Nat'(V0, V1) -> ('case--rangeFromTo-4503'(V1, V0, ('dn--un-->_Ord__Nat'(V1, V0)))).
'dn--un--rangeFromTo_Range__$a'(V0, V1, V2, V3) -> ('case--rangeFromTo-4754'('erased', V1, V2, V3, case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V4, V5, V6, V7, V8, V9, V10, V11) -> ((V7(V3))(V2)) end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)).
'dn--un--rangeFromThen_Range__Nat'(V0, V1) -> ('case--rangeFromThen-4682'(V1, V0, ('dn--un-->_Ord__Nat'(V1, V0)))).
'dn--un--rangeFromThen_Range__$a'(V0, V1, V2, V3) -> ('case--rangeFromThen-5076'('erased', V1, V2, V3, case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V4, V5, V6, V7, V8, V9, V10, V11) -> ((V7(V3))(V2)) end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)).
'dn--un--rangeFromThenTo_Range__Nat'(V0, V1, V2) -> ('case--rangeFromThenTo-4566'(V2, V1, V0, ('dn--un-->_Ord__Nat'(V1, V0)))).
'dn--un--rangeFromThenTo_Range__$a'(V0, V1, V2, V3, V4) -> ('case--rangeFromThenTo-4876'('erased', V1, V2, V3, V4, case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V5, V6, V7, V8, V9, V10, V11, V12) -> ((V8(case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.Num.dn--un--__mkNeg', E8, E9, E10} -> (fun (V16, V17, V18) -> ((V18(V4))(V2)) end(E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end))(case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)))) of {'Idris.Prelude.Num.dn--un--__mkNeg', E11, E12, E13} -> (fun (V13, V14, V15) -> ((V15(V4))(V3)) end(E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)).
'dn--un--pure_Applicative__Maybe'(V0, V1) -> {'Idris.Prelude.Types.Just', V1}.
'dn--un--pure_Applicative__List'(V0, V1) -> [V1 | []].
'dn--un--pure_Applicative__(Either $e)'(V0, V1, V2) -> {'Idris.Prelude.Types.Right', V2}.
'dn--un--neutral_Monoid__String'() -> <<""/utf8>>.
'dn--un--neutral_Monoid__(Maybe $a)'(V0) -> {'Idris.Prelude.Types.Nothing'}.
'dn--un--neutral_Monoid__(List $a)'(V0) -> [].
'dn--un--min_Ord__Nat'(V0, V1) -> ('case--min-599'(V1, V0, ('dn--un--<_Ord__Nat'(V0, V1)))).
'dn--un--min_Ord__(Maybe $a)'(V0, V1, V2, V3) -> ('case--min-993'('erased', V1, V3, V2, ('dn--un--<_Ord__(Maybe $a)'('erased', V1, V2, V3)))).
'dn--un--min_Ord__(List $a)'(V0, V1, V2, V3) -> ('case--min-2737'('erased', V1, V3, V2, ('dn--un--<_Ord__(List $a)'('erased', V1, V2, V3)))).
'dn--un--min_Ord__((Either $a) $b)'(V0, V1, V2, V3, V4) -> ('case--min-1844'('erased', 'erased', V2, V4, V3, ('dn--un--<_Ord__((Either $a) $b)'('erased', 'erased', V2, V3, V4)))).
'dn--un--max_Ord__Nat'(V0, V1) -> ('case--max-613'(V1, V0, ('dn--un-->_Ord__Nat'(V0, V1)))).
'dn--un--max_Ord__(Maybe $a)'(V0, V1, V2, V3) -> ('case--max-1021'('erased', V1, V3, V2, ('dn--un-->_Ord__(Maybe $a)'('erased', V1, V2, V3)))).
'dn--un--max_Ord__(List $a)'(V0, V1, V2, V3) -> ('case--max-2765'('erased', V1, V3, V2, ('dn--un-->_Ord__(List $a)'('erased', V1, V2, V3)))).
'dn--un--max_Ord__((Either $a) $b)'(V0, V1, V2, V3, V4) -> ('case--max-1879'('erased', 'erased', V2, V4, V3, ('dn--un-->_Ord__((Either $a) $b)'('erased', 'erased', V2, V3, V4)))).
'dn--un--map_Functor__Stream'(V0, V1, V2, V3) -> case V3 of {'Idris.Prelude.Types.Stream.::', E0, E1} -> (fun (V4, V5) -> {'Idris.Prelude.Types.Stream.::', (V2(V4)), fun () -> ('dn--un--map_Functor__Stream'('erased', 'erased', V2, (V5()))) end} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--map_Functor__Maybe'(V0, V1, V2, V3) -> case V3 of {'Idris.Prelude.Types.Just', E0} -> (fun (V4) -> {'Idris.Prelude.Types.Just', (V2(V4))} end(E0)); {'Idris.Prelude.Types.Nothing'} -> (fun () -> {'Idris.Prelude.Types.Nothing'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--map_Functor__List'(V0, V1, V2, V3) -> case V3 of [] -> []; [E0 | E1] -> (fun (V4, V5) -> [(V2(V4)) | ('dn--un--map_Functor__List'('erased', 'erased', V2, V5))] end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--map_Functor__(Pair $a)'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V5, V6) -> {'Idris.Builtin.MkPair', V5, (V3(V6))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--map_Functor__(Either $e)'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Prelude.Types.Left', E0} -> (fun (V5) -> {'Idris.Prelude.Types.Left', V5} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V6) -> {'Idris.Prelude.Types.Right', (V3(V6))} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--join_Monad__Maybe'(V0, V1) -> ('dn--un-->>=_Monad__Maybe'('erased', 'erased', V1, fun (V2) -> V2 end)).
'dn--un--join_Monad__List'(V0, V1) -> ('dn--un-->>=_Monad__List'('erased', 'erased', V1, fun (V2) -> V2 end)).
'dn--un--join_Monad__(Either $e)'(V0, V1, V2) -> ('dn--un-->>=_Monad__(Either $e)'('erased', 'erased', 'erased', V2, fun (V3) -> V3 end)).
'dn--un--fromInteger_Num__Nat'(V0) -> V0.
'dn--un--foldr_Foldable__Maybe'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> V3 end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V5) -> ((V2(V5))(V3)) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--foldr_Foldable__List'(V0, V1, V2, V3, V4) -> case V4 of [] -> V3; [E0 | E1] -> (fun (V5, V6) -> ((V2(V5))(('dn--un--foldr_Foldable__List'('erased', 'erased', V2, V3, V6)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--foldr_Foldable__(Either $e)'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Idris.Prelude.Types.Left', E0} -> (fun (V6) -> V4 end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V7) -> ((V3(V7))(V4)) end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--foldl_Foldable__Maybe'(V0, V1, V2, V3, V4) -> (('dn--un--foldr_Foldable__Maybe'('erased', 'erased', fun (V5) -> fun (V6) -> ('Idris.Idris2.Prelude.Basics':'un--flip'('erased', 'erased', 'erased', fun (V7) -> fun (V8) -> fun (V9) -> (V7((V8(V9)))) end end end, fun (V10) -> ('Idris.Idris2.Prelude.Basics':'un--flip'('erased', 'erased', 'erased', V2, V5, V10)) end, V6)) end end, fun (V11) -> V11 end, V4))(V3)).
'dn--un--foldl_Foldable__List'(V0, V1, V2, V3, V4) -> case V4 of [] -> V3; [E0 | E1] -> (fun (V5, V6) -> ('dn--un--foldl_Foldable__List'('erased', 'erased', V2, ((V2(V3))(V5)), V6)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--foldl_Foldable__(Either $e)'(V0, V1, V2, V3, V4, V5) -> (('dn--un--foldr_Foldable__(Either $e)'('erased', 'erased', 'erased', fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Basics':'un--flip'('erased', 'erased', 'erased', fun (V8) -> fun (V9) -> fun (V10) -> (V8((V9(V10)))) end end end, fun (V11) -> ('Idris.Idris2.Prelude.Basics':'un--flip'('erased', 'erased', 'erased', V3, V6, V11)) end, V7)) end end, fun (V12) -> V12 end, V5))(V4)).
'dn--un--empty_Alternative__Maybe'(V0) -> {'Idris.Prelude.Types.Nothing'}.
'dn--un--empty_Alternative__List'(V0) -> [].
'dn--un--compare_Ord__Nat'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> 1; _ -> 0 end; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> 2; _ -> begin (V3 = (V1 - 1)), ('dn--un--compare_Ord__Nat'(V2, V3)) end end end end.
'dn--un--compare_Ord__(Maybe $a)'(V0, V1, V2, V3) -> case V2 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> case V3 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> 1 end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V4) -> 0 end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); {'Idris.Prelude.Types.Just', E1} -> (fun (V5) -> case V3 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> 2 end()); {'Idris.Prelude.Types.Just', E2} -> (fun (V6) -> case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E3, E4, E5, E6, E7, E8, E9, E10} -> (fun (V7, V8, V9, V10, V11, V12, V13, V14) -> ((V8(V5))(V6)) end(E3, E4, E5, E6, E7, E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--compare_Ord__(List $a)'(V0, V1, V2, V3) -> case V2 of [] -> case V3 of [] -> 1; [E0 | E1] -> (fun (V4, V5) -> 0 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; [E2 | E3] -> (fun (V6, V7) -> case V3 of [] -> 2; [E4 | E5] -> (fun (V8, V9) -> ('case--compare-2874'('erased', V1, V6, V7, V8, V9, case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V10, V11, V12, V13, V14, V15, V16, V17) -> ((V11(V6))(V8)) end(E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--compare_Ord__((Either $a) $b)'(V0, V1, V2, V3, V4) -> case V3 of {'Idris.Prelude.Types.Left', E0} -> (fun (V5) -> case V4 of {'Idris.Prelude.Types.Left', E1} -> (fun (V6) -> case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V2)) of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V7, V8, V9, V10, V11, V12, V13, V14) -> ((V8(V5))(V6)) end(E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E1)); {'Idris.Prelude.Types.Right', E10} -> (fun (V15) -> 0 end(E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.Right', E11} -> (fun (V16) -> case V4 of {'Idris.Prelude.Types.Left', E12} -> (fun (V17) -> 2 end(E12)); {'Idris.Prelude.Types.Right', E13} -> (fun (V18) -> case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V2)) of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E14, E15, E16, E17, E18, E19, E20, E21} -> (fun (V19, V20, V21, V22, V23, V24, V25, V26) -> ((V20(V16))(V18)) end(E14, E15, E16, E17, E18, E19, E20, E21)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--cast_Cast__String_Integer'(V0) -> case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end.
'dn--un--cast_Cast__String_Int'(V0) -> case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end.
'dn--un--cast_Cast__String_Double'(V0) -> case ('string':'to_float'(V0)) of {'error', 'no_float'} -> (fun (V1, V2) -> ('erlang':'float'(case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V5, V6) -> case ('string':'is_empty'(V6)) of 'true' -> V5; _ -> 0 end end(E0, E1)); _ -> 0 end)) end('error', 'no_float')); {E2, E3} when (erlang:'is_float'(E2)) -> (fun (V3, V4) -> case ('string':'is_empty'(V4)) of 'true' -> V3; _ -> 0.0 end end(E2, E3)); _ -> 0.0 end.
'dn--un--cast_Cast__Nat_Integer'(V0) -> ('un--natToInteger'(V0)).
'dn--un--cast_Cast__Nat_Int'(V0) -> ('un--natToInteger'(V0)).
'dn--un--cast_Cast__Nat_Double'(V0) -> ('erlang':'float'(('un--natToInteger'(V0)))).
'dn--un--cast_Cast__Integer_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--cast_Cast__Integer_Int'(V0) -> V0.
'dn--un--cast_Cast__Integer_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--cast_Cast__Integer_Bits8'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 256); _ -> ((V0 + 256) rem 256) end.
'dn--un--cast_Cast__Integer_Bits64'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 18446744073709551616); _ -> ((V0 + 18446744073709551616) rem 18446744073709551616) end.
'dn--un--cast_Cast__Integer_Bits32'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 4294967296); _ -> ((V0 + 4294967296) rem 4294967296) end.
'dn--un--cast_Cast__Integer_Bits16'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 65536); _ -> ((V0 + 65536) rem 65536) end.
'dn--un--cast_Cast__Int_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--cast_Cast__Int_Integer'(V0) -> V0.
'dn--un--cast_Cast__Int_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--cast_Cast__Int_Char'(V0) -> case V0 of E0 when (((erlang:'is_integer'(E0)) andalso (E0 >= 0)) andalso (E0 =< 1114111)) -> E0; _ -> 65533 end.
'dn--un--cast_Cast__Int_Bits8'(V0) -> ('erlang':'throw'("Invalid cast Int->Bits8")).
'dn--un--cast_Cast__Int_Bits64'(V0) -> ('erlang':'throw'("Invalid cast Int->Bits64")).
'dn--un--cast_Cast__Int_Bits32'(V0) -> ('erlang':'throw'("Invalid cast Int->Bits32")).
'dn--un--cast_Cast__Int_Bits16'(V0) -> ('erlang':'throw'("Invalid cast Int->Bits16")).
'dn--un--cast_Cast__Double_String'(V0) -> ('erlang':'float_to_binary'(V0, [{'decimals', 10} | ['compact' | []]])).
'dn--un--cast_Cast__Double_Integer'(V0) -> ('erlang':'trunc'(V0)).
'dn--un--cast_Cast__Double_Int'(V0) -> ('erlang':'trunc'(V0)).
'dn--un--cast_Cast__Char_String'(V0) -> ('unicode':'characters_to_binary'([V0 | []])).
'dn--un--cast_Cast__Char_Integer'(V0) -> case V0 of E0 when (((erlang:'is_integer'(E0)) andalso (E0 >= 0)) andalso (E0 =< 1114111)) -> E0; _ -> 65533 end.
'dn--un--cast_Cast__Char_Int'(V0) -> case V0 of E0 when (((erlang:'is_integer'(E0)) andalso (E0 >= 0)) andalso (E0 =< 1114111)) -> E0; _ -> 65533 end.
'dn--un--cast_Cast__Bits8_Integer'(V0) -> V0.
'dn--un--cast_Cast__Bits8_Int'(V0) -> V0.
'dn--un--cast_Cast__Bits8_Bits64'(V0) -> ('erlang':'throw'("Invalid cast Bits8->Bits64")).
'dn--un--cast_Cast__Bits8_Bits32'(V0) -> ('erlang':'throw'("Invalid cast Bits8->Bits32")).
'dn--un--cast_Cast__Bits8_Bits16'(V0) -> ('erlang':'throw'("Invalid cast Bits8->Bits16")).
'dn--un--cast_Cast__Bits64_Integer'(V0) -> V0.
'dn--un--cast_Cast__Bits64_Int'(V0) -> ('erlang':'throw'("Invalid cast Bits64->Int")).
'dn--un--cast_Cast__Bits64_Bits8'(V0) -> ('erlang':'throw'("Invalid cast Bits64->Bits8")).
'dn--un--cast_Cast__Bits64_Bits32'(V0) -> ('erlang':'throw'("Invalid cast Bits64->Bits32")).
'dn--un--cast_Cast__Bits64_Bits16'(V0) -> ('erlang':'throw'("Invalid cast Bits64->Bits16")).
'dn--un--cast_Cast__Bits32_Integer'(V0) -> V0.
'dn--un--cast_Cast__Bits32_Int'(V0) -> V0.
'dn--un--cast_Cast__Bits32_Bits8'(V0) -> ('erlang':'throw'("Invalid cast Bits32->Bits8")).
'dn--un--cast_Cast__Bits32_Bits64'(V0) -> ('erlang':'throw'("Invalid cast Bits32->Bits64")).
'dn--un--cast_Cast__Bits32_Bits16'(V0) -> ('erlang':'throw'("Invalid cast Bits32->Bits16")).
'dn--un--cast_Cast__Bits16_Integer'(V0) -> V0.
'dn--un--cast_Cast__Bits16_Int'(V0) -> V0.
'dn--un--cast_Cast__Bits16_Bits8'(V0) -> ('erlang':'throw'("Invalid cast Bits16->Bits8")).
'dn--un--cast_Cast__Bits16_Bits64'(V0) -> ('erlang':'throw'("Invalid cast Bits16->Bits64")).
'dn--un--cast_Cast__Bits16_Bits32'(V0) -> ('erlang':'throw'("Invalid cast Bits16->Bits32")).
'dn--un--__Impl_Uninhabited_(|((=== Nothing) (Just $x)),((~=~ Nothing) (Just $x))|)'(V0, V1, V2) -> ('dn--un--uninhabited_Uninhabited__(|((=== Nothing) (Just $x)),((~=~ Nothing) (Just $x))|)'('erased', 'erased', V2)).
'dn--un--__Impl_Uninhabited_(|((=== (Just $x)) Nothing),((~=~ (Just $x)) Nothing)|)'(V0, V1, V2) -> ('dn--un--uninhabited_Uninhabited__(|((=== (Just $x)) Nothing),((~=~ (Just $x)) Nothing)|)'('erased', 'erased', V2)).
'dn--un--__Impl_Traversable_Maybe'() -> {'Idris.Prelude.Interfaces.dn--un--__mkTraversable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor__Maybe'('erased', 'erased', V2, V3)) end end end end, {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('dn--un--foldr_Foldable__Maybe'('erased', 'erased', V6, V7, V8)) end end end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--foldl_Foldable__Maybe'('erased', 'erased', V11, V12, V13)) end end end end end}, fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> ('dn--un--traverse_Traversable__Maybe'('erased', 'erased', 'erased', V17, V18, V19)) end end end end end end}.
'dn--un--__Impl_Traversable_List'() -> {'Idris.Prelude.Interfaces.dn--un--__mkTraversable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor__List'('erased', 'erased', V2, V3)) end end end end, {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('dn--un--foldr_Foldable__List'('erased', 'erased', V6, V7, V8)) end end end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--foldl_Foldable__List'('erased', 'erased', V11, V12, V13)) end end end end end}, fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> ('dn--un--traverse_Traversable__List'('erased', 'erased', 'erased', V17, V18, V19)) end end end end end end}.
'dn--un--__Impl_Traversable_(Either $e)'(V0) -> {'Idris.Prelude.Interfaces.dn--un--__mkTraversable', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> case V4 of {'Idris.Prelude.Types.Left', E0} -> (fun (V5) -> {'Idris.Prelude.Types.Left', V5} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V6) -> {'Idris.Prelude.Types.Right', (V3(V6))} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end end, {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> ('dn--un--foldr_Foldable__(Either $e)'('erased', 'erased', 'erased', V9, V10, V11)) end end end end end, fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> ('dn--un--foldl_Foldable__(Either $e)'('erased', 'erased', 'erased', V14, V15, V16)) end end end end end}, fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> ('dn--un--traverse_Traversable__(Either $e)'('erased', 'erased', 'erased', 'erased', V20, V21, V22)) end end end end end end}.
'dn--un--__Impl_Semigroup_String'(V0, V1) -> ('dn--un--<+>_Semigroup__String'(V0, V1)).
'dn--un--__Impl_Semigroup_(Maybe $a)'(V0, V1, V2) -> ('dn--un--<+>_Semigroup__(Maybe $a)'('erased', V1, V2)).
'dn--un--__Impl_Semigroup_(List $a)'(V0, V1, V2) -> ('dn--un--<+>_Semigroup__(List $a)'('erased', V1, V2)).
'dn--un--__Impl_Range_Nat'() -> {'Idris.Prelude.Types.dn--un--__mkRange', fun (V0) -> fun (V1) -> ('dn--un--rangeFromTo_Range__Nat'(V0, V1)) end end, fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--rangeFromThenTo_Range__Nat'(V2, V3, V4)) end end end, fun (V5) -> ('dn--un--rangeFrom_Range__Nat'(V5)) end, fun (V6) -> fun (V7) -> ('dn--un--rangeFromThen_Range__Nat'(V6, V7)) end end}.
'dn--un--__Impl_Range_$a'(V0, V1) -> {'Idris.Prelude.Types.dn--un--__mkRange', fun (V2) -> fun (V3) -> ('dn--un--rangeFromTo_Range__$a'('erased', V1, V2, V3)) end end, fun (V4) -> fun (V5) -> fun (V6) -> ('dn--un--rangeFromThenTo_Range__$a'('erased', V1, V4, V5, V6)) end end end, fun (V7) -> ('dn--un--rangeFrom_Range__$a'('erased', V1, V7)) end, fun (V8) -> fun (V9) -> ('dn--un--rangeFromThen_Range__$a'('erased', V1, V8, V9)) end end}.
'dn--un--__Impl_Ord_Nat'() -> {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Nat'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Nat'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord__Nat'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord__Nat'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord__Nat'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord__Nat'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord__Nat'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord__Nat'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord__Nat'(V16, V17)) end end}.
'dn--un--__Impl_Ord_(Maybe $a)'(V0, V1) -> {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V2) -> fun (V3) -> ('dn--un--==_Eq__(Maybe $a)'('erased', case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V4, V5, V6, V7, V8, V9, V10, V11) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V2, V3)) end end, fun (V12) -> fun (V13) -> ('dn--un--/=_Eq__(Maybe $a)'('erased', case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E8, E9, E10, E11, E12, E13, E14, E15} -> (fun (V14, V15, V16, V17, V18, V19, V20, V21) -> V14 end(E8, E9, E10, E11, E12, E13, E14, E15)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V12, V13)) end end}, fun (V22) -> fun (V23) -> ('dn--un--compare_Ord__(Maybe $a)'('erased', V1, V22, V23)) end end, fun (V24) -> fun (V25) -> ('dn--un--<_Ord__(Maybe $a)'('erased', V1, V24, V25)) end end, fun (V26) -> fun (V27) -> ('dn--un-->_Ord__(Maybe $a)'('erased', V1, V26, V27)) end end, fun (V28) -> fun (V29) -> ('dn--un--<=_Ord__(Maybe $a)'('erased', V1, V28, V29)) end end, fun (V30) -> fun (V31) -> ('dn--un-->=_Ord__(Maybe $a)'('erased', V1, V30, V31)) end end, fun (V32) -> fun (V33) -> ('dn--un--max_Ord__(Maybe $a)'('erased', V1, V32, V33)) end end, fun (V34) -> fun (V35) -> ('dn--un--min_Ord__(Maybe $a)'('erased', V1, V34, V35)) end end}.
'dn--un--__Impl_Ord_(List $a)'(V0, V1) -> {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V2) -> fun (V3) -> ('dn--un--==_Eq__(List $a)'('erased', case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V4, V5, V6, V7, V8, V9, V10, V11) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V2, V3)) end end, fun (V12) -> fun (V13) -> ('dn--un--/=_Eq__(List $a)'('erased', case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E8, E9, E10, E11, E12, E13, E14, E15} -> (fun (V14, V15, V16, V17, V18, V19, V20, V21) -> V14 end(E8, E9, E10, E11, E12, E13, E14, E15)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V12, V13)) end end}, fun (V22) -> fun (V23) -> ('dn--un--compare_Ord__(List $a)'('erased', V1, V22, V23)) end end, fun (V24) -> fun (V25) -> ('dn--un--<_Ord__(List $a)'('erased', V1, V24, V25)) end end, fun (V26) -> fun (V27) -> ('dn--un-->_Ord__(List $a)'('erased', V1, V26, V27)) end end, fun (V28) -> fun (V29) -> ('dn--un--<=_Ord__(List $a)'('erased', V1, V28, V29)) end end, fun (V30) -> fun (V31) -> ('dn--un-->=_Ord__(List $a)'('erased', V1, V30, V31)) end end, fun (V32) -> fun (V33) -> ('dn--un--max_Ord__(List $a)'('erased', V1, V32, V33)) end end, fun (V34) -> fun (V35) -> ('dn--un--min_Ord__(List $a)'('erased', V1, V34, V35)) end end}.
'dn--un--__Impl_Ord_((Either $a) $b)'(V0, V1, V2) -> {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V3) -> fun (V4) -> ('dn--un--==_Eq__((Either $a) $b)'('erased', 'erased', {'Idris.Builtin.MkPair', case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V2)) of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V5, V6, V7, V8, V9, V10, V11, V12) -> V5 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V2)) of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E8, E9, E10, E11, E12, E13, E14, E15} -> (fun (V13, V14, V15, V16, V17, V18, V19, V20) -> V13 end(E8, E9, E10, E11, E12, E13, E14, E15)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end}, V3, V4)) end end, fun (V21) -> fun (V22) -> ('dn--un--/=_Eq__((Either $a) $b)'('erased', 'erased', {'Idris.Builtin.MkPair', case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V2)) of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E16, E17, E18, E19, E20, E21, E22, E23} -> (fun (V23, V24, V25, V26, V27, V28, V29, V30) -> V23 end(E16, E17, E18, E19, E20, E21, E22, E23)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V2)) of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E24, E25, E26, E27, E28, E29, E30, E31} -> (fun (V31, V32, V33, V34, V35, V36, V37, V38) -> V31 end(E24, E25, E26, E27, E28, E29, E30, E31)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end}, V21, V22)) end end}, fun (V39) -> fun (V40) -> ('dn--un--compare_Ord__((Either $a) $b)'('erased', 'erased', V2, V39, V40)) end end, fun (V41) -> fun (V42) -> ('dn--un--<_Ord__((Either $a) $b)'('erased', 'erased', V2, V41, V42)) end end, fun (V43) -> fun (V44) -> ('dn--un-->_Ord__((Either $a) $b)'('erased', 'erased', V2, V43, V44)) end end, fun (V45) -> fun (V46) -> ('dn--un--<=_Ord__((Either $a) $b)'('erased', 'erased', V2, V45, V46)) end end, fun (V47) -> fun (V48) -> ('dn--un-->=_Ord__((Either $a) $b)'('erased', 'erased', V2, V47, V48)) end end, fun (V49) -> fun (V50) -> ('dn--un--max_Ord__((Either $a) $b)'('erased', 'erased', V2, V49, V50)) end end, fun (V51) -> fun (V52) -> ('dn--un--min_Ord__((Either $a) $b)'('erased', 'erased', V2, V51, V52)) end end}.
'dn--un--__Impl_Num_Nat'() -> {'Idris.Prelude.Num.dn--un--__mkNum', fun (V0) -> fun (V1) -> ('dn--un--+_Num__Nat'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--*_Num__Nat'(V2, V3)) end end, fun (V4) -> ('dn--un--fromInteger_Num__Nat'(V4)) end}.
'dn--un--__Impl_Monoid_String'() -> {'Idris.Prelude.Interfaces.dn--un--__mkMonoid', fun (V0) -> fun (V1) -> ('dn--un--<+>_Semigroup__String'(V0, V1)) end end, ('dn--un--neutral_Monoid__String'())}.
'dn--un--__Impl_Monoid_(Maybe $a)'(V0) -> {'Idris.Prelude.Interfaces.dn--un--__mkMonoid', fun (V1) -> fun (V2) -> ('dn--un--<+>_Semigroup__(Maybe $a)'('erased', V1, V2)) end end, ('dn--un--neutral_Monoid__(Maybe $a)'('erased'))}.
'dn--un--__Impl_Monoid_(List $a)'(V0) -> {'Idris.Prelude.Interfaces.dn--un--__mkMonoid', fun (V1) -> fun (V2) -> ('dn--un--<+>_Semigroup__(List $a)'('erased', V1, V2)) end end, ('dn--un--neutral_Monoid__(List $a)'('erased'))}.
'dn--un--__Impl_Monad_Maybe'() -> {'Idris.Prelude.Interfaces.dn--un--__mkMonad', {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor__Maybe'('erased', 'erased', V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative__Maybe'('erased', V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative__Maybe'('erased', 'erased', V8, V9)) end end end end}, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un-->>=_Monad__Maybe'('erased', 'erased', V12, V13)) end end end end, fun (V14) -> fun (V15) -> ('dn--un--join_Monad__Maybe'('erased', V15)) end end}.
'dn--un--__Impl_Monad_List'() -> {'Idris.Prelude.Interfaces.dn--un--__mkMonad', {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor__List'('erased', 'erased', V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative__List'('erased', V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative__List'('erased', 'erased', V8, V9)) end end end end}, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un-->>=_Monad__List'('erased', 'erased', V12, V13)) end end end end, fun (V14) -> fun (V15) -> ('dn--un--join_Monad__List'('erased', V15)) end end}.
'dn--un--__Impl_Monad_(Either $e)'(V0) -> {'Idris.Prelude.Interfaces.dn--un--__mkMonad', {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> case V4 of {'Idris.Prelude.Types.Left', E0} -> (fun (V5) -> {'Idris.Prelude.Types.Left', V5} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V6) -> {'Idris.Prelude.Types.Right', (V3(V6))} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end end, fun (V7) -> fun (V8) -> {'Idris.Prelude.Types.Right', V8} end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> case V11 of {'Idris.Prelude.Types.Left', E2} -> (fun (V13) -> {'Idris.Prelude.Types.Left', V13} end(E2)); {'Idris.Prelude.Types.Right', E3} -> (fun (V14) -> case V12 of {'Idris.Prelude.Types.Right', E4} -> (fun (V15) -> {'Idris.Prelude.Types.Right', (V14(V15))} end(E4)); {'Idris.Prelude.Types.Left', E5} -> (fun (V16) -> {'Idris.Prelude.Types.Left', V16} end(E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end end}, fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> ('dn--un-->>=_Monad__(Either $e)'('erased', 'erased', 'erased', V19, V20)) end end end end, fun (V21) -> fun (V22) -> ('dn--un--join_Monad__(Either $e)'('erased', 'erased', V22)) end end}.
'dn--un--__Impl_Functor_Stream'(V0, V1, V2, V3) -> ('dn--un--map_Functor__Stream'('erased', 'erased', V2, V3)).
'dn--un--__Impl_Functor_Maybe'(V0, V1, V2, V3) -> ('dn--un--map_Functor__Maybe'('erased', 'erased', V2, V3)).
'dn--un--__Impl_Functor_List'(V0, V1, V2, V3) -> ('dn--un--map_Functor__List'('erased', 'erased', V2, V3)).
'dn--un--__Impl_Functor_(Pair $a)'(V0, V1, V2, V3, V4) -> ('dn--un--map_Functor__(Pair $a)'('erased', 'erased', 'erased', V3, V4)).
'dn--un--__Impl_Functor_(Either $e)'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Prelude.Types.Left', E0} -> (fun (V5) -> {'Idris.Prelude.Types.Left', V5} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V6) -> {'Idris.Prelude.Types.Right', (V3(V6))} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Impl_Foldable_Maybe'() -> {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--foldr_Foldable__Maybe'('erased', 'erased', V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--foldl_Foldable__Maybe'('erased', 'erased', V7, V8, V9)) end end end end end}.
'dn--un--__Impl_Foldable_List'() -> {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--foldr_Foldable__List'('erased', 'erased', V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--foldl_Foldable__List'('erased', 'erased', V7, V8, V9)) end end end end end}.
'dn--un--__Impl_Foldable_(Either $e)'(V0) -> {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('dn--un--foldr_Foldable__(Either $e)'('erased', 'erased', 'erased', V3, V4, V5)) end end end end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('dn--un--foldl_Foldable__(Either $e)'('erased', 'erased', 'erased', V8, V9, V10)) end end end end end}.
'dn--un--__Impl_Eq_Nat'() -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Nat'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Nat'(V2, V3)) end end}.
'dn--un--__Impl_Eq_(Maybe $a)'(V0, V1) -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V2) -> fun (V3) -> ('dn--un--==_Eq__(Maybe $a)'('erased', V1, V2, V3)) end end, fun (V4) -> fun (V5) -> ('dn--un--/=_Eq__(Maybe $a)'('erased', V1, V4, V5)) end end}.
'dn--un--__Impl_Eq_(List $a)'(V0, V1) -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V2) -> fun (V3) -> ('dn--un--==_Eq__(List $a)'('erased', V1, V2, V3)) end end, fun (V4) -> fun (V5) -> ('dn--un--/=_Eq__(List $a)'('erased', V1, V4, V5)) end end}.
'dn--un--__Impl_Eq_((Either $a) $b)'(V0, V1, V2) -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V3) -> fun (V4) -> ('dn--un--==_Eq__((Either $a) $b)'('erased', 'erased', V2, V3, V4)) end end, fun (V5) -> fun (V6) -> ('dn--un--/=_Eq__((Either $a) $b)'('erased', 'erased', V2, V5, V6)) end end}.
'dn--un--__Impl_Cast_String_Integer'(V0) -> ('dn--un--cast_Cast__String_Integer'(V0)).
'dn--un--__Impl_Cast_String_Int'(V0) -> ('dn--un--cast_Cast__String_Int'(V0)).
'dn--un--__Impl_Cast_String_Double'(V0) -> ('dn--un--cast_Cast__String_Double'(V0)).
'dn--un--__Impl_Cast_Nat_Integer'(V0) -> ('dn--un--cast_Cast__Nat_Integer'(V0)).
'dn--un--__Impl_Cast_Nat_Int'(V0) -> ('dn--un--cast_Cast__Nat_Int'(V0)).
'dn--un--__Impl_Cast_Nat_Double'(V0) -> ('dn--un--cast_Cast__Nat_Double'(V0)).
'dn--un--__Impl_Cast_Integer_String'(V0) -> ('dn--un--cast_Cast__Integer_String'(V0)).
'dn--un--__Impl_Cast_Integer_Int'(V0) -> ('dn--un--cast_Cast__Integer_Int'(V0)).
'dn--un--__Impl_Cast_Integer_Double'(V0) -> ('dn--un--cast_Cast__Integer_Double'(V0)).
'dn--un--__Impl_Cast_Integer_Bits8'(V0) -> ('dn--un--cast_Cast__Integer_Bits8'(V0)).
'dn--un--__Impl_Cast_Integer_Bits64'(V0) -> ('dn--un--cast_Cast__Integer_Bits64'(V0)).
'dn--un--__Impl_Cast_Integer_Bits32'(V0) -> ('dn--un--cast_Cast__Integer_Bits32'(V0)).
'dn--un--__Impl_Cast_Integer_Bits16'(V0) -> ('dn--un--cast_Cast__Integer_Bits16'(V0)).
'dn--un--__Impl_Cast_Int_String'(V0) -> ('dn--un--cast_Cast__Int_String'(V0)).
'dn--un--__Impl_Cast_Int_Integer'(V0) -> ('dn--un--cast_Cast__Int_Integer'(V0)).
'dn--un--__Impl_Cast_Int_Double'(V0) -> ('dn--un--cast_Cast__Int_Double'(V0)).
'dn--un--__Impl_Cast_Int_Char'(V0) -> ('dn--un--cast_Cast__Int_Char'(V0)).
'dn--un--__Impl_Cast_Int_Bits8'(V0) -> ('dn--un--cast_Cast__Int_Bits8'(V0)).
'dn--un--__Impl_Cast_Int_Bits64'(V0) -> ('dn--un--cast_Cast__Int_Bits64'(V0)).
'dn--un--__Impl_Cast_Int_Bits32'(V0) -> ('dn--un--cast_Cast__Int_Bits32'(V0)).
'dn--un--__Impl_Cast_Int_Bits16'(V0) -> ('dn--un--cast_Cast__Int_Bits16'(V0)).
'dn--un--__Impl_Cast_Double_String'(V0) -> ('dn--un--cast_Cast__Double_String'(V0)).
'dn--un--__Impl_Cast_Double_Integer'(V0) -> ('dn--un--cast_Cast__Double_Integer'(V0)).
'dn--un--__Impl_Cast_Double_Int'(V0) -> ('dn--un--cast_Cast__Double_Int'(V0)).
'dn--un--__Impl_Cast_Char_String'(V0) -> ('dn--un--cast_Cast__Char_String'(V0)).
'dn--un--__Impl_Cast_Char_Integer'(V0) -> ('dn--un--cast_Cast__Char_Integer'(V0)).
'dn--un--__Impl_Cast_Char_Int'(V0) -> ('dn--un--cast_Cast__Char_Int'(V0)).
'dn--un--__Impl_Cast_Bits8_Integer'(V0) -> ('dn--un--cast_Cast__Bits8_Integer'(V0)).
'dn--un--__Impl_Cast_Bits8_Int'(V0) -> ('dn--un--cast_Cast__Bits8_Int'(V0)).
'dn--un--__Impl_Cast_Bits8_Bits64'(V0) -> ('dn--un--cast_Cast__Bits8_Bits64'(V0)).
'dn--un--__Impl_Cast_Bits8_Bits32'(V0) -> ('dn--un--cast_Cast__Bits8_Bits32'(V0)).
'dn--un--__Impl_Cast_Bits8_Bits16'(V0) -> ('dn--un--cast_Cast__Bits8_Bits16'(V0)).
'dn--un--__Impl_Cast_Bits64_Integer'(V0) -> ('dn--un--cast_Cast__Bits64_Integer'(V0)).
'dn--un--__Impl_Cast_Bits64_Int'(V0) -> ('dn--un--cast_Cast__Bits64_Int'(V0)).
'dn--un--__Impl_Cast_Bits64_Bits8'(V0) -> ('dn--un--cast_Cast__Bits64_Bits8'(V0)).
'dn--un--__Impl_Cast_Bits64_Bits32'(V0) -> ('dn--un--cast_Cast__Bits64_Bits32'(V0)).
'dn--un--__Impl_Cast_Bits64_Bits16'(V0) -> ('dn--un--cast_Cast__Bits64_Bits16'(V0)).
'dn--un--__Impl_Cast_Bits32_Integer'(V0) -> ('dn--un--cast_Cast__Bits32_Integer'(V0)).
'dn--un--__Impl_Cast_Bits32_Int'(V0) -> ('dn--un--cast_Cast__Bits32_Int'(V0)).
'dn--un--__Impl_Cast_Bits32_Bits8'(V0) -> ('dn--un--cast_Cast__Bits32_Bits8'(V0)).
'dn--un--__Impl_Cast_Bits32_Bits64'(V0) -> ('dn--un--cast_Cast__Bits32_Bits64'(V0)).
'dn--un--__Impl_Cast_Bits32_Bits16'(V0) -> ('dn--un--cast_Cast__Bits32_Bits16'(V0)).
'dn--un--__Impl_Cast_Bits16_Integer'(V0) -> ('dn--un--cast_Cast__Bits16_Integer'(V0)).
'dn--un--__Impl_Cast_Bits16_Int'(V0) -> ('dn--un--cast_Cast__Bits16_Int'(V0)).
'dn--un--__Impl_Cast_Bits16_Bits8'(V0) -> ('dn--un--cast_Cast__Bits16_Bits8'(V0)).
'dn--un--__Impl_Cast_Bits16_Bits64'(V0) -> ('dn--un--cast_Cast__Bits16_Bits64'(V0)).
'dn--un--__Impl_Cast_Bits16_Bits32'(V0) -> ('dn--un--cast_Cast__Bits16_Bits32'(V0)).
'dn--un--__Impl_Applicative_Maybe'() -> {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor__Maybe'('erased', 'erased', V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative__Maybe'('erased', V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative__Maybe'('erased', 'erased', V8, V9)) end end end end}.
'dn--un--__Impl_Applicative_List'() -> {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor__List'('erased', 'erased', V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative__List'('erased', V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative__List'('erased', 'erased', V8, V9)) end end end end}.
'dn--un--__Impl_Applicative_(Either $e)'(V0) -> {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> case V4 of {'Idris.Prelude.Types.Left', E0} -> (fun (V5) -> {'Idris.Prelude.Types.Left', V5} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V6) -> {'Idris.Prelude.Types.Right', (V3(V6))} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end end, fun (V7) -> fun (V8) -> {'Idris.Prelude.Types.Right', V8} end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> case V11 of {'Idris.Prelude.Types.Left', E2} -> (fun (V13) -> {'Idris.Prelude.Types.Left', V13} end(E2)); {'Idris.Prelude.Types.Right', E3} -> (fun (V14) -> case V12 of {'Idris.Prelude.Types.Right', E4} -> (fun (V15) -> {'Idris.Prelude.Types.Right', (V14(V15))} end(E4)); {'Idris.Prelude.Types.Left', E5} -> (fun (V16) -> {'Idris.Prelude.Types.Left', V16} end(E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end end}.
'dn--un--__Impl_Alternative_Maybe'() -> {'Idris.Prelude.Interfaces.dn--un--__mkAlternative', {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor__Maybe'('erased', 'erased', V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative__Maybe'('erased', V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative__Maybe'('erased', 'erased', V8, V9)) end end end end}, fun (V10) -> ('dn--un--empty_Alternative__Maybe'('erased')) end, fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--<|>_Alternative__Maybe'('erased', V12, V13)) end end end}.
'dn--un--__Impl_Alternative_List'() -> {'Idris.Prelude.Interfaces.dn--un--__mkAlternative', {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor__List'('erased', 'erased', V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative__List'('erased', V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative__List'('erased', 'erased', V8, V9)) end end end end}, fun (V10) -> ('dn--un--empty_Alternative__List'('erased')) end, fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--<|>_Alternative__List'('erased', V12, V13)) end end end}.
'dn--un-->_Ord__Nat'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__Nat'(V0, V1)), 2)).
'dn--un-->_Ord__(Maybe $a)'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__(Maybe $a)'('erased', V1, V2, V3)), 2)).
'dn--un-->_Ord__(List $a)'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__(List $a)'('erased', V1, V2, V3)), 2)).
'dn--un-->_Ord__((Either $a) $b)'(V0, V1, V2, V3, V4) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__((Either $a) $b)'('erased', 'erased', V2, V3, V4)), 2)).
'dn--un-->>=_Monad__Maybe'(V0, V1, V2, V3) -> case V2 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> {'Idris.Prelude.Types.Nothing'} end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V4) -> (V3(V4)) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un-->>=_Monad__List'(V0, V1, V2, V3) -> (('Idris.Idris2.Prelude.Interfaces':'un--concatMap'('erased', 'erased', 'erased', {'Idris.Builtin.MkPair', {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('dn--un--foldr_Foldable__List'('erased', 'erased', V6, V7, V8)) end end end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--foldl_Foldable__List'('erased', 'erased', V11, V12, V13)) end end end end end}, {'Idris.Prelude.Interfaces.dn--un--__mkMonoid', fun (V14) -> fun (V15) -> ('dn--un--<+>_Semigroup__(List $a)'('erased', V14, V15)) end end, ('dn--un--neutral_Monoid__(List $a)'('erased'))}}, V3))(V2)).
'dn--un-->>=_Monad__(Either $e)'(V0, V1, V2, V3, V4) -> case V3 of {'Idris.Prelude.Types.Left', E0} -> (fun (V5) -> {'Idris.Prelude.Types.Left', V5} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V6) -> (V4(V6)) end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un-->=_Ord__Nat'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__Nat'(V0, V1)), 0)).
'dn--un-->=_Ord__(Maybe $a)'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__(Maybe $a)'('erased', V1, V2, V3)), 0)).
'dn--un-->=_Ord__(List $a)'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__(List $a)'('erased', V1, V2, V3)), 0)).
'dn--un-->=_Ord__((Either $a) $b)'(V0, V1, V2, V3, V4) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__((Either $a) $b)'('erased', 'erased', V2, V3, V4)), 0)).
'dn--un--==_Eq__Nat'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> 0; _ -> 1 end; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> 1; _ -> begin (V3 = (V1 - 1)), ('dn--un--==_Eq__Nat'(V2, V3)) end end end end.
'dn--un--==_Eq__(Maybe $a)'(V0, V1, V2, V3) -> case V2 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> case V3 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> 0 end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V4) -> 1 end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); {'Idris.Prelude.Types.Just', E1} -> (fun (V5) -> case V3 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> 1 end()); {'Idris.Prelude.Types.Just', E2} -> (fun (V6) -> case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E3, E4} -> (fun (V7, V8) -> ((V7(V5))(V6)) end(E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--==_Eq__(List $a)'(V0, V1, V2, V3) -> case V2 of [] -> case V3 of [] -> 0; _ -> 1 end; [E0 | E1] -> (fun (V4, V5) -> case V3 of [E2 | E3] -> (fun (V6, V7) -> ('Idris.Idris2.Prelude.Basics':'un--&&'(case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E4, E5} -> (fun (V8, V9) -> ((V8(V4))(V6)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, fun () -> ('dn--un--==_Eq__(List $a)'('erased', V1, V5, V7)) end)) end(E2, E3)); _ -> 1 end end(E0, E1)); _ -> 1 end.
'dn--un--==_Eq__((Either $a) $b)'(V0, V1, V2, V3, V4) -> case V3 of {'Idris.Prelude.Types.Left', E0} -> (fun (V5) -> case V4 of {'Idris.Prelude.Types.Left', E1} -> (fun (V6) -> case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V2)) of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E2, E3} -> (fun (V7, V8) -> ((V7(V5))(V6)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E1)); _ -> 1 end end(E0)); {'Idris.Prelude.Types.Right', E4} -> (fun (V9) -> case V4 of {'Idris.Prelude.Types.Right', E5} -> (fun (V10) -> case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V2)) of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E6, E7} -> (fun (V11, V12) -> ((V11(V9))(V10)) end(E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E5)); _ -> 1 end end(E4)); _ -> 1 end.
'dn--un--<|>_Alternative__Maybe'(V0, V1, V2) -> case V1 of {'Idris.Prelude.Types.Just', E0} -> (fun (V3) -> {'Idris.Prelude.Types.Just', V3} end(E0)); {'Idris.Prelude.Types.Nothing'} -> (fun () -> V2 end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--<|>_Alternative__List'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types.List':'un--++'('erased', V1, V2)).
'dn--un--<_Ord__Nat'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__Nat'(V0, V1)), 0)).
'dn--un--<_Ord__(Maybe $a)'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__(Maybe $a)'('erased', V1, V2, V3)), 0)).
'dn--un--<_Ord__(List $a)'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__(List $a)'('erased', V1, V2, V3)), 0)).
'dn--un--<_Ord__((Either $a) $b)'(V0, V1, V2, V3, V4) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__((Either $a) $b)'('erased', 'erased', V2, V3, V4)), 0)).
'dn--un--<=_Ord__Nat'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__Nat'(V0, V1)), 2)).
'dn--un--<=_Ord__(Maybe $a)'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__(Maybe $a)'('erased', V1, V2, V3)), 2)).
'dn--un--<=_Ord__(List $a)'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__(List $a)'('erased', V1, V2, V3)), 2)).
'dn--un--<=_Ord__((Either $a) $b)'(V0, V1, V2, V3, V4) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__((Either $a) $b)'('erased', 'erased', V2, V3, V4)), 2)).
'dn--un--<+>_Semigroup__String'(V0, V1) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(V0, V1)).
'dn--un--<+>_Semigroup__(Maybe $a)'(V0, V1, V2) -> case V1 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> V2 end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V3) -> {'Idris.Prelude.Types.Just', V3} end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--<+>_Semigroup__(List $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types.List':'un--++'('erased', V1, V2)).
'dn--un--<*>_Applicative__Maybe'(V0, V1, V2, V3) -> case V2 of {'Idris.Prelude.Types.Just', E0} -> (fun (V4) -> case V3 of {'Idris.Prelude.Types.Just', E1} -> (fun (V5) -> {'Idris.Prelude.Types.Just', (V4(V5))} end(E1)); _ -> {'Idris.Prelude.Types.Nothing'} end end(E0)); _ -> {'Idris.Prelude.Types.Nothing'} end.
'dn--un--<*>_Applicative__List'(V0, V1, V2, V3) -> (('Idris.Idris2.Prelude.Interfaces':'un--concatMap'('erased', 'erased', 'erased', {'Idris.Builtin.MkPair', {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('dn--un--foldr_Foldable__List'('erased', 'erased', V6, V7, V8)) end end end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--foldl_Foldable__List'('erased', 'erased', V11, V12, V13)) end end end end end}, {'Idris.Prelude.Interfaces.dn--un--__mkMonoid', fun (V14) -> fun (V15) -> ('dn--un--<+>_Semigroup__(List $a)'('erased', V14, V15)) end end, ('dn--un--neutral_Monoid__(List $a)'('erased'))}}, fun (V16) -> ('dn--un--map_Functor__List'('erased', 'erased', V16, V3)) end))(V2)).
'dn--un--<*>_Applicative__(Either $e)'(V0, V1, V2, V3, V4) -> case V3 of {'Idris.Prelude.Types.Left', E0} -> (fun (V5) -> {'Idris.Prelude.Types.Left', V5} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V6) -> case V4 of {'Idris.Prelude.Types.Right', E2} -> (fun (V7) -> {'Idris.Prelude.Types.Right', (V6(V7))} end(E2)); {'Idris.Prelude.Types.Left', E3} -> (fun (V8) -> {'Idris.Prelude.Types.Left', V8} end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--/=_Eq__Nat'(V0, V1) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__Nat'(V0, V1)))).
'dn--un--/=_Eq__(Maybe $a)'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__(Maybe $a)'('erased', V1, V2, V3)))).
'dn--un--/=_Eq__(List $a)'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__(List $a)'('erased', V1, V2, V3)))).
'dn--un--/=_Eq__((Either $a) $b)'(V0, V1, V2, V3, V4) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__((Either $a) $b)'('erased', 'erased', V2, V3, V4)))).
'dn--un--+_Num__Nat'(V0, V1) -> (V0 + V1).
'dn--un--*_Num__Nat'(V0, V1) -> (V0 * V1).
'un--unpack'(V0) -> ('case--unpack-3613'(V0, ('un--strUncons'(V0)))).
'un--toUpper'(V0) -> ('case--toUpper-3718'(V0, ('un--isLower'(V0)))).
'un--toLower'(V0) -> ('case--toLower-3732'(V0, ('un--isUpper'(V0)))).
'un--tanh'(V0) -> ('Idris.Idris2.Prelude.Num':'dn--un--/_Fractional__Double'(('un--sinh'(V0)), ('un--cosh'(V0)))).
'un--tan'(V0) -> ('math':'tan'(V0)).
'un--takeUntil'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Stream.::', E0, E1} -> (fun (V3, V4) -> ('case--takeUntil-4297'('erased', V3, V4, V1, (V1(V3)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--takeBefore'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Stream.::', E0, E1} -> (fun (V3, V4) -> ('case--takeBefore-4348'('erased', V3, V4, V1, (V1(V3)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--take'(V0, V1, V2) -> case V1 of 0 -> []; _ -> begin (V3 = (V1 - 1)), case V2 of {'Idris.Prelude.Types.Stream.::', E0, E1} -> (fun (V4, V5) -> [V4 | ('un--take'('erased', V3, (V5())))] end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--tail'(V0, V1) -> case V1 of {'Idris.Prelude.Types.Stream.::', E0, E1} -> (fun (V2, V3) -> (V3()) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--substr'(V0, V1, V2) -> ('case--substr-3564'(V2, V1, V0, ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord__Integer'(('un--natToInteger'(V0)), ('un--natToInteger'(('Idris.Idris2.Prelude.Types.Strings':'un--length'(V2)))))))).
'un--strUncons'(V0) -> case V0 of <<""/utf8>> -> {'Idris.Prelude.Types.Nothing'}; _ -> {'Idris.Prelude.Types.Just', {'Idris.Builtin.MkPair', ('erlang':'hd'(('string':'next_grapheme'(V0)))), case ('string':'next_grapheme'(V0)) of [E0 | E1] when (erlang:'is_binary'(E1)) -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> <<""/utf8>> end}} end.
'un--strCons'(V0, V1) -> (fun (Bin1, Bin2) -> <<Bin1/binary, Bin2/binary>> end(('unicode':'characters_to_binary'([V0 | []])), V1)).
'un--sqrt'(V0) -> ('math':'sqrt'(V0)).
'un--sinh'(V0) -> ('Idris.Idris2.Prelude.Num':'dn--un--/_Fractional__Double'(('Idris.Idris2.Prelude.Num':'dn--un---_Neg__Double'(('un--exp'(V0)), ('un--exp'(('Idris.Idris2.Prelude.Num':'dn--un--negate_Neg__Double'(V0)))))), 2.0)).
'un--sin'(V0) -> ('math':'sin'(V0)).
'un--reverse'(V0) -> ('unicode':'characters_to_binary'(('string':'reverse'(V0)))).
'un--rangeFromTo'(V0, V1) -> case V1 of {'Idris.Prelude.Types.dn--un--__mkRange', E0, E1, E2, E3} -> (fun (V2, V3, V4, V5) -> fun (V6) -> fun (V7) -> ((V2(V6))(V7)) end end end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--rangeFromThenTo'(V0, V1) -> case V1 of {'Idris.Prelude.Types.dn--un--__mkRange', E0, E1, E2, E3} -> (fun (V2, V3, V4, V5) -> fun (V6) -> fun (V7) -> fun (V8) -> (((V3(V6))(V7))(V8)) end end end end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--rangeFromThen'(V0, V1) -> case V1 of {'Idris.Prelude.Types.dn--un--__mkRange', E0, E1, E2, E3} -> (fun (V2, V3, V4, V5) -> fun (V6) -> fun (V7) -> ((V5(V6))(V7)) end end end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--rangeFrom'(V0, V1) -> case V1 of {'Idris.Prelude.Types.dn--un--__mkRange', E0, E1, E2, E3} -> (fun (V2, V3, V4, V5) -> fun (V6) -> (V4(V6)) end end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--pow'(V0, V1) -> ('un--exp'(('Idris.Idris2.Prelude.Num':'dn--un--*_Num__Double'(V1, ('un--log'(V0)))))).
'un--plus'(V0, V1) -> case V0 of 0 -> V1; _ -> begin (V2 = (V0 - 1)), (1 + (V2 + V1)) end end.
'un--pi'() -> 3.141592653589793.
'un--pack'(V0) -> case V0 of [] -> <<""/utf8>>; [E0 | E1] -> (fun (V1, V2) -> ('un--strCons'(V1, ('un--pack'(V2)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--ord'(V0) -> case V0 of E0 when (((erlang:'is_integer'(E0)) andalso (E0 >= 0)) andalso (E0 =< 1114111)) -> E0; _ -> 65533 end.
'un--natToInteger'(V0) -> case V0 of 0 -> 0; _ -> begin (V1 = (V0 - 1)), (1 + ('un--natToInteger'(V1))) end end.
'un--mult'(V0, V1) -> case V0 of 0 -> 0; _ -> begin (V2 = (V0 - 1)), (V1 + (V2 * V1)) end end.
'un--minus'(V0, V1) -> case V0 of 0 -> 0; _ -> case V1 of 0 -> V0; _ -> case V0 of 0 -> ('erlang':'throw'("Nat case not covered")); _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> ('erlang':'throw'("Nat case not covered")); _ -> begin (V3 = (V1 - 1)), ('un--minus'(V2, V3)) end end end end end end.
'un--maybe'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> (V2()) end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V5) -> ((V3())(V5)) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--mapFst'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V5, V6) -> {'Idris.Builtin.MkPair', (V3(V5)), V6} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--log'(V0) -> ('math':'log'(V0)).
'un--isUpper'(V0) -> ('Idris.Idris2.Prelude.Basics':'un--&&'(('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord__Char'(V0, $A)), fun () -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord__Char'(V0, $Z)) end)).
'un--isSpace'(V0) -> ('Idris.Idris2.Prelude.Basics':'un--||'(('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Char'(V0, $ )), fun () -> ('Idris.Idris2.Prelude.Basics':'un--||'(('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Char'(V0, $\x{9})), fun () -> ('Idris.Idris2.Prelude.Basics':'un--||'(('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Char'(V0, $\x{d})), fun () -> ('Idris.Idris2.Prelude.Basics':'un--||'(('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Char'(V0, $\x{a})), fun () -> ('Idris.Idris2.Prelude.Basics':'un--||'(('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Char'(V0, $\x{c})), fun () -> ('Idris.Idris2.Prelude.Basics':'un--||'(('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Char'(V0, $\x{b})), fun () -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Char'(V0, $\x{a0})) end)) end)) end)) end)) end)) end)).
'un--isOctDigit'(V0) -> ('Idris.Idris2.Prelude.Basics':'un--&&'(('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord__Char'(V0, $0)), fun () -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord__Char'(V0, $7)) end)).
'un--isNL'(V0) -> ('Idris.Idris2.Prelude.Basics':'un--||'(('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Char'(V0, $\x{d})), fun () -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Char'(V0, $\x{a})) end)).
'un--isLower'(V0) -> ('Idris.Idris2.Prelude.Basics':'un--&&'(('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord__Char'(V0, $a)), fun () -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord__Char'(V0, $z)) end)).
'un--isHexDigit'(V0) -> ('un--elem'('erased', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V1) -> fun (V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Char'(V1, V2)) end end, fun (V3) -> fun (V4) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Char'(V3, V4)) end end}, ('un--toUpper'(V0)), ('nested--3849-3744--in--un--hexChars'(V0)))).
'un--isDigit'(V0) -> ('Idris.Idris2.Prelude.Basics':'un--&&'(('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord__Char'(V0, $0)), fun () -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord__Char'(V0, $9)) end)).
'un--isControl'(V0) -> ('Idris.Idris2.Prelude.Basics':'un--||'(('Idris.Idris2.Prelude.Basics':'un--&&'(('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord__Char'(V0, $\x{0})), fun () -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord__Char'(V0, $\x{1f})) end)), fun () -> ('Idris.Idris2.Prelude.Basics':'un--&&'(('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord__Char'(V0, $\x{7f})), fun () -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord__Char'(V0, $\x{9f})) end)) end)).
'un--isAlphaNum'(V0) -> ('Idris.Idris2.Prelude.Basics':'un--||'(('un--isDigit'(V0)), fun () -> ('un--isAlpha'(V0)) end)).
'un--isAlpha'(V0) -> ('Idris.Idris2.Prelude.Basics':'un--||'(('un--isUpper'(V0)), fun () -> ('un--isLower'(V0)) end)).
'un--integerToNat'(V0) -> ('case--integerToNat-488'(V0, case case (V0 =< 0) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end)).
'un--head'(V0, V1) -> case V1 of {'Idris.Prelude.Types.Stream.::', E0, E1} -> (fun (V2, V3) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--floor'(V0) -> ('erlang':'floor'(V0)).
'un--fastPack'(V0) -> ('unicode':'characters_to_binary'(V0)).
'un--exp'(V0) -> ('math':'pow'(2.718281828459045, V0)).
'un--euler'() -> 2.718281828459045.
'un--elem'(V0, V1, V2, V3) -> case V3 of [] -> 1; [E0 | E1] -> (fun (V4, V5) -> ('Idris.Idris2.Prelude.Basics':'un--||'(case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E2, E3} -> (fun (V6, V7) -> ((V6(V2))(V4)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, fun () -> ('un--elem'('erased', V1, V2, V5)) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--either'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Idris.Prelude.Types.Left', E0} -> (fun (V6) -> ((V3())(V6)) end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V7) -> ((V4())(V7)) end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--countFrom'(V0, V1, V2) -> {'Idris.Prelude.Types.Stream.::', V1, fun () -> ('un--countFrom'('erased', (V2(V1)), V2)) end}.
'un--cosh'(V0) -> ('Idris.Idris2.Prelude.Num':'dn--un--/_Fractional__Double'(('Idris.Idris2.Prelude.Num':'dn--un--+_Num__Double'(('un--exp'(V0)), ('un--exp'(('Idris.Idris2.Prelude.Num':'dn--un--negate_Neg__Double'(V0)))))), 2.0)).
'un--cos'(V0) -> ('math':'cos'(V0)).
'un--chr'(V0) -> case V0 of E0 when (((erlang:'is_integer'(E0)) andalso (E0 >= 0)) andalso (E0 =< 1114111)) -> E0; _ -> 65533 end.
'un--ceiling'(V0) -> ('erlang':'ceil'(V0)).
'un--cast'(V0, V1, V2, V3) -> (V2(V3)).
'un--atan'(V0) -> ('math':'atan'(V0)).
'un--asin'(V0) -> ('math':'asin'(V0)).
'un--acos'(V0) -> ('math':'acos'(V0)).
