-module('Idris.Idris2.PrimIO').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--unsafePerformIO-405'/4,
  'case--case block in io_bind-326'/8,
  'case--io_bind-304'/6,
  'case--prim__io_bind-268'/6,
  'un--unsafePerformIO'/2,
  'un--unsafeDestroyWorld'/3,
  'un--unsafeCreateWorld'/2,
  'un--toPrim'/2,
  'un--prim__nullPtr'/2,
  'un--prim__nullAnyPtr'/1,
  'un--prim__io_pure'/3,
  'un--prim__io_bind'/5,
  'un--prim__getNullAnyPtr'/0,
  'un--prim__forgetPtr'/2,
  'un--prim__castPtr'/2,
  'un--io_pure'/3,
  'un--io_bind'/5,
  'un--fromPrim'/2,
  'un--PrimIO'/1
]).
'case--unsafePerformIO-405'(V0, V1, V2, V3) -> ('un--unsafeDestroyWorld'('erased', 'erased', V3)).
'case--case block in io_bind-326'(V0, V1, V2, V3, V4, V5, V6, V7) -> (V7(V6)).
'case--io_bind-304'(V0, V1, V2, V3, V4, V5) -> ('case--case block in io_bind-326'('erased', 'erased', 'erased', 'erased', 'erased', V5, 'erased', (V3(V5)))).
'case--prim__io_bind-268'(V0, V1, V2, V3, V4, V5) -> ((V3(V5))('erased')).
'un--unsafePerformIO'(V0, V1) -> ('un--unsafeCreateWorld'('erased', fun (V2) -> ('case--unsafePerformIO-405'('erased', 'erased', 'erased', (V1(V2)))) end)).
'un--unsafeDestroyWorld'(V0, V1, V2) -> V2.
'un--unsafeCreateWorld'(V0, V1) -> (V1('world_val')).
'un--toPrim'(V0, V1) -> V1.
'un--prim__nullPtr'(V0, V1) -> ('un--prim__nullAnyPtr'(('un--prim__forgetPtr'('erased', V1)))).
'un--prim__nullAnyPtr'(V0) -> ('erlang':'throw'("Error: Unsupported %foreign primitive PrimIO.prim__nullAnyPtr")).
'un--prim__io_pure'(V0, V1, V2) -> V1.
'un--prim__io_bind'(V0, V1, V2, V3, V4) -> ('case--prim__io_bind-268'('erased', 'erased', 'erased', V3, 'erased', (V2(V4)))).
'un--prim__getNullAnyPtr'() -> ('erlang':'throw'("Error: Unsupported %foreign primitive PrimIO.prim__getNullAnyPtr")).
'un--prim__forgetPtr'(V0, V1) -> ('Idris.Idris2.Builtin':'un--believe_me'('erased', 'erased', V1)).
'un--prim__castPtr'(V0, V1) -> ('Idris.Idris2.Builtin':'un--believe_me'('erased', 'erased', V1)).
'un--io_pure'(V0, V1, V2) -> V1.
'un--io_bind'(V0, V1, V2, V3, V4) -> ('case--io_bind-304'('erased', 'erased', 'erased', V3, 'erased', (V2(V4)))).
'un--fromPrim'(V0, V1) -> V1.
'un--PrimIO'(V0) -> {'Idris.->', {'Idris.%World'}, fun (V1) -> {'Idris.PrimIO.IORes', V0} end}.
