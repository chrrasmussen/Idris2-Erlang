-module('Idris.Idris2.Idris.Version').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--version-2518'/1,
  'un--version'/0
]).
'with--version-2518'(V0) -> case V0 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V1, V2) -> case V2 of <<""/utf8>> -> {'Idris.Libraries.Data.Version.MkVersion', V1, {'Idris.Prelude.Types.Nothing'}}; _ -> {'Idris.Libraries.Data.Version.MkVersion', V1, {'Idris.Prelude.Types.Just', V2}} end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--version'() -> ('with--version-2518'(('Idris.Idris2.IdrisPaths':'un--idrisVersion'()))).
