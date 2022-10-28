-module('Idris.Idris2.Erlang.System.Escaped').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--system'/2
]).
'un--system'(V0, V1) -> ('Idris.Idris2.Erlang.System':'un--system'(V0, ('Idris.Idris2.System.Escape':'un--escapeCmd'(V1)))).
