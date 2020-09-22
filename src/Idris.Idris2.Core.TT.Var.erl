-module('Idris.Idris2.Core.TT.Var').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--later'/3
]).
'un--later'(V0, V1, V2) -> (1 + V2).
