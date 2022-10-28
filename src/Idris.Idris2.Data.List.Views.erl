-module('Idris.Idris2.Data.List.Views').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--with block in splitRec-1292'/4,
  'with--splitRec-1279'/3,
  'case--splitHelp-1157'/7,
  'un--splitRec'/1,
  'un--splitHelp'/3,
  'un--split'/1,
  'un--snocListHelp'/3,
  'un--snocList'/1,
  'un--smallerRight'/2,
  'un--smallerLeft'/3,
  'un--lengthLT'/2
]).
'with--with block in splitRec-1292'(V0, V1, V2, V3) -> case V1 of [] -> case V2 of {'Data.List.Views.SplitNil'} -> {'Data.List.Views.SplitRecNil'} end; [E0 | E1] -> (fun (V4, V5) -> case V5 of [] -> case V2 of {'Data.List.Views.SplitOne', V6} -> {'Data.List.Views.SplitRecOne', V4}; _ -> case V2 of {'Data.List.Views.SplitPair', V7, V8, V9, V10} -> begin (V11 = V3), {'Data.List.Views.SplitRecPair', [V4 | V8], [V9 | V10], fun () -> ('with--splitRec-1279'('erased', [V4 | V8], ((V11([V4 | V8]))(('un--smallerLeft'(V8, V9, V10)))))) end, fun () -> ('with--splitRec-1279'('erased', [V9 | V10], ((V11([V9 | V10]))(('un--smallerRight'(V8, V10)))))) end} end end end; _ -> case V2 of {'Data.List.Views.SplitPair', V12, V13, V14, V15} -> begin (V16 = V3), {'Data.List.Views.SplitRecPair', [V4 | V13], [V14 | V15], fun () -> ('with--splitRec-1279'('erased', [V4 | V13], ((V16([V4 | V13]))(('un--smallerLeft'(V13, V14, V15)))))) end, fun () -> ('with--splitRec-1279'('erased', [V14 | V15], ((V16([V14 | V15]))(('un--smallerRight'(V13, V15)))))) end} end end end end(E0, E1)) end.
'with--splitRec-1279'(V0, V1, V2) -> ('with--with block in splitRec-1292'('erased', V1, ('un--split'(V1)), V2)).
'case--splitHelp-1157'(V0, V1, V2, V3, V4, V5, V6) -> case V4 of [] -> case V6 of {'Data.List.Views.SplitOne', V7} -> {'Data.List.Views.SplitPair', V2, [], V3, []}; _ -> case V6 of {'Data.List.Views.SplitPair', V8, V9, V10, V11} -> {'Data.List.Views.SplitPair', V2, [V3 | V9], V10, V11} end end; _ -> case V6 of {'Data.List.Views.SplitPair', V12, V13, V14, V15} -> {'Data.List.Views.SplitPair', V2, [V3 | V13], V14, V15} end end.
'un--splitRec'(V0) -> ('with--splitRec-1279'('erased', V0, fun (V1) -> fun (V2) -> ('Idris.Idris2.Control.WellFounded':'un--sizeAccessible'(fun (V3) -> ('Idris.Idris2.Control.WellFounded':'dn--un--size_Sized_(List $a)'(V3)) end, V0, V1, V2)) end end)).
'un--splitHelp'(V0, V1, V2) -> case V1 of [] -> {'Data.List.Views.SplitOne', V0}; [E0 | E1] -> (fun (V3, V4) -> case V2 of [] -> {'Data.List.Views.SplitPair', V0, [], V3, V4}; [E2 | E3] -> (fun (V5, V6) -> case V6 of [] -> {'Data.List.Views.SplitPair', V0, [], V3, V4}; [E4 | E5] -> (fun (V7, V8) -> ('case--splitHelp-1157'(V7, V5, V0, V3, V4, V8, ('un--splitHelp'(V0, V4, V8)))) end(E4, E5)) end end(E2, E3)) end end(E0, E1)) end.
'un--split'(V0) -> case V0 of [] -> {'Data.List.Views.SplitNil'}; [E0 | E1] -> (fun (V1, V2) -> ('un--splitHelp'(V1, V2, V2)) end(E0, E1)) end.
'un--snocListHelp'(V0, V1, V2) -> case V2 of [] -> V1; [E0 | E1] -> (fun (V3, V4) -> ('un--snocListHelp'(('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(V0, [V3 | []])), {'Data.List.Views.Snoc', V3, V0, V1}, V4)) end(E0, E1)) end.
'un--snocList'(V0) -> ('un--snocListHelp'([], {'Data.List.Views.Empty'}, V0)).
'un--smallerRight'(V0, V1) -> ((('un--lengthLT'(V1, V0)) + 1) + 1).
'un--smallerLeft'(V0, V1, V2) -> case V0 of [] -> 2; [E0 | E1] -> (fun (V3, V4) -> (('un--smallerLeft'(V4, V1, V2)) + 1) end(E0, E1)) end.
'un--lengthLT'(V0, V1) -> case V1 of [] -> ('Idris.Idris2.Data.Nat':'dn--un--reflexive_Reflexive_Nat_LTE'(('Idris.Idris2.Prelude.Types.List':'un--lengthTR'(V0)))); [E0 | E1] -> (fun (V2, V3) -> ('un--lengthLT'(V0, V3)) end(E0, E1)) end.
