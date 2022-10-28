-module('Idris.Idris2.System.File.Mode').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--modeStr'/1
]).
'un--modeStr'(V0) -> case V0 of 0 -> case ('Idris.Idris2.System.Info':'un--isWindows'()) of 1 -> <<"rb"/utf8>>; 0 -> <<"r"/utf8>> end; 1 -> case ('Idris.Idris2.System.Info':'un--isWindows'()) of 1 -> <<"wb"/utf8>>; 0 -> <<"w"/utf8>> end; 2 -> case ('Idris.Idris2.System.Info':'un--isWindows'()) of 1 -> <<"ab"/utf8>>; 0 -> <<"a"/utf8>> end; 3 -> case ('Idris.Idris2.System.Info':'un--isWindows'()) of 1 -> <<"rb+"/utf8>>; 0 -> <<"r+"/utf8>> end; 4 -> case ('Idris.Idris2.System.Info':'un--isWindows'()) of 1 -> <<"wb+"/utf8>>; 0 -> <<"w+"/utf8>> end; 5 -> case ('Idris.Idris2.System.Info':'un--isWindows'()) of 1 -> <<"ab+"/utf8>>; 0 -> <<"a+"/utf8>> end end.
