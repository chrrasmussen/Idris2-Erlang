-module('Idris.Idris2.Core.Value.EvalOpts').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.tcInline'/1,
  'un--.strategy'/1,
  'un--.removeAs'/1,
  'un--.reduceLimit'/1,
  'un--.holesOnly'/1,
  'un--.fuel'/1,
  'un--.evalAll'/1,
  'un--.argHolesOnly'/1,
  'un--tcInline'/1,
  'un--strategy'/1,
  'un--removeAs'/1,
  'un--reduceLimit'/1,
  'un--holesOnly'/1,
  'un--fuel'/1,
  'un--evalAll'/1,
  'un--argHolesOnly'/1
]).
'un--.tcInline'(V0) -> case V0 of {'Core.Value.MkEvalOpts', V1, V2, V3, V4, V5, V6, V7, V8} -> V5 end.
'un--.strategy'(V0) -> case V0 of {'Core.Value.MkEvalOpts', V1, V2, V3, V4, V5, V6, V7, V8} -> V8 end.
'un--.removeAs'(V0) -> case V0 of {'Core.Value.MkEvalOpts', V1, V2, V3, V4, V5, V6, V7, V8} -> V3 end.
'un--.reduceLimit'(V0) -> case V0 of {'Core.Value.MkEvalOpts', V1, V2, V3, V4, V5, V6, V7, V8} -> V7 end.
'un--.holesOnly'(V0) -> case V0 of {'Core.Value.MkEvalOpts', V1, V2, V3, V4, V5, V6, V7, V8} -> V1 end.
'un--.fuel'(V0) -> case V0 of {'Core.Value.MkEvalOpts', V1, V2, V3, V4, V5, V6, V7, V8} -> V6 end.
'un--.evalAll'(V0) -> case V0 of {'Core.Value.MkEvalOpts', V1, V2, V3, V4, V5, V6, V7, V8} -> V4 end.
'un--.argHolesOnly'(V0) -> case V0 of {'Core.Value.MkEvalOpts', V1, V2, V3, V4, V5, V6, V7, V8} -> V2 end.
'un--tcInline'(V0) -> case V0 of {'Core.Value.MkEvalOpts', V1, V2, V3, V4, V5, V6, V7, V8} -> V5 end.
'un--strategy'(V0) -> case V0 of {'Core.Value.MkEvalOpts', V1, V2, V3, V4, V5, V6, V7, V8} -> V8 end.
'un--removeAs'(V0) -> case V0 of {'Core.Value.MkEvalOpts', V1, V2, V3, V4, V5, V6, V7, V8} -> V3 end.
'un--reduceLimit'(V0) -> case V0 of {'Core.Value.MkEvalOpts', V1, V2, V3, V4, V5, V6, V7, V8} -> V7 end.
'un--holesOnly'(V0) -> case V0 of {'Core.Value.MkEvalOpts', V1, V2, V3, V4, V5, V6, V7, V8} -> V1 end.
'un--fuel'(V0) -> case V0 of {'Core.Value.MkEvalOpts', V1, V2, V3, V4, V5, V6, V7, V8} -> V6 end.
'un--evalAll'(V0) -> case V0 of {'Core.Value.MkEvalOpts', V1, V2, V3, V4, V5, V6, V7, V8} -> V4 end.
'un--argHolesOnly'(V0) -> case V0 of {'Core.Value.MkEvalOpts', V1, V2, V3, V4, V5, V6, V7, V8} -> V2 end.
