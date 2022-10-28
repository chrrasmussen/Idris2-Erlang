-module('Idris.Idris2.Core.UnifyState.UState').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.polyConstraints'/1,
  'un--.noSolve'/1,
  'un--.nextName'/1,
  'un--.nextConstraint'/1,
  'un--.logging'/1,
  'un--.holes'/1,
  'un--.guesses'/1,
  'un--.dotConstraints'/1,
  'un--.delayedHoles'/1,
  'un--.delayedElab'/1,
  'un--.currentHoles'/1,
  'un--.constraints'/1,
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
'un--.polyConstraints'(V0) -> case V0 of {'Core.UnifyState.MkUState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12} -> V7 end.
'un--.noSolve'(V0) -> case V0 of {'Core.UnifyState.MkUState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12} -> V6 end.
'un--.nextName'(V0) -> case V0 of {'Core.UnifyState.MkUState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12} -> V9 end.
'un--.nextConstraint'(V0) -> case V0 of {'Core.UnifyState.MkUState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12} -> V10 end.
'un--.logging'(V0) -> case V0 of {'Core.UnifyState.MkUState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12} -> V12 end.
'un--.holes'(V0) -> case V0 of {'Core.UnifyState.MkUState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12} -> V1 end.
'un--.guesses'(V0) -> case V0 of {'Core.UnifyState.MkUState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12} -> V2 end.
'un--.dotConstraints'(V0) -> case V0 of {'Core.UnifyState.MkUState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12} -> V8 end.
'un--.delayedHoles'(V0) -> case V0 of {'Core.UnifyState.MkUState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12} -> V4 end.
'un--.delayedElab'(V0) -> case V0 of {'Core.UnifyState.MkUState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12} -> V11 end.
'un--.currentHoles'(V0) -> case V0 of {'Core.UnifyState.MkUState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12} -> V3 end.
'un--.constraints'(V0) -> case V0 of {'Core.UnifyState.MkUState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12} -> V5 end.
'un--polyConstraints'(V0) -> case V0 of {'Core.UnifyState.MkUState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12} -> V7 end.
'un--noSolve'(V0) -> case V0 of {'Core.UnifyState.MkUState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12} -> V6 end.
'un--nextName'(V0) -> case V0 of {'Core.UnifyState.MkUState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12} -> V9 end.
'un--nextConstraint'(V0) -> case V0 of {'Core.UnifyState.MkUState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12} -> V10 end.
'un--logging'(V0) -> case V0 of {'Core.UnifyState.MkUState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12} -> V12 end.
'un--holes'(V0) -> case V0 of {'Core.UnifyState.MkUState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12} -> V1 end.
'un--guesses'(V0) -> case V0 of {'Core.UnifyState.MkUState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12} -> V2 end.
'un--dotConstraints'(V0) -> case V0 of {'Core.UnifyState.MkUState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12} -> V8 end.
'un--delayedHoles'(V0) -> case V0 of {'Core.UnifyState.MkUState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12} -> V4 end.
'un--delayedElab'(V0) -> case V0 of {'Core.UnifyState.MkUState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12} -> V11 end.
'un--currentHoles'(V0) -> case V0 of {'Core.UnifyState.MkUState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12} -> V3 end.
'un--constraints'(V0) -> case V0 of {'Core.UnifyState.MkUState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12} -> V5 end.
