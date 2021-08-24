-module('Idris.Idris2.PrimIO').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--io_bind-426'/2,
  'un--unsafePerformIO'/1,
  'un--unsafeDestroyWorld'/2,
  'un--unsafeCreateWorld'/1,
  'un--toPrim'/1,
  'un--prim__nullPtr'/1,
  'un--prim__nullAnyPtr'/1,
  'un--prim__io_pure'/2,
  'un--prim__io_bind'/3,
  'un--prim__getNullAnyPtr'/0,
  'un--prim__forgetPtr'/1,
  'un--prim__castPtr'/1,
  'un--io_pure'/2,
  'un--io_bind'/3,
  'un--fromPrim'/1,
  'un--PrimIO'/1
]).
'case--io_bind-426'(V0, V1) -> ((V0(V1))('erased')).
'un--unsafePerformIO'(V0) -> ('un--unsafeCreateWorld'(fun (V1) -> ('un--unsafeDestroyWorld'('erased', (V0(V1)))) end)).
'un--unsafeDestroyWorld'(V0, V1) -> V1.
'un--unsafeCreateWorld'(V0) -> (V0('world_val')).
'un--toPrim'(V0) -> V0.
'un--prim__nullPtr'(V0) -> ('un--prim__nullAnyPtr'(('un--prim__forgetPtr'(V0)))).
'un--prim__nullAnyPtr'(V0) -> ('erlang':'throw'("Error: Unsupported %foreign primitive PrimIO.prim__nullAnyPtr")).
'un--prim__io_pure'(V0, V1) -> V0.
'un--prim__io_bind'(V0, V1, V2) -> ((V1((V0(V2))))('erased')).
'un--prim__getNullAnyPtr'() -> ('erlang':'throw'("Error: Unsupported %foreign primitive PrimIO.prim__getNullAnyPtr")).
'un--prim__forgetPtr'(V0) -> ('Idris.Idris2.Builtin':'un--believe_me'(V0)).
'un--prim__castPtr'(V0) -> ('Idris.Idris2.Builtin':'un--believe_me'(V0)).
'un--io_pure'(V0, V1) -> V0.
'un--io_bind'(V0, V1, V2) -> ('case--io_bind-426'(V1, (V0(V2)))).
'un--fromPrim'(V0) -> V0.
'un--PrimIO'(V0) -> {'Idris.->', {'Idris.%World'}, fun (V1) -> {'Idris.PrimIO.IORes', V0} end}.
