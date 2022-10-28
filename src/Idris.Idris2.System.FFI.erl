-module('Idris.Idris2.System.FFI').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--setField'/6,
  'un--prim__malloc'/2,
  'un--prim__free'/2,
  'un--malloc'/2,
  'un--getField'/4,
  'un--free'/2
]).
'un--setField'(V0, V1, V2, V3, V4, V5) -> ('erlang':'throw'({'$idris_error', <<"Error: Badly formed external primitive System.FFI.prim__setField"/utf8>>})).
'un--prim__malloc'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive System.FFI.prim__malloc"/utf8>>})).
'un--prim__free'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive System.FFI.prim__free"/utf8>>})).
'un--malloc'(V0, V1) -> case V0 of {'Prelude.IO.MkHasIO', V2, V3} -> ((V3('erased'))(fun (V4) -> ('un--prim__malloc'(V1, V4)) end)) end.
'un--getField'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"Error: Badly formed external primitive System.FFI.prim__getField"/utf8>>})).
'un--free'(V0, V1) -> case V0 of {'Prelude.IO.MkHasIO', V2, V3} -> ((V3('erased'))(fun (V4) -> ('un--prim__free'(V1, V4)) end)) end.
