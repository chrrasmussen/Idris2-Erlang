-module('Idris.Idris2.Core.TT.NVar').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--later'/1
]).
'un--later'(V0) -> begin (V1 = V0), (V1 + 1) end.
