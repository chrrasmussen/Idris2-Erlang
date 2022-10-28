-module('Idris.Idris2.Idris.Version').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--version-3796'/1,
  'un--version'/0
]).
'with--version-3796'(V0) -> case V0 of {'Builtin.MkPair', V1, V2} -> case V2 of <<""/utf8>> -> {'Libraries.Data.Version.MkVersion', V1, {'Prelude.Types.Nothing'}}; _ -> {'Libraries.Data.Version.MkVersion', V1, {'Prelude.Types.Just', V2}} end end.
'un--version'() -> ('with--version-3796'(('Idris.Idris2.IdrisPaths':'un--idrisVersion'()))).
