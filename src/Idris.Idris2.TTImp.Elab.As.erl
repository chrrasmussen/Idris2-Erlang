-module('Idris.Idris2.TTImp.Elab.As').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--10085-11603--in--un--rigPat\x{27}'/18,
  'nested--10085-11604--in--un--rigPat'/17,
  'nested--10085-11605--in--un--rigAs\x{27}'/18,
  'nested--10085-11606--in--un--rigAs'/17,
  'un--checkAs'/17
]).
'nested--10085-11603--in--un--rigPat\x{27}'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17) -> case V17 of 0 -> case ('Idris.Idris2.Algebra.Semiring':'un--isLinear'({'Builtin.MkPair', {'Algebra.Semiring.dn--un--__mkSemiring', fun (V18) -> fun (V19) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigPlus'(V18, V19)) end end, 0, fun (V20) -> fun (V21) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigMult'(V20, V21)) end end, 1}, {'Prelude.EqOrd.MkEq', fun (V22) -> fun (V23) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--==_Eq_ZeroOneOmega'(V22, V23)) end end, fun (V24) -> fun (V25) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--/=_Eq_ZeroOneOmega'(V24, V25)) end end}}, V10)) of 1 -> ('Idris.Idris2.Algebra.Semiring':'un--linear'({'Algebra.Semiring.dn--un--__mkSemiring', fun (V26) -> fun (V27) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigPlus'(V26, V27)) end end, 0, fun (V28) -> fun (V29) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigMult'(V28, V29)) end end, 1})); 0 -> V10 end; 1 -> case ('Idris.Idris2.Algebra.Semiring':'un--isLinear'({'Builtin.MkPair', {'Algebra.Semiring.dn--un--__mkSemiring', fun (V30) -> fun (V31) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigPlus'(V30, V31)) end end, 0, fun (V32) -> fun (V33) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigMult'(V32, V33)) end end, 1}, {'Prelude.EqOrd.MkEq', fun (V34) -> fun (V35) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--==_Eq_ZeroOneOmega'(V34, V35)) end end, fun (V36) -> fun (V37) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--/=_Eq_ZeroOneOmega'(V36, V37)) end end}}, V10)) of 1 -> ('Idris.Idris2.Algebra.Semiring':'un--erased'({'Algebra.Semiring.dn--un--__mkSemiring', fun (V38) -> fun (V39) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigPlus'(V38, V39)) end end, 0, fun (V40) -> fun (V41) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigMult'(V40, V41)) end end, 1})); 0 -> V10 end end.
'nested--10085-11604--in--un--rigPat'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16) -> ('nested--10085-11603--in--un--rigPat\x{27}'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V4)).
'nested--10085-11605--in--un--rigAs\x{27}'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17) -> case V17 of 0 -> case ('Idris.Idris2.Algebra.Semiring':'un--isLinear'({'Builtin.MkPair', {'Algebra.Semiring.dn--un--__mkSemiring', fun (V18) -> fun (V19) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigPlus'(V18, V19)) end end, 0, fun (V20) -> fun (V21) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigMult'(V20, V21)) end end, 1}, {'Prelude.EqOrd.MkEq', fun (V22) -> fun (V23) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--==_Eq_ZeroOneOmega'(V22, V23)) end end, fun (V24) -> fun (V25) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--/=_Eq_ZeroOneOmega'(V24, V25)) end end}}, V10)) of 1 -> ('Idris.Idris2.Algebra.Semiring':'un--erased'({'Algebra.Semiring.dn--un--__mkSemiring', fun (V26) -> fun (V27) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigPlus'(V26, V27)) end end, 0, fun (V28) -> fun (V29) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigMult'(V28, V29)) end end, 1})); 0 -> V10 end; 1 -> case ('Idris.Idris2.Algebra.Semiring':'un--isLinear'({'Builtin.MkPair', {'Algebra.Semiring.dn--un--__mkSemiring', fun (V30) -> fun (V31) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigPlus'(V30, V31)) end end, 0, fun (V32) -> fun (V33) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigMult'(V32, V33)) end end, 1}, {'Prelude.EqOrd.MkEq', fun (V34) -> fun (V35) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--==_Eq_ZeroOneOmega'(V34, V35)) end end, fun (V36) -> fun (V37) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--/=_Eq_ZeroOneOmega'(V36, V37)) end end}}, V10)) of 1 -> ('Idris.Idris2.Algebra.Semiring':'un--linear'({'Algebra.Semiring.dn--un--__mkSemiring', fun (V38) -> fun (V39) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigPlus'(V38, V39)) end end, 0, fun (V40) -> fun (V41) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigMult'(V40, V41)) end end, 1})); 0 -> V10 end end.
'nested--10085-11606--in--un--rigAs'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16) -> ('nested--10085-11605--in--un--rigAs\x{27}'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V4)).
'un--checkAs'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16) -> begin (V23 = case V8 of {'TTImp.Elab.Check.MkElabInfo', V17, V18, V19, V20, V21, V22} -> V17 end), case V23 of {'TTImp.Elab.Check.InLHS', V24} -> begin (V30 = begin (V25 = V4), fun (V26) -> begin (V29 = (begin (V27 = V25), fun (V28) -> ('erlang':'get'(V27)) end end(V26))), {'Prelude.Types.Right', V29} end end end), fun (V31) -> begin (V32 = (V30(V31))), case V32 of {'Prelude.Types.Left', V33} -> {'Prelude.Types.Left', V33}; {'Prelude.Types.Right', V34} -> (begin (V287 = begin (V49 = {'Core.Name.PV', V14, case V34 of {'TTImp.Elab.Check.MkEState', V35, V36, V37, V38, V39, V40, V41, V42, V43, V44, V45, V46, V47, V48} -> V36 end}), begin (V50 = ('Idris.Idris2.TTImp.Elab.Check':'un--noteLHSPatVar'(V4, V23, V14))), fun (V51) -> begin (V52 = (V50(V51))), case V52 of {'Prelude.Types.Left', V53} -> {'Prelude.Types.Left', V53}; {'Prelude.Types.Right', V54} -> (begin (V286 = begin (V55 = ('Idris.Idris2.TTImp.Elab.Check':'un--notePatVar'(V4, V49))), fun (V56) -> begin (V57 = (V55(V56))), case V57 of {'Prelude.Types.Left', V58} -> {'Prelude.Types.Left', V58}; {'Prelude.Types.Right', V59} -> (begin (V285 = case ('Idris.Idris2.Data.List':'un--lookup'({'Prelude.EqOrd.MkEq', fun (V60) -> fun (V61) -> ('Idris.Idris2.Core.Name':'dn--un--==_Eq_Name'(V60, V61)) end end, fun (V62) -> fun (V63) -> ('Idris.Idris2.Core.Name':'dn--un--/=_Eq_Name'(V62, V63)) end end}, V49, case V34 of {'TTImp.Elab.Check.MkEState', V64, V65, V66, V67, V68, V69, V70, V71, V72, V73, V74, V75, V76, V77} -> V68 end)) of {'Prelude.Types.Nothing'} -> begin (V78 = ('Idris.Idris2.TTImp.Elab.Check':'un--check'(V0, V1, V2, V3, V4, V5, V6, ('nested--10085-11604--in--un--rigPat'(V0, V16, V15, V14, V13, V12, V11, V10, V9, V8, V7, V6, V5, V4, V3, V2, V1)), V8, V9, V10, V15, V16))), fun (V79) -> begin (V80 = (V78(V79))), case V80 of {'Prelude.Types.Left', V81} -> {'Prelude.Types.Left', V81}; {'Prelude.Types.Right', V82} -> (begin (V282 = case V82 of {'Builtin.MkPair', V83, V84} -> begin (V91 = ('Idris.Idris2.TTImp.Elab.ImplicitBind':'un--mkPatternHole'(V0, V4, V1, V3, V12, V7, V49, V10, case V8 of {'TTImp.Elab.Check.MkElabInfo', V85, V86, V87, V88, V89, V90} -> V86 end, V16))), fun (V92) -> begin (V93 = (V91(V92))), case V93 of {'Prelude.Types.Left', V94} -> {'Prelude.Types.Left', V94}; {'Prelude.Types.Right', V95} -> (begin (V281 = case V95 of {'Builtin.MkPair', V96, V97} -> case V97 of {'Builtin.MkPair', V98, V99} -> begin (V193 = ('Idris.Idris2.Core.Context.Log':'un--log'(V1, <<"elab.as"/utf8>>, 5, fun () -> <<(begin (V101 = fun (V100) -> V100 end), fun (V102) -> (V101(V102)) end end(<<"Added as pattern name "/utf8>>))/binary, ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'({'Builtin.MkPair', {'Prelude.Show.MkShow', fun (V103) -> ('Idris.Idris2.Core.Name':'dn--un--show_Show_Name'(V103)) end, fun (V104) -> fun (V105) -> ('Idris.Idris2.Core.Name':'dn--un--showPrec_Show_Name'(V104, V105)) end end}, {'Prelude.Show.MkShow', fun (V106) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'({'Builtin.MkPair', {'Prelude.Show.MkShow', fun (V107) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--show_Show_ZeroOneOmega'(V107)) end, fun (V108) -> fun (V109) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--showPrec_Show_ZeroOneOmega'(V108, V109)) end end}, {'Prelude.Show.MkShow', fun (V110) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'({'Builtin.MkPair', {'Prelude.Show.MkShow', fun (V111) -> ('Idris.Idris2.Core.TT':'dn--un--show_Show_(Term $vars)'(V0, V111)) end, fun (V112) -> fun (V113) -> ('Idris.Idris2.Core.TT':'dn--un--showPrec_Show_(Term $vars)'(V0, V112, V113)) end end}, {'Prelude.Show.MkShow', fun (V114) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'({'Builtin.MkPair', {'Prelude.Show.MkShow', fun (V115) -> ('Idris.Idris2.Core.TT':'dn--un--show_Show_(Term $vars)'(V0, V115)) end, fun (V116) -> fun (V117) -> ('Idris.Idris2.Core.TT':'dn--un--showPrec_Show_(Term $vars)'(V0, V116, V117)) end end}, {'Prelude.Show.MkShow', fun (V118) -> ('Idris.Idris2.Core.TT':'dn--un--show_Show_(Term $vars)'(V0, V118)) end, fun (V119) -> fun (V120) -> ('Idris.Idris2.Core.TT':'dn--un--showPrec_Show_(Term $vars)'(V0, V119, V120)) end end}}, V114)) end, fun (V121) -> fun (V122) -> ('Idris.Idris2.Prelude.Show':'dn--un--showPrec_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'({'Builtin.MkPair', {'Prelude.Show.MkShow', fun (V123) -> ('Idris.Idris2.Core.TT':'dn--un--show_Show_(Term $vars)'(V0, V123)) end, fun (V124) -> fun (V125) -> ('Idris.Idris2.Core.TT':'dn--un--showPrec_Show_(Term $vars)'(V0, V124, V125)) end end}, {'Prelude.Show.MkShow', fun (V126) -> ('Idris.Idris2.Core.TT':'dn--un--show_Show_(Term $vars)'(V0, V126)) end, fun (V127) -> fun (V128) -> ('Idris.Idris2.Core.TT':'dn--un--showPrec_Show_(Term $vars)'(V0, V127, V128)) end end}}, V121, V122)) end end}}, V110)) end, fun (V129) -> fun (V130) -> ('Idris.Idris2.Prelude.Show':'dn--un--showPrec_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'({'Builtin.MkPair', {'Prelude.Show.MkShow', fun (V131) -> ('Idris.Idris2.Core.TT':'dn--un--show_Show_(Term $vars)'(V0, V131)) end, fun (V132) -> fun (V133) -> ('Idris.Idris2.Core.TT':'dn--un--showPrec_Show_(Term $vars)'(V0, V132, V133)) end end}, {'Prelude.Show.MkShow', fun (V134) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'({'Builtin.MkPair', {'Prelude.Show.MkShow', fun (V135) -> ('Idris.Idris2.Core.TT':'dn--un--show_Show_(Term $vars)'(V0, V135)) end, fun (V136) -> fun (V137) -> ('Idris.Idris2.Core.TT':'dn--un--showPrec_Show_(Term $vars)'(V0, V136, V137)) end end}, {'Prelude.Show.MkShow', fun (V138) -> ('Idris.Idris2.Core.TT':'dn--un--show_Show_(Term $vars)'(V0, V138)) end, fun (V139) -> fun (V140) -> ('Idris.Idris2.Core.TT':'dn--un--showPrec_Show_(Term $vars)'(V0, V139, V140)) end end}}, V134)) end, fun (V141) -> fun (V142) -> ('Idris.Idris2.Prelude.Show':'dn--un--showPrec_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'({'Builtin.MkPair', {'Prelude.Show.MkShow', fun (V143) -> ('Idris.Idris2.Core.TT':'dn--un--show_Show_(Term $vars)'(V0, V143)) end, fun (V144) -> fun (V145) -> ('Idris.Idris2.Core.TT':'dn--un--showPrec_Show_(Term $vars)'(V0, V144, V145)) end end}, {'Prelude.Show.MkShow', fun (V146) -> ('Idris.Idris2.Core.TT':'dn--un--show_Show_(Term $vars)'(V0, V146)) end, fun (V147) -> fun (V148) -> ('Idris.Idris2.Core.TT':'dn--un--showPrec_Show_(Term $vars)'(V0, V147, V148)) end end}}, V141, V142)) end end}}, V129, V130)) end end}}, V106)) end, fun (V149) -> fun (V150) -> ('Idris.Idris2.Prelude.Show':'dn--un--showPrec_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'({'Builtin.MkPair', {'Prelude.Show.MkShow', fun (V151) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--show_Show_ZeroOneOmega'(V151)) end, fun (V152) -> fun (V153) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--showPrec_Show_ZeroOneOmega'(V152, V153)) end end}, {'Prelude.Show.MkShow', fun (V154) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'({'Builtin.MkPair', {'Prelude.Show.MkShow', fun (V155) -> ('Idris.Idris2.Core.TT':'dn--un--show_Show_(Term $vars)'(V0, V155)) end, fun (V156) -> fun (V157) -> ('Idris.Idris2.Core.TT':'dn--un--showPrec_Show_(Term $vars)'(V0, V156, V157)) end end}, {'Prelude.Show.MkShow', fun (V158) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'({'Builtin.MkPair', {'Prelude.Show.MkShow', fun (V159) -> ('Idris.Idris2.Core.TT':'dn--un--show_Show_(Term $vars)'(V0, V159)) end, fun (V160) -> fun (V161) -> ('Idris.Idris2.Core.TT':'dn--un--showPrec_Show_(Term $vars)'(V0, V160, V161)) end end}, {'Prelude.Show.MkShow', fun (V162) -> ('Idris.Idris2.Core.TT':'dn--un--show_Show_(Term $vars)'(V0, V162)) end, fun (V163) -> fun (V164) -> ('Idris.Idris2.Core.TT':'dn--un--showPrec_Show_(Term $vars)'(V0, V163, V164)) end end}}, V158)) end, fun (V165) -> fun (V166) -> ('Idris.Idris2.Prelude.Show':'dn--un--showPrec_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'({'Builtin.MkPair', {'Prelude.Show.MkShow', fun (V167) -> ('Idris.Idris2.Core.TT':'dn--un--show_Show_(Term $vars)'(V0, V167)) end, fun (V168) -> fun (V169) -> ('Idris.Idris2.Core.TT':'dn--un--showPrec_Show_(Term $vars)'(V0, V168, V169)) end end}, {'Prelude.Show.MkShow', fun (V170) -> ('Idris.Idris2.Core.TT':'dn--un--show_Show_(Term $vars)'(V0, V170)) end, fun (V171) -> fun (V172) -> ('Idris.Idris2.Core.TT':'dn--un--showPrec_Show_(Term $vars)'(V0, V171, V172)) end end}}, V165, V166)) end end}}, V154)) end, fun (V173) -> fun (V174) -> ('Idris.Idris2.Prelude.Show':'dn--un--showPrec_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'({'Builtin.MkPair', {'Prelude.Show.MkShow', fun (V175) -> ('Idris.Idris2.Core.TT':'dn--un--show_Show_(Term $vars)'(V0, V175)) end, fun (V176) -> fun (V177) -> ('Idris.Idris2.Core.TT':'dn--un--showPrec_Show_(Term $vars)'(V0, V176, V177)) end end}, {'Prelude.Show.MkShow', fun (V178) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'({'Builtin.MkPair', {'Prelude.Show.MkShow', fun (V179) -> ('Idris.Idris2.Core.TT':'dn--un--show_Show_(Term $vars)'(V0, V179)) end, fun (V180) -> fun (V181) -> ('Idris.Idris2.Core.TT':'dn--un--showPrec_Show_(Term $vars)'(V0, V180, V181)) end end}, {'Prelude.Show.MkShow', fun (V182) -> ('Idris.Idris2.Core.TT':'dn--un--show_Show_(Term $vars)'(V0, V182)) end, fun (V183) -> fun (V184) -> ('Idris.Idris2.Core.TT':'dn--un--showPrec_Show_(Term $vars)'(V0, V183, V184)) end end}}, V178)) end, fun (V185) -> fun (V186) -> ('Idris.Idris2.Prelude.Show':'dn--un--showPrec_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'({'Builtin.MkPair', {'Prelude.Show.MkShow', fun (V187) -> ('Idris.Idris2.Core.TT':'dn--un--show_Show_(Term $vars)'(V0, V187)) end, fun (V188) -> fun (V189) -> ('Idris.Idris2.Core.TT':'dn--un--showPrec_Show_(Term $vars)'(V0, V188, V189)) end end}, {'Prelude.Show.MkShow', fun (V190) -> ('Idris.Idris2.Core.TT':'dn--un--show_Show_(Term $vars)'(V0, V190)) end, fun (V191) -> fun (V192) -> ('Idris.Idris2.Core.TT':'dn--un--showPrec_Show_(Term $vars)'(V0, V191, V192)) end end}}, V185, V186)) end end}}, V173, V174)) end end}}, V149, V150)) end end}}, {'Builtin.MkPair', V49, {'Builtin.MkPair', ('nested--10085-11606--in--un--rigAs'(V0, V16, V15, V14, V13, V12, V11, V10, V9, V8, V7, V6, V5, V4, V3, V2, V1)), {'Builtin.MkPair', V96, {'Builtin.MkPair', V98, V99}}}}))/binary>> end))), fun (V194) -> begin (V195 = (V193(V194))), case V195 of {'Prelude.Types.Left', V196} -> {'Prelude.Types.Left', V196}; {'Prelude.Types.Right', V197} -> (begin (V280 = begin (V203 = begin (V198 = V1), fun (V199) -> begin (V202 = (begin (V200 = V198), fun (V201) -> ('erlang':'get'(V200)) end end(V199))), {'Prelude.Types.Right', V202} end end end), fun (V204) -> begin (V205 = (V203(V204))), case V205 of {'Prelude.Types.Left', V206} -> {'Prelude.Types.Left', V206}; {'Prelude.Types.Right', V207} -> (begin (V279 = begin (V240 = begin (V213 = begin (V208 = V4), fun (V209) -> begin (V212 = (begin (V210 = V208), fun (V211) -> ('erlang':'get'(V210)) end end(V209))), {'Prelude.Types.Right', V212} end end end), fun (V214) -> begin (V215 = (V213(V214))), case V215 of {'Prelude.Types.Left', V216} -> {'Prelude.Types.Left', V216}; {'Prelude.Types.Right', V217} -> (begin (V239 = begin (V218 = V4), fun (V219) -> begin (V238 = (begin (V220 = V218), fun (V221) -> ('erlang':'put'(V220, case V217 of {'TTImp.Elab.Check.MkEState', V222, V223, V224, V225, V226, V227, V228, V229, V230, V231, V232, V233, V234, V235} -> {'TTImp.Elab.Check.MkEState', V222, V223, V224, V225, begin (V236 = V0), [{'Builtin.MkPair', V49, {'TTImp.Elab.Check.AsBinding', V0, ('nested--10085-11606--in--un--rigAs'(V236, V16, V15, V14, V13, V12, V11, V10, V9, V8, V7, V6, V5, V4, V3, V2, V1)), {'Core.TT.Explicit'}, V96, V98, V83}} | V226] end, begin (V237 = V0), [{'Builtin.MkPair', V49, {'TTImp.Elab.Check.AsBinding', V0, ('nested--10085-11606--in--un--rigAs'(V237, V16, V15, V14, V13, V12, V11, V10, V9, V8, V7, V6, V5, V4, V3, V2, V1)), {'Core.TT.Explicit'}, V96, V99, V83}} | V227] end, V228, V229, V230, V231, V232, V233, V234, V235} end)) end end(V219))), {'Prelude.Types.Right', V238} end end end), V239 end(V214)) end end end end), fun (V241) -> begin (V242 = (V240(V241))), case V242 of {'Prelude.Types.Left', V243} -> {'Prelude.Types.Left', V243}; {'Prelude.Types.Right', V244} -> (begin (V278 = begin (V245 = ('Idris.Idris2.TTImp.Elab.Check':'un--checkExp'(V0, V1, V3, V4, V7, V8, V10, V12, V96, ('Idris.Idris2.Core.Normalise.Eval':'un--gnf'(V0, V10, V98)), {'Prelude.Types.Just', V84}))), fun (V246) -> begin (V247 = (V245(V246))), case V247 of {'Prelude.Types.Left', V248} -> {'Prelude.Types.Left', V248}; {'Prelude.Types.Right', V249} -> (begin (V277 = case V249 of {'Builtin.MkPair', V250, V251} -> begin (V258 = ('Idris.Idris2.Core.Context.Log':'un--log'(V1, (begin (V253 = fun (V252) -> V252 end), fun (V254) -> (V253(V254)) end end(<<"metadata.names"/utf8>>)), 7, fun () -> (begin (V256 = fun (V255) -> V255 end), fun (V257) -> (V256(V257)) end end(<<"checkAs is adding \x{2193}"/utf8>>)) end))), fun (V259) -> begin (V260 = (V258(V259))), case V260 of {'Prelude.Types.Left', V261} -> {'Prelude.Types.Left', V261}; {'Prelude.Types.Right', V262} -> (begin (V276 = begin (V269 = begin (V263 = ('Idris.Idris2.Core.Normalise.Eval':'un--getTerm'(V251))), fun (V264) -> begin (V265 = (V263(V264))), case V265 of {'Prelude.Types.Left', V266} -> {'Prelude.Types.Left', V266}; {'Prelude.Types.Right', V267} -> (begin (V268 = ('Idris.Idris2.Core.Metadata':'un--addNameType'(V0, V1, V2, V12, V14, V10, V267))), V268 end(V264)) end end end end), fun (V270) -> begin (V271 = (V269(V270))), case V271 of {'Prelude.Types.Left', V272} -> {'Prelude.Types.Left', V272}; {'Prelude.Types.Right', V273} -> (begin (V275 = fun (V274) -> {'Prelude.Types.Right', {'Builtin.MkPair', {'Core.TT.As', V11, V13, V250, V83}, V84}} end), V275 end(V270)) end end end end), V276 end(V259)) end end end end end), V277 end(V246)) end end end end), V278 end(V241)) end end end end), V279 end(V204)) end end end end), V280 end(V194)) end end end end end end), V281 end(V92)) end end end end end), V282 end(V79)) end end end end; {'Prelude.Types.Just', V283} -> fun (V284) -> ('Idris.Idris2.Core.Core':'dn--un--throw_Catchable_Core_Error'({'Core.Core.NonLinearPattern', V11, V14}, V284)) end end), V285 end(V56)) end end end end), V286 end(V51)) end end end end end), V287 end(V31)) end end end end; _ -> begin (V291 = ('Idris.Idris2.Core.Context.Log':'un--log'(V1, <<"elab.as"/utf8>>, 2, fun () -> <<<<"Bad @-pattern "/utf8>>/binary, ('Idris.Idris2.TTImp.TTImp':'dn--un--show_Show_(RawImp\x{27} $nm)'({'Prelude.Show.MkShow', fun (V288) -> ('Idris.Idris2.Core.Name':'dn--un--show_Show_Name'(V288)) end, fun (V289) -> fun (V290) -> ('Idris.Idris2.Core.Name':'dn--un--showPrec_Show_Name'(V289, V290)) end end}, V15))/binary>> end))), fun (V292) -> begin (V293 = (V291(V292))), case V293 of {'Prelude.Types.Left', V294} -> {'Prelude.Types.Left', V294}; {'Prelude.Types.Right', V295} -> (begin (V297 = fun (V296) -> ('Idris.Idris2.Core.Core':'dn--un--throw_Catchable_Core_Error'({'Core.Core.GenericMsg', V11, <<"@-patterns only allowed in pattern clauses"/utf8>>}, V296)) end), V297 end(V292)) end end end end end end.
