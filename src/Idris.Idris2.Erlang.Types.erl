-module('Idris.Idris2.Erlang.Types').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--ErlAnyMap'/0,
  'un--:='/3
]).
'un--ErlAnyMap'() -> {'Idris.Erlang.Types.ErlMapSubset', []}.
'un--:='(V0, V1, V2) -> {'Idris.Erlang.Types.MkMapEntry', V1, V2}.
