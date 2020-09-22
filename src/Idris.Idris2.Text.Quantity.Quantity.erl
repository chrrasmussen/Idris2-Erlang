-module('Idris.Idris2.Text.Quantity.Quantity').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--min'/1,
  'un--max'/1
]).
'un--min'(V0) -> case V0 of {'Idris.Text.Quantity.Qty', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--max'(V0) -> case V0 of {'Idris.Text.Quantity.Qty', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
