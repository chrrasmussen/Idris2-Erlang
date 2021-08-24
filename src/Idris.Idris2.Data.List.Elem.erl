-module('Idris.Idris2.Data.List.Elem').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--with block in isElem-1049'/7,
  'with--isElem-1019'/6,
  'with--decEq-778'/8,
  'case--indexElem-1203'/4,
  'dn--un--uninhabited_Uninhabited_(|((=== Here) (There $e)),((~=~ Here) (There $e))|)'/1,
  'dn--un--uninhabited_Uninhabited_(|((=== (There $e)) Here),((~=~ (There $e)) Here)|)'/1,
  'dn--un--uninhabited_Uninhabited_((Elem $z) ((:: $x) $xs))'/3,
  'dn--un--uninhabited_Uninhabited_(((Elem [a = $a]) $x) Nil)'/1,
  'dn--un--decEq_DecEq_((Elem $x) $xs)'/2,
  'dn--un--__Impl_Uninhabited_(|((=== Here) (There $e)),((~=~ Here) (There $e))|)'/1,
  'dn--un--__Impl_Uninhabited_(|((=== (There $e)) Here),((~=~ (There $e)) Here)|)'/1,
  'dn--un--__Impl_Uninhabited_((Elem $z) ((:: $x) $xs))'/3,
  'dn--un--__Impl_Uninhabited_(((Elem [a = $a]) $x) Nil)'/1,
  'dn--un--__Impl_DecEq_((Elem $x) $xs)'/2,
  'un--thereInjective'/1,
  'un--neitherHereNorThere'/3,
  'un--isElem'/3,
  'un--indexElem'/2,
  'un--elemToNat'/1,
  'un--elemMap'/1,
  'un--dropElem'/2
]).
'with--with block in isElem-1049'(V0, V1, V2, V3, V4, V5, V6) -> case V4 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V7) -> {'Idris.Prelude.Types.Yes', (1 + V7)} end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V8) -> {'Idris.Prelude.Types.No', fun (V9) -> ('un--neitherHereNorThere'(V6, V8, V9)) end} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--isElem-1019'(V0, V1, V2, V3, V4, V5) -> case V4 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V6) -> case V6 of 0 -> {'Idris.Prelude.Types.Yes', 0}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V7) -> ('with--with block in isElem-1049'('erased', V1, V2, V5, ('un--isElem'(V1, V2, V5)), V3, V7)) end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--decEq-778'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V6 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V8) -> case V8 of 0 -> {'Idris.Prelude.Types.Yes', 0}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V9) -> {'Idris.Prelude.Types.No', fun (V10) -> (V9(('un--thereInjective'(V10)))) end} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--indexElem-1203'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.DPair.MkDPair', E0, E1} -> (fun (V4, V5) -> {'Idris.Builtin.DPair.MkDPair', V4, (1 + V5)} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--uninhabited_Uninhabited_(|((=== Here) (There $e)),((~=~ Here) (There $e))|)'(V0) -> ('erlang':'throw'("No clauses")).
'dn--un--uninhabited_Uninhabited_(|((=== (There $e)) Here),((~=~ (There $e)) Here)|)'(V0) -> ('erlang':'throw'("No clauses")).
'dn--un--uninhabited_Uninhabited_((Elem $z) ((:: $x) $xs))'(V0, V1, V2) -> case V2 of 0 -> (V0(0)); _ -> begin (V3 = (V2 - 1)), (V1(V3)) end end.
'dn--un--uninhabited_Uninhabited_(((Elem [a = $a]) $x) Nil)'(V0) -> ('erlang':'throw'("No clauses")).
'dn--un--decEq_DecEq_((Elem $x) $xs)'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> {'Idris.Prelude.Types.Yes', 0}; _ -> {'Idris.Prelude.Types.No', fun (V2) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V3) -> ('dn--un--uninhabited_Uninhabited_(|((=== Here) (There $e)),((~=~ Here) (There $e))|)'(V3)) end, V2)) end} end; _ -> begin (V4 = (V0 - 1)), case V1 of 0 -> {'Idris.Prelude.Types.No', fun (V5) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V6) -> ('dn--un--uninhabited_Uninhabited_(|((=== (There $e)) Here),((~=~ (There $e)) Here)|)'(V6)) end, V5)) end}; _ -> begin (V7 = (V1 - 1)), ('with--decEq-778'('erased', 'erased', 'erased', 'erased', V4, V7, ('dn--un--decEq_DecEq_((Elem $x) $xs)'(V4, V7)), 'erased')) end end end end.
'dn--un--__Impl_Uninhabited_(|((=== Here) (There $e)),((~=~ Here) (There $e))|)'(V0) -> ('dn--un--uninhabited_Uninhabited_(|((=== Here) (There $e)),((~=~ Here) (There $e))|)'(V0)).
'dn--un--__Impl_Uninhabited_(|((=== (There $e)) Here),((~=~ (There $e)) Here)|)'(V0) -> ('dn--un--uninhabited_Uninhabited_(|((=== (There $e)) Here),((~=~ (There $e)) Here)|)'(V0)).
'dn--un--__Impl_Uninhabited_((Elem $z) ((:: $x) $xs))'(V0, V1, V2) -> ('dn--un--uninhabited_Uninhabited_((Elem $z) ((:: $x) $xs))'(V0, V1, V2)).
'dn--un--__Impl_Uninhabited_(((Elem [a = $a]) $x) Nil)'(V0) -> ('dn--un--uninhabited_Uninhabited_(((Elem [a = $a]) $x) Nil)'(V0)).
'dn--un--__Impl_DecEq_((Elem $x) $xs)'(V0, V1) -> ('dn--un--decEq_DecEq_((Elem $x) $xs)'(V0, V1)).
'un--thereInjective'(V0) -> case V0 of 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--neitherHereNorThere'(V0, V1, V2) -> case V2 of 0 -> (V0(0)); _ -> begin (V3 = (V2 - 1)), (V1(V3)) end end.
'un--isElem'(V0, V1, V2) -> case V2 of [] -> {'Idris.Prelude.Types.No', fun (V3) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V4) -> ('dn--un--uninhabited_Uninhabited_(((Elem [a = $a]) $x) Nil)'(V4)) end, V3)) end}; [E0 | E1] -> (fun (V5, V6) -> ('with--isElem-1019'('erased', V0, V1, V5, ((V0(V1))(V5)), V6)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--indexElem'(V0, V1) -> case V1 of [] -> {'Idris.Prelude.Types.Nothing'}; _ -> case V0 of 0 -> case V1 of [E4 | E5] -> (fun (V2, V3) -> {'Idris.Prelude.Types.Just', {'Idris.Builtin.DPair.MkDPair', V2, 0}} end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> begin (V4 = (V0 - 1)), case V1 of [E0 | E1] -> (fun (V5, V6) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(fun (V7) -> case V7 of {'Idris.Builtin.DPair.MkDPair', E2, E3} -> (fun (V8, V9) -> {'Idris.Builtin.DPair.MkDPair', V8, (1 + V9)} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end, ('un--indexElem'(V4, V6)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end.
'un--elemToNat'(V0) -> case V0 of 0 -> 0; _ -> begin (V1 = (V0 - 1)), (1 + ('un--elemToNat'(V1))) end end.
'un--elemMap'(V0) -> case V0 of 0 -> 0; _ -> begin (V1 = (V0 - 1)), (1 + ('un--elemMap'(V1))) end end.
'un--dropElem'(V0, V1) -> case V0 of [E0 | E1] -> (fun (V2, V3) -> case V1 of 0 -> V3; _ -> begin (V4 = (V1 - 1)), [V2 | ('un--dropElem'(V3, V4))] end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
