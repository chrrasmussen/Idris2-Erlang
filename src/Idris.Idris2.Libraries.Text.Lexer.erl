-module('Idris.Idris2.Libraries.Text.Lexer').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--3900-1010--in--un--middle'/2,
  'nested--3615-737--in--un--lexStr'/1,
  'nested--3615-738--in--un--control'/0,
  'un--uppers'/0,
  'un--upper'/0,
  'un--toTokenMap'/1,
  'un--symbols'/0,
  'un--symbol'/0,
  'un--surround'/3,
  'un--stringLit'/0,
  'un--spaces'/0,
  'un--space'/0,
  'un--someUntil'/2,
  'un--some'/1,
  'un--range'/2,
  'un--quote'/2,
  'un--opt'/1,
  'un--oneOf'/1,
  'un--octUnderscoredLit'/0,
  'un--octLit'/0,
  'un--octDigits'/0,
  'un--octDigit'/0,
  'un--notLike'/1,
  'un--non'/1,
  'un--newlines'/0,
  'un--newline'/0,
  'un--manyUntil'/2,
  'un--manyThen'/2,
  'un--many'/1,
  'un--lowers'/0,
  'un--lower'/0,
  'un--lineComment'/1,
  'un--like'/1,
  'un--isNot'/1,
  'un--is'/1,
  'un--intLit'/0,
  'un--hexUnderscoredLit'/0,
  'un--hexLit'/0,
  'un--hexDigits'/0,
  'un--hexDigit'/0,
  'un--exact'/1,
  'un--escape'/2,
  'un--digitsUnderscoredLit'/0,
  'un--digits'/0,
  'un--digit'/0,
  'un--count'/2,
  'un--controls'/0,
  'un--control'/0,
  'un--concat'/2,
  'un--choiceMap'/4,
  'un--choice'/3,
  'un--charLit'/0,
  'un--blockComment'/2,
  'un--binUnderscoredLit'/0,
  'un--binLit'/0,
  'un--binDigits'/0,
  'un--binDigit'/0,
  'un--approx'/1,
  'un--any'/0,
  'un--alphas'/0,
  'un--alphaNums'/0,
  'un--alphaNum'/0,
  'un--alpha'/0
]).
'nested--3900-1010--in--un--middle'(V0, V1) -> ('un--manyUntil'(V0, ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--<|>'(('un--blockComment'(V1, V0)), ('un--any'()))))).
'nested--3615-737--in--un--lexStr'(V0) -> case V0 of [] -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--fail'()); [E0 | E1] -> (fun (V1, V2) -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--<|>'(('un--exact'(V1)), ('nested--3615-737--in--un--lexStr'(V2)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--3615-738--in--un--control'() -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--<|>'(('nested--3615-737--in--un--lexStr'([<<"NUL"/utf8>> | [<<"SOH"/utf8>> | [<<"STX"/utf8>> | [<<"ETX"/utf8>> | [<<"EOT"/utf8>> | [<<"ENQ"/utf8>> | [<<"ACK"/utf8>> | [<<"BEL"/utf8>> | [<<"BS"/utf8>> | [<<"HT"/utf8>> | [<<"LF"/utf8>> | [<<"VT"/utf8>> | [<<"FF"/utf8>> | [<<"CR"/utf8>> | [<<"SO"/utf8>> | [<<"SI"/utf8>> | [<<"DLE"/utf8>> | [<<"DC1"/utf8>> | [<<"DC2"/utf8>> | [<<"DC3"/utf8>> | [<<"DC4"/utf8>> | [<<"NAK"/utf8>> | [<<"SYN"/utf8>> | [<<"ETB"/utf8>> | [<<"CAN"/utf8>> | [<<"EM"/utf8>> | [<<"SUB"/utf8>> | [<<"ESC"/utf8>> | [<<"FS"/utf8>> | [<<"GS"/utf8>> | [<<"RS"/utf8>> | [<<"US"/utf8>> | [<<"SP"/utf8>> | [<<"DEL"/utf8>> | []]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]])), ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--<|>'({'Idris.Libraries.Text.Lexer.Core.SeqEat', ('un--is'($x)), fun () -> ('un--hexDigits'()) end}, ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--<|>'({'Idris.Libraries.Text.Lexer.Core.SeqEat', ('un--is'($o)), fun () -> ('un--octDigits'()) end}, ('un--digits'()))))))).
'un--uppers'() -> ('un--some'(('un--upper'()))).
'un--upper'() -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V0) -> ('Idris.Idris2.Prelude.Types':'un--isUpper'(V0)) end)).
'un--toTokenMap'(V0) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_List'(fun (V1) -> case V1 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V2, V3) -> {'Idris.Builtin.MkPair', V2, fun (V4) -> {'Idris.Libraries.Text.Token.Tok', V3, V4} end} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end, V0)).
'un--symbols'() -> ('un--some'(('un--symbol'()))).
'un--symbol'() -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V0) -> case case ('Idris.Idris2.Prelude.Types':'un--isSpace'(V0)) of 1 -> 1; 0 -> ('Idris.Idris2.Prelude.Types':'un--isAlphaNum'(V0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end)).
'un--surround'(V0, V1, V2) -> {'Idris.Libraries.Text.Lexer.Core.SeqEat', V0, fun () -> ('un--manyThen'(V1, V2)) end}.
'un--stringLit'() -> ('un--quote'(('un--is'($\x{22})), ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--<|>'(('un--escape'(('un--is'($\x{5c})), ('un--any'()))), ('un--any'()))))).
'un--spaces'() -> ('un--some'(('un--space'()))).
'un--space'() -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V0) -> ('Idris.Idris2.Prelude.Types':'un--isSpace'(V0)) end)).
'un--someUntil'(V0, V1) -> ('un--some'({'Idris.Libraries.Text.Lexer.Core.SeqEmpty', ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--reject'(V0)), V1})).
'un--some'(V0) -> {'Idris.Libraries.Text.Lexer.Core.SeqEat', V0, fun () -> ('un--many'(V0)) end}.
'un--range'(V0, V1) -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V2) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord_Char'(V2, ('Idris.Idris2.Prelude.EqOrd':'dn--un--min_Ord_Char'(V0, V1)))) of 1 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord_Char'(V2, ('Idris.Idris2.Prelude.EqOrd':'dn--un--max_Ord_Char'(V0, V1)))); 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end)).
'un--quote'(V0, V1) -> ('un--surround'(V0, V0, V1)).
'un--opt'(V0) -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--<|>'(V0, ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--empty'()))).
'un--oneOf'(V0) -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V1) -> ('Idris.Idris2.Prelude.Types':'un--elem'({'Idris.Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Char'(V4, V5)) end end}, V1, ('Idris.Idris2.Prelude.Types':'un--fastUnpack'(V0)))) end)).
'un--octUnderscoredLit'() -> {'Idris.Libraries.Text.Lexer.Core.SeqEat', ('un--octLit'()), fun () -> ('un--many'({'Idris.Libraries.Text.Lexer.Core.SeqEat', ('un--is'($_)), fun () -> ('un--octDigits'()) end})) end}.
'un--octLit'() -> {'Idris.Libraries.Text.Lexer.Core.SeqEat', ('un--exact'(<<"0o"/utf8>>)), fun () -> ('un--octDigits'()) end}.
'un--octDigits'() -> ('un--some'(('un--octDigit'()))).
'un--octDigit'() -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V0) -> ('Idris.Idris2.Prelude.Types':'un--isOctDigit'(V0)) end)).
'un--notLike'(V0) -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Char'(('Idris.Idris2.Prelude.Types':'un--toUpper'(V0)), ('Idris.Idris2.Prelude.Types':'un--toUpper'(V1)))) end)).
'un--non'(V0) -> {'Idris.Libraries.Text.Lexer.Core.SeqEmpty', ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--reject'(V0)), ('un--any'())}.
'un--newlines'() -> ('un--some'(('un--newline'()))).
'un--newline'() -> begin (V0 = <<"\x{d}\x{a}"/utf8>>), ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--<|>'(('un--exact'(V0)), ('un--oneOf'(V0)))) end.
'un--manyUntil'(V0, V1) -> ('un--many'({'Idris.Libraries.Text.Lexer.Core.SeqEmpty', ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--reject'(V0)), V1})).
'un--manyThen'(V0, V1) -> {'Idris.Libraries.Text.Lexer.Core.SeqEmpty', ('un--manyUntil'(V0, V1)), V0}.
'un--many'(V0) -> ('un--opt'(('un--some'(V0)))).
'un--lowers'() -> ('un--some'(('un--lower'()))).
'un--lower'() -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V0) -> ('Idris.Idris2.Prelude.Types':'un--isLower'(V0)) end)).
'un--lineComment'(V0) -> {'Idris.Libraries.Text.Lexer.Core.SeqEat', {'Idris.Libraries.Text.Lexer.Core.SeqEat', V0, fun () -> ('un--manyUntil'(('un--newline'()), ('un--any'()))) end}, fun () -> ('un--opt'(('un--newline'()))) end}.
'un--like'(V0) -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(('Idris.Idris2.Prelude.Types':'un--toUpper'(V0)), ('Idris.Idris2.Prelude.Types':'un--toUpper'(V1)))) end)).
'un--isNot'(V0) -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Char'(V1, V0)) end)).
'un--is'(V0) -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V1, V0)) end)).
'un--intLit'() -> {'Idris.Libraries.Text.Lexer.Core.SeqEmpty', ('un--opt'(('un--is'($-)))), ('un--digits'())}.
'un--hexUnderscoredLit'() -> {'Idris.Libraries.Text.Lexer.Core.SeqEat', ('un--hexLit'()), fun () -> ('un--many'({'Idris.Libraries.Text.Lexer.Core.SeqEat', ('un--is'($_)), fun () -> ('un--hexDigits'()) end})) end}.
'un--hexLit'() -> {'Idris.Libraries.Text.Lexer.Core.SeqEat', ('un--approx'(<<"0x"/utf8>>)), fun () -> ('un--hexDigits'()) end}.
'un--hexDigits'() -> ('un--some'(('un--hexDigit'()))).
'un--hexDigit'() -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V0) -> ('Idris.Idris2.Prelude.Types':'un--isHexDigit'(V0)) end)).
'un--exact'(V0) -> case ('Idris.Idris2.Prelude.Types':'un--fastUnpack'(V0)) of [] -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--fail'()); [E0 | E1] -> (fun (V1, V2) -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--concatMap'(fun (V3) -> ('un--is'(V3)) end, [V1 | V2])) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--escape'(V0, V1) -> {'Idris.Libraries.Text.Lexer.Core.SeqEat', V0, fun () -> V1 end}.
'un--digitsUnderscoredLit'() -> {'Idris.Libraries.Text.Lexer.Core.SeqEat', ('un--digits'()), fun () -> ('un--many'({'Idris.Libraries.Text.Lexer.Core.SeqEat', ('un--is'($_)), fun () -> ('un--digits'()) end})) end}.
'un--digits'() -> ('un--some'(('un--digit'()))).
'un--digit'() -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V0) -> ('Idris.Idris2.Prelude.Types':'un--isDigit'(V0)) end)).
'un--count'(V0, V1) -> case V0 of {'Idris.Libraries.Text.Quantity.Qty', E0, E1} -> (fun (V2, V3) -> case V2 of 0 -> case V3 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> ('un--many'(V1)) end()); {'Idris.Prelude.Types.Just', E3} -> (fun (V4) -> case V4 of 0 -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--empty'()); _ -> begin (V5 = (V4 - 1)), ('un--opt'({'Idris.Libraries.Text.Lexer.Core.SeqEat', V1, fun () -> ('un--count'(('Idris.Idris2.Libraries.Text.Quantity':'un--atMost'(V5)), V1)) end})) end end end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> begin (V6 = (V2 - 1)), case V3 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> {'Idris.Libraries.Text.Lexer.Core.SeqEat', V1, fun () -> ('un--count'(('Idris.Idris2.Libraries.Text.Quantity':'un--atLeast'(V6)), V1)) end} end()); {'Idris.Prelude.Types.Just', E2} -> (fun (V7) -> case V7 of 0 -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--fail'()); _ -> begin (V8 = (V7 - 1)), {'Idris.Libraries.Text.Lexer.Core.SeqEat', V1, fun () -> ('un--count'(('Idris.Idris2.Libraries.Text.Quantity':'un--between'(V6, V8)), V1)) end} end end end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--controls'() -> ('un--some'(('un--control'()))).
'un--control'() -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V0) -> ('Idris.Idris2.Prelude.Types':'un--isControl'(V0)) end)).
'un--concat'(V0, V1) -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--concatMap'(fun (V2) -> V2 end, V1)).
'un--choiceMap'(V0, V1, V2, V3) -> case V1 of {'Idris.Prelude.Interfaces.MkFoldable', E0, E1, E2, E3, E4, E5} -> (fun (V4, V5, V6, V7, V8, V9) -> (((((V4('erased'))('erased'))(fun (V10) -> fun (V11) -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--<|>'((V2(V10)), V11)) end end))(('Idris.Idris2.Libraries.Text.Lexer.Core':'un--fail'())))(V3)) end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--choice'(V0, V1, V2) -> ('un--choiceMap'(V0, V1, fun (V3) -> V3 end, V2)).
'un--charLit'() -> begin (V0 = $\x{27}), {'Idris.Libraries.Text.Lexer.Core.SeqEat', {'Idris.Libraries.Text.Lexer.Core.SeqEat', ('un--is'(V0)), fun () -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--<|>'(('un--escape'(('un--is'($\x{5c})), ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--<|>'(('nested--3615-738--in--un--control'()), ('un--any'()))))), ('un--isNot'(V0)))) end}, fun () -> ('un--is'(V0)) end} end.
'un--blockComment'(V0, V1) -> {'Idris.Libraries.Text.Lexer.Core.SeqEat', {'Idris.Libraries.Text.Lexer.Core.SeqEat', V0, fun () -> ('nested--3900-1010--in--un--middle'(V1, V0)) end}, fun () -> V1 end}.
'un--binUnderscoredLit'() -> {'Idris.Libraries.Text.Lexer.Core.SeqEat', ('un--binLit'()), fun () -> ('un--many'({'Idris.Libraries.Text.Lexer.Core.SeqEat', ('un--is'($_)), fun () -> ('un--binDigits'()) end})) end}.
'un--binLit'() -> {'Idris.Libraries.Text.Lexer.Core.SeqEat', ('un--exact'(<<"0b"/utf8>>)), fun () -> ('un--binDigits'()) end}.
'un--binDigits'() -> ('un--some'(('un--binDigit'()))).
'un--binDigit'() -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V0, $0)) of 1 -> 1; 0 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V0, $1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end)).
'un--approx'(V0) -> case ('Idris.Idris2.Prelude.Types':'un--fastUnpack'(V0)) of [] -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--fail'()); [E0 | E1] -> (fun (V1, V2) -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--concatMap'(fun (V3) -> ('un--like'(V3)) end, [V1 | V2])) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--any'() -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V0) -> 1 end)).
'un--alphas'() -> ('un--some'(('un--alpha'()))).
'un--alphaNums'() -> ('un--some'(('un--alphaNum'()))).
'un--alphaNum'() -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V0) -> ('Idris.Idris2.Prelude.Types':'un--isAlphaNum'(V0)) end)).
'un--alpha'() -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V0) -> ('Idris.Idris2.Prelude.Types':'un--isAlpha'(V0)) end)).
