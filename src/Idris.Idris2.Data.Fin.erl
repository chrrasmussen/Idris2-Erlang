-module('Idris.Idris2.Data.Fin').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--integerLessThanNat-4412'/3,
  'with--strengthen-3777'/3,
  'case--integerToFin-4326'/3,
  'case--natToFin-4286'/3,
  'case--finS-3835'/3,
  'dn--un--uninhabited_Uninhabited_(|((Builtin.=== FZ) (FS $k)),((Builtin.~=~ FZ) (FS $k))|)'/1,
  'dn--un--uninhabited_Uninhabited_(|((Builtin.=== (FS $n)) (FS $m)),((Builtin.~=~ (FS $n)) (FS $m))|)'/2,
  'dn--un--uninhabited_Uninhabited_(|((Builtin.=== (FS $k)) FZ),((Builtin.~=~ (FS $k)) FZ)|)'/1,
  'dn--un--uninhabited_Uninhabited_(Fin Z)'/1,
  'dn--un--show_Show_(Fin $n)'/1,
  'dn--un--showPrec_Show_(Fin $n)'/2,
  'dn--un--negate_Neg_(Fin (S $n))'/2,
  'dn--un--min_Ord_(Fin $n)'/2,
  'dn--un--max_Ord_(Fin $n)'/2,
  'dn--un--injective_Injective_Fin.finToNat'/3,
  'dn--un--injective_Injective_FS'/3,
  'dn--un--fromInteger_Num_(Fin (S $n))'/2,
  'dn--un--decEq_DecEq_(Fin $n)'/2,
  'dn--un--compare_Ord_(Fin $n)'/2,
  'dn--un--cast_Cast_(Fin $n)_Nat'/1,
  'dn--un--cast_Cast_(Fin $n)_Integer'/1,
  'dn--un--__Impl_Uninhabited_(|((Builtin.=== FZ) (FS $k)),((Builtin.~=~ FZ) (FS $k))|)'/1,
  'dn--un--__Impl_Uninhabited_(|((Builtin.=== (FS $n)) (FS $m)),((Builtin.~=~ (FS $n)) (FS $m))|)'/2,
  'dn--un--__Impl_Uninhabited_(|((Builtin.=== (FS $k)) FZ),((Builtin.~=~ (FS $k)) FZ)|)'/1,
  'dn--un--__Impl_Uninhabited_(Fin Z)'/1,
  'dn--un--__Impl_Show_(Fin $n)'/0,
  'dn--un--__Impl_Ord_(Fin $n)'/0,
  'dn--un--__Impl_Num_(Fin (S $n))'/1,
  'dn--un--__Impl_Neg_(Fin (S $n))'/1,
  'dn--un--__Impl_Injective_Fin.finToNat'/0,
  'dn--un--__Impl_Injective_FS'/0,
  'dn--un--__Impl_Eq_(Fin $n)'/0,
  'dn--un--__Impl_DecEq_(Fin $n)'/2,
  'dn--un--__Impl_Cast_(Fin $n)_Nat'/1,
  'dn--un--__Impl_Cast_(Fin $n)_Integer'/1,
  'dn--un-->_Ord_(Fin $n)'/2,
  'dn--un-->=_Ord_(Fin $n)'/2,
  'dn--un--==_Eq_(Fin $n)'/2,
  'dn--un--<_Ord_(Fin $n)'/2,
  'dn--un--<=_Ord_(Fin $n)'/2,
  'dn--un--/=_Eq_(Fin $n)'/2,
  'dn--un---_Neg_(Fin (S $n))'/3,
  'dn--un--+_Num_(Fin (S $n))'/3,
  'dn--un--*_Num_(Fin (S $n))'/3,
  'un--weakenN'/1,
  'un--weakenLTE'/2,
  'un--weaken'/1,
  'un--strengthen'/2,
  'un--shift'/2,
  'un--restrict'/2,
  'un--natToFinLt'/1,
  'un--natToFinLT'/1,
  'un--natToFin'/2,
  'un--maybeLTE'/2,
  'un--maybeLT'/2,
  'un--last'/1,
  'un--integerToFin'/2,
  'un--integerLessThanNat'/2,
  'un--fromInteger'/1,
  'un--finToNatInjective'/3,
  'un--finToNat'/1,
  'un--finToInteger'/1,
  'un--finS'/2,
  'un--finFromInteger'/1,
  'un--complement'/2,
  'un--coerce'/2,
  'un--allFins'/1
]).
'with--integerLessThanNat-4412'(V0, V1, V2) -> case V1 of 1 -> 1; 0 -> case V2 of 0 -> 0; _ -> begin (V3 = (V2 - 1)), ('un--integerLessThanNat'((V0 - 1), V3)) end end end.
'with--strengthen-3777'(V0, V1, V2) -> case V2 of {'Prelude.Types.Nothing'} -> {'Prelude.Types.Nothing'}; {'Prelude.Types.Just', V3} -> {'Prelude.Types.Just', (V3 + 1)} end.
'case--integerToFin-4326'(V0, V1, V2) -> case V2 of 1 -> ('un--natToFin'(('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V1)), V0)); 0 -> {'Prelude.Types.Nothing'} end.
'case--natToFin-4286'(V0, V1, V2) -> case V2 of {'Prelude.Types.Yes', V3} -> {'Prelude.Types.Just', V1}; {'Prelude.Types.No', V4} -> {'Prelude.Types.Nothing'} end.
'case--finS-3835'(V0, V1, V2) -> case V2 of {'Prelude.Types.Nothing'} -> 0; {'Prelude.Types.Just', V3} -> (V3 + 1) end.
'dn--un--uninhabited_Uninhabited_(|((Builtin.=== FZ) (FS $k)),((Builtin.~=~ FZ) (FS $k))|)'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--uninhabited_Uninhabited_(|((Builtin.=== (FS $n)) (FS $m)),((Builtin.~=~ (FS $n)) (FS $m))|)'(V0, V1) -> (begin (V2 = V0), fun (V3) -> (V2(V3)) end end({'Builtin.Refl'})).
'dn--un--uninhabited_Uninhabited_(|((Builtin.=== (FS $k)) FZ),((Builtin.~=~ (FS $k)) FZ)|)'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--uninhabited_Uninhabited_(Fin Z)'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--show_Show_(Fin $n)'(V0) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Integer'(V0)).
'dn--un--showPrec_Show_(Fin $n)'(V0, V1) -> ('dn--un--show_Show_(Fin $n)'(V1)).
'dn--un--negate_Neg_(Fin (S $n))'(V0, V1) -> ('un--finS'((V0 + 1), ('un--complement'((V0 + 1), V1)))).
'dn--un--min_Ord_(Fin $n)'(V0, V1) -> case ('dn--un--<_Ord_(Fin $n)'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--max_Ord_(Fin $n)'(V0, V1) -> case ('dn--un-->_Ord_(Fin $n)'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--injective_Injective_Fin.finToNat'(V0, V1, V2) -> ('un--finToNatInjective'(V0, V1, V2)).
'dn--un--injective_Injective_FS'(V0, V1, V2) -> {'Builtin.Refl'}.
'dn--un--fromInteger_Num_(Fin (S $n))'(V0, V1) -> ('un--restrict'(V0, V1)).
'dn--un--decEq_DecEq_(Fin $n)'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> {'Prelude.Types.Yes', {'Builtin.Refl'}}; _ -> {'Prelude.Types.No', fun (V2) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V3) -> ('dn--un--uninhabited_Uninhabited_(|((Builtin.=== FZ) (FS $k)),((Builtin.~=~ FZ) (FS $k))|)'(V3)) end, V2)) end} end; _ -> begin (V4 = (V0 - 1)), case V1 of 0 -> {'Prelude.Types.No', fun (V5) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V6) -> ('dn--un--uninhabited_Uninhabited_(|((Builtin.=== (FS $k)) FZ),((Builtin.~=~ (FS $k)) FZ)|)'(V6)) end, V5)) end}; _ -> begin (V7 = (V1 - 1)), ('Idris.Idris2.Decidable.Equality.Core':'un--decEqCong'(((begin (V10 = fun (V8) -> fun (V9) -> ('dn--un--decEq_DecEq_(Fin $n)'(V8, V9)) end end), fun (V11) -> fun (V12) -> ((V10(V11))(V12)) end end end(V4))(V7)))) end end end end.
'dn--un--compare_Ord_(Fin $n)'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> 1; _ -> 0 end; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> 2; _ -> begin (V3 = (V1 - 1)), ('dn--un--compare_Ord_(Fin $n)'(V2, V3)) end end end end.
'dn--un--cast_Cast_(Fin $n)_Nat'(V0) -> V0.
'dn--un--cast_Cast_(Fin $n)_Integer'(V0) -> V0.
'dn--un--__Impl_Uninhabited_(|((Builtin.=== FZ) (FS $k)),((Builtin.~=~ FZ) (FS $k))|)'(V0) -> ('dn--un--uninhabited_Uninhabited_(|((Builtin.=== FZ) (FS $k)),((Builtin.~=~ FZ) (FS $k))|)'(V0)).
'dn--un--__Impl_Uninhabited_(|((Builtin.=== (FS $n)) (FS $m)),((Builtin.~=~ (FS $n)) (FS $m))|)'(V0, V1) -> ('dn--un--uninhabited_Uninhabited_(|((Builtin.=== (FS $n)) (FS $m)),((Builtin.~=~ (FS $n)) (FS $m))|)'(V0, V1)).
'dn--un--__Impl_Uninhabited_(|((Builtin.=== (FS $k)) FZ),((Builtin.~=~ (FS $k)) FZ)|)'(V0) -> ('dn--un--uninhabited_Uninhabited_(|((Builtin.=== (FS $k)) FZ),((Builtin.~=~ (FS $k)) FZ)|)'(V0)).
'dn--un--__Impl_Uninhabited_(Fin Z)'(V0) -> ('dn--un--uninhabited_Uninhabited_(Fin Z)'(V0)).
'dn--un--__Impl_Show_(Fin $n)'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_(Fin $n)'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_(Fin $n)'(V1, V2)) end end}.
'dn--un--__Impl_Ord_(Fin $n)'() -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_(Fin $n)'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_(Fin $n)'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_(Fin $n)'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_(Fin $n)'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_(Fin $n)'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_(Fin $n)'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_(Fin $n)'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_(Fin $n)'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_(Fin $n)'(V16, V17)) end end}.
'dn--un--__Impl_Num_(Fin (S $n))'(V0) -> {'Prelude.Num.MkNum', fun (V1) -> fun (V2) -> ('dn--un--+_Num_(Fin (S $n))'(V0, V1, V2)) end end, fun (V3) -> fun (V4) -> ('dn--un--*_Num_(Fin (S $n))'(V0, V3, V4)) end end, fun (V5) -> ('un--restrict'(V0, V5)) end}.
'dn--un--__Impl_Neg_(Fin (S $n))'(V0) -> {'Prelude.Num.MkNeg', {'Prelude.Num.MkNum', fun (V1) -> fun (V2) -> ('dn--un--+_Num_(Fin (S $n))'(V0, V1, V2)) end end, fun (V3) -> fun (V4) -> ('dn--un--*_Num_(Fin (S $n))'(V0, V3, V4)) end end, fun (V5) -> ('un--restrict'(V0, V5)) end}, fun (V6) -> ('dn--un--negate_Neg_(Fin (S $n))'(V0, V6)) end, fun (V7) -> fun (V8) -> ('dn--un---_Neg_(Fin (S $n))'(V0, V7, V8)) end end}.
'dn--un--__Impl_Injective_Fin.finToNat'() -> {'Control.Function.MkInjective', fun (V0) -> V0 end, fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--injective_Injective_Fin.finToNat'(V1, V2, V3)) end end end}.
'dn--un--__Impl_Injective_FS'() -> {'Control.Function.MkInjective', fun (V0) -> (V0 + 1) end, fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--injective_Injective_FS'(V1, V2, V3)) end end end}.
'dn--un--__Impl_Eq_(Fin $n)'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_(Fin $n)'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_(Fin $n)'(V2, V3)) end end}.
'dn--un--__Impl_DecEq_(Fin $n)'(V0, V1) -> ('dn--un--decEq_DecEq_(Fin $n)'(V0, V1)).
'dn--un--__Impl_Cast_(Fin $n)_Nat'(V0) -> V0.
'dn--un--__Impl_Cast_(Fin $n)_Integer'(V0) -> V0.
'dn--un-->_Ord_(Fin $n)'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(Fin $n)'(V0, V1)), 2)).
'dn--un-->=_Ord_(Fin $n)'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(Fin $n)'(V0, V1)), 0)).
'dn--un--==_Eq_(Fin $n)'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> 1; _ -> 0 end; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> 0; _ -> begin (V3 = (V1 - 1)), ('dn--un--==_Eq_(Fin $n)'(V2, V3)) end end end end.
'dn--un--<_Ord_(Fin $n)'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(Fin $n)'(V0, V1)), 0)).
'dn--un--<=_Ord_(Fin $n)'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(Fin $n)'(V0, V1)), 2)).
'dn--un--/=_Eq_(Fin $n)'(V0, V1) -> case ('dn--un--==_Eq_(Fin $n)'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un---_Neg_(Fin (S $n))'(V0, V1, V2) -> ('dn--un--+_Num_(Fin (S $n))'(V0, V1, ('dn--un--negate_Neg_(Fin (S $n))'(V0, V2)))).
'dn--un--+_Num_(Fin (S $n))'(V0, V1, V2) -> case V1 of 0 -> V2; _ -> case V0 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V3 = (V0 - 1)), case V1 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V4 = (V1 - 1)), ('un--finS'(((V3 + 1) + 1), ('dn--un--+_Num_(Fin (S $n))'((V3 + 1), V4, V2)))) end end end end end.
'dn--un--*_Num_(Fin (S $n))'(V0, V1, V2) -> case V1 of 0 -> 0; _ -> begin (V3 = (V1 - 1)), ('dn--un--+_Num_(Fin (S $n))'(V0, V2, ('dn--un--*_Num_(Fin (S $n))'(V0, V3, V2)))) end end.
'un--weakenN'(V0) -> V0.
'un--weakenLTE'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> 0 end; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V3 = (V1 - 1)), (('un--weakenLTE'(V2, V3)) + 1) end end end end.
'un--weaken'(V0) -> V0.
'un--strengthen'(V0, V1) -> case V0 of 0 -> {'Prelude.Types.Nothing'}; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> {'Prelude.Types.Just', 0}; _ -> begin (V3 = (V1 - 1)), ('with--strengthen-3777'(V2, V3, ('un--strengthen'(V2, V3)))) end end end end.
'un--shift'(V0, V1) -> case V0 of 0 -> V1; _ -> begin (V2 = (V0 - 1)), (('un--shift'(V2, V1)) + 1) end end.
'un--restrict'(V0, V1) -> begin (V2 = ('Idris.Idris2.Prelude.Num':'dn--un--abs_Abs_Integer'(('Idris.Idris2.Prelude.Num':'dn--un--mod_Integral_Integer'(V1, (V0 + 1)))))), ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V2)) end.
'un--natToFinLt'(V0) -> V0.
'un--natToFinLT'(V0) -> V0.
'un--natToFin'(V0, V1) -> case ('Idris.Idris2.Data.Nat':'un--isLT'(V0, V1)) of {'Prelude.Types.Yes', V2} -> {'Prelude.Types.Just', V0}; {'Prelude.Types.No', V3} -> {'Prelude.Types.Nothing'} end.
'un--maybeLTE'(V0, V1) -> case V0 of 0 -> {'Prelude.Types.Just', 0}; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> {'Prelude.Types.Nothing'}; _ -> begin (V3 = (V1 - 1)), ((begin (V9 = fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V7, V8)) end end end end), fun (V10) -> fun (V11) -> ((((V9('erased'))('erased'))(V10))(V11)) end end end(fun (V4) -> (V4 + 1) end))(('un--maybeLTE'(V2, V3)))) end end end end.
'un--maybeLT'(V0, V1) -> ('un--maybeLTE'((V0 + 1), V1)).
'un--last'(V0) -> V0.
'un--integerToFin'(V0, V1) -> case V1 of 0 -> {'Prelude.Types.Nothing'}; _ -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord_Integer'(V0, 0)) of 1 -> ('un--natToFin'(('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V0)), V1)); 0 -> {'Prelude.Types.Nothing'} end end.
'un--integerLessThanNat'(V0, V1) -> ('with--integerLessThanNat-4412'(V0, ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Integer'(V0, 0)), V1)).
'un--fromInteger'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V0)).
'un--finToNatInjective'(V0, V1, V2) -> case V0 of 0 -> case V1 of 0 -> {'Builtin.Refl'}; _ -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})) end; _ -> case V1 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> {'Builtin.Refl'} end end.
'un--finToNat'(V0) -> V0.
'un--finToInteger'(V0) -> V0.
'un--finS'(V0, V1) -> case V0 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V2 = (V0 - 1)), case ('un--strengthen'(V2, V1)) of {'Prelude.Types.Nothing'} -> 0; {'Prelude.Types.Just', V3} -> (V3 + 1) end end end.
'un--finFromInteger'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V0)).
'un--complement'(V0, V1) -> case V0 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> V2; _ -> begin (V3 = (V1 - 1)), ('un--complement'(V2, V3)) end end end end.
'un--coerce'(V0, V1) -> case V0 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> 0; _ -> begin (V3 = (V1 - 1)), (('un--coerce'(V2, V3)) + 1) end end end end.
'un--allFins'(V0) -> case V0 of 0 -> {'Data.List1.:::', 0, []}; _ -> begin (V1 = (V0 - 1)), {'Data.List1.:::', 0, ((begin (V7 = fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V5, V6)) end end end end), fun (V8) -> fun (V9) -> ((((V7('erased'))('erased'))(V8))(V9)) end end end(fun (V2) -> (V2 + 1) end))(('Idris.Idris2.Data.List1':'un--forget'(('un--allFins'(V1))))))} end end.
