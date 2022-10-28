-module('Idris.Idris2.System.Errno').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--strerror'/1,
  'un--prim__strerror'/2,
  'un--prim__getErrno'/1,
  'un--getErrno'/1
]).
'un--strerror'(V0) -> ('Idris.Idris2.PrimIO':'un--unsafePerformIO'(fun (V1) -> ('un--prim__strerror'(V0, V1)) end)).
'un--prim__strerror'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive System.Errno.prim__strerror"/utf8>>})).
'un--prim__getErrno'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive System.Errno.prim__getErrno"/utf8>>})).
'un--getErrno'(V0) -> case V0 of {'Prelude.IO.MkHasIO', V1, V2} -> ((V2('erased'))(fun (V3) -> ('un--prim__getErrno'(V3)) end)) end.
