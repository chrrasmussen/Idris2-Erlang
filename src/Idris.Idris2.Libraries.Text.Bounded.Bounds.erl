-module('Idris.Idris2.Libraries.Text.Bounded.Bounds').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--startLine'/1,
  'rf--startCol'/1,
  'rf--endLine'/1,
  'rf--endCol'/1,
  'un--startLine'/1,
  'un--startCol'/1,
  'un--endLine'/1,
  'un--endCol'/1
]).
'rf--startLine'(V0) -> case V0 of {'Idris.Libraries.Text.Bounded.MkBounds', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V1 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--startCol'(V0) -> case V0 of {'Idris.Libraries.Text.Bounded.MkBounds', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V2 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--endLine'(V0) -> case V0 of {'Idris.Libraries.Text.Bounded.MkBounds', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--endCol'(V0) -> case V0 of {'Idris.Libraries.Text.Bounded.MkBounds', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V4 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--startLine'(V0) -> case V0 of {'Idris.Libraries.Text.Bounded.MkBounds', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V1 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--startCol'(V0) -> case V0 of {'Idris.Libraries.Text.Bounded.MkBounds', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V2 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--endLine'(V0) -> case V0 of {'Idris.Libraries.Text.Bounded.MkBounds', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--endCol'(V0) -> case V0 of {'Idris.Libraries.Text.Bounded.MkBounds', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V4 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
