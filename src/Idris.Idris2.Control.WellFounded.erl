-module('Idris.Idris2.Control.WellFounded').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--3414-1346--in--un--acc'/5,
  'dn--un--wellFounded_WellFounded_Nat_LT'/3,
  'dn--un--size_Sized_Nat'/1,
  'dn--un--size_Sized_(List $a)'/1,
  'dn--un--size_Sized_((Pair $a) $b)'/2,
  'dn--un--__Impl_WellFounded_Nat_LT'/3,
  'dn--un--__Impl_Sized_Nat'/1,
  'dn--un--__Impl_Sized_(List $a)'/1,
  'dn--un--__Impl_Sized_((Pair $a) $b)'/2,
  'un--wfRec'/2,
  'un--wfInd'/2,
  'un--wellFounded'/1,
  'un--sizeRec'/3,
  'un--sizeInd'/3,
  'un--sizeAccessible'/4,
  'un--size'/1,
  'un--accRec'/2,
  'un--accInd'/2,
  'un--Smaller'/3,
  'un--SizeAccessible'/2
]).
'nested--3414-1346--in--un--acc'(V0, V1, V2, V3, V4) -> case V2 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V5 = (V2 - 1)), case V4 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V6 = (V4 - 1)), fun (V7) -> fun (V8) -> ('nested--3414-1346--in--un--acc'(V0, V1, V5, V7, ('Idris.Idris2.Data.Nat':'dn--un--transitive_Transitive_Nat_LTE'(((begin (V9 = V0), fun (V10) -> (V9(V10)) end end(V7)) + 1), (begin (V11 = V0), fun (V12) -> (V11(V12)) end end(V3)), V5, V8, V6)))) end end end end end end.
'dn--un--wellFounded_WellFounded_Nat_LT'(V0, V1, V2) -> ('un--sizeAccessible'(fun (V3) -> V3 end, V0, V1, V2)).
'dn--un--size_Sized_Nat'(V0) -> V0.
'dn--un--size_Sized_(List $a)'(V0) -> ('Idris.Idris2.Prelude.Types.List':'un--lengthTR'(V0)).
'dn--un--size_Sized_((Pair $a) $b)'(V0, V1) -> case V1 of {'Builtin.MkPair', V2, V3} -> ((begin (V4 = ('Idris.Idris2.Builtin':'un--fst'(V0))), fun (V5) -> (V4(V5)) end end(V2)) + (begin (V6 = ('Idris.Idris2.Builtin':'un--snd'(V0))), fun (V7) -> (V6(V7)) end end(V3))) end.
'dn--un--__Impl_WellFounded_Nat_LT'(V0, V1, V2) -> ('dn--un--wellFounded_WellFounded_Nat_LT'(V0, V1, V2)).
'dn--un--__Impl_Sized_Nat'(V0) -> V0.
'dn--un--__Impl_Sized_(List $a)'(V0) -> ('dn--un--size_Sized_(List $a)'(V0)).
'dn--un--__Impl_Sized_((Pair $a) $b)'(V0, V1) -> ('dn--un--size_Sized_((Pair $a) $b)'(V0, V1)).
'un--wfRec'(V0, V1) -> ('un--accRec'(V0, V1)).
'un--wfInd'(V0, V1) -> ('un--accInd'(V0, V1)).
'un--wellFounded'(V0) -> begin (V1 = V0), fun (V2) -> (V1(V2)) end end.
'un--sizeRec'(V0, V1, V2) -> ('un--accRec'(V1, V2)).
'un--sizeInd'(V0, V1, V2) -> ('un--accInd'(V1, V2)).
'un--sizeAccessible'(V0, V1, V2, V3) -> ('nested--3414-1346--in--un--acc'(V0, V1, (begin (V4 = V0), fun (V5) -> (V4(V5)) end end(V1)), V2, V3)).
'un--size'(V0) -> begin (V1 = V0), fun (V2) -> (V1(V2)) end end.
'un--accRec'(V0, V1) -> ((V0(V1))(fun (V2) -> fun (V3) -> ('un--accRec'(V0, V2)) end end)).
'un--accInd'(V0, V1) -> ((V0(V1))(fun (V2) -> fun (V3) -> ('un--accInd'(V0, V2)) end end)).
'un--Smaller'(V0, V1, V2) -> ('Idris.Idris2.Data.Nat':'un--LT'((begin (V3 = V0), fun (V4) -> (V3(V4)) end end(V1)), (begin (V5 = V0), fun (V6) -> (V5(V6)) end end(V2)))).
'un--SizeAccessible'(V0, V1) -> {'Control.WellFounded.Accessible', 'erased', fun (V2) -> fun (V3) -> ('un--Smaller'(V0, V2, V3)) end end, V1}.
