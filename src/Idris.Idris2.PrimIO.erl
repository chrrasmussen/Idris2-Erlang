-module('Idris.Idris2.PrimIO').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--io_bind-933'/2,
  'un--unsafePerformIO'/1,
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
  'un--io_bind'/2,
  'un--fromPrim'/1,
  'un--PrimIO'/1
]).
'case--io_bind-933'(V0, V1) -> begin (V2 = V1), begin (V3 = (V0(V2))), (V3('erased')) end end.
'un--unsafePerformIO'(V0) -> begin (V1 = V0), ('un--unsafeCreateWorld'(fun (V2) -> begin (V3 = (V1(V2))), V3 end end)) end.
'un--unsafeCreateWorld'(V0) -> (V0('world_val')).
'un--toPrim'(V0) -> begin (V1 = V0), V1 end.
'un--prim__nullPtr'(V0) -> ('un--prim__nullAnyPtr'(('un--prim__forgetPtr'(V0)))).
'un--prim__nullAnyPtr'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive PrimIO.prim__nullAnyPtr"/utf8>>})).
'un--prim__io_pure'(V0, V1) -> V0.
'un--prim__io_bind'(V0, V1, V2) -> begin (V3 = (V0(V2))), ((V1(V3))('erased')) end.
'un--prim__getNullAnyPtr'() -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive PrimIO.prim__getNullAnyPtr"/utf8>>})).
'un--prim__forgetPtr'(V0) -> V0.
'un--prim__castPtr'(V0) -> V0.
'un--io_pure'(V0, V1) -> V0.
'un--io_bind'(V0, V1) -> begin (V2 = V0), fun (V3) -> ('case--io_bind-933'(V1, (V2(V3)))) end end.
'un--fromPrim'(V0) -> V0.
'un--PrimIO'(V0) -> {'.->', {'.%World'}, fun (V1) -> {'PrimIO.IORes', V0} end}.
