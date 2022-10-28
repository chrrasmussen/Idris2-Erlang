-module('Idris.Idris2.Idris.Syntax.Pragmas').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--show_Show_PragmaArg'/1,
  'dn--un--show_Show_LangExt'/1,
  'dn--un--show_Show_KwPragma'/1,
  'dn--un--showPrec_Show_PragmaArg'/2,
  'dn--un--showPrec_Show_LangExt'/2,
  'dn--un--showPrec_Show_KwPragma'/2,
  'dn--un--__Impl_Show_PragmaArg'/0,
  'dn--un--__Impl_Show_LangExt'/0,
  'dn--un--__Impl_Show_KwPragma'/0,
  'dn--un--__Impl_Eq_LangExt'/0,
  'dn--un--==_Eq_LangExt'/2,
  'dn--un--/=_Eq_LangExt'/2,
  'un--pragmaTopics'/0,
  'un--pragmaArgs'/1,
  'un--allPragmas'/0,
  'un--allLangExts'/0
]).
'dn--un--show_Show_PragmaArg'(V0) -> case V0 of {'Idris.Syntax.Pragmas.AName', V1} -> V1; {'Idris.Syntax.Pragmas.ANameList'} -> <<"nm xs f"/utf8>>; {'Idris.Syntax.Pragmas.APairArg'} -> <<"ty fst snd"/utf8>>; {'Idris.Syntax.Pragmas.ARewriteArg'} -> <<"eq rew"/utf8>>; {'Idris.Syntax.Pragmas.AnOnOff'} -> <<"on|off"/utf8>>; {'Idris.Syntax.Pragmas.AnOptionalLoggingTopic'} -> <<"[topic]"/utf8>>; {'Idris.Syntax.Pragmas.ANat'} -> <<"nat"/utf8>>; {'Idris.Syntax.Pragmas.AnExpr'} -> <<"expr"/utf8>>; {'Idris.Syntax.Pragmas.ALangExt'} -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V2) -> fun (V3) -> <<V2/binary, V3/binary>> end end, <<""/utf8>>}, fun (V4) -> V4 end, ('Idris.Idris2.Data.List':'un--intersperse'(<<"|"/utf8>>, ((begin (V10 = fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V8, V9)) end end end end), fun (V11) -> fun (V12) -> ((((V10('erased'))('erased'))(V11))(V12)) end end end(fun (V5) -> ('dn--un--show_Show_LangExt'(V5)) end))(('un--allLangExts'()))))))); {'Idris.Syntax.Pragmas.ATotalityLevel'} -> <<"partial|total|covering"/utf8>> end.
'dn--un--show_Show_LangExt'(V0) -> case V0 of 0 -> <<"ElabReflection"/utf8>>; 1 -> <<"Borrowing"/utf8>> end.
'dn--un--show_Show_KwPragma'(V0) -> case V0 of 0 -> <<"%hide"/utf8>>; 1 -> <<"%unhide"/utf8>>; 2 -> <<"%logging"/utf8>>; 3 -> (begin (V2 = fun (V1) -> V1 end), fun (V3) -> (V2(V3)) end end(<<"%auto_lazy"/utf8>>)); 4 -> (begin (V5 = fun (V4) -> V4 end), fun (V6) -> (V5(V6)) end end(<<"%unbound_implicits"/utf8>>)); 5 -> (begin (V8 = fun (V7) -> V7 end), fun (V9) -> (V8(V9)) end end(<<"%ambiguity_depth"/utf8>>)); 6 -> <<"%pair"/utf8>>; 7 -> <<"%rewrite"/utf8>>; 8 -> (begin (V11 = fun (V10) -> V10 end), fun (V12) -> (V11(V12)) end end(<<"%integerLit"/utf8>>)); 9 -> (begin (V14 = fun (V13) -> V13 end), fun (V15) -> (V14(V15)) end end(<<"%stringLit"/utf8>>)); 10 -> <<"%charLit"/utf8>>; 11 -> (begin (V17 = fun (V16) -> V16 end), fun (V18) -> (V17(V18)) end end(<<"%doubleLit"/utf8>>)); 12 -> <<"%name"/utf8>>; 13 -> <<"%start"/utf8>>; 14 -> (begin (V20 = fun (V19) -> V19 end), fun (V21) -> (V20(V21)) end end(<<"%allow_overloads"/utf8>>)); 15 -> <<"%language"/utf8>>; 16 -> <<"%default"/utf8>>; 17 -> (begin (V23 = fun (V22) -> V22 end), fun (V24) -> (V23(V24)) end end(<<"%prefix_record_projections"/utf8>>)); 18 -> (begin (V26 = fun (V25) -> V25 end), fun (V27) -> (V26(V27)) end end(<<"%auto-implicit_depth"/utf8>>)); 19 -> (begin (V29 = fun (V28) -> V28 end), fun (V30) -> (V29(V30)) end end(<<"%metavar_threshold"/utf8>>)); 20 -> (begin (V32 = fun (V31) -> V31 end), fun (V33) -> (V32(V33)) end end(<<"%search_timeout"/utf8>>)) end.
'dn--un--showPrec_Show_PragmaArg'(V0, V1) -> ('dn--un--show_Show_PragmaArg'(V1)).
'dn--un--showPrec_Show_LangExt'(V0, V1) -> ('dn--un--show_Show_LangExt'(V1)).
'dn--un--showPrec_Show_KwPragma'(V0, V1) -> ('dn--un--show_Show_KwPragma'(V1)).
'dn--un--__Impl_Show_PragmaArg'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_PragmaArg'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_PragmaArg'(V1, V2)) end end}.
'dn--un--__Impl_Show_LangExt'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_LangExt'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_LangExt'(V1, V2)) end end}.
'dn--un--__Impl_Show_KwPragma'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_KwPragma'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_KwPragma'(V1, V2)) end end}.
'dn--un--__Impl_Eq_LangExt'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_LangExt'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_LangExt'(V2, V3)) end end}.
'dn--un--==_Eq_LangExt'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> 1; _ -> 0 end; 1 -> case V1 of 1 -> 1; _ -> 0 end; _ -> 0 end.
'dn--un--/=_Eq_LangExt'(V0, V1) -> case ('dn--un--==_Eq_LangExt'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'un--pragmaTopics'() -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V0) -> fun (V1) -> <<V0/binary, V1/binary>> end end, <<""/utf8>>}, fun (V2) -> V2 end, ('Idris.Idris2.Data.List':'un--intersperse'(<<"\x{a}"/utf8>>, ((begin (V24 = fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V22, V23)) end end end end), fun (V25) -> fun (V26) -> ((((V24('erased'))('erased'))(V25))(V26)) end end end(fun (V19) -> <<<<"+ "/utf8>>/binary, V19/binary>> end))(((begin (V16 = fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V14, V15)) end end end end), fun (V17) -> fun (V18) -> ((((V16('erased'))('erased'))(V17))(V18)) end end end(fun (V3) -> ('Idris.Idris2.Data.String':'un--unwords'([('dn--un--show_Show_KwPragma'(V3)) | ((begin (V9 = fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V7, V8)) end end end end), fun (V10) -> fun (V11) -> ((((V9('erased'))('erased'))(V10))(V11)) end end end(fun (V4) -> ('dn--un--show_Show_PragmaArg'(V4)) end))(('un--pragmaArgs'(V3))))])) end))(('un--allPragmas'()))))))))).
'un--pragmaArgs'(V0) -> case V0 of 0 -> [{'Idris.Syntax.Pragmas.AName', <<"nm"/utf8>>} | []]; 1 -> [{'Idris.Syntax.Pragmas.AName', <<"nm"/utf8>>} | []]; 2 -> [{'Idris.Syntax.Pragmas.AnOptionalLoggingTopic'} | [{'Idris.Syntax.Pragmas.ANat'} | []]]; 3 -> [{'Idris.Syntax.Pragmas.AnOnOff'} | []]; 4 -> [{'Idris.Syntax.Pragmas.AnOnOff'} | []]; 5 -> [{'Idris.Syntax.Pragmas.ANat'} | []]; 6 -> [{'Idris.Syntax.Pragmas.APairArg'} | []]; 7 -> [{'Idris.Syntax.Pragmas.ARewriteArg'} | []]; 8 -> [{'Idris.Syntax.Pragmas.AName', <<"nm"/utf8>>} | []]; 9 -> [{'Idris.Syntax.Pragmas.AName', <<"nm"/utf8>>} | []]; 10 -> [{'Idris.Syntax.Pragmas.AName', <<"nm"/utf8>>} | []]; 11 -> [{'Idris.Syntax.Pragmas.AName', <<"nm"/utf8>>} | []]; 12 -> [{'Idris.Syntax.Pragmas.ANameList'} | []]; 13 -> [{'Idris.Syntax.Pragmas.AnExpr'} | []]; 14 -> [{'Idris.Syntax.Pragmas.AName', <<"nm"/utf8>>} | []]; 15 -> [{'Idris.Syntax.Pragmas.ALangExt'} | []]; 16 -> [{'Idris.Syntax.Pragmas.ATotalityLevel'} | []]; 17 -> [{'Idris.Syntax.Pragmas.AnOnOff'} | []]; 18 -> [{'Idris.Syntax.Pragmas.ANat'} | []]; 19 -> [{'Idris.Syntax.Pragmas.ANat'} | []]; 20 -> [{'Idris.Syntax.Pragmas.ANat'} | []] end.
'un--allPragmas'() -> [0 | [1 | [2 | [3 | [4 | [5 | [6 | [7 | [8 | [9 | [10 | [11 | [12 | [13 | [14 | [15 | [16 | [17 | [18 | [19 | [20 | []]]]]]]]]]]]]]]]]]]]]].
'un--allLangExts'() -> [0 | [1 | []]].
