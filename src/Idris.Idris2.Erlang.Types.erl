-module('Idris.Idris2.Erlang.Types').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--ErlMapEntryValueType'/1,
  'un--ErlAnyMap'/0,
  'un--.='/2
]).
'un--ErlMapEntryValueType'(V0) -> case V0 of {'Erlang.Types.MkMapEntry', V1, V2} -> V2 end.
'un--ErlAnyMap'() -> {'Erlang.Types.ErlMapSubset', []}.
'un--.='(V0, V1) -> {'Erlang.Types.MkMapEntry', V0, V1}.
