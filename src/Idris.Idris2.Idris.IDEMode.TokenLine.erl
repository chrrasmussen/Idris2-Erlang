-module('Idris.Idris2.Idris.IDEMode.TokenLine').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--tokens-477'/2,
  'un--tokens'/1,
  'un--toString'/1,
  'un--srcTokens'/0,
  'un--holeIdent'/0,
  'un--RawName'/0
]).
'case--tokens-477'(V0, V1) -> case V1 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V2, V3) -> case V3 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V4, V5) -> case V5 of {'Idris.Builtin.MkPair', E4, E5} -> (fun (V6, V7) -> ('Idris.Idris2.Prelude.Types.List':'un--++'(('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_List'(fun (V8) -> case V8 of {'Idris.Libraries.Text.Bounded.MkBounded', E6, E7, E8} -> (fun (V9, V10, V11) -> V9 end(E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end, V2)), case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V7, <<""/utf8>>)) of 1 -> []; 0 -> [{'Idris.Idris.IDEMode.TokenLine.Other', V7} | []]; _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--tokens'(V0) -> ('case--tokens-477'(V0, ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--lex'(('un--srcTokens'()), V0)))).
'un--toString'(V0) -> case V0 of {'Idris.Idris.IDEMode.TokenLine.Whitespace', E0} -> (fun (V1) -> V1 end(E0)); {'Idris.Idris.IDEMode.TokenLine.Name', E1} -> (fun (V2) -> V2 end(E1)); {'Idris.Idris.IDEMode.TokenLine.HoleName', E2} -> (fun (V3) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"?"/utf8>>, V3)) end(E2)); {'Idris.Idris.IDEMode.TokenLine.LBrace'} -> (fun () -> <<"{"/utf8>> end()); {'Idris.Idris.IDEMode.TokenLine.RBrace'} -> (fun () -> <<"}"/utf8>> end()); {'Idris.Idris.IDEMode.TokenLine.Equal'} -> (fun () -> <<"="/utf8>> end()); {'Idris.Idris.IDEMode.TokenLine.Other', E3} -> (fun (V4) -> V4 end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--srcTokens'() -> [{'Idris.Builtin.MkPair', ('Idris.Idris2.Parser.Lexer.Common':'un--identNormal'()), fun (V0) -> {'Idris.Idris.IDEMode.TokenLine.Name', V0} end} | [{'Idris.Builtin.MkPair', ('un--holeIdent'()), fun (V1) -> {'Idris.Idris.IDEMode.TokenLine.HoleName', case ('string':'next_grapheme'(V1)) of [E0 | E1] when (erlang:'is_binary'(E1)) -> (fun (V2, V3) -> V3 end(E0, E1)); _ -> <<""/utf8>> end} end} | [{'Idris.Builtin.MkPair', ('Idris.Idris2.Libraries.Text.Lexer':'un--space'()), fun (V4) -> {'Idris.Idris.IDEMode.TokenLine.Whitespace', V4} end} | [{'Idris.Builtin.MkPair', ('Idris.Idris2.Libraries.Text.Lexer':'un--is'(${)), fun (V5) -> {'Idris.Idris.IDEMode.TokenLine.LBrace'} end} | [{'Idris.Builtin.MkPair', ('Idris.Idris2.Libraries.Text.Lexer':'un--is'($})), fun (V6) -> {'Idris.Idris.IDEMode.TokenLine.RBrace'} end} | [{'Idris.Builtin.MkPair', ('Idris.Idris2.Libraries.Text.Lexer':'un--is'($=)), fun (V7) -> {'Idris.Idris.IDEMode.TokenLine.Equal'} end} | [{'Idris.Builtin.MkPair', ('Idris.Idris2.Libraries.Text.Lexer':'un--any'()), fun (V8) -> {'Idris.Idris.IDEMode.TokenLine.Other', V8} end} | []]]]]]]].
'un--holeIdent'() -> {'Idris.Libraries.Text.Lexer.Core.SeqEat', ('Idris.Idris2.Libraries.Text.Lexer':'un--is'($?)), fun () -> ('Idris.Idris2.Parser.Lexer.Common':'un--identNormal'()) end}.
'un--RawName'() -> {'Idris.String'}.
