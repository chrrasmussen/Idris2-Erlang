-module('Idris.Idris2.Data.Nat.Views').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--with block in halfRec-1766'/3,
  'with--halfRec-1759'/2,
  'with--half-1737'/2,
  'un--halfRec'/1,
  'un--half'/1
]).
'with--with block in halfRec-1766'(V0, V1, V2) -> case V0 of 0 -> case V1 of {'Idris.Data.Nat.Views.HalfEven', E2} -> (fun (V3) -> {'Idris.Data.Nat.Views.HalfRecOdd', V3, fun () -> ('with--halfRec-1759'(V3, ((V2(V3))({'Idris.Data.Nat.LTESucc', ('Idris.Idris2.Data.Nat':'un--lteAddRight'('erased', V3))})))) end} end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> case V1 of {'Idris.Data.Nat.Views.HalfOdd', E1} -> (fun (V4) -> {'Idris.Data.Nat.Views.HalfRecEven', (1 + V4), fun () -> ('with--halfRec-1759'((1 + V4), ((V2((1 + V4)))({'Idris.Data.Nat.LTESucc', {'Idris.Data.Nat.LTESucc', ('Idris.Idris2.Data.Nat':'un--lteAddRight'('erased', V4))}})))) end} end(E1)); _ -> case V1 of {'Idris.Data.Nat.Views.HalfEven', E0} -> (fun (V5) -> {'Idris.Data.Nat.Views.HalfRecOdd', V5, fun () -> ('with--halfRec-1759'(V5, ((V2(V5))({'Idris.Data.Nat.LTESucc', ('Idris.Idris2.Data.Nat':'un--lteAddRight'('erased', V5))})))) end} end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'with--halfRec-1759'(V0, V1) -> case V0 of 0 -> {'Idris.Data.Nat.Views.HalfRecZ'}; _ -> begin (V2 = (V0 - 1)), ('with--with block in halfRec-1766'(V2, ('un--half'(V2)), V1)) end end.
'with--half-1737'(V0, V1) -> case V0 of 0 -> case V1 of {'Idris.Data.Nat.Views.HalfEven', E2} -> (fun (V2) -> {'Idris.Data.Nat.Views.HalfOdd', V2} end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> case V1 of {'Idris.Data.Nat.Views.HalfOdd', E1} -> (fun (V3) -> {'Idris.Data.Nat.Views.HalfEven', (1 + V3)} end(E1)); _ -> case V1 of {'Idris.Data.Nat.Views.HalfEven', E0} -> (fun (V4) -> {'Idris.Data.Nat.Views.HalfOdd', V4} end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--halfRec'(V0) -> ('with--halfRec-1759'(V0, fun (V1) -> fun (V2) -> ('Idris.Idris2.Control.WellFounded':'un--sizeAccessible'('erased', fun (V3) -> ('Idris.Idris2.Control.WellFounded':'dn--un--size_Sized__Nat'(V3)) end, V0, V1, V2)) end end)).
'un--half'(V0) -> case V0 of 0 -> {'Idris.Data.Nat.Views.HalfEven', 0}; _ -> begin (V1 = (V0 - 1)), ('with--half-1737'(V1, ('un--half'(V1)))) end end.
