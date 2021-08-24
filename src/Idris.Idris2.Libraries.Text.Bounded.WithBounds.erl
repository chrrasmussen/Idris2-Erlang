-module('Idris.Idris2.Libraries.Text.Bounded.WithBounds').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--val'/1,
  'rf--isIrrelevant'/1,
  'rf--bounds'/1,
  'un--val'/1,
  'un--isIrrelevant'/1,
  'un--bounds'/1
]).
'rf--val'(V0) -> case V0 of {'Idris.Libraries.Text.Bounded.MkBounded', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--isIrrelevant'(V0) -> case V0 of {'Idris.Libraries.Text.Bounded.MkBounded', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--bounds'(V0) -> case V0 of {'Idris.Libraries.Text.Bounded.MkBounded', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--val'(V0) -> case V0 of {'Idris.Libraries.Text.Bounded.MkBounded', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--isIrrelevant'(V0) -> case V0 of {'Idris.Libraries.Text.Bounded.MkBounded', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--bounds'(V0) -> case V0 of {'Idris.Libraries.Text.Bounded.MkBounded', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
