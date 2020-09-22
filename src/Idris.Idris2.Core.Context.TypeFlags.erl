-module('Idris.Idris2.Core.Context.TypeFlags').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--uniqueAuto'/1,
  'un--external'/1
]).
'un--uniqueAuto'(V0) -> case V0 of {'Idris.Core.Context.MkTypeFlags', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--external'(V0) -> case V0 of {'Idris.Core.Context.MkTypeFlags', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
