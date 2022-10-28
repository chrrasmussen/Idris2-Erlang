-module('Idris.Idris2.IdrisPaths').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--yprefix'/0,
  'un--idrisVersion'/0
]).
'un--yprefix'() -> <<"/Users/skohorn/.idris2erl"/utf8>>.
'un--idrisVersion'() -> {'Builtin.MkPair', {'Builtin.MkPair', 0, {'Builtin.MkPair', 6, 0}}, <<"f7bed29b4"/utf8>>}.
