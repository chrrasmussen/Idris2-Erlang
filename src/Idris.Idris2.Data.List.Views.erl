-module('Idris.Idris2.Data.List.Views').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--with block in splitRec-1616'/4,
  'with--splitRec-1606'/3,
  'case--splitHelp-1518'/7,
  'un--splitRec'/1,
  'un--splitHelp'/3,
  'un--split'/1,
  'un--snocListHelp'/3,
  'un--snocList'/1,
  'un--smallerRight'/2,
  'un--smallerLeft'/3,
  'un--lengthLT'/2
]).
'with--with block in splitRec-1616'(V0, V1, V2, V3) -> case V1 of [] -> case V2 of {'Idris.Data.List.Views.SplitNil'} -> (fun () -> {'Idris.Data.List.Views.SplitRecNil'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; [E0 | E1] -> (fun (V4, V5) -> case V5 of [] -> case V2 of {'Idris.Data.List.Views.SplitOne', E10} -> (fun (V6) -> {'Idris.Data.List.Views.SplitRecOne', V4} end(E10)); _ -> case V2 of {'Idris.Data.List.Views.SplitPair', E6, E7, E8, E9} -> (fun (V7, V8, V9, V10) -> {'Idris.Data.List.Views.SplitRecPair', [V4 | V8], [V9 | V10], fun () -> ('with--splitRec-1606'('erased', [V4 | V8], ((V3([V4 | V8]))(('un--smallerLeft'(V8, V9, V10)))))) end, fun () -> ('with--splitRec-1606'('erased', [V9 | V10], ((V3([V9 | V10]))(('un--smallerRight'(V8, V10)))))) end} end(E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end; _ -> case V2 of {'Idris.Data.List.Views.SplitPair', E2, E3, E4, E5} -> (fun (V11, V12, V13, V14) -> {'Idris.Data.List.Views.SplitRecPair', [V4 | V12], [V13 | V14], fun () -> ('with--splitRec-1606'('erased', [V4 | V12], ((V3([V4 | V12]))(('un--smallerLeft'(V12, V13, V14)))))) end, fun () -> ('with--splitRec-1606'('erased', [V13 | V14], ((V3([V13 | V14]))(('un--smallerRight'(V12, V14)))))) end} end(E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--splitRec-1606'(V0, V1, V2) -> ('with--with block in splitRec-1616'('erased', V1, ('un--split'(V1)), V2)).
'case--splitHelp-1518'(V0, V1, V2, V3, V4, V5, V6) -> case V4 of [] -> case V6 of {'Idris.Data.List.Views.SplitOne', E8} -> (fun (V7) -> {'Idris.Data.List.Views.SplitPair', V2, [], V3, []} end(E8)); _ -> case V6 of {'Idris.Data.List.Views.SplitPair', E4, E5, E6, E7} -> (fun (V8, V9, V10, V11) -> {'Idris.Data.List.Views.SplitPair', V2, [V3 | V9], V10, V11} end(E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end; _ -> case V6 of {'Idris.Data.List.Views.SplitPair', E0, E1, E2, E3} -> (fun (V12, V13, V14, V15) -> {'Idris.Data.List.Views.SplitPair', V2, [V3 | V13], V14, V15} end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.
'un--splitRec'(V0) -> ('with--splitRec-1606'('erased', V0, fun (V1) -> fun (V2) -> ('Idris.Idris2.Control.WellFounded':'un--sizeAccessible'(fun (V3) -> ('Idris.Idris2.Control.WellFounded':'dn--un--size_Sized_(List $a)'(V3)) end, V0, V1, V2)) end end)).
'un--splitHelp'(V0, V1, V2) -> case V1 of [] -> {'Idris.Data.List.Views.SplitOne', V0}; [E0 | E1] -> (fun (V3, V4) -> case V2 of [] -> {'Idris.Data.List.Views.SplitPair', V0, [], V3, V4}; [E2 | E3] -> (fun (V5, V6) -> case V6 of [] -> {'Idris.Data.List.Views.SplitPair', V0, [], V3, V4}; [E4 | E5] -> (fun (V7, V8) -> ('case--splitHelp-1518'(V7, V5, V0, V3, V4, V8, ('un--splitHelp'(V0, V4, V8)))) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--split'(V0) -> case V0 of [] -> {'Idris.Data.List.Views.SplitNil'}; [E0 | E1] -> (fun (V1, V2) -> ('un--splitHelp'(V1, V2, V2)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--snocListHelp'(V0, V1, V2) -> case V2 of [] -> V1; [E0 | E1] -> (fun (V3, V4) -> ('un--snocListHelp'(('Idris.Idris2.Prelude.Types.List':'un--++'(V0, [V3 | []])), {'Idris.Data.List.Views.Snoc', V3, V0, V1}, V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--snocList'(V0) -> ('un--snocListHelp'([], {'Idris.Data.List.Views.Empty'}, V0)).
'un--smallerRight'(V0, V1) -> (1 + (1 + ('un--lengthLT'(V1, V0)))).
'un--smallerLeft'(V0, V1, V2) -> case V0 of [] -> (1 + (1 + 0)); [E0 | E1] -> (fun (V3, V4) -> (1 + ('un--smallerLeft'(V4, V1, V2))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lengthLT'(V0, V1) -> case V1 of [] -> ('Idris.Idris2.Data.Nat':'dn--un--reflexive_Reflexive_Nat_LTE'(('Idris.Idris2.Prelude.Types.List':'un--length'(V0)))); [E0 | E1] -> (fun (V2, V3) -> ('Idris.Idris2.Data.Nat':'un--lteSuccRight'(('un--lengthLT'(V0, V3)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
