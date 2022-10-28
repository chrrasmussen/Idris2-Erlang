-module('Idris.Idris2.Erlang.System.File.Permissions').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.user'/1,
  'un--.others'/1,
  'un--.group'/1,
  'un--user'/1,
  'un--others'/1,
  'un--group'/1
]).
'un--.user'(V0) -> case V0 of {'Erlang.System.File.MkPermissions', V1, V2, V3} -> V1 end.
'un--.others'(V0) -> case V0 of {'Erlang.System.File.MkPermissions', V1, V2, V3} -> V3 end.
'un--.group'(V0) -> case V0 of {'Erlang.System.File.MkPermissions', V1, V2, V3} -> V2 end.
'un--user'(V0) -> case V0 of {'Erlang.System.File.MkPermissions', V1, V2, V3} -> V1 end.
'un--others'(V0) -> case V0 of {'Erlang.System.File.MkPermissions', V1, V2, V3} -> V3 end.
'un--group'(V0) -> case V0 of {'Erlang.System.File.MkPermissions', V1, V2, V3} -> V2 end.
