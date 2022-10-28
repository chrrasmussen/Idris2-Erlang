-module('Idris.Idris2.Data.Nat').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--cmp-4205'/3,
  'case--case block in minusLtMonotone-5313'/4,
  'case--minusLtMonotone-5274'/3,
  'case--minusPos-5194'/2,
  'case--divmod\x{27}-4035'/4,
  'case--div\x{27}-3921'/4,
  'case--mod\x{27}-3853'/4,
  'case--isLTE-3335'/3,
  'case--connex-3132'/4,
  'dn--un--uninhabited_Uninhabited_(|((Builtin.=== Z) (S $n)),((Builtin.~=~ Z) (S $n))|)'/1,
  'dn--un--uninhabited_Uninhabited_(|((Builtin.=== (S $n)) Z),((Builtin.~=~ (S $n)) Z)|)'/1,
  'dn--un--uninhabited_Uninhabited_(|((Builtin.=== (S $a)) (S $b)),((Builtin.~=~ (S $a)) (S $b))|)'/2,
  'dn--un--uninhabited_Uninhabited_(NonZero Z)'/1,
  'dn--un--uninhabited_Uninhabited_(IsSucc Z)'/1,
  'dn--un--uninhabited_Uninhabited_((NotBothZero (fromInteger 0)) (fromInteger 0))'/1,
  'dn--un--uninhabited_Uninhabited_((LTE (S $n)) Z)'/1,
  'dn--un--uninhabited_Uninhabited_((LTE (S $m)) (S $n))'/2,
  'dn--un--transitive_Transitive_Nat_LTE'/5,
  'dn--un--reflexive_Reflexive_Nat_LTE'/1,
  'dn--un--mod_Integral_Nat'/2,
  'dn--un--injective_Injective_S'/3,
  'dn--un--div_Integral_Nat'/2,
  'dn--un--connex_Connex_Nat_LTE'/3,
  'dn--un--antisymmetric_Antisymmetric_Nat_LTE'/4,
  'dn--un--__Impl_Uninhabited_(|((Builtin.=== Z) (S $n)),((Builtin.~=~ Z) (S $n))|)'/1,
  'dn--un--__Impl_Uninhabited_(|((Builtin.=== (S $n)) Z),((Builtin.~=~ (S $n)) Z)|)'/1,
  'dn--un--__Impl_Uninhabited_(|((Builtin.=== (S $a)) (S $b)),((Builtin.~=~ (S $a)) (S $b))|)'/2,
  'dn--un--__Impl_Uninhabited_(NonZero Z)'/1,
  'dn--un--__Impl_Uninhabited_(IsSucc Z)'/1,
  'dn--un--__Impl_Uninhabited_((NotBothZero (fromInteger 0)) (fromInteger 0))'/1,
  'dn--un--__Impl_Uninhabited_((LTE (S $n)) Z)'/1,
  'dn--un--__Impl_Uninhabited_((LTE (S $m)) (S $n))'/2,
  'dn--un--__Impl_Transitive_Nat_LTE'/5,
  'dn--un--__Impl_Reflexive_Nat_LTE'/1,
  'dn--un--__Impl_Preorder_Nat_LTE'/0,
  'dn--un--__Impl_PartialOrder_Nat_LTE'/0,
  'dn--un--__Impl_LinearOrder_Nat_LTE'/0,
  'dn--un--__Impl_Integral_Nat'/0,
  'dn--un--__Impl_Injective_S'/0,
  'dn--un--__Impl_Connex_Nat_LTE'/3,
  'dn--un--__Impl_Antisymmetric_Nat_LTE'/4,
  'un--zeroPlusLeftZero'/3,
  'un--zeroMultEitherZero'/3,
  'un--succNotLTEzero'/1,
  'un--succNotLTEpred'/2,
  'un--sucMinR'/1,
  'un--sucMinL'/1,
  'un--sucMaxR'/1,
  'un--sucMaxL'/1,
  'un--pred'/1,
  'un--power'/2,
  'un--plusZeroRightNeutral'/1,
  'un--plusZeroLeftNeutral'/1,
  'un--plusSuccRightSucc'/2,
  'un--plusRightCancel'/4,
  'un--plusOneSucc'/1,
  'un--plusMinusLte'/3,
  'un--plusMinusLeftCancel'/3,
  'un--plusLteMonotoneRight'/4,
  'un--plusLteMonotoneLeft'/4,
  'un--plusLteMonotone'/6,
  'un--plusLeftLeftRightZero'/3,
  'un--plusLeftCancel'/4,
  'un--plusConstantRight'/4,
  'un--plusConstantLeft'/4,
  'un--plusCommutative'/2,
  'un--plusAssociative'/3,
  'un--notLTImpliesGTE'/3,
  'un--notLTEImpliesGT'/3,
  'un--multZeroRightZero'/1,
  'un--multZeroLeftZero'/1,
  'un--multRightSuccPlus'/2,
  'un--multOneRightNeutral'/1,
  'un--multOneLeftNeutral'/1,
  'un--multLeftSuccPlus'/2,
  'un--multDistributesOverPlusRight'/3,
  'un--multDistributesOverPlusLeft'/3,
  'un--multDistributesOverMinusRight'/3,
  'un--multDistributesOverMinusLeft'/3,
  'un--multCommutative'/2,
  'un--multAssociative'/3,
  'un--modNatNZ'/2,
  'un--modNat'/2,
  'un--mod\x{27}'/3,
  'un--minusZeroRight'/1,
  'un--minusZeroN'/1,
  'un--minusZeroLeft'/1,
  'un--minusSuccSucc'/2,
  'un--minusSuccOne'/1,
  'un--minusPos'/1,
  'un--minusPlusZero'/2,
  'un--minusPlus'/1,
  'un--minusOneSuccN'/1,
  'un--minusMinusMinusPlus'/3,
  'un--minusLteMonotone'/2,
  'un--minusLtMonotone'/2,
  'un--minimumZeroZeroLeft'/1,
  'un--minimumSuccSucc'/2,
  'un--minimumIdempotent'/1,
  'un--minimumCommutative'/2,
  'un--minimumAssociative'/3,
  'un--minimum'/2,
  'un--maximumZeroNLeft'/1,
  'un--maximumSuccSucc'/2,
  'un--maximumRightUpperBound'/2,
  'un--maximumLeftUpperBound'/2,
  'un--maximumIdempotent'/1,
  'un--maximumCommutative'/2,
  'un--maximumAssociative'/3,
  'un--maximum'/2,
  'un--lteSuccRight'/1,
  'un--lteSuccLeft'/1,
  'un--lteReflectsLTE'/3,
  'un--lteAddRight'/1,
  'un--lte'/2,
  'un--ltReflectsLT'/3,
  'un--ltOpReflectsLT'/3,
  'un--lt'/2,
  'un--lcm'/2,
  'un--isZero'/1,
  'un--isSucc'/1,
  'un--isLTE'/2,
  'un--isLT'/2,
  'un--isItSucc'/1,
  'un--isGTE'/2,
  'un--isGT'/2,
  'un--hyper'/3,
  'un--gteReflectsGTE'/3,
  'un--gte'/2,
  'un--gtReflectsGT'/3,
  'un--gt'/2,
  'un--gcd'/2,
  'un--fromLteSucc'/1,
  'un--eqSucc'/1,
  'un--divmodNatNZ'/2,
  'un--divmod\x{27}'/3,
  'un--divNatNZ'/2,
  'un--divNat'/2,
  'un--divCeilNZ'/2,
  'un--divCeil'/2,
  'un--div\x{27}'/3,
  'un--compareNatFlip'/2,
  'un--compareNatDiag'/1,
  'un--cmp'/2,
  'un--SIsNotZ'/1,
  'un--LTImpliesNotGTE'/2,
  'un--LTEImpliesNotGT'/2,
  'un--LT'/2,
  'un--GTE'/2,
  'un--GT'/2
]).
'with--cmp-4205'(V0, V1, V2) -> V2.
'case--case block in minusLtMonotone-5313'(V0, V1, V2, V3) -> case V0 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V4 = (V0 - 1)), case V4 of 0 -> case V3 of {'Data.Nat.LT.LTZero'} -> ('un--minusPos'(V1)); _ -> case V3 of {'Data.Nat.LT.LTSucc', V5} -> ('un--minusLtMonotone'(V4, V1)) end end; _ -> case V3 of {'Data.Nat.LT.LTSucc', V6} -> ('un--minusLtMonotone'(V4, V1)) end end end end.
'case--minusLtMonotone-5274'(V0, V1, V2) -> case V0 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V3 = (V0 - 1)), case V3 of 0 -> case V2 of {'Data.Nat.LT.LTZero'} -> V1; _ -> case V2 of {'Data.Nat.LT.LTSucc', V4} -> begin (V5 = (V3 + 1)), ('case--case block in minusLtMonotone-5313'(V1, V3, V5, ('Idris.Idris2.Data.Nat.LT':'un--view'(V1)))) end end end; _ -> case V2 of {'Data.Nat.LT.LTSucc', V6} -> begin (V7 = (V3 + 1)), ('case--case block in minusLtMonotone-5313'(V1, V3, V7, ('Idris.Idris2.Data.Nat.LT':'un--view'(V1)))) end end end end end.
'case--minusPos-5194'(V0, V1) -> case V0 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V2 = (V0 - 1)), case V2 of 0 -> case V1 of {'Data.Nat.LT.LTZero'} -> ('Idris.Idris2.Data.Nat.LT':'un--ltZero'()); _ -> case V1 of {'Data.Nat.LT.LTSucc', V3} -> ('un--minusPos'(V2)) end end; _ -> case V1 of {'Data.Nat.LT.LTSucc', V4} -> ('un--minusPos'(V2)) end end end end.
'case--divmod\x{27}-4035'(V0, V1, V2, V3) -> case V3 of 1 -> {'Builtin.MkPair', 0, V2}; 0 -> begin (V4 = ('un--divmod\x{27}'(V0, ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'((V2 - (V1 + 1)))), V1))), {'Builtin.MkPair', (('Idris.Idris2.Builtin':'un--fst'(V4)) + 1), ('Idris.Idris2.Builtin':'un--snd'(V4))} end end.
'case--div\x{27}-3921'(V0, V1, V2, V3) -> case V3 of 1 -> 0; 0 -> (('un--div\x{27}'(V0, ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'((V2 - (V1 + 1)))), V1)) + 1) end.
'case--mod\x{27}-3853'(V0, V1, V2, V3) -> case V3 of 1 -> V2; 0 -> ('un--mod\x{27}'(V0, ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'((V2 - (V1 + 1)))), V1)) end.
'case--isLTE-3335'(V0, V1, V2) -> case V2 of {'Prelude.Types.No', V3} -> {'Prelude.Types.No', fun (V4) -> (V3(('un--fromLteSucc'(V4)))) end}; {'Prelude.Types.Yes', V5} -> {'Prelude.Types.Yes', (V5 + 1)} end.
'case--connex-3132'(V0, V1, V2, V3) -> case V3 of {'Prelude.Types.Left', V4} -> {'Prelude.Types.Left', (V4 + 1)}; {'Prelude.Types.Right', V5} -> {'Prelude.Types.Right', (V5 + 1)} end.
'dn--un--uninhabited_Uninhabited_(|((Builtin.=== Z) (S $n)),((Builtin.~=~ Z) (S $n))|)'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--uninhabited_Uninhabited_(|((Builtin.=== (S $n)) Z),((Builtin.~=~ (S $n)) Z)|)'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--uninhabited_Uninhabited_(|((Builtin.=== (S $a)) (S $b)),((Builtin.~=~ (S $a)) (S $b))|)'(V0, V1) -> (begin (V2 = V0), fun (V3) -> (V2(V3)) end end({'Builtin.Refl'})).
'dn--un--uninhabited_Uninhabited_(NonZero Z)'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--uninhabited_Uninhabited_(IsSucc Z)'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--uninhabited_Uninhabited_((NotBothZero (fromInteger 0)) (fromInteger 0))'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--uninhabited_Uninhabited_((LTE (S $n)) Z)'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--uninhabited_Uninhabited_((LTE (S $m)) (S $n))'(V0, V1) -> case V1 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V2 = (V1 - 1)), (begin (V3 = V0), fun (V4) -> (V3(V4)) end end(V2)) end end.
'dn--un--transitive_Transitive_Nat_LTE'(V0, V1, V2, V3, V4) -> case V0 of 0 -> case V3 of 0 -> 0; _ -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})) end; _ -> begin (V5 = (V0 - 1)), case V1 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V6 = (V1 - 1)), case V2 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V7 = (V2 - 1)), case V3 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V8 = (V3 - 1)), case V4 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V9 = (V4 - 1)), (((begin (V15 = fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> ('dn--un--transitive_Transitive_Nat_LTE'(V10, V11, V12, V13, V14)) end end end end end), fun (V16) -> fun (V17) -> (((((V15(V5))(V6))(V7))(V16))(V17)) end end end(V8))(V9)) + 1) end end end end end end end end end end.
'dn--un--reflexive_Reflexive_Nat_LTE'(V0) -> case V0 of 0 -> 0; _ -> begin (V1 = (V0 - 1)), (begin (V3 = fun (V2) -> ('dn--un--reflexive_Reflexive_Nat_LTE'(V2)) end), (V3(V1)) end + 1) end end.
'dn--un--mod_Integral_Nat'(V0, V1) -> ('un--modNat'(V0, V1)).
'dn--un--injective_Injective_S'(V0, V1, V2) -> {'Builtin.Refl'}.
'dn--un--div_Integral_Nat'(V0, V1) -> ('un--divNat'(V0, V1)).
'dn--un--connex_Connex_Nat_LTE'(V0, V1, V2) -> case V0 of 0 -> {'Prelude.Types.Left', 0}; _ -> case V1 of 0 -> {'Prelude.Types.Right', 0}; _ -> case V0 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V3 = (V0 - 1)), case V1 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V4 = (V1 - 1)), case (begin (V9 = fun (V6) -> fun (V7) -> fun (V8) -> ('dn--un--connex_Connex_Nat_LTE'(V6, V7, V8)) end end end), fun (V10) -> (((V9(V3))(V4))(V10)) end end(fun (V5) -> (V2({'Builtin.Refl'})) end)) of {'Prelude.Types.Left', V11} -> {'Prelude.Types.Left', (V11 + 1)}; {'Prelude.Types.Right', V12} -> {'Prelude.Types.Right', (V12 + 1)} end end end end end end end.
'dn--un--antisymmetric_Antisymmetric_Nat_LTE'(V0, V1, V2, V3) -> case V0 of 0 -> case V1 of 0 -> case V2 of 0 -> case V3 of 0 -> {'Builtin.Refl'}; _ -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})) end; _ -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})) end; _ -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})) end; _ -> case V1 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> case V2 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> case V3 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> {'Builtin.Refl'} end end end end.
'dn--un--__Impl_Uninhabited_(|((Builtin.=== Z) (S $n)),((Builtin.~=~ Z) (S $n))|)'(V0) -> ('dn--un--uninhabited_Uninhabited_(|((Builtin.=== Z) (S $n)),((Builtin.~=~ Z) (S $n))|)'(V0)).
'dn--un--__Impl_Uninhabited_(|((Builtin.=== (S $n)) Z),((Builtin.~=~ (S $n)) Z)|)'(V0) -> ('dn--un--uninhabited_Uninhabited_(|((Builtin.=== (S $n)) Z),((Builtin.~=~ (S $n)) Z)|)'(V0)).
'dn--un--__Impl_Uninhabited_(|((Builtin.=== (S $a)) (S $b)),((Builtin.~=~ (S $a)) (S $b))|)'(V0, V1) -> ('dn--un--uninhabited_Uninhabited_(|((Builtin.=== (S $a)) (S $b)),((Builtin.~=~ (S $a)) (S $b))|)'(V0, V1)).
'dn--un--__Impl_Uninhabited_(NonZero Z)'(V0) -> ('dn--un--uninhabited_Uninhabited_(NonZero Z)'(V0)).
'dn--un--__Impl_Uninhabited_(IsSucc Z)'(V0) -> ('dn--un--uninhabited_Uninhabited_(IsSucc Z)'(V0)).
'dn--un--__Impl_Uninhabited_((NotBothZero (fromInteger 0)) (fromInteger 0))'(V0) -> ('dn--un--uninhabited_Uninhabited_((NotBothZero (fromInteger 0)) (fromInteger 0))'(V0)).
'dn--un--__Impl_Uninhabited_((LTE (S $n)) Z)'(V0) -> ('dn--un--uninhabited_Uninhabited_((LTE (S $n)) Z)'(V0)).
'dn--un--__Impl_Uninhabited_((LTE (S $m)) (S $n))'(V0, V1) -> ('dn--un--uninhabited_Uninhabited_((LTE (S $m)) (S $n))'(V0, V1)).
'dn--un--__Impl_Transitive_Nat_LTE'(V0, V1, V2, V3, V4) -> ('dn--un--transitive_Transitive_Nat_LTE'(V0, V1, V2, V3, V4)).
'dn--un--__Impl_Reflexive_Nat_LTE'(V0) -> ('dn--un--reflexive_Reflexive_Nat_LTE'(V0)).
'dn--un--__Impl_Preorder_Nat_LTE'() -> {'Control.Order.dn--un--__mkPreorder', fun (V0) -> ('dn--un--reflexive_Reflexive_Nat_LTE'(V0)) end, fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('dn--un--transitive_Transitive_Nat_LTE'(V1, V2, V3, V4, V5)) end end end end end}.
'dn--un--__Impl_PartialOrder_Nat_LTE'() -> {'Control.Order.dn--un--__mkPartialOrder', {'Control.Order.dn--un--__mkPreorder', fun (V0) -> ('dn--un--reflexive_Reflexive_Nat_LTE'(V0)) end, fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('dn--un--transitive_Transitive_Nat_LTE'(V1, V2, V3, V4, V5)) end end end end end}, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--antisymmetric_Antisymmetric_Nat_LTE'(V6, V7, V8, V9)) end end end end}.
'dn--un--__Impl_LinearOrder_Nat_LTE'() -> {'Control.Order.dn--un--__mkLinearOrder', {'Control.Order.dn--un--__mkPartialOrder', {'Control.Order.dn--un--__mkPreorder', fun (V0) -> ('dn--un--reflexive_Reflexive_Nat_LTE'(V0)) end, fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('dn--un--transitive_Transitive_Nat_LTE'(V1, V2, V3, V4, V5)) end end end end end}, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--antisymmetric_Antisymmetric_Nat_LTE'(V6, V7, V8, V9)) end end end end}, fun (V10) -> fun (V11) -> fun (V12) -> ('dn--un--connex_Connex_Nat_LTE'(V10, V11, V12)) end end end}.
'dn--un--__Impl_Integral_Nat'() -> {'Prelude.Num.MkIntegral', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V4)) end}, fun (V5) -> fun (V6) -> ('un--divNat'(V5, V6)) end end, fun (V7) -> fun (V8) -> ('un--modNat'(V7, V8)) end end}.
'dn--un--__Impl_Injective_S'() -> {'Control.Function.MkInjective', fun (V0) -> (V0 + 1) end, fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--injective_Injective_S'(V1, V2, V3)) end end end}.
'dn--un--__Impl_Connex_Nat_LTE'(V0, V1, V2) -> ('dn--un--connex_Connex_Nat_LTE'(V0, V1, V2)).
'dn--un--__Impl_Antisymmetric_Nat_LTE'(V0, V1, V2, V3) -> ('dn--un--antisymmetric_Antisymmetric_Nat_LTE'(V0, V1, V2, V3)).
'un--zeroPlusLeftZero'(V0, V1, V2) -> case V0 of 0 -> case V1 of 0 -> {'Builtin.Refl'}; _ -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})) end; _ -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})) end.
'un--zeroMultEitherZero'(V0, V1, V2) -> case V0 of 0 -> {'Prelude.Types.Left', {'Builtin.Refl'}}; _ -> begin (V3 = (V0 - 1)), {'Prelude.Types.Right', ('un--zeroPlusLeftZero'(V1, (V3 * V1), {'Builtin.Refl'}))} end end.
'un--succNotLTEzero'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'un--succNotLTEpred'(V0, V1) -> case V0 of 0 -> ('un--succNotLTEzero'(V1)); _ -> begin (V2 = (V0 - 1)), ('un--succNotLTEpred'(V2, ('un--fromLteSucc'(V1)))) end end.
'un--sucMinR'(V0) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end.
'un--sucMinL'(V0) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end.
'un--sucMaxR'(V0) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end.
'un--sucMaxL'(V0) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end.
'un--pred'(V0) -> case V0 of 0 -> 0; _ -> begin (V1 = (V0 - 1)), V1 end end.
'un--power'(V0, V1) -> case V1 of 0 -> 1; _ -> begin (V2 = (V1 - 1)), (V0 * ('un--power'(V0, V2))) end end.
'un--plusZeroRightNeutral'(V0) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end.
'un--plusZeroLeftNeutral'(V0) -> {'Builtin.Refl'}.
'un--plusSuccRightSucc'(V0, V1) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end.
'un--plusRightCancel'(V0, V1, V2, V3) -> ('un--plusLeftCancel'(V2, V0, V1, V3)).
'un--plusOneSucc'(V0) -> {'Builtin.Refl'}.
'un--plusMinusLte'(V0, V1, V2) -> case V0 of 0 -> ('un--plusZeroRightNeutral'(V1)); _ -> case V1 of 0 -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V3) -> ('dn--un--uninhabited_Uninhabited_((LTE (S $n)) Z)'(V3)) end, V2)); _ -> {'Builtin.Refl'} end end.
'un--plusMinusLeftCancel'(V0, V1, V2) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end.
'un--plusLteMonotoneRight'(V0, V1, V2, V3) -> case V1 of 0 -> case V3 of 0 -> V0; _ -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})) end; _ -> begin (V4 = (V1 - 1)), case V2 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V5 = (V2 - 1)), case V3 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V6 = (V3 - 1)), (('un--plusLteMonotoneRight'(V0, V4, V5, V6)) + 1) end end end end end end.
'un--plusLteMonotoneLeft'(V0, V1, V2, V3) -> ('un--plusLteMonotoneRight'(V0, V1, V2, V3)).
'un--plusLteMonotone'(V0, V1, V2, V3, V4, V5) -> ('dn--un--transitive_Transitive_Nat_LTE'((V0 + V2), (V0 + V3), (V1 + V3), ('un--plusLteMonotoneLeft'(V0, V2, V3, V5)), ('un--plusLteMonotoneRight'(V3, V0, V1, V4)))).
'un--plusLeftLeftRightZero'(V0, V1, V2) -> ('un--plusLeftCancel'(V0, V1, 0, V2)).
'un--plusLeftCancel'(V0, V1, V2, V3) -> case V0 of 0 -> V3; _ -> begin (V4 = (V0 - 1)), ('un--plusLeftCancel'(V4, V1, V2, ('dn--un--injective_Injective_S'((V4 + V1), (V4 + V2), V3)))) end end.
'un--plusConstantRight'(V0, V1, V2, V3) -> {'Builtin.Refl'}.
'un--plusConstantLeft'(V0, V1, V2, V3) -> {'Builtin.Refl'}.
'un--plusCommutative'(V0, V1) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end.
'un--plusAssociative'(V0, V1, V2) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end.
'un--notLTImpliesGTE'(V0, V1, V2) -> ('un--fromLteSucc'(('un--notLTEImpliesGT'((V0 + 1), V1, V2)))).
'un--notLTEImpliesGT'(V0, V1, V2) -> case V0 of 0 -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V3) -> V3 end, (V2(0)))); _ -> begin (V4 = (V0 - 1)), case V1 of 0 -> 1; _ -> begin (V5 = (V1 - 1)), (('un--notLTEImpliesGT'(V4, V5, fun (V6) -> (V2((V6 + 1))) end)) + 1) end end end end.
'un--multZeroRightZero'(V0) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> begin (V1 = (V0 - 1)), ('un--multZeroRightZero'(V1)) end end.
'un--multZeroLeftZero'(V0) -> {'Builtin.Refl'}.
'un--multRightSuccPlus'(V0, V1) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end.
'un--multOneRightNeutral'(V0) -> ('un--multOneLeftNeutral'(V0)).
'un--multOneLeftNeutral'(V0) -> ('un--plusZeroRightNeutral'(V0)).
'un--multLeftSuccPlus'(V0, V1) -> {'Builtin.Refl'}.
'un--multDistributesOverPlusRight'(V0, V1, V2) -> ('un--multDistributesOverPlusLeft'(V1, V2, V0)).
'un--multDistributesOverPlusLeft'(V0, V1, V2) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end.
'un--multDistributesOverMinusRight'(V0, V1, V2) -> {'Builtin.Refl'}.
'un--multDistributesOverMinusLeft'(V0, V1, V2) -> case V0 of 0 -> case V1 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end; _ -> case V1 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end end.
'un--multCommutative'(V0, V1) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end.
'un--multAssociative'(V0, V1, V2) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end.
'un--modNatNZ'(V0, V1) -> case V1 of 0 -> ('Idris.Idris2.Prelude.Uninhabited':'un--void'('erased')); _ -> begin (V2 = (V1 - 1)), ('un--mod\x{27}'(V0, V0, V2)) end end.
'un--modNat'(V0, V1) -> case V1 of 0 -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Data.Nat.modNat at Data.Nat:336:1--336:59"/utf8>>)); _ -> begin (V2 = (V1 - 1)), ('un--modNatNZ'(V0, (V2 + 1))) end end.
'un--mod\x{27}'(V0, V1, V2) -> case V0 of 0 -> V1; _ -> begin (V3 = (V0 - 1)), case ('un--lte'(V1, V2)) of 1 -> V1; 0 -> ('un--mod\x{27}'(V3, ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'((V1 - (V2 + 1)))), V2)) end end end.
'un--minusZeroRight'(V0) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end.
'un--minusZeroN'(V0) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> begin (V1 = (V0 - 1)), ('un--minusZeroN'(V1)) end end.
'un--minusZeroLeft'(V0) -> {'Builtin.Refl'}.
'un--minusSuccSucc'(V0, V1) -> {'Builtin.Refl'}.
'un--minusSuccOne'(V0) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end.
'un--minusPos'(V0) -> ('case--minusPos-5194'(V0, ('Idris.Idris2.Data.Nat.LT':'un--view'(V0)))).
'un--minusPlusZero'(V0, V1) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> begin (V2 = (V0 - 1)), ('un--minusPlusZero'(V2, V1)) end end.
'un--minusPlus'(V0) -> case V0 of 0 -> ('Idris.Idris2.Prelude.Basics':'un--irrelevantEq'()); _ -> begin (V1 = (V0 - 1)), ('un--minusPlus'(V1)) end end.
'un--minusOneSuccN'(V0) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> begin (V1 = (V0 - 1)), ('un--minusOneSuccN'(V1)) end end.
'un--minusMinusMinusPlus'(V0, V1, V2) -> case V0 of 0 -> case V1 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end; _ -> case V1 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end end.
'un--minusLteMonotone'(V0, V1) -> case V1 of 0 -> 0; _ -> case V0 of 0 -> case V1 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> V1 end; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V3 = (V1 - 1)), ('un--minusLteMonotone'(V2, V3)) end end end end end.
'un--minusLtMonotone'(V0, V1) -> ('case--minusLtMonotone-5274'(V1, V0, ('Idris.Idris2.Data.Nat.LT':'un--view'(V1)))).
'un--minimumZeroZeroLeft'(V0) -> {'Builtin.Refl'}.
'un--minimumSuccSucc'(V0, V1) -> {'Builtin.Refl'}.
'un--minimumIdempotent'(V0) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end.
'un--minimumCommutative'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end; _ -> case V1 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end end.
'un--minimumAssociative'(V0, V1, V2) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> case V1 of 0 -> {'Builtin.Refl'}; _ -> case V2 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end end end.
'un--minimum'(V0, V1) -> case V0 of 0 -> 0; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> 0; _ -> begin (V3 = (V1 - 1)), (('un--minimum'(V2, V3)) + 1) end end end end.
'un--maximumZeroNLeft'(V0) -> {'Builtin.Refl'}.
'un--maximumSuccSucc'(V0, V1) -> {'Builtin.Refl'}.
'un--maximumRightUpperBound'(V0, V1) -> case V0 of 0 -> ('dn--un--reflexive_Reflexive_Nat_LTE'(('un--maximum'(0, V1)))); _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> 0; _ -> begin (V3 = (V1 - 1)), (('un--maximumRightUpperBound'(V2, V3)) + 1) end end end end.
'un--maximumLeftUpperBound'(V0, V1) -> case V0 of 0 -> 0; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> ('dn--un--reflexive_Reflexive_Nat_LTE'(('un--maximum'((V2 + 1), 0)))); _ -> begin (V3 = (V1 - 1)), (('un--maximumLeftUpperBound'(V2, V3)) + 1) end end end end.
'un--maximumIdempotent'(V0) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end.
'un--maximumCommutative'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end; _ -> case V1 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end end.
'un--maximumAssociative'(V0, V1, V2) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> case V1 of 0 -> {'Builtin.Refl'}; _ -> case V2 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end end end.
'un--maximum'(V0, V1) -> case V0 of 0 -> V1; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> (V2 + 1); _ -> begin (V3 = (V1 - 1)), (('un--maximum'(V2, V3)) + 1) end end end end.
'un--lteSuccRight'(V0) -> V0.
'un--lteSuccLeft'(V0) -> case V0 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V1 = (V0 - 1)), V1 end end.
'un--lteReflectsLTE'(V0, V1, V2) -> case V0 of 0 -> case V1 of 0 -> 0; _ -> 0 end; _ -> begin (V3 = (V0 - 1)), case V1 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V4 = (V1 - 1)), (('un--lteReflectsLTE'(V3, V4, V2)) + 1) end end end end.
'un--lteAddRight'(V0) -> V0.
'un--lte'(V0, V1) -> case V0 of 0 -> 1; _ -> case V1 of 0 -> 0; _ -> case V0 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V3 = (V1 - 1)), ('un--lte'(V2, V3)) end end end end end end.
'un--ltReflectsLT'(V0, V1, V2) -> ('un--lteReflectsLTE'((V0 + 1), V1, V2)).
'un--ltOpReflectsLT'(V0, V1, V2) -> case V0 of 0 -> case V1 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> 1 end; _ -> begin (V3 = (V0 - 1)), case V1 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V4 = (V1 - 1)), (('un--ltOpReflectsLT'(V3, V4, V2)) + 1) end end end end.
'un--lt'(V0, V1) -> ('un--lte'((V0 + 1), V1)).
'un--lcm'(V0, V1) -> case V1 of 0 -> 0; _ -> case V0 of 0 -> 0; _ -> case V1 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V2 = (V1 - 1)), ('un--divNat'((V0 * (V2 + 1)), ('un--gcd'(V0, (V2 + 1))))) end end end end.
'un--isZero'(V0) -> case V0 of 0 -> 1; _ -> 0 end.
'un--isSucc'(V0) -> case V0 of 0 -> 0; _ -> 1 end.
'un--isLTE'(V0, V1) -> case V0 of 0 -> {'Prelude.Types.Yes', 0}; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> {'Prelude.Types.No', fun (V3) -> ('un--succNotLTEzero'(V3)) end}; _ -> begin (V4 = (V1 - 1)), case ('un--isLTE'(V2, V4)) of {'Prelude.Types.No', V5} -> {'Prelude.Types.No', fun (V6) -> (V5(('un--fromLteSucc'(V6)))) end}; {'Prelude.Types.Yes', V7} -> {'Prelude.Types.Yes', (V7 + 1)} end end end end end.
'un--isLT'(V0, V1) -> ('un--isLTE'((V0 + 1), V1)).
'un--isItSucc'(V0) -> case V0 of 0 -> {'Prelude.Types.No', fun (V1) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V2) -> ('dn--un--uninhabited_Uninhabited_(IsSucc Z)'(V2)) end, V1)) end}; _ -> {'Prelude.Types.Yes', {'Data.Nat.ItIsSucc'}} end.
'un--isGTE'(V0, V1) -> ('un--isLTE'(V1, V0)).
'un--isGT'(V0, V1) -> ('un--isLT'(V1, V0)).
'un--hyper'(V0, V1, V2) -> case V0 of 0 -> (V2 + 1); _ -> begin (V3 = (V0 - 1)), case V3 of 0 -> case V2 of 0 -> V1; _ -> case V2 of 0 -> 1; _ -> case V0 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V4 = (V0 - 1)), case V2 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V5 = (V2 - 1)), ('un--hyper'(V4, V1, ('un--hyper'((V4 + 1), V1, V5)))) end end end end end end; _ -> begin (V6 = (V3 - 1)), case V6 of 0 -> case V2 of 0 -> 0; _ -> case V2 of 0 -> 1; _ -> case V0 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V7 = (V0 - 1)), case V2 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V8 = (V2 - 1)), ('un--hyper'(V7, V1, ('un--hyper'((V7 + 1), V1, V8)))) end end end end end end; _ -> case V2 of 0 -> 1; _ -> case V0 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V9 = (V0 - 1)), case V2 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V10 = (V2 - 1)), ('un--hyper'(V9, V1, ('un--hyper'((V9 + 1), V1, V10)))) end end end end end end end end end end.
'un--gteReflectsGTE'(V0, V1, V2) -> ('un--lteReflectsLTE'(V1, V0, V2)).
'un--gte'(V0, V1) -> ('un--lte'(V1, V0)).
'un--gtReflectsGT'(V0, V1, V2) -> ('un--ltReflectsLT'(V1, V0, V2)).
'un--gt'(V0, V1) -> ('un--lt'(V1, V0)).
'un--gcd'(V0, V1) -> case V1 of 0 -> V0; _ -> case V0 of 0 -> V1; _ -> case V1 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V2 = (V1 - 1)), ('un--gcd'((V2 + 1), ('un--modNatNZ'(V0, (V2 + 1))))) end end end end.
'un--fromLteSucc'(V0) -> case V0 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V1 = (V0 - 1)), V1 end end.
'un--eqSucc'(V0) -> {'Builtin.Refl'}.
'un--divmodNatNZ'(V0, V1) -> case V1 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V2 = (V1 - 1)), ('un--divmod\x{27}'(V0, V0, V2)) end end.
'un--divmod\x{27}'(V0, V1, V2) -> case V0 of 0 -> {'Builtin.MkPair', 0, V1}; _ -> begin (V3 = (V0 - 1)), case ('un--lte'(V1, V2)) of 1 -> {'Builtin.MkPair', 0, V1}; 0 -> begin (V4 = ('un--divmod\x{27}'(V3, ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'((V1 - (V2 + 1)))), V2))), {'Builtin.MkPair', (('Idris.Idris2.Builtin':'un--fst'(V4)) + 1), ('Idris.Idris2.Builtin':'un--snd'(V4))} end end end end.
'un--divNatNZ'(V0, V1) -> case V1 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V2 = (V1 - 1)), ('un--div\x{27}'(V0, V0, V2)) end end.
'un--divNat'(V0, V1) -> case V1 of 0 -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Data.Nat.divNat at Data.Nat:357:1--357:59"/utf8>>)); _ -> begin (V2 = (V1 - 1)), ('un--divNatNZ'(V0, (V2 + 1))) end end.
'un--divCeilNZ'(V0, V1) -> case ('un--modNatNZ'(V0, V1)) of 0 -> ('un--divNatNZ'(V0, V1)); _ -> (('un--divNatNZ'(V0, V1)) + 1) end.
'un--divCeil'(V0, V1) -> case V1 of 0 -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Data.Nat.divCeil at Data.Nat:368:1--368:47"/utf8>>)); _ -> begin (V2 = (V1 - 1)), ('un--divCeilNZ'(V0, (V2 + 1))) end end.
'un--div\x{27}'(V0, V1, V2) -> case V0 of 0 -> 0; _ -> begin (V3 = (V0 - 1)), case ('un--lte'(V1, V2)) of 1 -> 0; 0 -> (('un--div\x{27}'(V3, ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'((V1 - (V2 + 1)))), V2)) + 1) end end end.
'un--compareNatFlip'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> {'Builtin.Refl'}; _ -> begin (V3 = (V1 - 1)), ('un--compareNatFlip'(V2, V3)) end end end end.
'un--compareNatDiag'(V0) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> begin (V1 = (V0 - 1)), ('un--compareNatDiag'(V1)) end end.
'un--cmp'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> {'Data.Nat.CmpEQ'}; _ -> begin (V2 = (V1 - 1)), {'Data.Nat.CmpLT', V2} end end; _ -> begin (V3 = (V0 - 1)), case V1 of 0 -> {'Data.Nat.CmpGT', V3}; _ -> begin (V4 = (V1 - 1)), ('un--cmp'(V3, V4)) end end end end.
'un--SIsNotZ'(V0) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V1) -> ('dn--un--uninhabited_Uninhabited_(|((Builtin.=== (S $n)) Z),((Builtin.~=~ (S $n)) Z)|)'(V1)) end, V0)).
'un--LTImpliesNotGTE'(V0, V1) -> ('un--LTEImpliesNotGT'(V1, V0)).
'un--LTEImpliesNotGT'(V0, V1) -> case V0 of 0 -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V2) -> ('dn--un--uninhabited_Uninhabited_((LTE (S $n)) Z)'(V2)) end, V1)); _ -> begin (V3 = (V0 - 1)), case V1 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V4 = (V1 - 1)), ('un--LTEImpliesNotGT'(V3, V4)) end end end end.
'un--LT'(V0, V1) -> {'Data.Nat.LTE', (V0 + 1), V1}.
'un--GTE'(V0, V1) -> {'Data.Nat.LTE', V1, V0}.
'un--GT'(V0, V1) -> ('un--LT'(V1, V0)).
