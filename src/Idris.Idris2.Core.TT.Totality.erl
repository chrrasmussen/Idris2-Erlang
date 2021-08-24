-module('Idris.Idris2.Core.TT.Totality').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--isTerminating'/1,
  'rf--isCovering'/1,
  'un--isTerminating'/1,
  'un--isCovering'/1
]).
'rf--isTerminating'(V0) -> case V0 of {'Idris.Core.TT.MkTotality', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--isCovering'(V0) -> case V0 of {'Idris.Core.TT.MkTotality', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--isTerminating'(V0) -> case V0 of {'Idris.Core.TT.MkTotality', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--isCovering'(V0) -> case V0 of {'Idris.Core.TT.MkTotality', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
