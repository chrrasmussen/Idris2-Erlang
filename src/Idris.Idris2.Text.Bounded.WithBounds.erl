-module('Idris.Idris2.Text.Bounded.WithBounds').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--val'/2,
  'un--startLine'/2,
  'un--startCol'/2,
  'un--isIrrelevant'/2,
  'un--endLine'/2,
  'un--endCol'/2
]).
'un--val'(V0, V1) -> case V1 of {'Idris.Text.Bounded.MkBounded', E0, E1, E2, E3, E4, E5} -> (fun (V2, V3, V4, V5, V6, V7) -> V2 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--startLine'(V0, V1) -> case V1 of {'Idris.Text.Bounded.MkBounded', E0, E1, E2, E3, E4, E5} -> (fun (V2, V3, V4, V5, V6, V7) -> V4 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--startCol'(V0, V1) -> case V1 of {'Idris.Text.Bounded.MkBounded', E0, E1, E2, E3, E4, E5} -> (fun (V2, V3, V4, V5, V6, V7) -> V5 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--isIrrelevant'(V0, V1) -> case V1 of {'Idris.Text.Bounded.MkBounded', E0, E1, E2, E3, E4, E5} -> (fun (V2, V3, V4, V5, V6, V7) -> V3 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--endLine'(V0, V1) -> case V1 of {'Idris.Text.Bounded.MkBounded', E0, E1, E2, E3, E4, E5} -> (fun (V2, V3, V4, V5, V6, V7) -> V6 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--endCol'(V0, V1) -> case V1 of {'Idris.Text.Bounded.MkBounded', E0, E1, E2, E3, E4, E5} -> (fun (V2, V3, V4, V5, V6, V7) -> V7 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
