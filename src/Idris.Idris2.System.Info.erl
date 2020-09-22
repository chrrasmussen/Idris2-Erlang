-module('Idris.Idris2.System.Info').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--prim__os'/0,
  'un--prim__codegen'/0,
  'un--os'/0,
  'un--isWindows'/0,
  'un--codegen'/0
]).
'un--prim__os'() -> case ('os':'type'()) of {'unix', E0} -> (fun (V0, V1) -> case V1 of 'darwin' -> <<"darwin"/utf8>>; _ -> <<"unix"/utf8>> end end('unix', E0)); {'win32', E1} -> (fun (V2, V3) -> <<"windows"/utf8>> end('win32', E1)); _ -> <<"unknown"/utf8>> end.
'un--prim__codegen'() -> <<"erlang"/utf8>>.
'un--os'() -> case ('os':'type'()) of {'unix', E0} -> (fun (V0, V1) -> case V1 of 'darwin' -> <<"darwin"/utf8>>; _ -> <<"unix"/utf8>> end end('unix', E0)); {'win32', E1} -> (fun (V2, V3) -> <<"windows"/utf8>> end('win32', E1)); _ -> <<"unknown"/utf8>> end.
'un--isWindows'() -> ('Idris.Idris2.Prelude.Types':'un--elem'('erased', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__String'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__String'(V2, V3)) end end}, ('un--os'()), [<<"windows"/utf8>> | [<<"mingw32"/utf8>> | [<<"cygwin32"/utf8>> | []]]])).
'un--codegen'() -> <<"erlang"/utf8>>.
