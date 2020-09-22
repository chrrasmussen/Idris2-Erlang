-module('Idris.Idris2.Control.WellFounded').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--2383-4195--in--un--acc'/6,
  'dn--un--size_Sized__Nat'/1,
  'dn--un--size_Sized__(List $a)'/2,
  'dn--un--size_Sized__((Pair $a) $b)'/4,
  'dn--un--__Impl_Sized_Nat'/1,
  'dn--un--__Impl_Sized_(List $a)'/2,
  'dn--un--__Impl_Sized_((Pair $a) $b)'/4,
  'un--wfRec'/6,
  'un--wfInd'/6,
  'un--wellFounded'/4,
  'un--sizeRec'/5,
  'un--sizeInd'/5,
  'un--sizeAccessible'/5,
  'un--size'/3,
  'un--accRec'/6,
  'un--accInd'/6,
  'un--Smaller'/4,
  'un--SizeAccessible'/3
]).
'nested--2383-4195--in--un--acc'(V0, V1, V2, V3, V4, V5) -> case V3 of 0 -> ('erlang':'throw'("Nat case not covered")); _ -> begin (V6 = (V3 - 1)), case V5 of {'Idris.Data.Nat.LTESucc', E0} -> (fun (V7) -> fun (V8) -> fun (V9) -> ('nested--2383-4195--in--un--acc'('erased', V1, V2, V6, V8, ('Idris.Idris2.Data.Nat':'un--lteTransitive'('erased', 'erased', 'erased', V9, V7)))) end end end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'dn--un--size_Sized__Nat'(V0) -> V0.
'dn--un--size_Sized__(List $a)'(V0, V1) -> ('Idris.Idris2.Prelude.Types.List':'un--length'('erased', V1)).
'dn--un--size_Sized__((Pair $a) $b)'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V4, V5) -> ('Idris.Idris2.Prelude.Types':'dn--un--+_Num__Nat'((('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V2))(V4)), (('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V2))(V5)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Impl_Sized_Nat'(V0) -> ('dn--un--size_Sized__Nat'(V0)).
'dn--un--__Impl_Sized_(List $a)'(V0, V1) -> ('dn--un--size_Sized__(List $a)'('erased', V1)).
'dn--un--__Impl_Sized_((Pair $a) $b)'(V0, V1, V2, V3) -> ('dn--un--size_Sized__((Pair $a) $b)'('erased', 'erased', V2, V3)).
'un--wfRec'(V0, V1, V2, V3, V4, V5) -> ('un--accRec'('erased', 'erased', 'erased', V4, V5, 'erased')).
'un--wfInd'(V0, V1, V2, V3, V4, V5) -> ('un--accInd'('erased', 'erased', 'erased', V4, V5, 'erased')).
'un--wellFounded'(V0, V1, V2, V3) -> (V2(V3)).
'un--sizeRec'(V0, V1, V2, V3, V4) -> ('un--accRec'('erased', 'erased', 'erased', V3, V4, 'erased')).
'un--sizeInd'(V0, V1, V2, V3, V4) -> ('un--accInd'('erased', 'erased', 'erased', V3, V4, 'erased')).
'un--sizeAccessible'(V0, V1, V2, V3, V4) -> ('nested--2383-4195--in--un--acc'('erased', V1, V2, (V1(V2)), V3, V4)).
'un--size'(V0, V1, V2) -> (V1(V2)).
'un--accRec'(V0, V1, V2, V3, V4, V5) -> ((V3(V4))(fun (V6) -> fun (V7) -> ('un--accRec'('erased', 'erased', 'erased', V3, V6, 'erased')) end end)).
'un--accInd'(V0, V1, V2, V3, V4, V5) -> ((V3(V4))(fun (V6) -> fun (V7) -> ('un--accInd'('erased', 'erased', 'erased', V3, V6, 'erased')) end end)).
'un--Smaller'(V0, V1, V2, V3) -> ('Idris.Idris2.Data.Nat':'un--LT'((V1(V2)), (V1(V3)))).
'un--SizeAccessible'(V0, V1, V2) -> {'Idris.Control.WellFounded.Accessible', 'erased', fun (V3) -> fun (V4) -> ('un--Smaller'('erased', V1, V3, V4)) end end, V2}.
