-module('Idris.Idris2.Data.List.Elem').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--with block in isElem-2917'/7,
  'with--isElem-2881'/6,
  'with--decEq-2716'/8,
  'case--indexElem-3079'/5,
  'dn--un--uninhabited_Uninhabited__(|((=== Here) (There $e)),((~=~ Here) (There $e))|)'/5,
  'dn--un--uninhabited_Uninhabited__(|((=== (There $e)) Here),((~=~ (There $e)) Here)|)'/5,
  'dn--un--uninhabited_Uninhabited__(((Elem [Just a = $a]) $x) Nil)'/3,
  'dn--un--decEq_DecEq__((Elem $x) $xs)'/5,
  'dn--un--__Impl_Uninhabited_(|((=== Here) (There $e)),((~=~ Here) (There $e))|)'/5,
  'dn--un--__Impl_Uninhabited_(|((=== (There $e)) Here),((~=~ (There $e)) Here)|)'/5,
  'dn--un--__Impl_Uninhabited_(((Elem [Just a = $a]) $x) Nil)'/3,
  'dn--un--__Impl_DecEq_((Elem $x) $xs)'/5,
  'un--thereInjective'/7,
  'un--neitherHereNorThere'/7,
  'un--isElem'/4,
  'un--indexElem'/3,
  'un--elemToNat'/4,
  'un--elemMap'/6,
  'un--dropElem'/4
]).
'with--with block in isElem-2917'(V0, V1, V2, V3, V4, V5, V6) -> case V4 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V7) -> {'Idris.Prelude.Types.Yes', {'Idris.Data.List.Elem.There', V7}} end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V8) -> {'Idris.Prelude.Types.No', fun (V9) -> ('un--neitherHereNorThere'('erased', 'erased', 'erased', 'erased', V6, V8, V9)) end} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--isElem-2881'(V0, V1, V2, V3, V4, V5) -> case V4 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V6) -> case V6 of {'Idris.Builtin.Refl'} -> (fun () -> {'Idris.Prelude.Types.Yes', {'Idris.Data.List.Elem.Here'}} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V7) -> ('with--with block in isElem-2917'('erased', V1, V2, V5, ('un--isElem'('erased', V1, V2, V5)), V3, V7)) end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--decEq-2716'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V6 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V8) -> case V8 of {'Idris.Builtin.Refl'} -> (fun () -> {'Idris.Prelude.Types.Yes', {'Idris.Builtin.Refl'}} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V9) -> {'Idris.Prelude.Types.No', fun (V10) -> (V9(('un--thereInjective'('erased', 'erased', 'erased', 'erased', 'erased', 'erased', V10)))) end} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--indexElem-3079'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Builtin.DPair.MkDPair', E0, E1} -> (fun (V5, V6) -> {'Idris.Builtin.DPair.MkDPair', V5, {'Idris.Data.List.Elem.There', V6}} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--uninhabited_Uninhabited__(|((=== Here) (There $e)),((~=~ Here) (There $e))|)'(V0, V1, V2, V3, V4) -> ('erlang':'throw'("No clauses")).
'dn--un--uninhabited_Uninhabited__(|((=== (There $e)) Here),((~=~ (There $e)) Here)|)'(V0, V1, V2, V3, V4) -> ('erlang':'throw'("No clauses")).
'dn--un--uninhabited_Uninhabited__(((Elem [Just a = $a]) $x) Nil)'(V0, V1, V2) -> ('erlang':'throw'("No clauses")).
'dn--un--decEq_DecEq__((Elem $x) $xs)'(V0, V1, V2, V3, V4) -> case V3 of {'Idris.Data.List.Elem.Here'} -> (fun () -> case V4 of {'Idris.Data.List.Elem.Here'} -> (fun () -> {'Idris.Prelude.Types.Yes', {'Idris.Builtin.Refl'}} end()); {'Idris.Data.List.Elem.There', E0} -> (fun (V5) -> {'Idris.Prelude.Types.No', fun (V6) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'('erased', 'erased', fun (V7) -> ('dn--un--uninhabited_Uninhabited__(|((=== Here) (There $e)),((~=~ Here) (There $e))|)'('erased', 'erased', 'erased', 'erased', V7)) end, V6)) end} end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); {'Idris.Data.List.Elem.There', E1} -> (fun (V8) -> case V4 of {'Idris.Data.List.Elem.Here'} -> (fun () -> {'Idris.Prelude.Types.No', fun (V9) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'('erased', 'erased', fun (V10) -> ('dn--un--uninhabited_Uninhabited__(|((=== (There $e)) Here),((~=~ (There $e)) Here)|)'('erased', 'erased', 'erased', 'erased', V10)) end, V9)) end} end()); {'Idris.Data.List.Elem.There', E2} -> (fun (V11) -> ('with--decEq-2716'('erased', 'erased', 'erased', 'erased', V8, V11, ('dn--un--decEq_DecEq__((Elem $x) $xs)'('erased', 'erased', 'erased', V8, V11)), 'erased')) end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Impl_Uninhabited_(|((=== Here) (There $e)),((~=~ Here) (There $e))|)'(V0, V1, V2, V3, V4) -> ('dn--un--uninhabited_Uninhabited__(|((=== Here) (There $e)),((~=~ Here) (There $e))|)'('erased', 'erased', 'erased', 'erased', V4)).
'dn--un--__Impl_Uninhabited_(|((=== (There $e)) Here),((~=~ (There $e)) Here)|)'(V0, V1, V2, V3, V4) -> ('dn--un--uninhabited_Uninhabited__(|((=== (There $e)) Here),((~=~ (There $e)) Here)|)'('erased', 'erased', 'erased', 'erased', V4)).
'dn--un--__Impl_Uninhabited_(((Elem [Just a = $a]) $x) Nil)'(V0, V1, V2) -> ('dn--un--uninhabited_Uninhabited__(((Elem [Just a = $a]) $x) Nil)'('erased', 'erased', V2)).
'dn--un--__Impl_DecEq_((Elem $x) $xs)'(V0, V1, V2, V3, V4) -> ('dn--un--decEq_DecEq__((Elem $x) $xs)'('erased', 'erased', 'erased', V3, V4)).
'un--thereInjective'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Idris.Builtin.Refl'} -> (fun () -> {'Idris.Builtin.Refl'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--neitherHereNorThere'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Idris.Data.List.Elem.Here'} -> (fun () -> (V4({'Idris.Builtin.Refl'})) end()); {'Idris.Data.List.Elem.There', E0} -> (fun (V7) -> (V5(V7)) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--isElem'(V0, V1, V2, V3) -> case V3 of [] -> {'Idris.Prelude.Types.No', fun (V4) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'('erased', 'erased', fun (V5) -> ('dn--un--uninhabited_Uninhabited__(((Elem [Just a = $a]) $x) Nil)'('erased', 'erased', V5)) end, V4)) end}; [E0 | E1] -> (fun (V6, V7) -> ('with--isElem-2881'('erased', V1, V2, V6, ((V1(V2))(V6)), V7)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--indexElem'(V0, V1, V2) -> case V2 of [] -> {'Idris.Prelude.Types.Nothing'}; _ -> case V1 of 0 -> case V2 of [E4 | E5] -> (fun (V3, V4) -> {'Idris.Prelude.Types.Just', {'Idris.Builtin.DPair.MkDPair', V3, {'Idris.Data.List.Elem.Here'}}} end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> begin (V5 = (V1 - 1)), case V2 of [E0 | E1] -> (fun (V6, V7) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__Maybe'('erased', 'erased', fun (V8) -> case V8 of {'Idris.Builtin.DPair.MkDPair', E2, E3} -> (fun (V9, V10) -> {'Idris.Builtin.DPair.MkDPair', V9, {'Idris.Data.List.Elem.There', V10}} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end, ('un--indexElem'('erased', V5, V7)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end.
'un--elemToNat'(V0, V1, V2, V3) -> case V3 of {'Idris.Data.List.Elem.Here'} -> (fun () -> 0 end()); {'Idris.Data.List.Elem.There', E0} -> (fun (V4) -> (1 + ('un--elemToNat'('erased', 'erased', 'erased', V4))) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--elemMap'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Idris.Data.List.Elem.Here'} -> (fun () -> {'Idris.Data.List.Elem.Here'} end()); {'Idris.Data.List.Elem.There', E0} -> (fun (V6) -> {'Idris.Data.List.Elem.There', ('un--elemMap'('erased', 'erased', 'erased', 'erased', 'erased', V6))} end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--dropElem'(V0, V1, V2, V3) -> case V2 of [E0 | E1] -> (fun (V4, V5) -> case V3 of {'Idris.Data.List.Elem.Here'} -> (fun () -> V5 end()); {'Idris.Data.List.Elem.There', E2} -> (fun (V6) -> [V4 | ('un--dropElem'('erased', 'erased', V5, V6))] end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
