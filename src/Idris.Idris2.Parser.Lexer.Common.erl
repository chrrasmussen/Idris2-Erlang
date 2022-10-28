-module('Idris.Idris2.Parser.Lexer.Common').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--spacesOrNewlines'/0,
  'un--namespacedIdent'/0,
  'un--namespaceIdent'/0,
  'un--isIdentTrailing'/2,
  'un--isIdentStart'/2,
  'un--isIdentNormal'/1,
  'un--isIdent'/2,
  'un--identNormal'/0,
  'un--identAllowDashes'/0,
  'un--ident'/1,
  'un--comment'/0
]).
'un--spacesOrNewlines'() -> ('Idris.Idris2.Libraries.Text.Lexer':'un--some'(('Idris.Idris2.Libraries.Text.Lexer.Core':'un--<|>'(('Idris.Idris2.Libraries.Text.Lexer':'un--space'()), ('Idris.Idris2.Libraries.Text.Lexer':'un--newline'()))))).
'un--namespacedIdent'() -> {'Libraries.Text.Lexer.Core.SeqEat', ('un--namespaceIdent'()), fun () -> ('Idris.Idris2.Libraries.Text.Lexer':'un--opt'({'Libraries.Text.Lexer.Core.SeqEat', ('Idris.Idris2.Libraries.Text.Lexer':'un--is'($.)), fun () -> ('un--identNormal'()) end})) end}.
'un--namespaceIdent'() -> {'Libraries.Text.Lexer.Core.SeqEat', {'Libraries.Text.Lexer.Core.SeqEat', ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V0) -> ('un--isIdentStart'(1, V0)) end)), fun () -> ('Idris.Idris2.Libraries.Text.Lexer':'un--many'(('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V1) -> ('un--isIdentTrailing'(1, V1)) end)))) end}, fun () -> ('Idris.Idris2.Libraries.Text.Lexer':'un--many'({'Libraries.Text.Lexer.Core.SeqEat', {'Libraries.Text.Lexer.Core.SeqEat', ('Idris.Idris2.Libraries.Text.Lexer':'un--is'($.)), fun () -> {'Libraries.Text.Lexer.Core.SeqEat', ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V2) -> ('un--isIdentStart'(1, V2)) end)), fun () -> ('Idris.Idris2.Libraries.Text.Lexer':'un--many'(('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V3) -> ('un--isIdentTrailing'(1, V3)) end)))) end} end}, fun () -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--expect'(('Idris.Idris2.Libraries.Text.Lexer':'un--is'($.)))) end})) end}.
'un--isIdentTrailing'(V0, V1) -> case V0 of 0 -> case V1 of $- -> 1; _ -> case V1 of $\x{27} -> 1; $_ -> 1; _ -> case ('Idris.Idris2.Prelude.Types':'un--isAlphaNum'(V1)) of 1 -> 1; 0 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord_Char'(V1, case begin (V2 = 160), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end of E1 when ((erlang:'is_integer'(E1)) andalso (((E1 >= 0) andalso (E1 =< 55295)) orelse ((E1 >= 57344) andalso (E1 =< 1114111)))) -> E1; _ -> 65533 end)) end end end; _ -> case V1 of $\x{27} -> 1; $_ -> 1; _ -> case ('Idris.Idris2.Prelude.Types':'un--isAlphaNum'(V1)) of 1 -> 1; 0 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord_Char'(V1, case begin (V3 = 160), case ((V3 band 9223372036854775808) =/= 0) of 'true' -> (V3 bor -9223372036854775808); _ -> (V3 band 9223372036854775807) end end of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end)) end end end.
'un--isIdentStart'(V0, V1) -> case V1 of $_ -> 1; _ -> case V0 of 1 -> case ('Idris.Idris2.Prelude.Types':'un--isUpper'(V1)) of 1 -> 1; 0 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord_Char'(V1, case begin (V2 = 160), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end of E1 when ((erlang:'is_integer'(E1)) andalso (((E1 >= 0) andalso (E1 =< 55295)) orelse ((E1 >= 57344) andalso (E1 =< 1114111)))) -> E1; _ -> 65533 end)) end; _ -> case ('Idris.Idris2.Prelude.Types':'un--isAlpha'(V1)) of 1 -> 1; 0 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord_Char'(V1, case begin (V3 = 160), case ((V3 band 9223372036854775808) =/= 0) of 'true' -> (V3 bor -9223372036854775808); _ -> (V3 band 9223372036854775807) end end of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end)) end end end.
'un--isIdentNormal'(V0) -> case ('Idris.Idris2.Prelude.Types':'un--fastUnpack'(V0)) of [] -> 0; [E0 | E1] -> (fun (V1, V2) -> case ('un--isIdentStart'(2, V1)) of 1 -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V3) -> fun (V4) -> ('Idris.Idris2.Prelude.Interfaces.Bool.Semigroup':'dn--un--<+>_Semigroup_AllBool'(V3, V4)) end end, 1}, fun (V5) -> ('un--isIdentTrailing'(2, V5)) end, V2)); 0 -> 0 end end(E0, E1)) end.
'un--isIdent'(V0, V1) -> case ('Idris.Idris2.Prelude.Types':'un--fastUnpack'(V1)) of [] -> 0; [E0 | E1] -> (fun (V2, V3) -> case ('un--isIdentStart'(V0, V2)) of 1 -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.Interfaces.Bool.Semigroup':'dn--un--<+>_Semigroup_AllBool'(V4, V5)) end end, 1}, fun (V6) -> ('un--isIdentTrailing'(V0, V6)) end, V3)); 0 -> 0 end end(E0, E1)) end.
'un--identNormal'() -> {'Libraries.Text.Lexer.Core.SeqEat', ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V0) -> ('un--isIdentStart'(2, V0)) end)), fun () -> ('Idris.Idris2.Libraries.Text.Lexer':'un--many'(('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V1) -> ('un--isIdentTrailing'(2, V1)) end)))) end}.
'un--identAllowDashes'() -> {'Libraries.Text.Lexer.Core.SeqEat', ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V0) -> ('un--isIdentStart'(0, V0)) end)), fun () -> ('Idris.Idris2.Libraries.Text.Lexer':'un--many'(('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V1) -> ('un--isIdentTrailing'(0, V1)) end)))) end}.
'un--ident'(V0) -> {'Libraries.Text.Lexer.Core.SeqEat', ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V1) -> ('un--isIdentStart'(V0, V1)) end)), fun () -> ('Idris.Idris2.Libraries.Text.Lexer':'un--many'(('Idris.Idris2.Libraries.Text.Lexer.Core':'un--pred'(fun (V2) -> ('un--isIdentTrailing'(V0, V2)) end)))) end}.
'un--comment'() -> {'Libraries.Text.Lexer.Core.SeqEat', {'Libraries.Text.Lexer.Core.SeqEat', {'Libraries.Text.Lexer.Core.SeqEat', {'Libraries.Text.Lexer.Core.SeqEat', ('Idris.Idris2.Libraries.Text.Lexer':'un--is'($-)), fun () -> ('Idris.Idris2.Libraries.Text.Lexer':'un--is'($-)) end}, fun () -> ('Idris.Idris2.Libraries.Text.Lexer':'un--many'(('Idris.Idris2.Libraries.Text.Lexer':'un--is'($-)))) end}, fun () -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--reject'(('Idris.Idris2.Libraries.Text.Lexer':'un--is'($})))) end}, fun () -> ('Idris.Idris2.Libraries.Text.Lexer':'un--many'(('Idris.Idris2.Libraries.Text.Lexer':'un--isNot'($\x{a})))) end}.
