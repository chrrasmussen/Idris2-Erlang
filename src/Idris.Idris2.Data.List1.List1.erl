-module('Idris.Idris2.Data.List1.List1').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--tail'/1,
  'rf--head'/1,
  'un--tail'/1,
  'un--head'/1
]).
'rf--tail'(V0) -> case V0 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--head'(V0) -> case V0 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--tail'(V0) -> case V0 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--head'(V0) -> case V0 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
