-module('Idris.Idris2.Libraries.Text.Token.Token').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--text'/1,
  'rf--kind'/1,
  'un--text'/1,
  'un--kind'/1
]).
'rf--text'(V0) -> case V0 of {'Idris.Libraries.Text.Token.Tok', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--kind'(V0) -> case V0 of {'Idris.Libraries.Text.Token.Tok', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--text'(V0) -> case V0 of {'Idris.Libraries.Text.Token.Tok', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--kind'(V0) -> case V0 of {'Idris.Libraries.Text.Token.Tok', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
