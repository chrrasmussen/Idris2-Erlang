-module('Idris.Idris2.Prelude.Types.String').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--length'/1,
  'un--++'/2
]).
'un--length'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(('string':'length'(V0)))).
'un--++'(V0, V1) -> <<V0/binary, V1/binary>>.
