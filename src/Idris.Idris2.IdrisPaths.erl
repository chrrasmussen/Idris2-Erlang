-module('Idris.Idris2.IdrisPaths').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--yprefix'/0,
  'un--idrisVersion'/0
]).
'un--yprefix'() -> <<"/Users/skohorn/.idris2erl"/utf8>>.
'un--idrisVersion'() -> {'Idris.Builtin.MkPair', {'Idris.Builtin.MkPair', 0, {'Idris.Builtin.MkPair', (1 + (1 + 0)), (1 + 0)}}, <<"a5cba3c08"/utf8>>}.
