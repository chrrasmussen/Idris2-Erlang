-module('Idris.Idris2.Idris.IDEMode.TokenLine').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--tokens-991'/2,
  'un--tokens'/1,
  'un--toString'/1,
  'un--srcTokens'/0,
  'un--holeIdent'/0,
  'un--RawName'/0
]).
'case--tokens-991'(V0, V1) -> case V1 of {'Builtin.MkPair', V2, V3} -> case V3 of {'Builtin.MkPair', V4, V5} -> case V5 of {'Builtin.MkPair', V6, V7} -> ('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(((begin (V16 = fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V14, V15)) end end end end), fun (V17) -> fun (V18) -> ((((V16('erased'))('erased'))(V17))(V18)) end end end(fun (V8) -> case V8 of {'Libraries.Text.Bounded.MkBounded', V9, V10, V11} -> V9 end end))(V2)), case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V7, <<""/utf8>>)) of 1 -> []; 0 -> [{'Idris.IDEMode.TokenLine.Other', V7} | []] end)) end end end.
'un--tokens'(V0) -> ('case--tokens-991'(V0, ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--lex'(('un--srcTokens'()), V0)))).
'un--toString'(V0) -> case V0 of {'Idris.IDEMode.TokenLine.Whitespace', V1} -> V1; {'Idris.IDEMode.TokenLine.Name', V2} -> V2; {'Idris.IDEMode.TokenLine.HoleName', V3} -> <<<<"?"/utf8>>/binary, V3/binary>>; {'Idris.IDEMode.TokenLine.LBrace'} -> <<"{"/utf8>>; {'Idris.IDEMode.TokenLine.RBrace'} -> <<"}"/utf8>>; {'Idris.IDEMode.TokenLine.Equal'} -> <<"="/utf8>>; {'Idris.IDEMode.TokenLine.AsPattern'} -> <<"@"/utf8>>; {'Idris.IDEMode.TokenLine.Other', V4} -> V4 end.
'un--srcTokens'() -> [{'Builtin.MkPair', ('Idris.Idris2.Parser.Lexer.Common':'un--identNormal'()), fun (V0) -> {'Idris.IDEMode.TokenLine.Name', V0} end} | [{'Builtin.MkPair', ('un--holeIdent'()), fun (V1) -> {'Idris.IDEMode.TokenLine.HoleName', case ('string':'next_grapheme'(V1)) of [E0 | E1] when (erlang:'is_binary'(E1)) -> (fun (V2, V3) -> V3 end(E0, E1)); _ -> <<""/utf8>> end} end} | [{'Builtin.MkPair', ('Idris.Idris2.Libraries.Text.Lexer':'un--space'()), fun (V4) -> {'Idris.IDEMode.TokenLine.Whitespace', V4} end} | [{'Builtin.MkPair', ('Idris.Idris2.Libraries.Text.Lexer':'un--is'(${)), fun (V5) -> {'Idris.IDEMode.TokenLine.LBrace'} end} | [{'Builtin.MkPair', ('Idris.Idris2.Libraries.Text.Lexer':'un--is'($})), fun (V6) -> {'Idris.IDEMode.TokenLine.RBrace'} end} | [{'Builtin.MkPair', ('Idris.Idris2.Libraries.Text.Lexer':'un--is'($=)), fun (V7) -> {'Idris.IDEMode.TokenLine.Equal'} end} | [{'Builtin.MkPair', ('Idris.Idris2.Libraries.Text.Lexer':'un--is'($@)), fun (V8) -> {'Idris.IDEMode.TokenLine.AsPattern'} end} | [{'Builtin.MkPair', ('Idris.Idris2.Libraries.Text.Lexer':'un--any'()), fun (V9) -> {'Idris.IDEMode.TokenLine.Other', V9} end} | []]]]]]]]].
'un--holeIdent'() -> {'Libraries.Text.Lexer.Core.SeqEat', ('Idris.Idris2.Libraries.Text.Lexer':'un--is'($?)), fun () -> ('Idris.Idris2.Parser.Lexer.Common':'un--identNormal'()) end}.
'un--RawName'() -> {'.String'}.
