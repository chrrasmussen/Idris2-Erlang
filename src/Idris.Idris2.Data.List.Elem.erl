-module('Idris.Idris2.Data.List.Elem').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--with block in isElem-3223'/7,
  'with--isElem-3189'/6,
  'case--indexElem-3393'/4,
  'dn--un--uninhabited_Uninhabited_(|((Builtin.=== Here) (There $e)),((Builtin.~=~ Here) (There $e))|)'/1,
  'dn--un--uninhabited_Uninhabited_(|((Builtin.=== (There $e)) Here),((Builtin.~=~ (There $e)) Here)|)'/1,
  'dn--un--uninhabited_Uninhabited_((Elem $z) ((:: $x) $xs))'/3,
  'dn--un--uninhabited_Uninhabited_(((Elem [a = $a]) $x) Nil)'/1,
  'dn--un--injective_Injective_(((There [x = $x]) [y = $y]) [xs = $xs])'/3,
  'dn--un--decEq_DecEq_((Elem $x) $xs)'/2,
  'dn--un--__Impl_Uninhabited_(|((Builtin.=== Here) (There $e)),((Builtin.~=~ Here) (There $e))|)'/1,
  'dn--un--__Impl_Uninhabited_(|((Builtin.=== (There $e)) Here),((Builtin.~=~ (There $e)) Here)|)'/1,
  'dn--un--__Impl_Uninhabited_((Elem $z) ((:: $x) $xs))'/3,
  'dn--un--__Impl_Uninhabited_(((Elem [a = $a]) $x) Nil)'/1,
  'dn--un--__Impl_Injective_(((There [x = $x]) [y = $y]) [xs = $xs])'/0,
  'dn--un--__Impl_DecEq_((Elem $x) $xs)'/2,
  'un--neitherHereNorThere'/3,
  'un--isElem'/3,
  'un--indexElem'/2,
  'un--elemToNat'/1,
  'un--elemMap'/1,
  'un--dropElem'/2
]).
'with--with block in isElem-3223'(V0, V1, V2, V3, V4, V5, V6) -> case V4 of {'Prelude.Types.Yes', V7} -> {'Prelude.Types.Yes', (V7 + 1)}; {'Prelude.Types.No', V8} -> {'Prelude.Types.No', fun (V9) -> ('un--neitherHereNorThere'(V6, V8, V9)) end} end.
'with--isElem-3189'(V0, V1, V2, V3, V4, V5) -> case V4 of {'Prelude.Types.Yes', V6} -> {'Prelude.Types.Yes', 0}; {'Prelude.Types.No', V7} -> ('with--with block in isElem-3223'('erased', V1, V2, V5, ('un--isElem'(V1, V2, V5)), V3, V7)) end.
'case--indexElem-3393'(V0, V1, V2, V3) -> case V3 of {'Builtin.DPair.MkDPair', V4, V5} -> {'Builtin.DPair.MkDPair', V4, (V5 + 1)} end.
'dn--un--uninhabited_Uninhabited_(|((Builtin.=== Here) (There $e)),((Builtin.~=~ Here) (There $e))|)'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--uninhabited_Uninhabited_(|((Builtin.=== (There $e)) Here),((Builtin.~=~ (There $e)) Here)|)'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--uninhabited_Uninhabited_((Elem $z) ((:: $x) $xs))'(V0, V1, V2) -> case V2 of 0 -> (begin (V3 = V0), fun (V4) -> (V3(V4)) end end({'Builtin.Refl'})); _ -> begin (V5 = (V2 - 1)), (begin (V6 = V1), fun (V7) -> (V6(V7)) end end(V5)) end end.
'dn--un--uninhabited_Uninhabited_(((Elem [a = $a]) $x) Nil)'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--injective_Injective_(((There [x = $x]) [y = $y]) [xs = $xs])'(V0, V1, V2) -> {'Builtin.Refl'}.
'dn--un--decEq_DecEq_((Elem $x) $xs)'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> {'Prelude.Types.Yes', {'Builtin.Refl'}}; _ -> {'Prelude.Types.No', fun (V2) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V3) -> ('dn--un--uninhabited_Uninhabited_(|((Builtin.=== Here) (There $e)),((Builtin.~=~ Here) (There $e))|)'(V3)) end, V2)) end} end; _ -> begin (V4 = (V0 - 1)), case V1 of 0 -> {'Prelude.Types.No', fun (V5) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V6) -> ('dn--un--uninhabited_Uninhabited_(|((Builtin.=== (There $e)) Here),((Builtin.~=~ (There $e)) Here)|)'(V6)) end, V5)) end}; _ -> begin (V7 = (V1 - 1)), ('Idris.Idris2.Decidable.Equality.Core':'un--decEqCong'(((begin (V10 = fun (V8) -> fun (V9) -> ('dn--un--decEq_DecEq_((Elem $x) $xs)'(V8, V9)) end end), fun (V11) -> fun (V12) -> ((V10(V11))(V12)) end end end(V4))(V7)))) end end end end.
'dn--un--__Impl_Uninhabited_(|((Builtin.=== Here) (There $e)),((Builtin.~=~ Here) (There $e))|)'(V0) -> ('dn--un--uninhabited_Uninhabited_(|((Builtin.=== Here) (There $e)),((Builtin.~=~ Here) (There $e))|)'(V0)).
'dn--un--__Impl_Uninhabited_(|((Builtin.=== (There $e)) Here),((Builtin.~=~ (There $e)) Here)|)'(V0) -> ('dn--un--uninhabited_Uninhabited_(|((Builtin.=== (There $e)) Here),((Builtin.~=~ (There $e)) Here)|)'(V0)).
'dn--un--__Impl_Uninhabited_((Elem $z) ((:: $x) $xs))'(V0, V1, V2) -> ('dn--un--uninhabited_Uninhabited_((Elem $z) ((:: $x) $xs))'(V0, V1, V2)).
'dn--un--__Impl_Uninhabited_(((Elem [a = $a]) $x) Nil)'(V0) -> ('dn--un--uninhabited_Uninhabited_(((Elem [a = $a]) $x) Nil)'(V0)).
'dn--un--__Impl_Injective_(((There [x = $x]) [y = $y]) [xs = $xs])'() -> {'Control.Function.MkInjective', fun (V0) -> (V0 + 1) end, fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--injective_Injective_(((There [x = $x]) [y = $y]) [xs = $xs])'(V1, V2, V3)) end end end}.
'dn--un--__Impl_DecEq_((Elem $x) $xs)'(V0, V1) -> ('dn--un--decEq_DecEq_((Elem $x) $xs)'(V0, V1)).
'un--neitherHereNorThere'(V0, V1, V2) -> case V2 of 0 -> (V0({'Builtin.Refl'})); _ -> begin (V3 = (V2 - 1)), (V1(V3)) end end.
'un--isElem'(V0, V1, V2) -> case V2 of [] -> {'Prelude.Types.No', fun (V3) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V4) -> ('dn--un--uninhabited_Uninhabited_(((Elem [a = $a]) $x) Nil)'(V4)) end, V3)) end}; [E0 | E1] -> (fun (V5, V6) -> ('with--isElem-3189'('erased', V0, V1, V5, ((begin (V7 = V0), fun (V8) -> fun (V9) -> ((V7(V8))(V9)) end end end(V1))(V5)), V6)) end(E0, E1)) end.
'un--indexElem'(V0, V1) -> case V1 of [] -> {'Prelude.Types.Nothing'}; _ -> case V0 of 0 -> case V1 of [E2 | E3] -> (fun (V2, V3) -> {'Prelude.Types.Just', {'Builtin.DPair.MkDPair', V2, 0}} end(E2, E3)) end; _ -> begin (V4 = (V0 - 1)), case V1 of [E0 | E1] -> (fun (V5, V6) -> ((begin (V14 = fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V12, V13)) end end end end), fun (V15) -> fun (V16) -> ((((V14('erased'))('erased'))(V15))(V16)) end end end(fun (V7) -> case V7 of {'Builtin.DPair.MkDPair', V8, V9} -> {'Builtin.DPair.MkDPair', V8, (V9 + 1)} end end))(('un--indexElem'(V4, V6)))) end(E0, E1)) end end end end.
'un--elemToNat'(V0) -> V0.
'un--elemMap'(V0) -> V0.
'un--dropElem'(V0, V1) -> case V0 of [E0 | E1] -> (fun (V2, V3) -> case V1 of 0 -> V3; _ -> begin (V4 = (V1 - 1)), [V2 | ('un--dropElem'(V3, V4))] end end end(E0, E1)) end.
