-module('Idris.Idris2.Idris.Doc.Display').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--case block in case block in case block in case block in displayImpl-10271'/25,
  'case--case block in case block in case block in displayImpl-10183'/22,
  'case--case block in case block in displayImpl-10130'/20,
  'case--case block in displayImpl-10051'/16,
  'case--displayImpl-9989'/7,
  'nested--9725-9776--in--un--prettyLHS'/8,
  'un--displayType'/5,
  'un--displayTerm'/4,
  'un--displayPats'/5,
  'un--displayImpl'/4,
  'un--displayClause'/4
]).
'case--case block in case block in case block in case block in displayImpl-10271'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24) -> case V24 of {'Builtin.MkPair', V25, V26} -> case V26 of {'Core.Name.DN', V27, V28} -> begin (V29 = {'Core.Name.NS', V25, V28}), begin (V65 = ('Idris.Idris2.Core.Context':'un--lookupCtxtExactI'(case V23 of {'Core.TT.MkKindedName', V30, V31, V32} -> V31 end, case V17 of {'Core.Context.MkDefs', V33, V34, V35, V36, V37, V38, V39, V40, V41, V42, V43, V44, V45, V46, V47, V48, V49, V50, V51, V52, V53, V54, V55, V56, V57, V58, V59, V60, V61, V62, V63, V64} -> V33 end))), fun (V66) -> begin (V67 = (V65(V66))), case V67 of {'Prelude.Types.Left', V68} -> {'Prelude.Types.Left', V68}; {'Prelude.Types.Right', V69} -> (begin (V100 = case V69 of {'Prelude.Types.Just', V70} -> case V70 of {'Builtin.MkPair', V71, V72} -> begin (V73 = ('un--displayPats'(V5, V4, 1, V17, {'Builtin.MkPair', V29, {'Builtin.MkPair', V71, V72}}))), fun (V74) -> begin (V75 = (V73(V74))), case V75 of {'Prelude.Types.Left', V76} -> {'Prelude.Types.Left', V76}; {'Prelude.Types.Right', V77} -> (begin (V79 = fun (V78) -> {'Prelude.Types.Right', {'Prelude.Types.Just', V77}} end), V79 end(V74)) end end end end; _ -> begin (V83 = ('Idris.Idris2.Core.Context.Log':'un--log'(V5, <<"doc.implementation"/utf8>>, 10, fun () -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V80) -> fun (V81) -> <<V80/binary, V81/binary>> end end, <<""/utf8>>}, fun (V82) -> V82 end, [<<"Couldn\x{27}t find "/utf8>> | [('Idris.Idris2.Core.Name':'dn--un--show_Show_RawName'(V29)) | []]])) end))), fun (V84) -> begin (V85 = (V83(V84))), case V85 of {'Prelude.Types.Left', V86} -> {'Prelude.Types.Left', V86}; {'Prelude.Types.Right', V87} -> (begin (V89 = fun (V88) -> {'Prelude.Types.Right', {'Prelude.Types.Nothing'}} end), V89 end(V84)) end end end end end; _ -> begin (V93 = ('Idris.Idris2.Core.Context.Log':'un--log'(V5, <<"doc.implementation"/utf8>>, 10, fun () -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V90) -> fun (V91) -> <<V90/binary, V91/binary>> end end, <<""/utf8>>}, fun (V92) -> V92 end, [<<"Couldn\x{27}t find "/utf8>> | [('Idris.Idris2.Core.Name':'dn--un--show_Show_RawName'(V29)) | []]])) end))), fun (V94) -> begin (V95 = (V93(V94))), case V95 of {'Prelude.Types.Left', V96} -> {'Prelude.Types.Left', V96}; {'Prelude.Types.Right', V97} -> (begin (V99 = fun (V98) -> {'Prelude.Types.Right', {'Prelude.Types.Nothing'}} end), V99 end(V94)) end end end end end), V100 end(V66)) end end end end end; _ -> begin (V104 = ('Idris.Idris2.Core.Context.Log':'un--log'(V5, <<"doc.implementation"/utf8>>, 10, fun () -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V101) -> fun (V102) -> <<V101/binary, V102/binary>> end end, <<""/utf8>>}, fun (V103) -> V103 end, [<<"Invalid name "/utf8>> | [('Idris.Idris2.Core.TT':'dn--un--show_Show_RawKindedName'(V23)) | []]])) end))), fun (V105) -> begin (V106 = (V104(V105))), case V106 of {'Prelude.Types.Left', V107} -> {'Prelude.Types.Left', V107}; {'Prelude.Types.Right', V108} -> (begin (V110 = fun (V109) -> {'Prelude.Types.Right', {'Prelude.Types.Nothing'}} end), V110 end(V105)) end end end end end; _ -> begin (V114 = ('Idris.Idris2.Core.Context.Log':'un--log'(V5, <<"doc.implementation"/utf8>>, 10, fun () -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V111) -> fun (V112) -> <<V111/binary, V112/binary>> end end, <<""/utf8>>}, fun (V113) -> V113 end, [<<"Invalid name "/utf8>> | [('Idris.Idris2.Core.TT':'dn--un--show_Show_RawKindedName'(V23)) | []]])) end))), fun (V115) -> begin (V116 = (V114(V115))), case V116 of {'Prelude.Types.Left', V117} -> {'Prelude.Types.Left', V117}; {'Prelude.Types.Right', V118} -> (begin (V120 = fun (V119) -> {'Prelude.Types.Right', {'Prelude.Types.Nothing'}} end), V120 end(V115)) end end end end end.
'case--case block in case block in case block in displayImpl-10183'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21) -> case V21 of {'Builtin.MkPair', V22, V23} -> case V22 of {'Idris.Syntax.PRef', V24, V25} -> begin (V29 = ('Idris.Idris2.Core.Context.Log':'un--log'(V5, <<"doc.implementation"/utf8>>, 20, fun () -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V26) -> fun (V27) -> <<V26/binary, V27/binary>> end end, <<""/utf8>>}, fun (V28) -> V28 end, [<<"Got name "/utf8>> | [('Idris.Idris2.Core.TT':'dn--un--show_Show_RawKindedName'(V25)) | []]])) end))), fun (V30) -> begin (V31 = (V29(V30))), case V31 of {'Prelude.Types.Left', V32} -> {'Prelude.Types.Left', V32}; {'Prelude.Types.Right', V33} -> (begin (V37 = ('case--case block in case block in case block in case block in displayImpl-10271'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V23, V24, V25, ('Idris.Idris2.Core.Name':'un--splitNS'(case V25 of {'Core.TT.MkKindedName', V34, V35, V36} -> V35 end))))), V37 end(V30)) end end end end; _ -> fun (V38) -> {'Prelude.Types.Right', {'Prelude.Types.Nothing'}} end end; _ -> fun (V39) -> {'Prelude.Types.Right', {'Prelude.Types.Nothing'}} end end.
'case--case block in case block in displayImpl-10130'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19) -> case V19 of {'Builtin.MkPair', V20, V21} -> ('case--case block in case block in case block in displayImpl-10183'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V20, V21, ('Idris.Idris2.Idris.Syntax.Views':'un--getFnArgs'(fun (V22) -> ('Idris.Idris2.Core.TT':'un--defaultKindedName'(V22)) end, V21)))) end.
'case--case block in displayImpl-10051'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15) -> case V15 of {'Builtin.MkPair', V16, V17} -> begin (V23 = begin (V18 = V5), fun (V19) -> begin (V22 = (begin (V20 = V18), fun (V21) -> ('erlang':'get'(V20)) end end(V19))), {'Prelude.Types.Right', V22} end end end), fun (V24) -> begin (V25 = (V23(V24))), case V25 of {'Prelude.Types.Left', V26} -> {'Prelude.Types.Left', V26}; {'Prelude.Types.Right', V27} -> (begin (V57 = begin (V50 = begin (V31 = ('Idris.Idris2.Prelude.Basics':'un--flip'(fun (V28) -> fun (V29) -> ('Idris.Idris2.Core.Core':'un--traverse\x{27}'(V28, V29, [])) end end, V17, fun (V30) -> ('case--case block in case block in displayImpl-10130'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V16, V17, V27, V30, ('Idris.Idris2.Idris.Syntax.Views':'un--underLams'(('Idris.Idris2.Idris.Syntax.Views':'un--unArg'(V30)))))) end))), ((begin (V47 = fun (V42) -> fun (V43) -> fun (V44) -> fun (V45) -> fun (V46) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V44, V45, V46)) end end end end end), fun (V48) -> fun (V49) -> ((((V47('erased'))('erased'))(V48))(V49)) end end end((begin (V39 = fun (V33) -> fun (V34) -> fun (V35) -> fun (V36) -> case V36 of {'Prelude.Types.Left', V37} -> {'Prelude.Types.Left', V37}; {'Prelude.Types.Right', V38} -> {'Prelude.Types.Right', (V35(V38))} end end end end end), fun (V40) -> fun (V41) -> ((((V39('erased'))('erased'))(V40))(V41)) end end end(fun (V32) -> ('Idris.Idris2.Data.List':'un--catMaybes'(V32)) end))))(V31)) end), fun (V51) -> begin (V52 = (V50(V51))), case V52 of {'Prelude.Types.Left', V53} -> {'Prelude.Types.Left', V53}; {'Prelude.Types.Right', V54} -> (begin (V56 = fun (V55) -> {'Prelude.Types.Right', ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--vcat'(('Idris.Idris2.Data.List':'un--intersperse'(('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--fromString_FromString_(Doc $ann)'(<<""/utf8>>)), V54))))} end), V56 end(V51)) end end end end), V57 end(V24)) end end end end end.
'case--displayImpl-9989'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Core.Context.Context.PMDef', V7, V8, V9, V10, V11} -> case V11 of [E0 | E1] -> (fun (V12, V13) -> case V12 of {'Builtin.DPair.MkDPair', V14, V15} -> case V15 of {'Builtin.MkPair', V16, V17} -> case V17 of {'Builtin.MkPair', V18, V19} -> case V13 of [] -> begin (V26 = begin (V20 = ('Idris.Idris2.Core.Normalise':'un--normaliseHoles'(V5, V14, V3, V16, V19))), fun (V21) -> begin (V22 = (V20(V21))), case V22 of {'Prelude.Types.Left', V23} -> {'Prelude.Types.Left', V23}; {'Prelude.Types.Right', V24} -> (begin (V25 = ('Idris.Idris2.Idris.Resugar':'un--resugar'(V14, V5, V4, V16, V24))), V25 end(V21)) end end end end), fun (V27) -> begin (V28 = (V26(V27))), case V28 of {'Prelude.Types.Left', V29} -> {'Prelude.Types.Left', V29}; {'Prelude.Types.Right', V30} -> (begin (V32 = ('case--case block in displayImpl-10051'(V0, V1, V2, V3, V4, V5, V7, V8, V10, V14, V18, V16, V19, V9, V30, ('Idris.Idris2.Idris.Syntax.Views':'un--getFnArgs'(fun (V31) -> ('Idris.Idris2.Core.TT':'un--defaultKindedName'(V31)) end, V30))))), V32 end(V27)) end end end end; _ -> fun (V33) -> {'Prelude.Types.Right', ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--<++>'(('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V34) -> ('Idris.Idris2.Core.Name':'dn--un--pretty_Pretty_Void_Name'(V34)) end, fun (V35) -> fun (V36) -> ('Idris.Idris2.Core.Name':'dn--un--prettyPrec_Pretty_Void_Name'(V35, V36)) end end}, V0)), ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Util':'un--reflow'(<<"is not an implementation definition"/utf8>>))))} end end; _ -> fun (V37) -> {'Prelude.Types.Right', ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--<++>'(('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V38) -> ('Idris.Idris2.Core.Name':'dn--un--pretty_Pretty_Void_Name'(V38)) end, fun (V39) -> fun (V40) -> ('Idris.Idris2.Core.Name':'dn--un--prettyPrec_Pretty_Void_Name'(V39, V40)) end end}, V0)), ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Util':'un--reflow'(<<"is not an implementation definition"/utf8>>))))} end end; _ -> fun (V41) -> {'Prelude.Types.Right', ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--<++>'(('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V42) -> ('Idris.Idris2.Core.Name':'dn--un--pretty_Pretty_Void_Name'(V42)) end, fun (V43) -> fun (V44) -> ('Idris.Idris2.Core.Name':'dn--un--prettyPrec_Pretty_Void_Name'(V43, V44)) end end}, V0)), ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Util':'un--reflow'(<<"is not an implementation definition"/utf8>>))))} end end; _ -> fun (V45) -> {'Prelude.Types.Right', ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--<++>'(('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V46) -> ('Idris.Idris2.Core.Name':'dn--un--pretty_Pretty_Void_Name'(V46)) end, fun (V47) -> fun (V48) -> ('Idris.Idris2.Core.Name':'dn--un--prettyPrec_Pretty_Void_Name'(V47, V48)) end end}, V0)), ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Util':'un--reflow'(<<"is not an implementation definition"/utf8>>))))} end end end(E0, E1)); _ -> fun (V49) -> {'Prelude.Types.Right', ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--<++>'(('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V50) -> ('Idris.Idris2.Core.Name':'dn--un--pretty_Pretty_Void_Name'(V50)) end, fun (V51) -> fun (V52) -> ('Idris.Idris2.Core.Name':'dn--un--prettyPrec_Pretty_Void_Name'(V51, V52)) end end}, V0)), ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Util':'un--reflow'(<<"is not an implementation definition"/utf8>>))))} end end; _ -> fun (V53) -> {'Prelude.Types.Right', ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--<++>'(('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V54) -> ('Idris.Idris2.Core.Name':'dn--un--pretty_Pretty_Void_Name'(V54)) end, fun (V55) -> fun (V56) -> ('Idris.Idris2.Core.Name':'dn--un--prettyPrec_Pretty_Void_Name'(V55, V56)) end end}, V0)), ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Util':'un--reflow'(<<"is not an implementation definition"/utf8>>))))} end end.
'nested--9725-9776--in--un--prettyLHS'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V7 of {'Idris.Syntax.PRef', V8, V9} -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--cast_Cast_(Doc Void)_(Doc $ann)'(('Idris.Idris2.Core.Name':'un--prettyOp'(1, case V9 of {'Core.TT.MkKindedName', V10, V11, V12} -> V12 end)))); _ -> ('Idris.Idris2.Idris.Pretty':'dn--un--pretty_Pretty_IdrisSyntax_IPTerm'(V7)) end.
'un--displayType'(V0, V1, V2, V3, V4) -> case V4 of {'Builtin.MkPair', V5, V6} -> case V6 of {'Builtin.MkPair', V7, V8} -> ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> begin (V37 = begin (V31 = ('Idris.Idris2.Core.Normalise':'un--normaliseHoles'(V0, [], V3, {'Core.Env.Nil'}, case V8 of {'Core.Context.Context.MkGlobalDef', V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30} -> V11 end))), fun (V32) -> begin (V33 = (V31(V32))), case V33 of {'Prelude.Types.Left', V34} -> {'Prelude.Types.Left', V34}; {'Prelude.Types.Right', V35} -> (begin (V36 = ('Idris.Idris2.Idris.Resugar':'un--resugar'([], V0, V1, {'Core.Env.Nil'}, V35))), V36 end(V32)) end end end end), fun (V38) -> begin (V39 = (V37(V38))), case V39 of {'Prelude.Types.Left', V40} -> {'Prelude.Types.Left', V40}; {'Prelude.Types.Right', V41} -> (begin (V97 = begin (V64 = ('Idris.Idris2.Core.Context':'un--aliasName'(V0, case V8 of {'Core.Context.Context.MkGlobalDef', V42, V43, V44, V45, V46, V47, V48, V49, V50, V51, V52, V53, V54, V55, V56, V57, V58, V59, V60, V61, V62, V63} -> V43 end))), fun (V65) -> begin (V66 = (V64(V65))), case V66 of {'Prelude.Types.Left', V67} -> {'Prelude.Types.Left', V67}; {'Prelude.Types.Right', V68} -> (begin (V96 = begin (V69 = case V2 of 1 -> ('Idris.Idris2.Core.Name':'un--dropNS'(V68)); 0 -> V68 end), begin (V92 = ('Idris.Idris2.Idris.Pretty.Annotations':'un--prettyRig'(case V8 of {'Core.Context.Context.MkGlobalDef', V70, V71, V72, V73, V74, V75, V76, V77, V78, V79, V80, V81, V82, V83, V84, V85, V86, V87, V88, V89, V90, V91} -> V77 end))), begin (V94 = ('Idris.Idris2.Idris.Pretty':'un--showCategory'(fun (V93) -> V93 end, V8))), fun (V95) -> {'Prelude.Types.Right', ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--<++>'(('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--<+>_Semigroup_(Doc $ann)'(V92, (V94(('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--cast_Cast_(Doc Void)_(Doc $ann)'(('Idris.Idris2.Core.Name':'un--prettyOp'(1, V69)))))))), ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--<++>'(('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Symbols':'un--colon'()), ('Idris.Idris2.Idris.Pretty':'dn--un--pretty_Pretty_IdrisSyntax_IPTerm'(V41))))))} end end end end), V96 end(V65)) end end end end), V97 end(V38)) end end end end end, fun () -> fun (V98) -> ('Idris.Idris2.Idris.IDEMode.Holes':'un--prettyHole'([], V0, V1, V3, {'Core.Env.Nil'}, V5, V98, case V8 of {'Core.Context.Context.MkGlobalDef', V99, V100, V101, V102, V103, V104, V105, V106, V107, V108, V109, V110, V111, V112, V113, V114, V115, V116, V117, V118, V119, V120} -> V101 end)) end end, ('Idris.Idris2.Idris.IDEMode.Holes':'un--isHole'(V8)))) end end.
'un--displayTerm'(V0, V1, V2, V3) -> begin (V10 = begin (V4 = ('Idris.Idris2.Core.Normalise':'un--normaliseHoles'(V0, [], V2, {'Core.Env.Nil'}, V3))), fun (V5) -> begin (V6 = (V4(V5))), case V6 of {'Prelude.Types.Left', V7} -> {'Prelude.Types.Left', V7}; {'Prelude.Types.Right', V8} -> (begin (V9 = ('Idris.Idris2.Idris.Resugar':'un--resugar'([], V0, V1, {'Core.Env.Nil'}, V8))), V9 end(V5)) end end end end), fun (V11) -> begin (V12 = (V10(V11))), case V12 of {'Prelude.Types.Left', V13} -> {'Prelude.Types.Left', V13}; {'Prelude.Types.Right', V14} -> (begin (V16 = fun (V15) -> {'Prelude.Types.Right', ('Idris.Idris2.Idris.Pretty':'dn--un--pretty_Pretty_IdrisSyntax_IPTerm'(V14))} end), V16 end(V11)) end end end end.
'un--displayPats'(V0, V1, V2, V3, V4) -> case V4 of {'Builtin.MkPair', V5, V6} -> case V6 of {'Builtin.MkPair', V7, V8} -> case V8 of {'Core.Context.Context.MkGlobalDef', V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30} -> case V26 of {'Core.Context.Context.PMDef', V31, V32, V33, V34, V35} -> begin (V36 = ('un--displayType'(V0, V1, V2, V3, {'Builtin.MkPair', V5, {'Builtin.MkPair', V7, V8}}))), fun (V37) -> begin (V38 = (V36(V37))), case V38 of {'Prelude.Types.Left', V39} -> {'Prelude.Types.Left', V39}; {'Prelude.Types.Right', V40} -> (begin (V49 = begin (V42 = ('Idris.Idris2.Core.Core':'un--traverse\x{27}'(fun (V41) -> ('un--displayClause'(V0, V1, V3, V41)) end, V35, []))), fun (V43) -> begin (V44 = (V42(V43))), case V44 of {'Prelude.Types.Left', V45} -> {'Prelude.Types.Left', V45}; {'Prelude.Types.Right', V46} -> (begin (V48 = fun (V47) -> {'Prelude.Types.Right', ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--vsep'([V40 | V46]))} end), V48 end(V43)) end end end end), V49 end(V37)) end end end end; _ -> fun (V50) -> {'Prelude.Types.Right', ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--<++>'(('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V51) -> ('Idris.Idris2.Core.Name':'dn--un--pretty_Pretty_Void_Name'(V51)) end, fun (V52) -> fun (V53) -> ('Idris.Idris2.Core.Name':'dn--un--prettyPrec_Pretty_Void_Name'(V52, V53)) end end}, V5)), ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Util':'un--reflow'(<<"is not a pattern matching definition"/utf8>>))))} end end end end end.
'un--displayImpl'(V0, V1, V2, V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> case V5 of {'Builtin.MkPair', V6, V7} -> ('case--displayImpl-9989'(V4, V6, V7, V2, V1, V0, case V7 of {'Core.Context.Context.MkGlobalDef', V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29} -> V25 end)) end end.
'un--displayClause'(V0, V1, V2, V3) -> case V3 of {'Builtin.DPair.MkDPair', V4, V5} -> case V5 of {'Builtin.MkPair', V6, V7} -> case V7 of {'Builtin.MkPair', V8, V9} -> begin (V16 = begin (V10 = ('Idris.Idris2.Core.Normalise':'un--normaliseHoles'(V0, V4, V2, V6, V8))), fun (V11) -> begin (V12 = (V10(V11))), case V12 of {'Prelude.Types.Left', V13} -> {'Prelude.Types.Left', V13}; {'Prelude.Types.Right', V14} -> (begin (V15 = ('Idris.Idris2.Idris.Resugar':'un--resugar'(V4, V0, V1, V6, V14))), V15 end(V11)) end end end end), fun (V17) -> begin (V18 = (V16(V17))), case V18 of {'Prelude.Types.Left', V19} -> {'Prelude.Types.Left', V19}; {'Prelude.Types.Right', V20} -> (begin (V34 = begin (V27 = begin (V21 = ('Idris.Idris2.Core.Normalise':'un--normaliseHoles'(V0, V4, V2, V6, V9))), fun (V22) -> begin (V23 = (V21(V22))), case V23 of {'Prelude.Types.Left', V24} -> {'Prelude.Types.Left', V24}; {'Prelude.Types.Right', V25} -> (begin (V26 = ('Idris.Idris2.Idris.Resugar':'un--resugar'(V4, V0, V1, V6, V25))), V26 end(V22)) end end end end), fun (V28) -> begin (V29 = (V27(V28))), case V29 of {'Prelude.Types.Left', V30} -> {'Prelude.Types.Left', V30}; {'Prelude.Types.Right', V31} -> (begin (V33 = fun (V32) -> {'Prelude.Types.Right', ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--<++>'(('nested--9725-9776--in--un--prettyLHS'(V4, V6, V8, V9, V2, V1, V0, V20)), ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--<++>'(('Idris.Idris2.Idris.Pretty.Annotations':'un--equals'()), ('Idris.Idris2.Idris.Pretty':'dn--un--pretty_Pretty_IdrisSyntax_IPTerm'(V31))))))} end), V33 end(V28)) end end end end), V34 end(V17)) end end end end end end end.
