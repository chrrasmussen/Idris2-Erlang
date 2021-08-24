-module('Idris.Idris2.Data.Fin').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--fromInteger-1226'/4,
  'with--strengthen-927'/3,
  'case--decEq-1315'/3,
  'case--integerToFin-1211'/3,
  'dn--un--uninhabited_Uninhabited_(|((=== FZ) (FS $k)),((~=~ FZ) (FS $k))|)'/1,
  'dn--un--uninhabited_Uninhabited_(|((=== (FS $n)) (FS $m)),((~=~ (FS $n)) (FS $m))|)'/2,
  'dn--un--uninhabited_Uninhabited_(|((=== (FS $k)) FZ),((~=~ (FS $k)) FZ)|)'/1,
  'dn--un--uninhabited_Uninhabited_(Fin Z)'/1,
  'dn--un--show_Show_(Fin $n)'/1,
  'dn--un--showPrec_Show_(Fin $n)'/2,
  'dn--un--min_Ord_(Fin $n)'/2,
  'dn--un--max_Ord_(Fin $n)'/2,
  'dn--un--decEq_DecEq_(Fin $n)'/2,
  'dn--un--compare_Ord_(Fin $n)'/2,
  'dn--un--cast_Cast_(Fin $n)_Nat'/1,
  'dn--un--cast_Cast_(Fin $n)_Integer'/1,
  'dn--un--__Impl_Uninhabited_(|((=== FZ) (FS $k)),((~=~ FZ) (FS $k))|)'/1,
  'dn--un--__Impl_Uninhabited_(|((=== (FS $n)) (FS $m)),((~=~ (FS $n)) (FS $m))|)'/2,
  'dn--un--__Impl_Uninhabited_(|((=== (FS $k)) FZ),((~=~ (FS $k)) FZ)|)'/1,
  'dn--un--__Impl_Uninhabited_(Fin Z)'/1,
  'dn--un--__Impl_Show_(Fin $n)'/0,
  'dn--un--__Impl_Ord_(Fin $n)'/0,
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
  'un--weakenN'/1,
  'un--weakenLTE'/2,
  'un--weaken'/1,
  'un--strengthen'/2,
  'un--shift'/2,
  'un--restrict'/2,
  'un--natToFin'/2,
  'un--last'/1,
  'un--integerToFin'/2,
  'un--fsInjective'/1,
  'un--fromInteger'/2,
  'un--finToNatInjective'/3,
  'un--finToNat'/1,
  'un--finToInteger'/1,
  'un--coerce'/2,
  'un--allFins'/1
]).
'with--fromInteger-1226'(V0, V1, V2, V3) -> case V2 of {'Idris.Prelude.Types.Just', E0} -> (fun (V4) -> V4 end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--strengthen-927'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> {'Idris.Prelude.Types.Nothing'} end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V3) -> {'Idris.Prelude.Types.Just', (1 + V3)} end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--decEq-1315'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V3) -> {'Idris.Prelude.Types.Yes', ('Idris.Idris2.Prelude.Basics':'un--cong'(V3))} end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V4) -> {'Idris.Prelude.Types.No', fun (V5) -> (V4(('un--fsInjective'(V5)))) end} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--integerToFin-1211'(V0, V1, V2) -> case V2 of 1 -> ('un--natToFin'(('Idris.Idris2.Prelude.Types':'dn--un--fromInteger_Num_Nat'(V1)), V0)); 0 -> {'Idris.Prelude.Types.Nothing'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--uninhabited_Uninhabited_(|((=== FZ) (FS $k)),((~=~ FZ) (FS $k))|)'(V0) -> ('erlang':'throw'("No clauses")).
'dn--un--uninhabited_Uninhabited_(|((=== (FS $n)) (FS $m)),((~=~ (FS $n)) (FS $m))|)'(V0, V1) -> case V1 of 0 -> (V0(0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--uninhabited_Uninhabited_(|((=== (FS $k)) FZ),((~=~ (FS $k)) FZ)|)'(V0) -> ('erlang':'throw'("No clauses")).
'dn--un--uninhabited_Uninhabited_(Fin Z)'(V0) -> ('erlang':'throw'("No clauses")).
'dn--un--show_Show_(Fin $n)'(V0) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Integer'(('un--finToInteger'(V0)))).
'dn--un--showPrec_Show_(Fin $n)'(V0, V1) -> ('dn--un--show_Show_(Fin $n)'(V1)).
'dn--un--min_Ord_(Fin $n)'(V0, V1) -> case ('dn--un--<_Ord_(Fin $n)'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_(Fin $n)'(V0, V1) -> case ('dn--un-->_Ord_(Fin $n)'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--decEq_DecEq_(Fin $n)'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> {'Idris.Prelude.Types.Yes', 0}; _ -> {'Idris.Prelude.Types.No', fun (V2) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V3) -> ('dn--un--uninhabited_Uninhabited_(|((=== FZ) (FS $k)),((~=~ FZ) (FS $k))|)'(V3)) end, V2)) end} end; _ -> begin (V4 = (V0 - 1)), case V1 of 0 -> {'Idris.Prelude.Types.No', fun (V5) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V6) -> ('dn--un--uninhabited_Uninhabited_(|((=== (FS $k)) FZ),((~=~ (FS $k)) FZ)|)'(V6)) end, V5)) end}; _ -> begin (V7 = (V1 - 1)), case ('dn--un--decEq_DecEq_(Fin $n)'(V4, V7)) of {'Idris.Prelude.Types.Yes', E0} -> (fun (V8) -> {'Idris.Prelude.Types.Yes', ('Idris.Idris2.Prelude.Basics':'un--cong'(V8))} end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V9) -> {'Idris.Prelude.Types.No', fun (V10) -> (V9(('un--fsInjective'(V10)))) end} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end end.
'dn--un--compare_Ord_(Fin $n)'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> 1; _ -> 0 end; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> 2; _ -> begin (V3 = (V1 - 1)), ('dn--un--compare_Ord_(Fin $n)'(V2, V3)) end end end end.
'dn--un--cast_Cast_(Fin $n)_Nat'(V0) -> ('un--finToNat'(V0)).
'dn--un--cast_Cast_(Fin $n)_Integer'(V0) -> ('un--finToInteger'(V0)).
'dn--un--__Impl_Uninhabited_(|((=== FZ) (FS $k)),((~=~ FZ) (FS $k))|)'(V0) -> ('dn--un--uninhabited_Uninhabited_(|((=== FZ) (FS $k)),((~=~ FZ) (FS $k))|)'(V0)).
'dn--un--__Impl_Uninhabited_(|((=== (FS $n)) (FS $m)),((~=~ (FS $n)) (FS $m))|)'(V0, V1) -> ('dn--un--uninhabited_Uninhabited_(|((=== (FS $n)) (FS $m)),((~=~ (FS $n)) (FS $m))|)'(V0, V1)).
'dn--un--__Impl_Uninhabited_(|((=== (FS $k)) FZ),((~=~ (FS $k)) FZ)|)'(V0) -> ('dn--un--uninhabited_Uninhabited_(|((=== (FS $k)) FZ),((~=~ (FS $k)) FZ)|)'(V0)).
'dn--un--__Impl_Uninhabited_(Fin Z)'(V0) -> ('dn--un--uninhabited_Uninhabited_(Fin Z)'(V0)).
'dn--un--__Impl_Show_(Fin $n)'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_(Fin $n)'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_(Fin $n)'(V1, V2)) end end}.
'dn--un--__Impl_Ord_(Fin $n)'() -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_(Fin $n)'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_(Fin $n)'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_(Fin $n)'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_(Fin $n)'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_(Fin $n)'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_(Fin $n)'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_(Fin $n)'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_(Fin $n)'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_(Fin $n)'(V16, V17)) end end}.
'dn--un--__Impl_Eq_(Fin $n)'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_(Fin $n)'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_(Fin $n)'(V2, V3)) end end}.
'dn--un--__Impl_DecEq_(Fin $n)'(V0, V1) -> ('dn--un--decEq_DecEq_(Fin $n)'(V0, V1)).
'dn--un--__Impl_Cast_(Fin $n)_Nat'(V0) -> ('dn--un--cast_Cast_(Fin $n)_Nat'(V0)).
'dn--un--__Impl_Cast_(Fin $n)_Integer'(V0) -> ('dn--un--cast_Cast_(Fin $n)_Integer'(V0)).
'dn--un-->_Ord_(Fin $n)'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(Fin $n)'(V0, V1)), 2)).
'dn--un-->=_Ord_(Fin $n)'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(Fin $n)'(V0, V1)), 0)).
'dn--un--==_Eq_(Fin $n)'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> 1; _ -> 0 end; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> 0; _ -> begin (V3 = (V1 - 1)), ('dn--un--==_Eq_(Fin $n)'(V2, V3)) end end end end.
'dn--un--<_Ord_(Fin $n)'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(Fin $n)'(V0, V1)), 0)).
'dn--un--<=_Ord_(Fin $n)'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(Fin $n)'(V0, V1)), 2)).
'dn--un--/=_Eq_(Fin $n)'(V0, V1) -> case ('dn--un--==_Eq_(Fin $n)'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--weakenN'(V0) -> case V0 of 0 -> 0; _ -> begin (V1 = (V0 - 1)), (1 + ('un--weakenN'(V1))) end end.
'un--weakenLTE'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> ('erlang':'throw'("Nat case not covered")); _ -> 0 end; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> ('erlang':'throw'("Nat case not covered")); _ -> begin (V3 = (V1 - 1)), (1 + ('un--weakenLTE'(V2, V3))) end end end end.
'un--weaken'(V0) -> case V0 of 0 -> 0; _ -> begin (V1 = (V0 - 1)), (1 + ('un--weaken'(V1))) end end.
'un--strengthen'(V0, V1) -> case V0 of 0 -> {'Idris.Prelude.Types.Nothing'}; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> {'Idris.Prelude.Types.Just', 0}; _ -> begin (V3 = (V1 - 1)), ('with--strengthen-927'(V2, V3, ('un--strengthen'(V2, V3)))) end end end end.
'un--shift'(V0, V1) -> case V0 of 0 -> V1; _ -> begin (V2 = (V0 - 1)), (1 + ('un--shift'(V2, V1))) end end.
'un--restrict'(V0, V1) -> begin (V2 = ('Idris.Idris2.Prelude.Num':'dn--un--abs_Abs_Integer'(('Idris.Idris2.Prelude.Num':'dn--un--mod_Integral_Integer'(V1, ('Idris.Idris2.Prelude.Cast':'dn--un--cast_Cast_Nat_Integer'((1 + V0)))))))), ('un--fromInteger'(V2, (1 + V0))) end.
'un--natToFin'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> {'Idris.Prelude.Types.Nothing'}; _ -> {'Idris.Prelude.Types.Just', 0} end; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> {'Idris.Prelude.Types.Nothing'}; _ -> begin (V3 = (V1 - 1)), ('Idris.Idris2.Prelude.Interfaces':'un--<$>'(fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V6, V7)) end end end end, fun (V8) -> (1 + V8) end, ('un--natToFin'(V2, V3)))) end end end end.
'un--last'(V0) -> case V0 of 0 -> 0; _ -> begin (V1 = (V0 - 1)), (1 + ('un--last'(V1))) end end.
'un--integerToFin'(V0, V1) -> case V1 of 0 -> {'Idris.Prelude.Types.Nothing'}; _ -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord_Integer'(V0, 0)) of 1 -> ('un--natToFin'(('Idris.Idris2.Prelude.Types':'dn--un--fromInteger_Num_Nat'(V0)), V1)); 0 -> {'Idris.Prelude.Types.Nothing'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.
'un--fsInjective'(V0) -> case V0 of 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--fromInteger'(V0, V1) -> ('with--fromInteger-1226'(V1, V0, ('un--integerToFin'(V0, V1)), 'erased')).
'un--finToNatInjective'(V0, V1, V2) -> case V0 of 0 -> case V1 of 0 -> 0; _ -> ('erlang':'throw'("Nat case not covered")) end; _ -> begin (V3 = (V0 - 1)), case V1 of 0 -> ('erlang':'throw'("Nat case not covered")); _ -> begin (V4 = (V1 - 1)), ('Idris.Idris2.Prelude.Basics':'un--cong'(('un--finToNatInjective'(V3, V4, ('Idris.Idris2.Data.Nat':'un--succInjective'(V2)))))) end end end end.
'un--finToNat'(V0) -> case V0 of 0 -> 0; _ -> begin (V1 = (V0 - 1)), (1 + ('un--finToNat'(V1))) end end.
'un--finToInteger'(V0) -> case V0 of 0 -> 0; _ -> begin (V1 = (V0 - 1)), (1 + ('un--finToInteger'(V1))) end end.
'un--coerce'(V0, V1) -> case V0 of 0 -> ('erlang':'throw'("Nat case not covered")); _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> 0; _ -> begin (V3 = (V1 - 1)), (1 + ('un--coerce'(V2, V3))) end end end end.
'un--allFins'(V0) -> case V0 of 0 -> {'Idris.Data.List1.:::', 0, []}; _ -> begin (V1 = (V0 - 1)), {'Idris.Data.List1.:::', 0, ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_List'(fun (V2) -> (1 + V2) end, ('Idris.Idris2.Data.List1':'un--forget'(('un--allFins'(V1))))))} end end.
