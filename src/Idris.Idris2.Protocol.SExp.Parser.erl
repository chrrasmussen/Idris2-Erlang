-module('Idris.Idris2.Protocol.SExp.Parser').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--idelex-10863'/2,
  'nested--5407-10833--in--un--notComment'/2,
  'un--symbols'/0,
  'un--symbol'/1,
  'un--stringTokens'/0,
  'un--sexp'/0,
  'un--parseSExp'/1,
  'un--idelex'/1,
  'un--ideTokens'/0,
  'un--ideParser'/3
]).
'case--idelex-10863'(V0, V1) -> case V1 of {'Builtin.MkPair', V2, V3} -> case V3 of {'Builtin.MkPair', V4, V5} -> case V4 of {'Libraries.Text.Lexer.Tokenizer.EndInput'} -> case V5 of {'Builtin.MkPair', V6, V7} -> case V7 of {'Builtin.MkPair', V8, V9} -> {'Prelude.Types.Right', ('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(('Idris.Idris2.Prelude.Types.List':'un--filterAppend'({'Prelude.Basics.Lin'}, fun (V10) -> ('nested--5407-10833--in--un--notComment'(V0, V10)) end, V2)), [{'Libraries.Text.Bounded.MkBounded', {'Parser.Lexer.Source.EndInput'}, 0, {'Libraries.Text.Bounded.MkBounds', V6, V8, V6, V8}} | []]))}; _ -> {'Prelude.Types.Left', V3} end; _ -> {'Prelude.Types.Left', V3} end; _ -> {'Prelude.Types.Left', V3} end; _ -> {'Prelude.Types.Left', V3} end end.
'nested--5407-10833--in--un--notComment'(V0, V1) -> case V1 of {'Libraries.Text.Bounded.MkBounded', V2, V3, V4} -> case V2 of {'Parser.Lexer.Source.Comment'} -> 0; _ -> 1 end end.
'un--symbols'() -> [<<"("/utf8>> | [<<":"/utf8>> | [<<")"/utf8>> | []]]].
'un--symbol'(V0) -> {'Libraries.Text.Parser.Core.Terminal', <<<<"Expected \x{27}"/utf8>>/binary, <<V0/binary, <<"\x{27}"/utf8>>/binary>>/binary>>, fun (V1) -> case V1 of {'Parser.Lexer.Source.Symbol', V2} -> ('Idris.Idris2.Prelude.Interfaces':'un--guard'({'Prelude.Interfaces.MkAlternative', {'Prelude.Interfaces.MkApplicative', fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V5, V6)) end end end end, fun (V7) -> fun (V8) -> {'Prelude.Types.Just', V8} end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> ('Idris.Idris2.Prelude.Types':'dn--un--<*>_Applicative_Maybe'(V11, V12)) end end end end}, fun (V13) -> {'Prelude.Types.Nothing'} end, fun (V14) -> fun (V15) -> fun (V16) -> ('Idris.Idris2.Prelude.Types':'dn--un--<|>_Alternative_Maybe'(V15, V16)) end end end}, ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V2, V0)))); _ -> {'Prelude.Types.Nothing'} end end}.
'un--stringTokens'() -> ('Idris.Idris2.Libraries.Text.Lexer.Tokenizer':'un--match'(('Idris.Idris2.Libraries.Text.Lexer':'un--someUntil'(('Idris.Idris2.Libraries.Text.Lexer':'un--is'($\x{22})), ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--<|>'(('Idris.Idris2.Libraries.Text.Lexer':'un--escape'(('Idris.Idris2.Libraries.Text.Lexer':'un--is'($\x{5c})), ('Idris.Idris2.Libraries.Text.Lexer':'un--any'()))), ('Idris.Idris2.Libraries.Text.Lexer':'un--any'()))))), fun (V0) -> {'Parser.Lexer.Source.StringLit', 0, V0} end)).
'un--sexp'() -> {'Libraries.Text.Parser.Core.Alt', 1, 1, {'Libraries.Text.Parser.Core.ThenEat', 1, ('un--symbol'(<<":"/utf8>>)), fun () -> {'Libraries.Text.Parser.Core.ThenEat', 0, ('Idris.Idris2.Parser.Rule.Source':'un--exactIdent'(<<"True"/utf8>>)), fun () -> {'Libraries.Text.Parser.Core.Empty', {'Protocol.SExp.BoolAtom', 1}} end} end}, fun () -> {'Libraries.Text.Parser.Core.Alt', 1, 1, {'Libraries.Text.Parser.Core.ThenEat', 1, ('un--symbol'(<<":"/utf8>>)), fun () -> {'Libraries.Text.Parser.Core.ThenEat', 0, ('Idris.Idris2.Parser.Rule.Source':'un--exactIdent'(<<"False"/utf8>>)), fun () -> {'Libraries.Text.Parser.Core.Empty', {'Protocol.SExp.BoolAtom', 0}} end} end}, fun () -> {'Libraries.Text.Parser.Core.Alt', 1, 1, {'Libraries.Text.Parser.Core.SeqEat', 0, ('Idris.Idris2.Parser.Rule.Source':'un--intLit'()), fun () -> fun (V0) -> {'Libraries.Text.Parser.Core.Empty', {'Protocol.SExp.IntegerAtom', V0}} end end}, fun () -> {'Libraries.Text.Parser.Core.Alt', 1, 1, {'Libraries.Text.Parser.Core.SeqEat', 0, ('Idris.Idris2.Parser.Rule.Source':'un--simpleStr'()), fun () -> fun (V1) -> {'Libraries.Text.Parser.Core.Empty', {'Protocol.SExp.StringAtom', V1}} end end}, fun () -> {'Libraries.Text.Parser.Core.Alt', 1, 1, {'Libraries.Text.Parser.Core.ThenEat', 1, ('un--symbol'(<<":"/utf8>>)), fun () -> {'Libraries.Text.Parser.Core.SeqEat', 0, ('Idris.Idris2.Parser.Rule.Source':'un--unqualifiedName'()), fun () -> fun (V2) -> {'Libraries.Text.Parser.Core.Empty', {'Protocol.SExp.SymbolAtom', V2}} end end} end}, fun () -> {'Libraries.Text.Parser.Core.ThenEat', 1, ('un--symbol'(<<"("/utf8>>)), fun () -> {'Libraries.Text.Parser.Core.SeqEmpty', 0, 1, ('Idris.Idris2.Libraries.Text.Parser':'un--many'(('un--sexp'()))), fun (V3) -> {'Libraries.Text.Parser.Core.ThenEat', 0, ('un--symbol'(<<")"/utf8>>)), fun () -> {'Libraries.Text.Parser.Core.Empty', {'Protocol.SExp.SExpList', V3}} end} end} end} end} end} end} end} end}.
'un--parseSExp'(V0) -> ('un--ideParser'(1, V0, {'Libraries.Text.Parser.Core.SeqEat', 0, ('un--sexp'()), fun () -> fun (V1) -> {'Libraries.Text.Parser.Core.ThenEmpty', 0, 0, ('Idris.Idris2.Parser.Rule.Source':'un--eoi'()), {'Libraries.Text.Parser.Core.Empty', V1}} end end})).
'un--idelex'(V0) -> ('case--idelex-10863'(V0, ('Idris.Idris2.Libraries.Text.Lexer.Tokenizer':'un--lex'(('un--ideTokens'()), V0)))).
'un--ideTokens'() -> ('Idris.Idris2.Libraries.Text.Lexer.Tokenizer':'un--<|>'(('Idris.Idris2.Libraries.Text.Lexer.Tokenizer':'un--match'(('Idris.Idris2.Libraries.Text.Lexer':'un--choice'(1, {'Prelude.Interfaces.MkFoldable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V7, V8, V9)) end end end end end, fun (V10) -> fun (V11) -> ('Idris.Idris2.Prelude.Types':'dn--un--null_Foldable_List'(V11)) end end, fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldlM_Foldable_List'(V15, V16, V17, V18)) end end end end end end end, fun (V19) -> fun (V20) -> V20 end end, fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V23, V24, V25)) end end end end end}, ((begin (V31 = fun (V27) -> fun (V28) -> fun (V29) -> fun (V30) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V29, V30)) end end end end), fun (V32) -> fun (V33) -> ((((V31('erased'))('erased'))(V32))(V33)) end end end(fun (V26) -> ('Idris.Idris2.Libraries.Text.Lexer':'un--exact'(V26)) end))(('un--symbols'()))))), fun (V34) -> {'Parser.Lexer.Source.Symbol', V34} end)), fun () -> ('Idris.Idris2.Libraries.Text.Lexer.Tokenizer':'un--<|>'(('Idris.Idris2.Libraries.Text.Lexer.Tokenizer':'un--match'(('Idris.Idris2.Libraries.Text.Lexer':'un--digits'()), fun (V35) -> {'Parser.Lexer.Source.IntegerLit', case ('string':'to_integer'(V35)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V36, V37) -> case ('string':'is_empty'(V37)) of 'true' -> V36; _ -> 0 end end(E0, E1)); _ -> 0 end} end)), fun () -> ('Idris.Idris2.Libraries.Text.Lexer.Tokenizer':'un--<|>'(('Idris.Idris2.Libraries.Text.Lexer.Tokenizer':'un--compose'(('Idris.Idris2.Libraries.Text.Lexer':'un--is'($\x{22})), fun (V38) -> {'Parser.Lexer.Source.StringBegin', 1} end, fun (V39) -> {'Builtin.MkUnit'} end, fun () -> fun (V40) -> ('un--stringTokens'()) end end, fun (V41) -> ('Idris.Idris2.Libraries.Text.Lexer':'un--is'($\x{22})) end, fun (V42) -> {'Parser.Lexer.Source.StringEnd'} end)), fun () -> ('Idris.Idris2.Libraries.Text.Lexer.Tokenizer':'un--<|>'(('Idris.Idris2.Libraries.Text.Lexer.Tokenizer':'un--match'(('Idris.Idris2.Parser.Lexer.Common':'un--identAllowDashes'()), fun (V43) -> {'Parser.Lexer.Source.Ident', V43} end)), fun () -> ('Idris.Idris2.Libraries.Text.Lexer.Tokenizer':'un--match'(('Idris.Idris2.Libraries.Text.Lexer':'un--space'()), fun (V44) -> {'Parser.Lexer.Source.Comment'} end)) end)) end)) end)) end)).
'un--ideParser'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'(case ('un--idelex'(V1)) of {'Prelude.Types.Left', V3} -> {'Prelude.Types.Left', {'Protocol.SExp.Parser.LexError', V3}}; {'Prelude.Types.Right', V4} -> {'Prelude.Types.Right', V4} end, fun (V5) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'(case ('Idris.Idris2.Libraries.Text.Parser.Core':'un--parseWith'({'Prelude.Interfaces.MkMonoid', fun (V6) -> fun (V7) -> ('Idris.Idris2.Parser.Rule.Source':'dn--un--<+>_Semigroup_ParsingState'(V6, V7)) end end, ('Idris.Idris2.Parser.Rule.Source':'dn--un--neutral_Monoid_ParsingState'())}, V0, V2, V5)) of {'Prelude.Types.Left', V8} -> {'Prelude.Types.Left', {'Protocol.SExp.Parser.ParseErrors', V8}}; {'Prelude.Types.Right', V9} -> {'Prelude.Types.Right', V9} end, fun (V10) -> case V10 of {'Builtin.MkPair', V11, V12} -> case V12 of {'Builtin.MkPair', V13, V14} -> case V14 of {'Builtin.MkPair', V15, V16} -> {'Prelude.Types.Right', V15} end end end end)) end)).
