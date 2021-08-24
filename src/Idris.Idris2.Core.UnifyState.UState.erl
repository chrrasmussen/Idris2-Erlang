-module('Idris.Idris2.Core.UnifyState.UState').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--polyConstraints'/1,
  'rf--noSolve'/1,
  'rf--nextName'/1,
  'rf--nextConstraint'/1,
  'rf--logging'/1,
  'rf--holes'/1,
  'rf--guesses'/1,
  'rf--dotConstraints'/1,
  'rf--delayedHoles'/1,
  'rf--delayedElab'/1,
  'rf--currentHoles'/1,
  'rf--constraints'/1,
  'un--polyConstraints'/1,
  'un--noSolve'/1,
  'un--nextName'/1,
  'un--nextConstraint'/1,
  'un--logging'/1,
  'un--holes'/1,
  'un--guesses'/1,
  'un--dotConstraints'/1,
  'un--delayedHoles'/1,
  'un--delayedElab'/1,
  'un--currentHoles'/1,
  'un--constraints'/1
]).
'rf--polyConstraints'(V0) -> case V0 of {'Idris.Core.UnifyState.MkUState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> V7 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--noSolve'(V0) -> case V0 of {'Idris.Core.UnifyState.MkUState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> V6 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--nextName'(V0) -> case V0 of {'Idris.Core.UnifyState.MkUState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> V9 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--nextConstraint'(V0) -> case V0 of {'Idris.Core.UnifyState.MkUState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> V10 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--logging'(V0) -> case V0 of {'Idris.Core.UnifyState.MkUState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> V12 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--holes'(V0) -> case V0 of {'Idris.Core.UnifyState.MkUState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> V1 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--guesses'(V0) -> case V0 of {'Idris.Core.UnifyState.MkUState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> V2 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--dotConstraints'(V0) -> case V0 of {'Idris.Core.UnifyState.MkUState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> V8 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--delayedHoles'(V0) -> case V0 of {'Idris.Core.UnifyState.MkUState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--delayedElab'(V0) -> case V0 of {'Idris.Core.UnifyState.MkUState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> V11 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--currentHoles'(V0) -> case V0 of {'Idris.Core.UnifyState.MkUState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--constraints'(V0) -> case V0 of {'Idris.Core.UnifyState.MkUState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> V5 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--polyConstraints'(V0) -> case V0 of {'Idris.Core.UnifyState.MkUState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> V7 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--noSolve'(V0) -> case V0 of {'Idris.Core.UnifyState.MkUState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> V6 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--nextName'(V0) -> case V0 of {'Idris.Core.UnifyState.MkUState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> V9 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--nextConstraint'(V0) -> case V0 of {'Idris.Core.UnifyState.MkUState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> V10 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--logging'(V0) -> case V0 of {'Idris.Core.UnifyState.MkUState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> V12 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--holes'(V0) -> case V0 of {'Idris.Core.UnifyState.MkUState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> V1 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--guesses'(V0) -> case V0 of {'Idris.Core.UnifyState.MkUState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> V2 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--dotConstraints'(V0) -> case V0 of {'Idris.Core.UnifyState.MkUState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> V8 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--delayedHoles'(V0) -> case V0 of {'Idris.Core.UnifyState.MkUState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--delayedElab'(V0) -> case V0 of {'Idris.Core.UnifyState.MkUState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> V11 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--currentHoles'(V0) -> case V0 of {'Idris.Core.UnifyState.MkUState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--constraints'(V0) -> case V0 of {'Idris.Core.UnifyState.MkUState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> V5 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
