-module('Idris.Idris2.System.File.Process.Escaped').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--popen'/3
]).
'un--popen'(V0, V1, V2) -> ('Idris.Idris2.System.File.Process':'un--popen'(V0, ('Idris.Idris2.System.Escape':'un--escapeCmd'(V1)), V2)).
