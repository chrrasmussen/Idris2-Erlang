-module('Idris.Idris2.Erlang.Types').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--ErlAnyMap'/0,
  'un--.='/2
]).
'un--ErlAnyMap'() -> {'Idris.Erlang.Types.ErlMapSubset', []}.
'un--.='(V0, V1) -> {'Idris.Erlang.Types.MkMapEntry', V0, V1}.
