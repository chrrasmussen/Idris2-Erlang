-module('Idris.Idris2.Text.Literate.LiterateError').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--line'/1,
  'un--input'/1,
  'un--column'/1
]).
'un--line'(V0) -> case V0 of {'Idris.Text.Literate.MkLitErr', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--input'(V0) -> case V0 of {'Idris.Text.Literate.MkLitErr', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--column'(V0) -> case V0 of {'Idris.Text.Literate.MkLitErr', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
