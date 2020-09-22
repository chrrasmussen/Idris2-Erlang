-module('Idris.Idris2.Text.Token.Token').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--text'/2,
  'un--kind'/2
]).
'un--text'(V0, V1) -> case V1 of {'Idris.Text.Token.Tok', E0, E1} -> (fun (V2, V3) -> V3 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--kind'(V0, V1) -> case V1 of {'Idris.Text.Token.Tok', E0, E1} -> (fun (V2, V3) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
