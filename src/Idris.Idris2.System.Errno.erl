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
'un--prim__strerror'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive System.Errno.prim__strerror")).
'un--prim__getErrno'(V0) -> ('erlang':'throw'("Error: Unsupported %foreign primitive System.Errno.prim__getErrno")).
'un--getErrno'(V0) -> case V0 of {'Idris.Prelude.IO.MkHasIO', E0, E1} -> (fun (V1, V2) -> ((V2('erased'))(fun (V3) -> ('un--prim__getErrno'(V3)) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
