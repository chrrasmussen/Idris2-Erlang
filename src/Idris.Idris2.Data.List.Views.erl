-module('Idris.Idris2.Data.List.Views').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--with block in splitRec-2135'/4,
  'with--splitRec-2127'/3,
  'case--splitHelp-2026'/8,
  'un--splitRec'/2,
  'un--splitHelp'/4,
  'un--split'/2,
  'un--snocListHelp'/4,
  'un--snocList'/2,
  'un--smallerRight'/4,
  'un--smallerLeft'/4,
  'un--lengthSuc'/4,
  'un--lengthLT'/3
]).
'with--with block in splitRec-2135'(V0, V1, V2, V3) -> case V1 of [] -> case V2 of {'Idris.Data.List.Views.SplitNil'} -> (fun () -> {'Idris.Data.List.Views.SplitRecNil'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; [E0 | E1] -> (fun (V4, V5) -> case V5 of [] -> case V2 of {'Idris.Data.List.Views.SplitOne', E10} -> (fun (V6) -> {'Idris.Data.List.Views.SplitRecOne', V4} end(E10)); _ -> case V2 of {'Idris.Data.List.Views.SplitPair', E6, E7, E8, E9} -> (fun (V7, V8, V9, V10) -> {'Idris.Data.List.Views.SplitRecPair', [V4 | V8], [V9 | V10], fun () -> ('with--splitRec-2127'('erased', [V4 | V8], ((V3([V4 | V8]))(('un--smallerLeft'('erased', V8, V9, V10)))))) end, fun () -> ('with--splitRec-2127'('erased', [V9 | V10], ((V3([V9 | V10]))(('un--smallerRight'('erased', 'erased', V8, V10)))))) end} end(E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end; _ -> case V2 of {'Idris.Data.List.Views.SplitPair', E2, E3, E4, E5} -> (fun (V11, V12, V13, V14) -> {'Idris.Data.List.Views.SplitRecPair', [V4 | V12], [V13 | V14], fun () -> ('with--splitRec-2127'('erased', [V4 | V12], ((V3([V4 | V12]))(('un--smallerLeft'('erased', V12, V13, V14)))))) end, fun () -> ('with--splitRec-2127'('erased', [V13 | V14], ((V3([V13 | V14]))(('un--smallerRight'('erased', 'erased', V12, V14)))))) end} end(E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--splitRec-2127'(V0, V1, V2) -> ('with--with block in splitRec-2135'('erased', V1, ('un--split'('erased', V1)), V2)).
'case--splitHelp-2026'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V5 of [] -> case V7 of {'Idris.Data.List.Views.SplitOne', E8} -> (fun (V8) -> {'Idris.Data.List.Views.SplitPair', V3, [], V4, []} end(E8)); _ -> case V7 of {'Idris.Data.List.Views.SplitPair', E4, E5, E6, E7} -> (fun (V9, V10, V11, V12) -> {'Idris.Data.List.Views.SplitPair', V3, [V4 | V10], V11, V12} end(E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end; _ -> case V7 of {'Idris.Data.List.Views.SplitPair', E0, E1, E2, E3} -> (fun (V13, V14, V15, V16) -> {'Idris.Data.List.Views.SplitPair', V3, [V4 | V14], V15, V16} end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.
'un--splitRec'(V0, V1) -> ('with--splitRec-2127'('erased', V1, fun (V2) -> fun (V3) -> ('Idris.Idris2.Control.WellFounded':'un--sizeAccessible'('erased', fun (V4) -> ('Idris.Idris2.Control.WellFounded':'dn--un--size_Sized__(List $a)'('erased', V4)) end, V1, V2, V3)) end end)).
'un--splitHelp'(V0, V1, V2, V3) -> case V2 of [] -> {'Idris.Data.List.Views.SplitOne', V1}; [E0 | E1] -> (fun (V4, V5) -> case V3 of [] -> {'Idris.Data.List.Views.SplitPair', V1, [], V4, V5}; [E2 | E3] -> (fun (V6, V7) -> case V7 of [] -> {'Idris.Data.List.Views.SplitPair', V1, [], V4, V5}; [E4 | E5] -> (fun (V8, V9) -> ('case--splitHelp-2026'('erased', V8, V6, V1, V4, V5, V9, ('un--splitHelp'('erased', V1, V5, V9)))) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--split'(V0, V1) -> case V1 of [] -> {'Idris.Data.List.Views.SplitNil'}; [E0 | E1] -> (fun (V2, V3) -> ('un--splitHelp'('erased', V2, V3, V3)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--snocListHelp'(V0, V1, V2, V3) -> case V3 of [] -> V2; [E0 | E1] -> (fun (V4, V5) -> ('un--snocListHelp'('erased', ('Idris.Idris2.Prelude.Types.List':'un--++'('erased', V1, [V4 | []])), {'Idris.Data.List.Views.Snoc', V4, V1, V2}, V5)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--snocList'(V0, V1) -> ('un--snocListHelp'('erased', [], {'Idris.Data.List.Views.Empty'}, V1)).
'un--smallerRight'(V0, V1, V2, V3) -> {'Idris.Data.Nat.LTESucc', {'Idris.Data.Nat.LTESucc', ('un--lengthLT'('erased', V3, V2))}}.
'un--smallerLeft'(V0, V1, V2, V3) -> case V1 of [] -> {'Idris.Data.Nat.LTESucc', {'Idris.Data.Nat.LTESucc', {'Idris.Data.Nat.LTEZero'}}}; [E0 | E1] -> (fun (V4, V5) -> {'Idris.Data.Nat.LTESucc', ('un--smallerLeft'('erased', V5, V2, V3))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lengthSuc'(V0, V1, V2, V3) -> case V1 of [] -> {'Idris.Builtin.Refl'}; [E0 | E1] -> (fun (V4, V5) -> ('Idris.Idris2.Prelude.Basics':'un--cong'('erased', 'erased', 'erased', 'erased', 'erased', ('un--lengthSuc'('erased', V5, V2, V3)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lengthLT'(V0, V1, V2) -> case V2 of [] -> ('Idris.Idris2.Data.Nat':'un--lteRefl'(('Idris.Idris2.Prelude.Types.List':'un--length'('erased', ('Idris.Idris2.Prelude.Types.List':'un--++'('erased', [], V1)))))); [E0 | E1] -> (fun (V3, V4) -> ('Idris.Idris2.Data.Nat':'un--lteSuccRight'('erased', 'erased', ('un--lengthLT'('erased', V1, V4)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
