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
'un--setField'(V0, V1, V2, V3, V4, V5) -> ('erlang':'throw'("Error: Badly formed external primitive System.FFI.prim__setField")).
'un--prim__malloc'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive System.FFI.prim__malloc")).
'un--prim__free'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive System.FFI.prim__free")).
'un--malloc'(V0, V1) -> case V0 of {'Idris.Prelude.IO.MkHasIO', E0, E1} -> (fun (V2, V3) -> ((V3('erased'))(fun (V4) -> ('un--prim__malloc'(V1, V4)) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--getField'(V0, V1, V2, V3) -> ('erlang':'throw'("Error: Badly formed external primitive System.FFI.prim__getField")).
'un--free'(V0, V1) -> case V0 of {'Idris.Prelude.IO.MkHasIO', E0, E1} -> (fun (V2, V3) -> ((V3('erased'))(fun (V4) -> ('un--prim__free'(V1, V4)) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
