-module('Idris.Idris2.Idris.Doc.HTML').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--tryCanonicalName-3836'/4,
  'nested--9196-4694--in--un--moduleLink'/2,
  'nested--8881-4381--in--un--go'/2,
  'un--tryCanonicalName'/3,
  'un--renderModuleDoc'/5,
  'un--renderHtml'/2,
  'un--renderDocIndex'/1,
  'un--removeNewlinesFromDeclarations'/1,
  'un--preserveLayout'/1,
  'un--packageInternal'/2,
  'un--htmlPreamble'/3,
  'un--htmlFooter'/0,
  'un--hasNS'/1,
  'un--getNS'/1,
  'un--docDocToHtml'/2,
  'un--addLink'/3
]).
'with--tryCanonicalName-3836'(V0, V1, V2, V3) -> case V1 of 1 -> begin (V9 = begin (V4 = V3), fun (V5) -> begin (V8 = (begin (V6 = V4), fun (V7) -> ('erlang':'get'(V6)) end end(V5))), {'Prelude.Types.Right', V8} end end end), fun (V10) -> begin (V11 = (V9(V10))), case V11 of {'Prelude.Types.Left', V12} -> {'Prelude.Types.Left', V12}; {'Prelude.Types.Right', V13} -> (begin (V61 = begin (V46 = ('Idris.Idris2.Core.Context':'un--lookupCtxtName'(V0, case V13 of {'Core.Context.MkDefs', V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40, V41, V42, V43, V44, V45} -> V14 end))), fun (V47) -> begin (V48 = (V46(V47))), case V48 of {'Prelude.Types.Left', V49} -> {'Prelude.Types.Left', V49}; {'Prelude.Types.Right', V50} -> (begin (V60 = case V50 of [E0 | E1] -> (fun (V51, V52) -> case V51 of {'Builtin.MkPair', V53, V54} -> fun (V55) -> case V54 of {'Builtin.MkPair', V56, V57} -> case V52 of [] -> {'Prelude.Types.Right', {'Prelude.Types.Just', V53}}; _ -> {'Prelude.Types.Right', {'Prelude.Types.Nothing'}} end; _ -> {'Prelude.Types.Right', {'Prelude.Types.Nothing'}} end end; _ -> fun (V58) -> {'Prelude.Types.Right', {'Prelude.Types.Nothing'}} end end end(E0, E1)); _ -> fun (V59) -> {'Prelude.Types.Right', {'Prelude.Types.Nothing'}} end end), V60 end(V47)) end end end end), V61 end(V10)) end end end end; 0 -> fun (V62) -> {'Prelude.Types.Right', {'Prelude.Types.Nothing'}} end end.
'nested--9196-4694--in--un--moduleLink'(V0, V1) -> case V1 of {'Builtin.MkPair', V2, V3} -> <<<<"<li><a class=\x{22}code\x{22} href=\x{22}docs/"/utf8>>/binary, <<('Idris.Idris2.Core.Name.Namespace':'dn--un--show_Show_ModuleIdent'(V2))/binary, <<<<".html\x{22}>"/utf8>>/binary, <<('Idris.Idris2.Core.Name.Namespace':'dn--un--show_Show_ModuleIdent'(V2))/binary, <<"</a></li>"/utf8>>/binary>>/binary>>/binary>>/binary>> end.
'nested--8881-4381--in--un--go'(V0, V1) -> case V0 of 0 -> case V1 of {'Libraries.Text.PrettyPrint.Prettyprinter.SimpleDocTree.STLine', V2} -> V1; _ -> case V1 of {'Libraries.Text.PrettyPrint.Prettyprinter.SimpleDocTree.STConcat', V3} -> {'Libraries.Text.PrettyPrint.Prettyprinter.SimpleDocTree.STConcat', ((begin (V9 = fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V7, V8)) end end end end), fun (V10) -> fun (V11) -> ((((V9('erased'))('erased'))(V10))(V11)) end end end(fun (V4) -> ('nested--8881-4381--in--un--go'(V0, V4)) end))(V3))}; {'Libraries.Text.PrettyPrint.Prettyprinter.SimpleDocTree.STAnn', V12, V13} -> case V12 of {'Idris.Doc.Annotations.Declarations'} -> {'Libraries.Text.PrettyPrint.Prettyprinter.SimpleDocTree.STAnn', {'Idris.Doc.Annotations.Declarations'}, ('nested--8881-4381--in--un--go'(1, V13))}; _ -> {'Libraries.Text.PrettyPrint.Prettyprinter.SimpleDocTree.STAnn', V12, ('nested--8881-4381--in--un--go'(0, V13))} end; _ -> V1 end end; 1 -> case V1 of {'Libraries.Text.PrettyPrint.Prettyprinter.SimpleDocTree.STLine', V14} -> {'Libraries.Text.PrettyPrint.Prettyprinter.SimpleDocTree.STEmpty'}; _ -> case V1 of {'Libraries.Text.PrettyPrint.Prettyprinter.SimpleDocTree.STConcat', V15} -> {'Libraries.Text.PrettyPrint.Prettyprinter.SimpleDocTree.STConcat', ((begin (V21 = fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V19, V20)) end end end end), fun (V22) -> fun (V23) -> ((((V21('erased'))('erased'))(V22))(V23)) end end end(fun (V16) -> ('nested--8881-4381--in--un--go'(V0, V16)) end))(V15))}; {'Libraries.Text.PrettyPrint.Prettyprinter.SimpleDocTree.STAnn', V24, V25} -> case V24 of {'Idris.Doc.Annotations.Declarations'} -> {'Libraries.Text.PrettyPrint.Prettyprinter.SimpleDocTree.STAnn', {'Idris.Doc.Annotations.Declarations'}, ('nested--8881-4381--in--un--go'(1, V25))}; _ -> {'Libraries.Text.PrettyPrint.Prettyprinter.SimpleDocTree.STAnn', V24, ('nested--8881-4381--in--un--go'(0, V25))} end; _ -> V1 end end; _ -> case V1 of {'Libraries.Text.PrettyPrint.Prettyprinter.SimpleDocTree.STConcat', V26} -> {'Libraries.Text.PrettyPrint.Prettyprinter.SimpleDocTree.STConcat', ((begin (V32 = fun (V28) -> fun (V29) -> fun (V30) -> fun (V31) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V30, V31)) end end end end), fun (V33) -> fun (V34) -> ((((V32('erased'))('erased'))(V33))(V34)) end end end(fun (V27) -> ('nested--8881-4381--in--un--go'(V0, V27)) end))(V26))}; {'Libraries.Text.PrettyPrint.Prettyprinter.SimpleDocTree.STAnn', V35, V36} -> case V35 of {'Idris.Doc.Annotations.Declarations'} -> {'Libraries.Text.PrettyPrint.Prettyprinter.SimpleDocTree.STAnn', {'Idris.Doc.Annotations.Declarations'}, ('nested--8881-4381--in--un--go'(1, V36))}; _ -> {'Libraries.Text.PrettyPrint.Prettyprinter.SimpleDocTree.STAnn', V35, ('nested--8881-4381--in--un--go'(0, V36))} end; _ -> V1 end end.
'un--tryCanonicalName'(V0, V1, V2) -> ('with--tryCanonicalName-3836'(V2, ('un--hasNS'(V2)), V1, V0)).
'un--renderModuleDoc'(V0, V1, V2, V3, V4) -> begin (V6 = ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> <<""/utf8>> end, fun () -> fun (V5) -> ('un--preserveLayout'(('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Render.HTML':'un--htmlEscape'(V5)))) end end, V2))), begin (V8 = ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--fromString_FromString_(Doc $ann)'(<<""/utf8>>)) end, fun () -> fun (V7) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--vcat'(V7)) end end, V3))), begin (V9 = ('un--docDocToHtml'(V0, V8))), fun (V10) -> begin (V11 = (V9(V10))), case V11 of {'Prelude.Types.Left', V12} -> {'Prelude.Types.Left', V12}; {'Prelude.Types.Right', V13} -> (begin (V23 = begin (V14 = ('un--docDocToHtml'(V0, ('Idris.Idris2.Data.Maybe':'un--fromMaybe'(fun () -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--fromString_FromString_(Doc $ann)'(<<""/utf8>>)) end, V4))))), fun (V15) -> begin (V16 = (V14(V15))), case V16 of {'Prelude.Types.Left', V17} -> {'Prelude.Types.Left', V17}; {'Prelude.Types.Right', V18} -> (begin (V22 = fun (V19) -> {'Prelude.Types.Right', ('Idris.Idris2.Prelude.Types':'un--fastConcat'([('un--htmlPreamble'(('Idris.Idris2.Core.Name.Namespace':'dn--un--show_Show_ModuleIdent'(V1)), <<"../"/utf8>>, <<"namespace"/utf8>>)) | [<<"<div id=\x{22}module-header\x{22}>"/utf8>> | [<<"<h1>"/utf8>> | [('Idris.Idris2.Core.Name.Namespace':'dn--un--show_Show_ModuleIdent'(V1)) | [<<"</h1>"/utf8>> | [V6 | [<<"</div>"/utf8>> | [('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> <<""/utf8>> end, fun () -> fun (V20) -> <<"<h2>Reexports</h2>"/utf8>> end end, V3)) | [<<"<code>"/utf8>> | [V13 | [<<"</code>"/utf8>> | [('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> <<""/utf8>> end, fun () -> fun (V21) -> <<"<h2>Definitions</h2>"/utf8>> end end, V4)) | [V18 | [('un--htmlFooter'()) | []]]]]]]]]]]]]]]))} end), V22 end(V15)) end end end end), V23 end(V10)) end end end end end end.
'un--renderHtml'(V0, V1) -> case V1 of {'Libraries.Text.PrettyPrint.Prettyprinter.SimpleDocTree.STEmpty'} -> fun (V2) -> {'Prelude.Types.Right', <<""/utf8>>} end; {'Libraries.Text.PrettyPrint.Prettyprinter.SimpleDocTree.STChar', V3} -> fun (V4) -> case V3 of $  -> {'Prelude.Types.Right', <<"&ensp;"/utf8>>}; _ -> {'Prelude.Types.Right', ('unicode':'characters_to_binary'([V3 | []]))} end end; {'Libraries.Text.PrettyPrint.Prettyprinter.SimpleDocTree.STText', V5, V6} -> fun (V7) -> {'Prelude.Types.Right', ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Render.HTML':'un--htmlEscape'(V6))} end; {'Libraries.Text.PrettyPrint.Prettyprinter.SimpleDocTree.STLine', V8} -> fun (V9) -> {'Prelude.Types.Right', <<"<br>"/utf8>>} end; {'Libraries.Text.PrettyPrint.Prettyprinter.SimpleDocTree.STAnn', V10, V11} -> case V10 of {'Idris.Doc.Annotations.Declarations'} -> begin (V12 = ('un--renderHtml'(V0, V11))), fun (V13) -> begin (V14 = (V12(V13))), case V14 of {'Prelude.Types.Left', V15} -> {'Prelude.Types.Left', V15}; {'Prelude.Types.Right', V16} -> (begin (V28 = fun (V17) -> {'Prelude.Types.Right', ((begin (V25 = fun (V23) -> fun (V24) -> <<V23/binary, V24/binary>> end end), fun (V26) -> fun (V27) -> ((V25(V26))(V27)) end end end(((begin (V20 = fun (V18) -> fun (V19) -> <<V18/binary, V19/binary>> end end), fun (V21) -> fun (V22) -> ((V20(V21))(V22)) end end end(<<"<dl class=\x{22}decls\x{22}>"/utf8>>))(V16))))(<<"</dl>"/utf8>>))} end), V28 end(V13)) end end end end; {'Idris.Doc.Annotations.Decl', V29} -> begin (V30 = ('un--renderHtml'(V0, V11))), fun (V31) -> begin (V32 = (V30(V31))), case V32 of {'Prelude.Types.Left', V33} -> {'Prelude.Types.Left', V33}; {'Prelude.Types.Right', V34} -> (begin (V46 = fun (V35) -> {'Prelude.Types.Right', <<<<"<dt id=\x{22}"/utf8>>/binary, <<('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Render.HTML':'un--htmlEscape'(('Idris.Idris2.Core.Name':'dn--un--show_Show_Name'(V29))))/binary, ((begin (V43 = fun (V41) -> fun (V42) -> <<V41/binary, V42/binary>> end end), fun (V44) -> fun (V45) -> ((V43(V44))(V45)) end end end(((begin (V38 = fun (V36) -> fun (V37) -> <<V36/binary, V37/binary>> end end), fun (V39) -> fun (V40) -> ((V38(V39))(V40)) end end end(<<"\x{22}><code>"/utf8>>))(V34))))(<<"</code></dt>"/utf8>>))/binary>>/binary>>} end), V46 end(V31)) end end end end; {'Idris.Doc.Annotations.DocStringBody'} -> begin (V47 = ('un--renderHtml'(V0, V11))), fun (V48) -> begin (V49 = (V47(V48))), case V49 of {'Prelude.Types.Left', V50} -> {'Prelude.Types.Left', V50}; {'Prelude.Types.Right', V51} -> (begin (V63 = fun (V52) -> {'Prelude.Types.Right', ((begin (V60 = fun (V58) -> fun (V59) -> <<V58/binary, V59/binary>> end end), fun (V61) -> fun (V62) -> ((V60(V61))(V62)) end end end(((begin (V55 = fun (V53) -> fun (V54) -> <<V53/binary, V54/binary>> end end), fun (V56) -> fun (V57) -> ((V55(V56))(V57)) end end end(<<"<dd>"/utf8>>))(V51))))(<<"</dd>"/utf8>>))} end), V63 end(V48)) end end end end; {'Idris.Doc.Annotations.UserDocString'} -> begin (V64 = ('un--renderHtml'(V0, V11))), fun (V65) -> begin (V66 = (V64(V65))), case V66 of {'Prelude.Types.Left', V67} -> {'Prelude.Types.Left', V67}; {'Prelude.Types.Right', V68} -> (begin (V80 = fun (V69) -> {'Prelude.Types.Right', ((begin (V77 = fun (V75) -> fun (V76) -> <<V75/binary, V76/binary>> end end), fun (V78) -> fun (V79) -> ((V77(V78))(V79)) end end end(((begin (V72 = fun (V70) -> fun (V71) -> <<V70/binary, V71/binary>> end end), fun (V73) -> fun (V74) -> ((V72(V73))(V74)) end end end(<<"<pre>"/utf8>>))(V68))))(<<"</pre>"/utf8>>))} end), V80 end(V65)) end end end end; {'Idris.Doc.Annotations.Syntax', V81} -> case V81 of {'Idris.Pretty.Annotations.DCon', V82} -> begin (V83 = ('un--renderHtml'(V0, V11))), fun (V84) -> begin (V85 = (V83(V84))), case V85 of {'Prelude.Types.Left', V86} -> {'Prelude.Types.Left', V86}; {'Prelude.Types.Right', V87} -> (begin (V98 = ('un--addLink'(V0, V82, ((begin (V95 = fun (V93) -> fun (V94) -> <<V93/binary, V94/binary>> end end), fun (V96) -> fun (V97) -> ((V95(V96))(V97)) end end end(((begin (V90 = fun (V88) -> fun (V89) -> <<V88/binary, V89/binary>> end end), fun (V91) -> fun (V92) -> ((V90(V91))(V92)) end end end(<<"<span class=\x{22}name constructor\x{22}>"/utf8>>))(V87))))(<<"</span>"/utf8>>))))), V98 end(V84)) end end end end; {'Idris.Pretty.Annotations.TCon', V99} -> begin (V100 = ('un--renderHtml'(V0, V11))), fun (V101) -> begin (V102 = (V100(V101))), case V102 of {'Prelude.Types.Left', V103} -> {'Prelude.Types.Left', V103}; {'Prelude.Types.Right', V104} -> (begin (V115 = ('un--addLink'(V0, V99, ((begin (V112 = fun (V110) -> fun (V111) -> <<V110/binary, V111/binary>> end end), fun (V113) -> fun (V114) -> ((V112(V113))(V114)) end end end(((begin (V107 = fun (V105) -> fun (V106) -> <<V105/binary, V106/binary>> end end), fun (V108) -> fun (V109) -> ((V107(V108))(V109)) end end end(<<"<span class=\x{22}name type\x{22}>"/utf8>>))(V104))))(<<"</span>"/utf8>>))))), V115 end(V101)) end end end end; {'Idris.Pretty.Annotations.Fun', V116} -> begin (V117 = ('un--renderHtml'(V0, V11))), fun (V118) -> begin (V119 = (V117(V118))), case V119 of {'Prelude.Types.Left', V120} -> {'Prelude.Types.Left', V120}; {'Prelude.Types.Right', V121} -> (begin (V132 = ('un--addLink'(V0, {'Prelude.Types.Just', V116}, ((begin (V129 = fun (V127) -> fun (V128) -> <<V127/binary, V128/binary>> end end), fun (V130) -> fun (V131) -> ((V129(V130))(V131)) end end end(((begin (V124 = fun (V122) -> fun (V123) -> <<V122/binary, V123/binary>> end end), fun (V125) -> fun (V126) -> ((V124(V125))(V126)) end end end(<<"<span class=\x{22}name function\x{22}>"/utf8>>))(V121))))(<<"</span>"/utf8>>))))), V132 end(V118)) end end end end; {'Idris.Pretty.Annotations.Keyword'} -> begin (V133 = ('un--renderHtml'(V0, V11))), fun (V134) -> begin (V135 = (V133(V134))), case V135 of {'Prelude.Types.Left', V136} -> {'Prelude.Types.Left', V136}; {'Prelude.Types.Right', V137} -> (begin (V149 = fun (V138) -> {'Prelude.Types.Right', ((begin (V146 = fun (V144) -> fun (V145) -> <<V144/binary, V145/binary>> end end), fun (V147) -> fun (V148) -> ((V146(V147))(V148)) end end end(((begin (V141 = fun (V139) -> fun (V140) -> <<V139/binary, V140/binary>> end end), fun (V142) -> fun (V143) -> ((V141(V142))(V143)) end end end(<<"<span class=\x{22}keyword\x{22}>"/utf8>>))(V137))))(<<"</span>"/utf8>>))} end), V149 end(V134)) end end end end; {'Idris.Pretty.Annotations.Bound'} -> begin (V150 = ('un--renderHtml'(V0, V11))), fun (V151) -> begin (V152 = (V150(V151))), case V152 of {'Prelude.Types.Left', V153} -> {'Prelude.Types.Left', V153}; {'Prelude.Types.Right', V154} -> (begin (V166 = fun (V155) -> {'Prelude.Types.Right', ((begin (V163 = fun (V161) -> fun (V162) -> <<V161/binary, V162/binary>> end end), fun (V164) -> fun (V165) -> ((V163(V164))(V165)) end end end(((begin (V158 = fun (V156) -> fun (V157) -> <<V156/binary, V157/binary>> end end), fun (V159) -> fun (V160) -> ((V158(V159))(V160)) end end end(<<"<span class=\x{22}boundvar\x{22}>"/utf8>>))(V154))))(<<"</span>"/utf8>>))} end), V166 end(V151)) end end end end; _ -> begin (V167 = ('un--renderHtml'(V0, V11))), fun (V168) -> begin (V169 = (V167(V168))), case V169 of {'Prelude.Types.Left', V170} -> {'Prelude.Types.Left', V170}; {'Prelude.Types.Right', V171} -> (begin (V173 = fun (V172) -> {'Prelude.Types.Right', <<<<"<!-- ann ignored START -->"/utf8>>/binary, <<V171/binary, <<"<!-- ann END -->"/utf8>>/binary>>/binary>>} end), V173 end(V168)) end end end end end; {'Idris.Doc.Annotations.Header'} -> begin (V174 = ('un--renderHtml'(V0, V11))), fun (V175) -> begin (V176 = (V174(V175))), case V176 of {'Prelude.Types.Left', V177} -> {'Prelude.Types.Left', V177}; {'Prelude.Types.Right', V178} -> (begin (V190 = fun (V179) -> {'Prelude.Types.Right', ((begin (V187 = fun (V185) -> fun (V186) -> <<V185/binary, V186/binary>> end end), fun (V188) -> fun (V189) -> ((V187(V188))(V189)) end end end(((begin (V182 = fun (V180) -> fun (V181) -> <<V180/binary, V181/binary>> end end), fun (V183) -> fun (V184) -> ((V182(V183))(V184)) end end end(<<"<b>"/utf8>>))(V178))))(<<"</b>"/utf8>>))} end), V190 end(V175)) end end end end; _ -> begin (V191 = ('un--renderHtml'(V0, V11))), fun (V192) -> begin (V193 = (V191(V192))), case V193 of {'Prelude.Types.Left', V194} -> {'Prelude.Types.Left', V194}; {'Prelude.Types.Right', V195} -> (begin (V197 = fun (V196) -> {'Prelude.Types.Right', <<<<"<!-- ann ignored START -->"/utf8>>/binary, <<V195/binary, <<"<!-- ann END -->"/utf8>>/binary>>/binary>>} end), V197 end(V192)) end end end end end; {'Libraries.Text.PrettyPrint.Prettyprinter.SimpleDocTree.STConcat', V198} -> begin (V200 = ('Idris.Idris2.Core.Core':'un--traverse\x{27}'(fun (V199) -> ('un--renderHtml'(V0, V199)) end, V198, []))), fun (V201) -> begin (V202 = (V200(V201))), case V202 of {'Prelude.Types.Left', V203} -> {'Prelude.Types.Left', V203}; {'Prelude.Types.Right', V204} -> (begin (V206 = fun (V205) -> {'Prelude.Types.Right', ('Idris.Idris2.Prelude.Types':'un--fastConcat'(V204))} end), V206 end(V201)) end end end end end.
'un--renderDocIndex'(V0) -> ('Idris.Idris2.Prelude.Types':'un--fastConcat'(('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'([('un--htmlPreamble'(case V0 of {'Idris.Package.Types.MkPkgDesc', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V1 end, <<""/utf8>>, <<"index"/utf8>>)) | [<<"<h1>Package "/utf8>> | [case V0 of {'Idris.Package.Types.MkPkgDesc', V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40, V41, V42, V43, V44, V45, V46, V47, V48, V49, V50, V51, V52} -> V27 end | [<<" - Namespaces</h1>"/utf8>> | [<<"<ul class=\x{22}names\x{22}>"/utf8>> | []]]]]], ('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(((begin (V84 = fun (V80) -> fun (V81) -> fun (V82) -> fun (V83) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V82, V83)) end end end end), fun (V85) -> fun (V86) -> ((((V84('erased'))('erased'))(V85))(V86)) end end end(fun (V79) -> ('nested--9196-4694--in--un--moduleLink'(V0, V79)) end))(case V0 of {'Idris.Package.Types.MkPkgDesc', V53, V54, V55, V56, V57, V58, V59, V60, V61, V62, V63, V64, V65, V66, V67, V68, V69, V70, V71, V72, V73, V74, V75, V76, V77, V78} -> V65 end)), [<<"</ul>"/utf8>> | [('un--htmlFooter'()) | []]])))))).
'un--removeNewlinesFromDeclarations'(V0) -> ('nested--8881-4381--in--un--go'(0, V0)).
'un--preserveLayout'(V0) -> <<<<"<pre>"/utf8>>/binary, <<V0/binary, <<"</pre>"/utf8>>/binary>>/binary>>.
'un--packageInternal'(V0, V1) -> case V1 of {'Core.Name.NS', V2, V3} -> begin (V4 = ('Idris.Idris2.Core.Name.Namespace':'un--nsAsModuleIdent'(V2))), ('Idris.Idris2.Core.Core':'dn--un--catch_Catchable_Core_Error'(begin (V5 = ('Idris.Idris2.Core.Directory':'un--nsToSource'(V0, ('Idris.Idris2.Core.FC':'un--emptyFC'()), V4))), ((begin (V21 = fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V18, V19, V20)) end end end end end), fun (V22) -> fun (V23) -> ((((V21('erased'))('erased'))(V22))(V23)) end end end((begin (V13 = fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> case V10 of {'Prelude.Types.Left', V11} -> {'Prelude.Types.Left', V11}; {'Prelude.Types.Right', V12} -> {'Prelude.Types.Right', (V9(V12))} end end end end end), fun (V14) -> fun (V15) -> ((((V13('erased'))('erased'))(V14))(V15)) end end end(fun (V6) -> 1 end))))(V5)) end, fun (V24) -> fun (V25) -> {'Prelude.Types.Right', 0} end end)) end; _ -> fun (V26) -> {'Prelude.Types.Right', 0} end end.
'un--htmlPreamble'(V0, V1, V2) -> begin (V3 = ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Render.HTML':'un--htmlEscape'(V0))), begin (V7 = (begin (V5 = fun (V4) -> V4 end), fun (V6) -> (V5(V6)) end end(<<"preferredStyle"/utf8>>))), begin (V11 = (begin (V9 = fun (V8) -> V8 end), fun (V10) -> (V9(V10)) end end(<<"selectPreferredStyle"/utf8>>))), begin (V15 = (begin (V13 = fun (V12) -> V12 end), fun (V14) -> (V13(V14)) end end(<<"default"/utf8>>))), begin (V19 = (begin (V17 = fun (V16) -> V16 end), fun (V18) -> (V17(V18)) end end(<<"stylefile"/utf8>>))), ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V20) -> fun (V21) -> <<V20/binary, V21/binary>> end end, <<""/utf8>>}, fun (V22) -> V22 end, [<<"<!DOCTYPE html><html lang=\x{22}en\x{22}>\x{a}\x{a}<head>\x{a}  <meta charset=\x{22}utf-8\x{22}>\x{a}  <title>"/utf8>> | [V3 | [<<"</title>\x{a}  <link rel=\x{22}stylesheet\x{22} type=\x{22}text/css\x{22} id=\x{22}"/utf8>> | [V7 | [<<"\x{22} href=\x{22}"/utf8>> | [V1 | [V15 | [<<".css\x{22}>\x{a}  <script>\x{a}    /* Updates the stylesheet to use the preferred one.\x{a}       Note that we set the link to root ++ sourceLoc because the config\x{a}       is shared across the whole website, so the root may differ from\x{a}       page to page.\x{a}    */\x{a}    function setStyleSource (sourceLoc) {\x{a}      document.getElementById(\x{22}"/utf8>> | [V7 | [<<"\x{22}).href = \x{22}"/utf8>> | [V1 | [<<"\x{22} + sourceLoc + \x{22}.css\x{22};\x{a}      document.getElementById(\x{22}"/utf8>> | [V11 | [<<"\x{22}).value = sourceLoc;\x{a}    }\x{a}    /* Initialises the preferred style sheet:\x{a}       1. if there is a stored value then use that\x{a}          otherwise select the default\x{a}       2. set both the css link href & the drop down menu selected option\x{a}    */\x{a}    function initStyleSource () {\x{a}      var preferredStyle = localStorage.getItem(\x{22}"/utf8>> | [V19 | [<<"\x{22});\x{a}      if (preferredStyle !== null) {\x{a}        setStyleSource(preferredStyle);\x{a}      } else {\x{a}        setStyleSource(\x{22}"/utf8>> | [V15 | [<<"\x{22});\x{a}      };\x{a}    }\x{a}    function saveStyleSource (preferredStyle) {\x{a}      localStorage."/utf8>> | [V19 | [<<" = preferredStyle;\x{a}    }\x{a}    </script>\x{a}</head>\x{a}\x{a}<body class=\x{22}"/utf8>> | [V2 | [<<"\x{22}>\x{a}<header>\x{a}  <strong>Idris2Doc</strong> : "/utf8>> | [V3 | [<<"\x{a}  <nav><a href=\x{22}"/utf8>> | [V1 | [<<"index.html\x{22}>Index</a>\x{a}\x{a}  <select id=\x{22}"/utf8>> | [V11 | [<<"\x{22}>\x{a}    "/utf8>> | [('Idris.Idris2.Data.String':'un--fastUnlines'(('Idris.Idris2.Prelude.Basics':'un--flip'(begin (V27 = fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V25, V26)) end end end end), fun (V28) -> fun (V29) -> ((((V27('erased'))('erased'))(V28))(V29)) end end end, ('Idris.Idris2.Idris.Package.Types':'un--cssFiles'()), fun (V30) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V31) -> fun (V32) -> <<V31/binary, V32/binary>> end end, <<""/utf8>>}, fun (V33) -> V33 end, [<<"<option value=\x{22}"/utf8>> | [case V30 of {'Idris.Package.Types.MkCSS', V34, V35} -> V35 end | [<<"\x{22}>"/utf8>> | [case V30 of {'Idris.Package.Types.MkCSS', V36, V37} -> V36 end | [<<"</option>"/utf8>> | []]]]]])) end)))) | [<<"\x{a}  </select>\x{a}  </nav>\x{a}\x{a}  <script>\x{a}  /* We start by initialising the style source */\x{a}  initStyleSource();\x{a}\x{a}  /* This listens for changes on the drop down menu and updates the\x{a}     css used for the current page when a selection is made.\x{a}  */\x{a}  document.getElementById(\x{22}"/utf8>> | [V11 | [<<"\x{22}).addEventListener(\x{22}change\x{22}, function(){\x{a}    var selected = this.options[this.selectedIndex].value; /* the option chosen */\x{a}    setStyleSource (selected);\x{a}    saveStyleSource (selected);\x{a}  });\x{a}</script>\x{a}\x{a}</header>\x{a}<div class=\x{22}container\x{22}>"/utf8>> | []]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]])) end end end end end.
'un--htmlFooter'() -> <<<<"</div><footer>Produced by Idris 2 version "/utf8>>/binary, <<('Idris.Idris2.Libraries.Data.Version':'un--showVersion'(1, ('Idris.Idris2.Idris.Version':'un--version'())))/binary, <<"</footer></body></html>"/utf8>>/binary>>/binary>>.
'un--hasNS'(V0) -> case V0 of {'Core.Name.NS', V1, V2} -> 1; _ -> 0 end.
'un--getNS'(V0) -> case V0 of {'Core.Name.NS', V1, V2} -> ('Idris.Idris2.Core.Name.Namespace':'dn--un--show_Show_Namespace'(V1)); _ -> <<""/utf8>> end.
'un--docDocToHtml'(V0, V1) -> begin (V2 = ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.SimpleDocTree':'un--fromStream'(('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--layoutUnbounded'(V1))))), ('un--renderHtml'(V0, ('un--removeNewlinesFromDeclarations'(V2)))) end.
'un--addLink'(V0, V1, V2) -> case V1 of {'Prelude.Types.Nothing'} -> fun (V3) -> {'Prelude.Types.Right', V2} end; {'Prelude.Types.Just', V4} -> begin (V5 = ('un--tryCanonicalName'(V0, ('Idris.Idris2.Core.FC':'un--emptyFC'()), V4))), fun (V6) -> begin (V7 = (V5(V6))), case V7 of {'Prelude.Types.Left', V8} -> {'Prelude.Types.Left', V8}; {'Prelude.Types.Right', V9} -> (begin (V38 = case V9 of {'Prelude.Types.Just', V10} -> begin (V11 = ('un--packageInternal'(V0, V10))), fun (V12) -> begin (V13 = (V11(V12))), case V13 of {'Prelude.Types.Left', V14} -> {'Prelude.Types.Left', V14}; {'Prelude.Types.Right', V15} -> (begin (V23 = fun (V16) -> case V15 of 1 -> {'Prelude.Types.Right', ('Idris.Idris2.Prelude.Types':'un--fastConcat'([(begin (V18 = fun (V17) -> V17 end), fun (V19) -> (V18(V19)) end end(<<"<a class=\x{22}type\x{22} href=\x{22}"/utf8>>)) | [('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Render.HTML':'un--htmlEscape'(('un--getNS'(V10)))) | [<<".html#"/utf8>> | [('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Render.HTML':'un--htmlEscape'(('Idris.Idris2.Core.Name':'dn--un--show_Show_Name'(V10)))) | [<<"\x{22}>"/utf8>> | [V2 | [<<"</a>"/utf8>> | []]]]]]]]))}; 0 -> {'Prelude.Types.Right', ('Idris.Idris2.Prelude.Types':'un--fastConcat'([(begin (V21 = fun (V20) -> V20 end), fun (V22) -> (V21(V22)) end end(<<"<span class=\x{22}type resolved\x{22} title=\x{22}"/utf8>>)) | [('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Render.HTML':'un--htmlEscape'(('Idris.Idris2.Core.Name':'dn--un--show_Show_Name'(V10)))) | [<<"\x{22}>"/utf8>> | [V2 | [<<"</span>"/utf8>> | []]]]]]))} end end), V23 end(V12)) end end end end; {'Prelude.Types.Nothing'} -> fun (V24) -> {'Prelude.Types.Right', ((begin (V35 = fun (V33) -> fun (V34) -> <<V33/binary, V34/binary>> end end), fun (V36) -> fun (V37) -> ((V35(V36))(V37)) end end end(((begin (V30 = fun (V28) -> fun (V29) -> <<V28/binary, V29/binary>> end end), fun (V31) -> fun (V32) -> ((V30(V31))(V32)) end end end((begin (V26 = fun (V25) -> V25 end), fun (V27) -> (V26(V27)) end end(<<"<span class=\x{22}implicit\x{22}>"/utf8>>))))(V2))))(<<"</span>"/utf8>>))} end end), V38 end(V6)) end end end end end.
