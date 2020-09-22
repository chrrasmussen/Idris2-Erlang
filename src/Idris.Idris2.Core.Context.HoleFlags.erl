-module('Idris.Idris2.Core.Context.HoleFlags').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--precisetype'/1,
  'un--implbind'/1
]).
'un--precisetype'(V0) -> case V0 of {'Idris.Core.Context.MkHoleFlags', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--implbind'(V0) -> case V0 of {'Idris.Core.Context.MkHoleFlags', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
