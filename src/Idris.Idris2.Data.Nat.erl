-module('Idris.Idris2.Data.Nat').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--cmp-739'/3,
  'case--divCeilNZ-646'/4,
  'case--divNatNZ,div\x{27}-602'/7,
  'case--modNatNZ,mod\x{27}-546'/7,
  'case--isLTE-344'/3,
  'nested--1908-538--in--un--mod\x{27}'/6,
  'nested--1965-594--in--un--div\x{27}'/6,
  'dn--un--uninhabited_Uninhabited__(|((=== Z) (S $n)),((~=~ Z) (S $n))|)'/2,
  'dn--un--uninhabited_Uninhabited__(|((=== (S $n)) Z),((~=~ (S $n)) Z)|)'/2,
  'dn--un--uninhabited_Uninhabited__(IsSucc Z)'/1,
  'dn--un--uninhabited_Uninhabited__((LTE (S $n)) Z)'/2,
  'dn--un--neutral_Monoid__Nat'/0,
  'dn--un--mod_Integral__Nat'/2,
  'dn--un--div_Integral__Nat'/2,
  'dn--un--__Impl_Uninhabited_(|((=== Z) (S $n)),((~=~ Z) (S $n))|)'/2,
  'dn--un--__Impl_Uninhabited_(|((=== (S $n)) Z),((~=~ (S $n)) Z)|)'/2,
  'dn--un--__Impl_Uninhabited_(IsSucc Z)'/1,
  'dn--un--__Impl_Uninhabited_((LTE (S $n)) Z)'/2,
  'dn--un--__Impl_Semigroup_Nat'/2,
  'dn--un--__Impl_Monoid_Nat'/0,
  'dn--un--__Impl_Integral_Nat'/0,
  'dn--un--<+>_Semigroup__Nat'/2,
  'un--succNotLTEzero'/2,
  'un--succInjective'/3,
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
  'un--plusLeftLeftRightZero'/3,
  'un--plusLeftCancel'/4,
  'un--plusConstantRight'/4,
  'un--plusConstantLeft'/4,
  'un--plusCommutative'/2,
  'un--plusAssociative'/3,
  'un--notLTImpliesGTE'/3,
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
  'un--modNatNZ'/3,
  'un--modNat'/2,
  'un--minusZeroRight'/1,
  'un--minusZeroN'/1,
  'un--minusZeroLeft'/1,
  'un--minusSuccSucc'/2,
  'un--minusSuccOne'/1,
  'un--minusPlusZero'/2,
  'un--minusOneSuccN'/1,
  'un--minusMinusMinusPlus'/3,
  'un--minimumZeroZeroLeft'/1,
  'un--minimumSuccSucc'/2,
  'un--minimumIdempotent'/1,
  'un--minimumCommutative'/2,
  'un--minimumAssociative'/3,
  'un--minimum'/2,
  'un--maximumZeroNLeft'/1,
  'un--maximumSuccSucc'/2,
  'un--maximumIdempotent'/1,
  'un--maximumCommutative'/2,
  'un--maximumAssociative'/3,
  'un--maximum'/2,
  'un--lteTransitive'/5,
  'un--lteSuccRight'/3,
  'un--lteSuccLeft'/3,
  'un--lteRefl'/1,
  'un--lteAddRight'/2,
  'un--lte'/2,
  'un--lt'/2,
  'un--lcm'/2,
  'un--isZero'/1,
  'un--isSucc'/1,
  'un--isLTE'/2,
  'un--isItSucc'/1,
  'un--hyper'/3,
  'un--gte'/2,
  'un--gt'/2,
  'un--gcd'/3,
  'un--fromLteSucc'/3,
  'un--eqSucc'/3,
  'un--divNatNZ'/3,
  'un--divNat'/2,
  'un--divCeilNZ'/3,
  'un--divCeil'/2,
  'un--cmp'/2,
  'un--SIsNotZ'/2,
  'un--LT'/2,
  'un--GTE'/2,
  'un--GT'/2
]).
'with--cmp-739'(V0, V1, V2) -> case V2 of {'Idris.Data.Nat.CmpLT', E0} -> (fun (V3) -> {'Idris.Data.Nat.CmpLT', V3} end(E0)); {'Idris.Data.Nat.CmpEQ'} -> (fun () -> {'Idris.Data.Nat.CmpEQ'} end()); {'Idris.Data.Nat.CmpGT', E1} -> (fun (V4) -> {'Idris.Data.Nat.CmpGT', V4} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--divCeilNZ-646'(V0, V1, V2, V3) -> case V3 of 0 -> ('un--divNatNZ'(V2, V0, V1)); _ -> (1 + ('un--divNatNZ'(V2, V0, V1))) end.
'case--divNatNZ,div\x{27}-602'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of 0 -> 0; 1 -> (1 + ('nested--1965-594--in--un--div\x{27}'(V0, V1, V2, V3, ('Idris.Idris2.Prelude.Types':'un--minus'(V5, (1 + V4))), V4))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--modNatNZ,mod\x{27}-546'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of 0 -> V5; 1 -> ('nested--1908-538--in--un--mod\x{27}'(V0, V1, V2, V3, ('Idris.Idris2.Prelude.Types':'un--minus'(V5, (1 + V4))), V4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--isLTE-344'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.No', E0} -> (fun (V3) -> {'Idris.Prelude.Types.No', fun (V4) -> (V3(('un--fromLteSucc'('erased', 'erased', V4)))) end} end(E0)); {'Idris.Prelude.Types.Yes', E1} -> (fun (V5) -> {'Idris.Prelude.Types.Yes', {'Idris.Data.Nat.LTESucc', V5}} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--1908-538--in--un--mod\x{27}'(V0, V1, V2, V3, V4, V5) -> case V3 of 0 -> V4; _ -> begin (V6 = (V3 - 1)), ('case--modNatNZ,mod\x{27}-546'(V0, V1, V2, V6, V5, V4, ('un--lte'(V4, V5)))) end end.
'nested--1965-594--in--un--div\x{27}'(V0, V1, V2, V3, V4, V5) -> case V3 of 0 -> 0; _ -> begin (V6 = (V3 - 1)), ('case--divNatNZ,div\x{27}-602'(V0, V1, V2, V6, V5, V4, ('un--lte'(V4, V5)))) end end.
'dn--un--uninhabited_Uninhabited__(|((=== Z) (S $n)),((~=~ Z) (S $n))|)'(V0, V1) -> ('erlang':'throw'("No clauses")).
'dn--un--uninhabited_Uninhabited__(|((=== (S $n)) Z),((~=~ (S $n)) Z)|)'(V0, V1) -> ('erlang':'throw'("No clauses")).
'dn--un--uninhabited_Uninhabited__(IsSucc Z)'(V0) -> ('erlang':'throw'("No clauses")).
'dn--un--uninhabited_Uninhabited__((LTE (S $n)) Z)'(V0, V1) -> ('erlang':'throw'("No clauses")).
'dn--un--neutral_Monoid__Nat'() -> 0.
'dn--un--mod_Integral__Nat'(V0, V1) -> ('un--modNat'(V0, V1)).
'dn--un--div_Integral__Nat'(V0, V1) -> ('un--divNat'(V0, V1)).
'dn--un--__Impl_Uninhabited_(|((=== Z) (S $n)),((~=~ Z) (S $n))|)'(V0, V1) -> ('dn--un--uninhabited_Uninhabited__(|((=== Z) (S $n)),((~=~ Z) (S $n))|)'('erased', V1)).
'dn--un--__Impl_Uninhabited_(|((=== (S $n)) Z),((~=~ (S $n)) Z)|)'(V0, V1) -> ('dn--un--uninhabited_Uninhabited__(|((=== (S $n)) Z),((~=~ (S $n)) Z)|)'('erased', V1)).
'dn--un--__Impl_Uninhabited_(IsSucc Z)'(V0) -> ('dn--un--uninhabited_Uninhabited__(IsSucc Z)'(V0)).
'dn--un--__Impl_Uninhabited_((LTE (S $n)) Z)'(V0, V1) -> ('dn--un--uninhabited_Uninhabited__((LTE (S $n)) Z)'('erased', V1)).
'dn--un--__Impl_Semigroup_Nat'(V0, V1) -> ('dn--un--<+>_Semigroup__Nat'(V0, V1)).
'dn--un--__Impl_Monoid_Nat'() -> {'Idris.Prelude.Interfaces.dn--un--__mkMonoid', fun (V0) -> fun (V1) -> ('dn--un--<+>_Semigroup__Nat'(V0, V1)) end end, ('dn--un--neutral_Monoid__Nat'())}.
'dn--un--__Impl_Integral_Nat'() -> {'Idris.Prelude.Num.dn--un--__mkIntegral', {'Idris.Prelude.Num.dn--un--__mkNum', fun (V0) -> fun (V1) -> ('Idris.Idris2.Prelude.Types':'dn--un--+_Num__Nat'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.Types':'dn--un--*_Num__Nat'(V2, V3)) end end, fun (V4) -> ('Idris.Idris2.Prelude.Types':'dn--un--fromInteger_Num__Nat'(V4)) end}, fun (V5) -> fun (V6) -> ('dn--un--div_Integral__Nat'(V5, V6)) end end, fun (V7) -> fun (V8) -> ('dn--un--mod_Integral__Nat'(V7, V8)) end end}.
'dn--un--<+>_Semigroup__Nat'(V0, V1) -> (V0 + V1).
'un--succNotLTEzero'(V0, V1) -> ('erlang':'throw'("No clauses")).
'un--succInjective'(V0, V1, V2) -> case V2 of {'Idris.Builtin.Refl'} -> (fun () -> {'Idris.Builtin.Refl'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--sucMinR'(V0) -> case V0 of 0 -> {'Idris.Builtin.Refl'}; _ -> begin (V1 = (V0 - 1)), ('Idris.Idris2.Prelude.Basics':'un--cong'('erased', 'erased', 'erased', 'erased', 'erased', ('un--sucMinR'(V1)))) end end.
'un--sucMinL'(V0) -> case V0 of 0 -> {'Idris.Builtin.Refl'}; _ -> begin (V1 = (V0 - 1)), ('Idris.Idris2.Prelude.Basics':'un--cong'('erased', 'erased', 'erased', 'erased', 'erased', ('un--sucMinL'(V1)))) end end.
'un--sucMaxR'(V0) -> case V0 of 0 -> {'Idris.Builtin.Refl'}; _ -> begin (V1 = (V0 - 1)), ('Idris.Idris2.Prelude.Basics':'un--cong'('erased', 'erased', 'erased', 'erased', 'erased', ('un--sucMaxR'(V1)))) end end.
'un--sucMaxL'(V0) -> case V0 of 0 -> {'Idris.Builtin.Refl'}; _ -> begin (V1 = (V0 - 1)), ('Idris.Idris2.Prelude.Basics':'un--cong'('erased', 'erased', 'erased', 'erased', 'erased', ('un--sucMaxL'(V1)))) end end.
'un--pred'(V0) -> case V0 of 0 -> 0; _ -> begin (V1 = (V0 - 1)), V1 end end.
'un--power'(V0, V1) -> case V1 of 0 -> (1 + 0); _ -> begin (V2 = (V1 - 1)), ('Idris.Idris2.Prelude.Types':'dn--un--*_Num__Nat'(V0, ('un--power'(V0, V2)))) end end.
'un--plusZeroRightNeutral'(V0) -> case V0 of 0 -> {'Idris.Builtin.Refl'}; _ -> {'Idris.Builtin.Refl'} end.
'un--plusZeroLeftNeutral'(V0) -> {'Idris.Builtin.Refl'}.
'un--plusSuccRightSucc'(V0, V1) -> case V0 of 0 -> {'Idris.Builtin.Refl'}; _ -> {'Idris.Builtin.Refl'} end.
'un--plusRightCancel'(V0, V1, V2, V3) -> ('un--plusLeftCancel'(V2, V0, V1, V3)).
'un--plusOneSucc'(V0) -> {'Idris.Builtin.Refl'}.
'un--plusMinusLte'(V0, V1, V2) -> case V0 of 0 -> ('un--plusZeroRightNeutral'(V1)); _ -> begin (V3 = (V0 - 1)), case V1 of 0 -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'('erased', 'erased', fun (V4) -> ('dn--un--uninhabited_Uninhabited__((LTE (S $n)) Z)'('erased', V4)) end, V2)); _ -> begin (V5 = (V1 - 1)), ('Idris.Idris2.Prelude.Basics':'un--cong'('erased', 'erased', 'erased', 'erased', 'erased', ('un--plusMinusLte'(V3, V5, ('un--fromLteSucc'('erased', 'erased', V2)))))) end end end end.
'un--plusMinusLeftCancel'(V0, V1, V2) -> case V0 of 0 -> {'Idris.Builtin.Refl'}; _ -> {'Idris.Builtin.Refl'} end.
'un--plusLeftLeftRightZero'(V0, V1, V2) -> ('un--plusLeftCancel'(V0, V1, 0, V2)).
'un--plusLeftCancel'(V0, V1, V2, V3) -> case V0 of 0 -> V3; _ -> begin (V4 = (V0 - 1)), ('un--plusLeftCancel'(V4, V1, V2, ('un--succInjective'('erased', 'erased', V3)))) end end.
'un--plusConstantRight'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.Refl'} -> (fun () -> {'Idris.Builtin.Refl'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--plusConstantLeft'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.Refl'} -> (fun () -> {'Idris.Builtin.Refl'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--plusCommutative'(V0, V1) -> case V0 of 0 -> {'Idris.Builtin.Refl'}; _ -> {'Idris.Builtin.Refl'} end.
'un--plusAssociative'(V0, V1, V2) -> case V0 of 0 -> {'Idris.Builtin.Refl'}; _ -> {'Idris.Builtin.Refl'} end.
'un--notLTImpliesGTE'(V0, V1, V2) -> case V1 of 0 -> {'Idris.Data.Nat.LTEZero'}; _ -> case V0 of 0 -> case V1 of 0 -> ('erlang':'throw'("Nat case not covered")); _ -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'('erased', 'erased', fun (V3) -> ('Idris.Idris2.Prelude.Uninhabited':'dn--un--uninhabited_Uninhabited__Void'(V3)) end, (V2({'Idris.Data.Nat.LTESucc', {'Idris.Data.Nat.LTEZero'}})))) end; _ -> begin (V4 = (V0 - 1)), case V1 of 0 -> ('erlang':'throw'("Nat case not covered")); _ -> begin (V5 = (V1 - 1)), {'Idris.Data.Nat.LTESucc', ('un--notLTImpliesGTE'(V4, V5, fun (V6) -> (V2({'Idris.Data.Nat.LTESucc', V6})) end))} end end end end end.
'un--multZeroRightZero'(V0) -> case V0 of 0 -> {'Idris.Builtin.Refl'}; _ -> begin (V1 = (V0 - 1)), ('un--multZeroRightZero'(V1)) end end.
'un--multZeroLeftZero'(V0) -> {'Idris.Builtin.Refl'}.
'un--multRightSuccPlus'(V0, V1) -> case V0 of 0 -> {'Idris.Builtin.Refl'}; _ -> {'Idris.Builtin.Refl'} end.
'un--multOneRightNeutral'(V0) -> ('un--multOneLeftNeutral'(V0)).
'un--multOneLeftNeutral'(V0) -> ('un--plusZeroRightNeutral'(V0)).
'un--multLeftSuccPlus'(V0, V1) -> {'Idris.Builtin.Refl'}.
'un--multDistributesOverPlusRight'(V0, V1, V2) -> ('un--multDistributesOverPlusLeft'(V1, V2, V0)).
'un--multDistributesOverPlusLeft'(V0, V1, V2) -> case V0 of 0 -> {'Idris.Builtin.Refl'}; _ -> {'Idris.Builtin.Refl'} end.
'un--multDistributesOverMinusRight'(V0, V1, V2) -> {'Idris.Builtin.Refl'}.
'un--multDistributesOverMinusLeft'(V0, V1, V2) -> case V0 of 0 -> case V1 of 0 -> {'Idris.Builtin.Refl'}; _ -> {'Idris.Builtin.Refl'} end; _ -> case V1 of 0 -> {'Idris.Builtin.Refl'}; _ -> {'Idris.Builtin.Refl'} end end.
'un--multCommutative'(V0, V1) -> case V0 of 0 -> {'Idris.Builtin.Refl'}; _ -> {'Idris.Builtin.Refl'} end.
'un--multAssociative'(V0, V1, V2) -> case V0 of 0 -> {'Idris.Builtin.Refl'}; _ -> {'Idris.Builtin.Refl'} end.
'un--modNatNZ'(V0, V1, V2) -> case V1 of 0 -> ('erlang':'throw'("Error: Executed \x{27}void\x{27}")); _ -> begin (V3 = (V1 - 1)), ('nested--1908-538--in--un--mod\x{27}'(V3, V2, V0, V0, V0, V3)) end end.
'un--modNat'(V0, V1) -> case V1 of 0 -> ('Idris.Idris2.Builtin':'un--idris_crash'('erased', <<"Unhandled input for Data.Nat.modNat at Data/Nat.idr:188:1--188:56"/utf8>>)); _ -> begin (V2 = (V1 - 1)), ('un--modNatNZ'(V0, (1 + V2), fun (V3) -> ('un--SIsNotZ'('erased', V3)) end)) end end.
'un--minusZeroRight'(V0) -> case V0 of 0 -> {'Idris.Builtin.Refl'}; _ -> {'Idris.Builtin.Refl'} end.
'un--minusZeroN'(V0) -> case V0 of 0 -> {'Idris.Builtin.Refl'}; _ -> begin (V1 = (V0 - 1)), ('un--minusZeroN'(V1)) end end.
'un--minusZeroLeft'(V0) -> {'Idris.Builtin.Refl'}.
'un--minusSuccSucc'(V0, V1) -> {'Idris.Builtin.Refl'}.
'un--minusSuccOne'(V0) -> case V0 of 0 -> {'Idris.Builtin.Refl'}; _ -> {'Idris.Builtin.Refl'} end.
'un--minusPlusZero'(V0, V1) -> case V0 of 0 -> {'Idris.Builtin.Refl'}; _ -> begin (V2 = (V0 - 1)), ('un--minusPlusZero'(V2, V1)) end end.
'un--minusOneSuccN'(V0) -> case V0 of 0 -> {'Idris.Builtin.Refl'}; _ -> begin (V1 = (V0 - 1)), ('un--minusOneSuccN'(V1)) end end.
'un--minusMinusMinusPlus'(V0, V1, V2) -> case V0 of 0 -> case V1 of 0 -> {'Idris.Builtin.Refl'}; _ -> {'Idris.Builtin.Refl'} end; _ -> case V1 of 0 -> {'Idris.Builtin.Refl'}; _ -> {'Idris.Builtin.Refl'} end end.
'un--minimumZeroZeroLeft'(V0) -> {'Idris.Builtin.Refl'}.
'un--minimumSuccSucc'(V0, V1) -> {'Idris.Builtin.Refl'}.
'un--minimumIdempotent'(V0) -> case V0 of 0 -> {'Idris.Builtin.Refl'}; _ -> begin (V1 = (V0 - 1)), ('Idris.Idris2.Prelude.Basics':'un--cong'('erased', 'erased', 'erased', 'erased', 'erased', ('un--minimumIdempotent'(V1)))) end end.
'un--minimumCommutative'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> {'Idris.Builtin.Refl'}; _ -> {'Idris.Builtin.Refl'} end; _ -> case V1 of 0 -> {'Idris.Builtin.Refl'}; _ -> {'Idris.Builtin.Refl'} end end.
'un--minimumAssociative'(V0, V1, V2) -> case V0 of 0 -> {'Idris.Builtin.Refl'}; _ -> case V1 of 0 -> {'Idris.Builtin.Refl'}; _ -> case V2 of 0 -> {'Idris.Builtin.Refl'}; _ -> {'Idris.Builtin.Refl'} end end end.
'un--minimum'(V0, V1) -> case V0 of 0 -> 0; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> 0; _ -> begin (V3 = (V1 - 1)), (1 + ('un--minimum'(V2, V3))) end end end end.
'un--maximumZeroNLeft'(V0) -> {'Idris.Builtin.Refl'}.
'un--maximumSuccSucc'(V0, V1) -> {'Idris.Builtin.Refl'}.
'un--maximumIdempotent'(V0) -> case V0 of 0 -> {'Idris.Builtin.Refl'}; _ -> begin (V1 = (V0 - 1)), ('Idris.Idris2.Prelude.Basics':'un--cong'('erased', 'erased', 'erased', 'erased', 'erased', ('un--maximumIdempotent'(V1)))) end end.
'un--maximumCommutative'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> {'Idris.Builtin.Refl'}; _ -> {'Idris.Builtin.Refl'} end; _ -> case V1 of 0 -> {'Idris.Builtin.Refl'}; _ -> {'Idris.Builtin.Refl'} end end.
'un--maximumAssociative'(V0, V1, V2) -> case V0 of 0 -> {'Idris.Builtin.Refl'}; _ -> case V1 of 0 -> {'Idris.Builtin.Refl'}; _ -> case V2 of 0 -> {'Idris.Builtin.Refl'}; _ -> {'Idris.Builtin.Refl'} end end end.
'un--maximum'(V0, V1) -> case V0 of 0 -> V1; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> (1 + V2); _ -> begin (V3 = (V1 - 1)), (1 + ('un--maximum'(V2, V3))) end end end end.
'un--lteTransitive'(V0, V1, V2, V3, V4) -> case V3 of {'Idris.Data.Nat.LTEZero'} -> (fun () -> {'Idris.Data.Nat.LTEZero'} end()); {'Idris.Data.Nat.LTESucc', E0} -> (fun (V5) -> case V4 of {'Idris.Data.Nat.LTESucc', E1} -> (fun (V6) -> {'Idris.Data.Nat.LTESucc', ('un--lteTransitive'('erased', 'erased', 'erased', V5, V6))} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lteSuccRight'(V0, V1, V2) -> case V2 of {'Idris.Data.Nat.LTEZero'} -> (fun () -> {'Idris.Data.Nat.LTEZero'} end()); {'Idris.Data.Nat.LTESucc', E0} -> (fun (V3) -> {'Idris.Data.Nat.LTESucc', ('un--lteSuccRight'('erased', 'erased', V3))} end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lteSuccLeft'(V0, V1, V2) -> case V2 of {'Idris.Data.Nat.LTESucc', E0} -> (fun (V3) -> ('un--lteSuccRight'('erased', 'erased', V3)) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lteRefl'(V0) -> case V0 of 0 -> {'Idris.Data.Nat.LTEZero'}; _ -> begin (V1 = (V0 - 1)), {'Idris.Data.Nat.LTESucc', ('un--lteRefl'(V1))} end end.
'un--lteAddRight'(V0, V1) -> case V1 of 0 -> {'Idris.Data.Nat.LTEZero'}; _ -> begin (V2 = (V1 - 1)), {'Idris.Data.Nat.LTESucc', ('un--lteAddRight'('erased', V2))} end end.
'un--lte'(V0, V1) -> case V0 of 0 -> 0; _ -> case V1 of 0 -> 1; _ -> case V0 of 0 -> ('erlang':'throw'("Nat case not covered")); _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> ('erlang':'throw'("Nat case not covered")); _ -> begin (V3 = (V1 - 1)), ('un--lte'(V2, V3)) end end end end end end.
'un--lt'(V0, V1) -> ('un--lte'((1 + V0), V1)).
'un--lcm'(V0, V1) -> case V1 of 0 -> 0; _ -> case V0 of 0 -> 0; _ -> case V1 of 0 -> ('erlang':'throw'("Nat case not covered")); _ -> begin (V2 = (V1 - 1)), ('un--divNat'(('Idris.Idris2.Prelude.Types':'dn--un--*_Num__Nat'(V0, (1 + V2))), ('un--gcd'(V0, (1 + V2), {'Idris.Data.Nat.RightIsNotZero'})))) end end end end.
'un--isZero'(V0) -> case V0 of 0 -> 0; _ -> 1 end.
'un--isSucc'(V0) -> case V0 of 0 -> 1; _ -> 0 end.
'un--isLTE'(V0, V1) -> case V0 of 0 -> {'Idris.Prelude.Types.Yes', {'Idris.Data.Nat.LTEZero'}}; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> {'Idris.Prelude.Types.No', fun (V3) -> ('un--succNotLTEzero'('erased', V3)) end}; _ -> begin (V4 = (V1 - 1)), ('case--isLTE-344'(V2, V4, ('un--isLTE'(V2, V4)))) end end end end.
'un--isItSucc'(V0) -> case V0 of 0 -> {'Idris.Prelude.Types.No', fun (V1) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'('erased', 'erased', fun (V2) -> ('dn--un--uninhabited_Uninhabited__(IsSucc Z)'(V2)) end, V1)) end}; _ -> {'Idris.Prelude.Types.Yes', {'Idris.Data.Nat.ItIsSucc'}} end.
'un--hyper'(V0, V1, V2) -> case V0 of 0 -> (1 + V2); _ -> begin (V3 = (V0 - 1)), case V3 of 0 -> case V2 of 0 -> V1; _ -> case V2 of 0 -> (1 + 0); _ -> case V0 of 0 -> ('erlang':'throw'("Nat case not covered")); _ -> begin (V4 = (V0 - 1)), case V2 of 0 -> ('erlang':'throw'("Nat case not covered")); _ -> begin (V5 = (V2 - 1)), ('un--hyper'(V4, V1, ('un--hyper'((1 + V4), V1, V5)))) end end end end end end; _ -> begin (V6 = (V3 - 1)), case V6 of 0 -> case V2 of 0 -> 0; _ -> case V2 of 0 -> (1 + 0); _ -> case V0 of 0 -> ('erlang':'throw'("Nat case not covered")); _ -> begin (V7 = (V0 - 1)), case V2 of 0 -> ('erlang':'throw'("Nat case not covered")); _ -> begin (V8 = (V2 - 1)), ('un--hyper'(V7, V1, ('un--hyper'((1 + V7), V1, V8)))) end end end end end end; _ -> case V2 of 0 -> (1 + 0); _ -> case V0 of 0 -> ('erlang':'throw'("Nat case not covered")); _ -> begin (V9 = (V0 - 1)), case V2 of 0 -> ('erlang':'throw'("Nat case not covered")); _ -> begin (V10 = (V2 - 1)), ('un--hyper'(V9, V1, ('un--hyper'((1 + V9), V1, V10)))) end end end end end end end end end end.
'un--gte'(V0, V1) -> ('un--lte'(V1, V0)).
'un--gt'(V0, V1) -> ('un--lt'(V1, V0)).
'un--gcd'(V0, V1, V2) -> case V1 of 0 -> V0; _ -> case V0 of 0 -> V1; _ -> case V1 of 0 -> ('erlang':'throw'("Nat case not covered")); _ -> begin (V3 = (V1 - 1)), ('un--gcd'((1 + V3), ('un--modNatNZ'(V0, (1 + V3), fun (V4) -> ('un--SIsNotZ'('erased', V4)) end)), {'Idris.Data.Nat.LeftIsNotZero'})) end end end end.
'un--fromLteSucc'(V0, V1, V2) -> case V2 of {'Idris.Data.Nat.LTESucc', E0} -> (fun (V3) -> V3 end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--eqSucc'(V0, V1, V2) -> case V2 of {'Idris.Builtin.Refl'} -> (fun () -> {'Idris.Builtin.Refl'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--divNatNZ'(V0, V1, V2) -> case V1 of 0 -> ('erlang':'throw'("Error: Executed \x{27}void\x{27}")); _ -> begin (V3 = (V1 - 1)), ('nested--1965-594--in--un--div\x{27}'(V3, V2, V0, V0, V0, V3)) end end.
'un--divNat'(V0, V1) -> case V1 of 0 -> ('Idris.Idris2.Builtin':'un--idris_crash'('erased', <<"Unhandled input for Data.Nat.divNat at Data/Nat.idr:207:1--207:56"/utf8>>)); _ -> begin (V2 = (V1 - 1)), ('un--divNatNZ'(V0, (1 + V2), fun (V3) -> ('un--SIsNotZ'('erased', V3)) end)) end end.
'un--divCeilNZ'(V0, V1, V2) -> ('case--divCeilNZ-646'(V1, V2, V0, ('un--modNatNZ'(V0, V1, V2)))).
'un--divCeil'(V0, V1) -> case V1 of 0 -> ('Idris.Idris2.Builtin':'un--idris_crash'('erased', <<"Unhandled input for Data.Nat.divCeil at Data/Nat.idr:217:1--217:44"/utf8>>)); _ -> begin (V2 = (V1 - 1)), ('un--divCeilNZ'(V0, (1 + V2), fun (V3) -> ('un--SIsNotZ'('erased', V3)) end)) end end.
'un--cmp'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> {'Idris.Data.Nat.CmpEQ'}; _ -> begin (V2 = (V1 - 1)), {'Idris.Data.Nat.CmpLT', V2} end end; _ -> begin (V3 = (V0 - 1)), case V1 of 0 -> {'Idris.Data.Nat.CmpGT', V3}; _ -> begin (V4 = (V1 - 1)), ('with--cmp-739'(V3, V4, ('un--cmp'(V3, V4)))) end end end end.
'un--SIsNotZ'(V0, V1) -> ('erlang':'throw'("No clauses")).
'un--LT'(V0, V1) -> {'Idris.Data.Nat.LTE', (1 + V0), V1}.
'un--GTE'(V0, V1) -> {'Idris.Data.Nat.LTE', V1, V0}.
'un--GT'(V0, V1) -> ('un--LT'(V1, V0)).
