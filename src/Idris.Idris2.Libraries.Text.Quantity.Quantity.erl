-module('Idris.Idris2.Libraries.Text.Quantity.Quantity').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--min'/1,
  'rf--max'/1,
  'un--min'/1,
  'un--max'/1
]).
'rf--min'(V0) -> case V0 of {'Idris.Libraries.Text.Quantity.Qty', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--max'(V0) -> case V0 of {'Idris.Libraries.Text.Quantity.Qty', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--min'(V0) -> case V0 of {'Idris.Libraries.Text.Quantity.Qty', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--max'(V0) -> case V0 of {'Idris.Libraries.Text.Quantity.Qty', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
