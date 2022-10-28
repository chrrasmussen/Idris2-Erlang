-module('Idris.Idris2.Libraries.Text.Literate').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--isLiterateLine-9938'/5,
  'with--with block in reduce-9619'/10,
  'with--reduce-9604'/8,
  'case--lexLiterate-9840'/5,
  'dn--un--show_Show_LiterateError'/1,
  'dn--un--showPrec_Show_LiterateError'/2,
  'dn--un--__Impl_Show_LiterateError'/0,
  'un--untilEOL'/0,
  'un--unlit'/2,
  'un--relit'/2,
  'un--reduce'/2,
  'un--rawTokens'/2,
  'un--notCodeLine'/0,
  'un--line'/1,
  'un--lexLiterate'/2,
  'un--isLiterateLine'/2,
  'un--extractCode'/2,
  'un--embedCode'/2,
  'un--block'/2
]).
'with--isLiterateLine-9938'(V0, V1, V2, V3, V4) -> case V3 of {'Builtin.MkPair', V5, V6} -> case V5 of [E0 | E1] -> (fun (V7, V8) -> case V7 of {'Libraries.Text.Bounded.MkBounded', V9, V10, V11} -> case V9 of {'Libraries.Text.Literate.CodeLine', V12, V13} -> case V8 of [] -> case V6 of {'Builtin.MkPair', V14, V15} -> case V15 of {'Builtin.MkPair', V16, V17} -> case V17 of <<""/utf8>> -> {'Builtin.MkPair', {'Prelude.Types.Just', V12}, V13}; _ -> {'Builtin.MkPair', {'Prelude.Types.Nothing'}, V2} end; _ -> {'Builtin.MkPair', {'Prelude.Types.Nothing'}, V2} end; _ -> {'Builtin.MkPair', {'Prelude.Types.Nothing'}, V2} end; _ -> {'Builtin.MkPair', {'Prelude.Types.Nothing'}, V2} end; _ -> {'Builtin.MkPair', {'Prelude.Types.Nothing'}, V2} end; _ -> {'Builtin.MkPair', {'Prelude.Types.Nothing'}, V2} end end(E0, E1)); _ -> {'Builtin.MkPair', {'Prelude.Types.Nothing'}, V2} end end.
'with--with block in reduce-9619'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9) -> case V0 of [] -> case V1 of {'Data.List.Views.Empty'} -> ('un--reduce'(V6, V5)); _ -> case V1 of {'Data.List.Views.Snoc', V10, V11, V12} -> ('un--reduce'(V6, [('Idris.Idris2.Data.String':'un--fastUnlines'(V11)) | [<<"\x{a}"/utf8>> | V5]])) end end; _ -> case V1 of {'Data.List.Views.Snoc', V13, V14, V15} -> ('un--reduce'(V6, [('Idris.Idris2.Data.String':'un--fastUnlines'(V14)) | [<<"\x{a}"/utf8>> | V5]])) end end.
'with--reduce-9604'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V1 of [] -> ('un--reduce'(V6, V7)); [E0 | E1] -> (fun (V8, V9) -> ('with--with block in reduce-9619'(V9, ('Idris.Idris2.Data.List.Views':'un--snocList'(V9)), V2, V3, V8, V7, V6, V5, V4, V0)) end(E0, E1)) end.
'case--lexLiterate-9840'(V0, V1, V2, V3, V4) -> case V4 of {'Builtin.MkPair', V5, V6} -> case V6 of {'Builtin.MkPair', V7, V8} -> case V8 of {'Builtin.MkPair', V9, V10} -> case V10 of <<""/utf8>> -> {'Prelude.Types.Right', V5}; _ -> {'Prelude.Types.Left', {'Libraries.Text.Literate.MkLitErr', V7, V9, V10}} end end end end.
'dn--un--show_Show_LiterateError'(V0) -> case V0 of {'Libraries.Text.Literate.MkLitErr', V1, V2, V3} -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V4) -> fun (V5) -> <<V4/binary, V5/binary>> end end, <<""/utf8>>}, fun (V6) -> V6 end, [V3 | [<<":"/utf8>> | [('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(V1)) | [<<":"/utf8>> | [('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(V2)) | []]]]]])) end.
'dn--un--showPrec_Show_LiterateError'(V0, V1) -> ('dn--un--show_Show_LiterateError'(V1)).
'dn--un--__Impl_Show_LiterateError'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_LiterateError'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_LiterateError'(V1, V2)) end end}.
'un--untilEOL'() -> ('Idris.Idris2.Libraries.Text.Lexer':'un--manyUntil'(('Idris.Idris2.Libraries.Text.Lexer':'un--newline'()), ('Idris.Idris2.Libraries.Text.Lexer':'un--any'()))).
'un--unlit'(V0, V1) -> ('un--extractCode'(V0, V1)).
'un--relit'(V0, V1) -> ('un--embedCode'(V0, V1)).
'un--reduce'(V0, V1) -> case V0 of [] -> ('Idris.Idris2.Prelude.Types':'un--fastConcat'(('Idris.Idris2.Prelude.Types.List':'un--reverse'(V1)))); [E0 | E1] -> (fun (V2, V3) -> case V2 of {'Libraries.Text.Bounded.MkBounded', V4, V5, V6} -> case V4 of {'Libraries.Text.Literate.Any', V7} -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V7, <<"\x{a}"/utf8>>)) of 1 -> ('un--reduce'(V3, [<<"\x{a}"/utf8>> | V1])); 0 -> ('un--reduce'(V3, V1)) end; {'Libraries.Text.Literate.CodeLine', V8, V9} -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V8, ('Idris.Idris2.Data.String':'un--trim'(V9)))) of 1 -> ('un--reduce'(V3, [<<"\x{a}"/utf8>> | V1])); 0 -> ('un--reduce'(V3, [('Idris.Idris2.Prelude.Types':'un--substr'((('Idris.Idris2.Prelude.Types.String':'un--length'(V8)) + 1), ('Idris.Idris2.Prelude.Types.String':'un--length'(V9)), V9)) | V1])) end; {'Libraries.Text.Literate.CodeBlock', V10, V11, V12} -> ('with--reduce-9604'(V12, ('Idris.Idris2.Data.String':'un--lines'(V12)), V5, V6, V11, V10, V3, V1)) end end end(E0, E1)) end.
'un--rawTokens'(V0, V1) -> ('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(((begin (V10 = fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V8, V9)) end end end end), fun (V11) -> fun (V12) -> ((((V10('erased'))('erased'))(V11))(V12)) end end end(fun (V2) -> case V2 of {'Builtin.MkPair', V3, V4} -> {'Builtin.MkPair', ('un--block'(V3, V4)), fun (V5) -> {'Libraries.Text.Literate.CodeBlock', ('Idris.Idris2.Data.String':'un--trim'(V3)), ('Idris.Idris2.Data.String':'un--trim'(V4)), V5} end} end end))(V0)), ('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(((begin (V19 = fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V17, V18)) end end end end), fun (V20) -> fun (V21) -> ((((V19('erased'))('erased'))(V20))(V21)) end end end(fun (V13) -> {'Builtin.MkPair', ('un--line'(V13)), fun (V14) -> {'Libraries.Text.Literate.CodeLine', ('Idris.Idris2.Data.String':'un--trim'(V13)), V14} end} end))(V1)), [{'Builtin.MkPair', ('un--notCodeLine'()), fun (V22) -> {'Libraries.Text.Literate.Any', V22} end} | []])))).
'un--notCodeLine'() -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--<|>'(('Idris.Idris2.Libraries.Text.Lexer':'un--newline'()), {'Libraries.Text.Lexer.Core.SeqEat', ('Idris.Idris2.Libraries.Text.Lexer':'un--any'()), fun () -> ('un--untilEOL'()) end})).
'un--line'(V0) -> {'Libraries.Text.Lexer.Core.SeqEat', ('Idris.Idris2.Libraries.Text.Lexer':'un--exact'(V0)), fun () -> ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--<|>'(('Idris.Idris2.Libraries.Text.Lexer':'un--newline'()), {'Libraries.Text.Lexer.Core.SeqEat', ('Idris.Idris2.Libraries.Text.Lexer':'un--space'()), fun () -> ('un--untilEOL'()) end})) end}.
'un--lexLiterate'(V0, V1) -> case V0 of {'Libraries.Text.Literate.MkLitStyle', V2, V3, V4} -> ('case--lexLiterate-9840'(V4, V3, V2, V1, ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--lex'(('un--rawTokens'(V2, V3)), V1)))) end.
'un--isLiterateLine'(V0, V1) -> case V0 of {'Libraries.Text.Literate.MkLitStyle', V2, V3, V4} -> ('with--isLiterateLine-9938'(V3, V2, V1, ('Idris.Idris2.Libraries.Text.Lexer.Core':'un--lex'(('un--rawTokens'(V2, V3)), V1)), V4)) end.
'un--extractCode'(V0, V1) -> ((begin (V11 = fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> case V8 of {'Prelude.Types.Left', V9} -> {'Prelude.Types.Left', V9}; {'Prelude.Types.Right', V10} -> {'Prelude.Types.Right', (V7(V10))} end end end end end), fun (V12) -> fun (V13) -> ((((V11('erased'))('erased'))(V12))(V13)) end end end(fun (V2) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(fun (V3) -> fun (V4) -> ('un--reduce'(V3, V4)) end end, [], V2)) end))(('un--lexLiterate'(V0, V1)))).
'un--embedCode'(V0, V1) -> case V0 of {'Libraries.Text.Literate.MkLitStyle', V2, V3, V4} -> case V2 of [E0 | E1] -> (fun (V5, V6) -> case V5 of {'Builtin.MkPair', V7, V8} -> ('Idris.Idris2.Data.String':'un--fastUnlines'([V7 | [V1 | [V8 | []]]])); _ -> V1 end end(E0, E1)); [] -> case V3 of [E2 | E3] -> (fun (V9, V10) -> ('Idris.Idris2.Data.String':'un--unwords'([V9 | [V1 | []]])) end(E2, E3)); _ -> V1 end; _ -> V1 end end.
'un--block'(V0, V1) -> ('Idris.Idris2.Libraries.Text.Lexer':'un--surround'({'Libraries.Text.Lexer.Core.SeqEat', ('Idris.Idris2.Libraries.Text.Lexer':'un--exact'(V0)), fun () -> ('un--untilEOL'()) end}, {'Libraries.Text.Lexer.Core.SeqEat', ('Idris.Idris2.Libraries.Text.Lexer':'un--exact'(V1)), fun () -> ('un--untilEOL'()) end}, ('Idris.Idris2.Libraries.Text.Lexer':'un--any'()))).
