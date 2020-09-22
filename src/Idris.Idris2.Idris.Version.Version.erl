-module('Idris.Idris2.Idris.Version.Version').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--versionTag'/1,
  'un--semVer'/1
]).
'un--versionTag'(V0) -> case V0 of {'Idris.Idris.Version.MkVersion', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--semVer'(V0) -> case V0 of {'Idris.Idris.Version.MkVersion', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
