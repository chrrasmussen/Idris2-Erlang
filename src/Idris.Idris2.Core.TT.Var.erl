-module('Idris.Idris2.Core.TT.Var').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--later'/1
]).
'un--later'(V0) -> (1 + V0).
