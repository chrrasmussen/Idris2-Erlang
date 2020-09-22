-module('Idris.Idris2.Text.Token').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--value'/3,
  'un--tokValue'/2,
  'un--TokType'/2
]).
'un--value'(V0, V1, V2) -> case V2 of {'Idris.Text.Token.Tok', E0, E1} -> (fun (V3, V4) -> case V1 of {'Idris.Text.Token.dn--un--__mkTokenKind', E2, E3} -> (fun (V5, V6) -> ((V6(V3))(V4)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--tokValue'(V0, V1) -> case V1 of {'Idris.Text.Token.dn--un--__mkTokenKind', E0, E1} -> (fun (V2, V3) -> fun (V4) -> fun (V5) -> ((V3(V4))(V5)) end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--TokType'(V0, V1) -> case V1 of {'Idris.Text.Token.dn--un--__mkTokenKind', E0, E1} -> (fun (V2, V3) -> fun (V4) -> (V2(V4)) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
