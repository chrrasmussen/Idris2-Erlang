-module('Idris.Idris2.Libraries.Text.Token').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--value'/2,
  'un--tokValue'/3,
  'un--TokType'/2
]).
'un--value'(V0, V1) -> case V1 of {'Idris.Libraries.Text.Token.Tok', E0, E1} -> (fun (V2, V3) -> case V0 of {'Idris.Libraries.Text.Token.dn--un--__mkTokenKind', E2, E3} -> (fun (V4, V5) -> ((V5(V2))(V3)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--tokValue'(V0, V1, V2) -> case V0 of {'Idris.Libraries.Text.Token.dn--un--__mkTokenKind', E0, E1} -> (fun (V3, V4) -> ((V4(V1))(V2)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--TokType'(V0, V1) -> case V0 of {'Idris.Libraries.Text.Token.dn--un--__mkTokenKind', E0, E1} -> (fun (V2, V3) -> (V2(V1)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
