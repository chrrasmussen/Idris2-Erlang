-module('Idris.Idris2.Libraries.Text.Token').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--value'/2,
  'un--tokValue'/3,
  'un--TokType'/2
]).
'un--value'(V0, V1) -> case V1 of {'Libraries.Text.Token.Tok', V2, V3} -> case V0 of {'Libraries.Text.Token.dn--un--__mkTokenKind', V4, V5} -> ((V5(V2))(V3)) end end.
'un--tokValue'(V0, V1, V2) -> case V0 of {'Libraries.Text.Token.dn--un--__mkTokenKind', V3, V4} -> ((V4(V1))(V2)) end.
'un--TokType'(V0, V1) -> case V0 of {'Libraries.Text.Token.dn--un--__mkTokenKind', V2, V3} -> (V2(V1)) end.
