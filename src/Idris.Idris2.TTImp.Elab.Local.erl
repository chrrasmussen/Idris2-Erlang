-module('Idris.Idris2.TTImp.Elab.Local').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--getLocalTerm-14652'/8,
  'nested--9963-13330--in--un--updateTyName'/13,
  'nested--9963-13333--in--un--updateRecordName'/13,
  'nested--9963-13334--in--un--updateRecordNS'/13,
  'nested--9963-13335--in--un--updateName'/13,
  'nested--9963-13332--in--un--updateFieldName'/13,
  'nested--9963-13331--in--un--updateDataName'/13,
  'nested--9963-13336--in--un--setPublic'/12,
  'nested--9963-13337--in--un--setErased'/12,
  'nested--9963-13329--in--un--newName'/13,
  'nested--9963-13327--in--un--dropLinear'/12,
  'nested--9963-13328--in--un--applyEnv'/13,
  'un--localHelper'/11,
  'un--getLocalTerm'/6,
  'un--checkLocal'/15,
  'un--checkCaseLocal'/17
]).
'case--getLocalTerm-14652'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V7 of {'Prelude.Types.Just', V8} -> case V8 of {'Core.Env.MkIsDefined', V9, V10} -> begin (V11 = ('un--getLocalTerm'(V0, V6, V5, V4, {'Core.TT.App', V5, V3, {'Core.TT.Local', V5, {'Prelude.Types.Nothing'}, V9}}, V2))), fun (V12) -> begin (V13 = (V11(V12))), case V13 of {'Prelude.Types.Left', V14} -> {'Prelude.Types.Left', V14}; {'Prelude.Types.Right', V15} -> (begin (V19 = fun (V16) -> case V15 of {'Builtin.MkPair', V17, V18} -> {'Prelude.Types.Right', {'Builtin.MkPair', V17, [V9 | V18]}} end end), V19 end(V12)) end end end end end; {'Prelude.Types.Nothing'} -> fun (V20) -> ('Idris.Idris2.Core.Core':'dn--un--throw_Catchable_Core_Error'({'Core.Core.InternalError', <<"Case Local failed"/utf8>>}, V20)) end end.
'nested--9963-13330--in--un--updateTyName'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> case V12 of {'TTImp.TTImp.MkImpTy', V13, V14, V15, V16} -> {'TTImp.TTImp.MkImpTy', V13, V14, ('nested--9963-13329--in--un--newName'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V15)), V16} end.
'nested--9963-13333--in--un--updateRecordName'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> case V12 of {'TTImp.TTImp.MkImpRecord', V13, V14, V15, V16, V17, V18} -> {'TTImp.TTImp.MkImpRecord', V13, ('nested--9963-13329--in--un--newName'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V14)), V15, V16, ('nested--9963-13329--in--un--newName'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V17)), ((begin (V24 = fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V22, V23)) end end end end), fun (V25) -> fun (V26) -> ((((V24('erased'))('erased'))(V25))(V26)) end end end(fun (V19) -> ('nested--9963-13332--in--un--updateFieldName'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V19)) end))(V18))} end.
'nested--9963-13334--in--un--updateRecordNS'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> case V12 of {'Prelude.Types.Nothing'} -> {'Prelude.Types.Nothing'}; {'Prelude.Types.Just', V13} -> {'Prelude.Types.Just', ('Idris.Idris2.Core.Name':'dn--un--show_Show_Name'(('nested--9963-13329--in--un--newName'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, {'Core.Name.UN', ('Idris.Idris2.Core.Name':'un--mkUserName'(V13))}))))} end.
'nested--9963-13335--in--un--updateName'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> case V12 of {'TTImp.TTImp.IClaim', V13, V14, V15, V16, V17} -> {'TTImp.TTImp.IClaim', V13, V14, V15, V16, ('nested--9963-13330--in--un--updateTyName'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V17))}; {'TTImp.TTImp.IDef', V18, V19, V20} -> {'TTImp.TTImp.IDef', V18, ('nested--9963-13329--in--un--newName'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V19)), V20}; {'TTImp.TTImp.IData', V21, V22, V23, V24} -> {'TTImp.TTImp.IData', V21, V22, V23, ('nested--9963-13331--in--un--updateDataName'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V24))}; {'TTImp.TTImp.IRecord', V25, V26, V27, V28, V29} -> {'TTImp.TTImp.IRecord', V25, ('nested--9963-13334--in--un--updateRecordNS'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V26)), V27, V28, ('nested--9963-13333--in--un--updateRecordName'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V29))}; _ -> V12 end.
'nested--9963-13332--in--un--updateFieldName'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> case V12 of {'TTImp.TTImp.MkIField', V13, V14, V15, V16, V17} -> {'TTImp.TTImp.MkIField', V13, V14, V15, ('nested--9963-13329--in--un--newName'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V16)), V17} end.
'nested--9963-13331--in--un--updateDataName'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> case V12 of {'TTImp.TTImp.MkImpData', V13, V14, V15, V16, V17} -> {'TTImp.TTImp.MkImpData', V13, ('nested--9963-13329--in--un--newName'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V14)), V15, V16, ((begin (V23 = fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V21, V22)) end end end end), fun (V24) -> fun (V25) -> ((((V23('erased'))('erased'))(V24))(V25)) end end end(fun (V18) -> ('nested--9963-13330--in--un--updateTyName'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V18)) end))(V17))}; {'TTImp.TTImp.MkImpLater', V26, V27, V28} -> {'TTImp.TTImp.MkImpLater', V26, ('nested--9963-13329--in--un--newName'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V27)), V28} end.
'nested--9963-13336--in--un--setPublic'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> case V11 of {'TTImp.TTImp.IClaim', V12, V13, V14, V15, V16} -> {'TTImp.TTImp.IClaim', V12, V13, 2, V15, V16}; {'TTImp.TTImp.IData', V17, V18, V19, V20} -> {'TTImp.TTImp.IData', V17, 2, V19, V20}; {'TTImp.TTImp.IRecord', V21, V22, V23, V24, V25} -> {'TTImp.TTImp.IRecord', V21, V22, 2, V24, V25}; {'TTImp.TTImp.IParameters', V26, V27, V28} -> {'TTImp.TTImp.IParameters', V26, V27, ((begin (V34 = fun (V30) -> fun (V31) -> fun (V32) -> fun (V33) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V32, V33)) end end end end), fun (V35) -> fun (V36) -> ((((V34('erased'))('erased'))(V35))(V36)) end end end(fun (V29) -> ('nested--9963-13336--in--un--setPublic'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V29)) end))(V28))}; {'TTImp.TTImp.INamespace', V37, V38, V39} -> {'TTImp.TTImp.INamespace', V37, V38, ((begin (V45 = fun (V41) -> fun (V42) -> fun (V43) -> fun (V44) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V43, V44)) end end end end), fun (V46) -> fun (V47) -> ((((V45('erased'))('erased'))(V46))(V47)) end end end(fun (V40) -> ('nested--9963-13336--in--un--setPublic'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V40)) end))(V39))}; _ -> V11 end.
'nested--9963-13337--in--un--setErased'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> case V11 of {'TTImp.TTImp.IClaim', V12, V13, V14, V15, V16} -> {'TTImp.TTImp.IClaim', V12, ('Idris.Idris2.Algebra.Semiring':'un--erased'({'Algebra.Semiring.dn--un--__mkSemiring', fun (V17) -> fun (V18) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigPlus'(V17, V18)) end end, 0, fun (V19) -> fun (V20) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigMult'(V19, V20)) end end, 1})), V14, V15, V16}; {'TTImp.TTImp.IParameters', V21, V22, V23} -> {'TTImp.TTImp.IParameters', V21, V22, ((begin (V29 = fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V27, V28)) end end end end), fun (V30) -> fun (V31) -> ((((V29('erased'))('erased'))(V30))(V31)) end end end(fun (V24) -> ('nested--9963-13337--in--un--setErased'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V24)) end))(V23))}; {'TTImp.TTImp.INamespace', V32, V33, V34} -> {'TTImp.TTImp.INamespace', V32, V33, ((begin (V40 = fun (V36) -> fun (V37) -> fun (V38) -> fun (V39) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V38, V39)) end end end end), fun (V41) -> fun (V42) -> ((((V40('erased'))('erased'))(V41))(V42)) end end end(fun (V35) -> ('nested--9963-13337--in--un--setErased'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V35)) end))(V34))}; _ -> V11 end.
'nested--9963-13329--in--un--newName'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> case ('Idris.Idris2.Data.List':'un--lookup'({'Prelude.EqOrd.MkEq', fun (V13) -> fun (V14) -> ('Idris.Idris2.Core.Name':'dn--un--==_Eq_Name'(V13, V14)) end end, fun (V15) -> fun (V16) -> ('Idris.Idris2.Core.Name':'dn--un--/=_Eq_Name'(V15, V16)) end end}, V12, begin (V17 = V11), V17 end)) of {'Prelude.Types.Just', V18} -> case V18 of {'Builtin.MkPair', V19, V20} -> case V19 of {'Prelude.Types.Just', V21} -> V21; _ -> V12 end; _ -> V12 end; _ -> V12 end.
'nested--9963-13327--in--un--dropLinear'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> case V11 of {'Core.Env.Nil'} -> {'Core.Env.Nil'}; {'Core.Env.::', V12, V13} -> case ('Idris.Idris2.Algebra.Semiring':'un--isLinear'({'Builtin.MkPair', {'Algebra.Semiring.dn--un--__mkSemiring', fun (V14) -> fun (V15) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigPlus'(V14, V15)) end end, 0, fun (V16) -> fun (V17) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigMult'(V16, V17)) end end, 1}, {'Prelude.EqOrd.MkEq', fun (V18) -> fun (V19) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--==_Eq_ZeroOneOmega'(V18, V19)) end end, fun (V20) -> fun (V21) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--/=_Eq_ZeroOneOmega'(V20, V21)) end end}}, ('Idris.Idris2.Core.TT':'un--multiplicity'(V12)))) of 1 -> {'Core.Env.::', ('Idris.Idris2.Core.TT':'un--setMultiplicity'(V12, ('Idris.Idris2.Algebra.Semiring':'un--erased'({'Algebra.Semiring.dn--un--__mkSemiring', fun (V22) -> fun (V23) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigPlus'(V22, V23)) end end, 0, fun (V24) -> fun (V25) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigMult'(V24, V25)) end end, 1})))), ('nested--9963-13327--in--un--dropLinear'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V13))}; 0 -> {'Core.Env.::', V12, ('nested--9963-13327--in--un--dropLinear'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V13))} end end.
'nested--9963-13328--in--un--applyEnv'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12) -> begin (V18 = begin (V13 = V8), fun (V14) -> begin (V17 = (begin (V15 = V13), fun (V16) -> ('erlang':'get'(V15)) end end(V14))), {'Prelude.Types.Right', V17} end end end), fun (V19) -> begin (V20 = (V18(V19))), case V20 of {'Prelude.Types.Left', V21} -> {'Prelude.Types.Left', V21}; {'Prelude.Types.Right', V22} -> (begin (V75 = begin (V41 = begin (V23 = V8), fun (V24) -> begin (V40 = (begin (V25 = V23), fun (V26) -> ('erlang':'put'(V25, case V22 of {'Core.UnifyState.MkUState', V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38} -> {'Core.UnifyState.MkUState', V27, V28, V29, V30, V31, V32, V33, V34, begin (V39 = (V35 + 1)), case ((V39 band 9223372036854775808) =/= 0) of 'true' -> (V39 bor -9223372036854775808); _ -> (V39 band 9223372036854775807) end end, V36, V37, V38} end)) end end(V24))), {'Prelude.Types.Right', V40} end end end), fun (V42) -> begin (V43 = (V41(V42))), case V43 of {'Prelude.Types.Left', V44} -> {'Prelude.Types.Left', V44}; {'Prelude.Types.Right', V45} -> (begin (V74 = begin (V58 = {'Core.Name.Nested', {'Builtin.MkPair', V11, case V22 of {'Core.UnifyState.MkUState', V46, V47, V48, V49, V50, V51, V52, V53, V54, V55, V56, V57} -> V54 end}, V12}), begin (V59 = ('Idris.Idris2.Core.Context':'un--inCurrentNS'(V10, V58))), fun (V60) -> begin (V61 = (V59(V60))), case V61 of {'Prelude.Types.Left', V62} -> {'Prelude.Types.Left', V62}; {'Prelude.Types.Right', V63} -> (begin (V73 = begin (V64 = ('Idris.Idris2.Core.Context':'un--addName'(V10, V63))), fun (V65) -> begin (V66 = (V64(V65))), case V66 of {'Prelude.Types.Left', V67} -> {'Prelude.Types.Left', V67}; {'Prelude.Types.Right', V68} -> (begin (V72 = fun (V69) -> {'Prelude.Types.Right', {'Builtin.MkPair', V12, {'Builtin.MkPair', {'Prelude.Types.Just', V63}, {'Builtin.MkPair', ('Idris.Idris2.Prelude.Types.List':'un--reverse'(('Idris.Idris2.Core.Env':'un--allVars'(V0, V3)))), fun (V70) -> fun (V71) -> ('Idris.Idris2.Core.UnifyState':'un--applyToFull'(V0, V70, {'Core.TT.Ref', V70, V71, {'Core.Name.Resolved', V68}}, V3)) end end}}}} end), V72 end(V65)) end end end end), V73 end(V60)) end end end end end), V74 end(V42)) end end end end), V75 end(V19)) end end end end.
'un--localHelper'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> begin (V16 = begin (V11 = V4), fun (V12) -> begin (V15 = (begin (V13 = V11), fun (V14) -> ('erlang':'get'(V13)) end end(V12))), {'Prelude.Types.Right', V15} end end end), fun (V17) -> begin (V18 = (V16(V17))), case V18 of {'Prelude.Types.Left', V19} -> {'Prelude.Types.Left', V19}; {'Prelude.Types.Right', V20} -> (begin (V405 = begin (V35 = case V20 of {'TTImp.Elab.Check.MkEState', V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32, V33, V34} -> V22 end), begin (V41 = begin (V36 = V1), fun (V37) -> begin (V40 = (begin (V38 = V36), fun (V39) -> ('erlang':'get'(V38)) end end(V37))), {'Prelude.Types.Right', V40} end end end), fun (V42) -> begin (V43 = (V41(V42))), case V43 of {'Prelude.Types.Left', V44} -> {'Prelude.Types.Left', V44}; {'Prelude.Types.Right', V45} -> (begin (V404 = begin (V92 = ('Idris.Idris2.Core.Context':'un--lookupCtxtExact'({'Core.Name.Resolved', case V20 of {'TTImp.Elab.Check.MkEState', V46, V47, V48, V49, V50, V51, V52, V53, V54, V55, V56, V57, V58, V59} -> V47 end}, case V45 of {'Core.Context.MkDefs', V60, V61, V62, V63, V64, V65, V66, V67, V68, V69, V70, V71, V72, V73, V74, V75, V76, V77, V78, V79, V80, V81, V82, V83, V84, V85, V86, V87, V88, V89, V90, V91} -> V60 end))), fun (V93) -> begin (V94 = (V92(V93))), case V94 of {'Prelude.Types.Left', V95} -> {'Prelude.Types.Left', V95}; {'Prelude.Types.Right', V96} -> (begin (V403 = begin (V120 = ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> 2 end, fun () -> fun (V97) -> case V97 of {'Core.Context.Context.MkGlobalDef', V98, V99, V100, V101, V102, V103, V104, V105, V106, V107, V108, V109, V110, V111, V112, V113, V114, V115, V116, V117, V118, V119} -> V107 end end end, V96))), begin (V148 = ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> ('Idris.Idris2.Algebra.Semiring':'un--linear'({'Algebra.Semiring.dn--un--__mkSemiring', fun (V121) -> fun (V122) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigPlus'(V121, V122)) end end, 0, fun (V123) -> fun (V124) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigMult'(V123, V124)) end end, 1})) end, fun () -> fun (V125) -> case V125 of {'Core.Context.Context.MkGlobalDef', V126, V127, V128, V129, V130, V131, V132, V133, V134, V135, V136, V137, V138, V139, V140, V141, V142, V143, V144, V145, V146, V147} -> V133 end end end, V96))), begin (V157 = case ('Idris.Idris2.Core.TT':'dn--un--==_Eq_Visibility'(V120, 2)) of 1 -> ((begin (V154 = fun (V150) -> fun (V151) -> fun (V152) -> fun (V153) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V152, V153)) end end end end), fun (V155) -> fun (V156) -> ((((V154('erased'))('erased'))(V155))(V156)) end end end(fun (V149) -> ('nested--9963-13336--in--un--setPublic'(V0, V10, V9, V8, V7, V6, V5, V4, V3, V2, V1, V149)) end))(V9)); 0 -> V9 end), begin (V170 = case ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--==_Eq_ZeroOneOmega'(V148, ('Idris.Idris2.Algebra.Semiring':'un--erased'({'Algebra.Semiring.dn--un--__mkSemiring', fun (V158) -> fun (V159) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigPlus'(V158, V159)) end end, 0, fun (V160) -> fun (V161) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'un--rigMult'(V160, V161)) end end, 1})))) of 1 -> ((begin (V167 = fun (V163) -> fun (V164) -> fun (V165) -> fun (V166) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V165, V166)) end end end end), fun (V168) -> fun (V169) -> ((((V167('erased'))('erased'))(V168))(V169)) end end end(fun (V162) -> ('nested--9963-13337--in--un--setErased'(V0, V10, V9, V8, V7, V6, V5, V4, V3, V2, V1, V162)) end))(V157)); 0 -> V157 end), begin (V171 = ('Idris.Idris2.TTImp.TTImp':'un--definedInBlock'(('Idris.Idris2.Core.Name.Namespace':'un--emptyNS'()), V170))), begin (V177 = ('Idris.Idris2.Core.Core':'un--traverse\x{27}'(fun (V172) -> ('nested--9963-13328--in--un--applyEnv'(V0, V10, V9, V8, V7, V6, V5, V4, V3, V2, V1, V35, V172)) end, ('Idris.Idris2.Data.List':'un--nub'({'Prelude.EqOrd.MkEq', fun (V173) -> fun (V174) -> ('Idris.Idris2.Core.Name':'dn--un--==_Eq_Name'(V173, V174)) end end, fun (V175) -> fun (V176) -> ('Idris.Idris2.Core.Name':'dn--un--/=_Eq_Name'(V175, V176)) end end}, V171)), []))), fun (V178) -> begin (V179 = (V177(V178))), case V179 of {'Prelude.Types.Left', V180} -> {'Prelude.Types.Left', V180}; {'Prelude.Types.Right', V181} -> (begin (V402 = begin (V183 = begin (V182 = V7), ('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(V181, V182)) end), begin (V184 = ('nested--9963-13327--in--un--dropLinear'(V0, V10, V9, V8, V7, V6, V5, V4, V3, V2, V1, V8))), begin (V190 = begin (V185 = V3), fun (V186) -> begin (V189 = (begin (V187 = V185), fun (V188) -> ('erlang':'get'(V187)) end end(V186))), {'Prelude.Types.Right', V189} end end end), fun (V191) -> begin (V192 = (V190(V191))), case V192 of {'Prelude.Types.Left', V193} -> {'Prelude.Types.Left', V193}; {'Prelude.Types.Right', V194} -> (begin (V401 = begin (V207 = case V194 of {'Core.UnifyState.MkUState', V195, V196, V197, V198, V199, V200, V201, V202, V203, V204, V205, V206} -> V205 end), begin (V225 = begin (V208 = V3), fun (V209) -> begin (V224 = (begin (V210 = V208), fun (V211) -> ('erlang':'put'(V210, case V194 of {'Core.UnifyState.MkUState', V212, V213, V214, V215, V216, V217, V218, V219, V220, V221, V222, V223} -> {'Core.UnifyState.MkUState', V212, V213, V214, V215, V216, V217, V218, V219, V220, V221, [], V223} end)) end end(V209))), {'Prelude.Types.Right', V224} end end end), fun (V226) -> begin (V227 = (V225(V226))), case V227 of {'Prelude.Types.Left', V228} -> {'Prelude.Types.Left', V228}; {'Prelude.Types.Right', V229} -> (begin (V400 = begin (V235 = begin (V230 = V1), fun (V231) -> begin (V234 = (begin (V232 = V230), fun (V233) -> ('erlang':'get'(V232)) end end(V231))), {'Prelude.Types.Right', V234} end end end), fun (V236) -> begin (V237 = (V235(V236))), case V237 of {'Prelude.Types.Left', V238} -> {'Prelude.Types.Left', V238}; {'Prelude.Types.Right', V239} -> (begin (V399 = begin (V272 = case V239 of {'Core.Context.MkDefs', V240, V241, V242, V243, V244, V245, V246, V247, V248, V249, V250, V251, V252, V253, V254, V255, V256, V257, V258, V259, V260, V261, V262, V263, V264, V265, V266, V267, V268, V269, V270, V271} -> V250 end), begin (V281 = ((begin (V278 = fun (V274) -> fun (V275) -> fun (V276) -> fun (V277) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V276, V277)) end end end end), fun (V279) -> fun (V280) -> ((((V278('erased'))('erased'))(V279))(V280)) end end end(fun (V273) -> ('nested--9963-13335--in--un--updateName'(V0, V10, V9, V8, V7, V6, V5, V4, V3, V2, V1, V183, V273)) end))(V170))), begin (V291 = ('Idris.Idris2.Core.Context.Log':'un--log'(V1, <<"elab.def.local"/utf8>>, 20, fun () -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_(List $a)'({'Prelude.Show.MkShow', fun (V282) -> ('Idris.Idris2.TTImp.TTImp':'dn--un--show_Show_(ImpDecl\x{27} $nm)'({'Prelude.Show.MkShow', fun (V283) -> ('Idris.Idris2.Core.Name':'dn--un--show_Show_Name'(V283)) end, fun (V284) -> fun (V285) -> ('Idris.Idris2.Core.Name':'dn--un--showPrec_Show_Name'(V284, V285)) end end}, V282)) end, fun (V286) -> fun (V287) -> ('Idris.Idris2.TTImp.TTImp':'dn--un--showPrec_Show_(ImpDecl\x{27} $nm)'({'Prelude.Show.MkShow', fun (V288) -> ('Idris.Idris2.Core.Name':'dn--un--show_Show_Name'(V288)) end, fun (V289) -> fun (V290) -> ('Idris.Idris2.Core.Name':'dn--un--showPrec_Show_Name'(V289, V290)) end end}, V286, V287)) end end}, V281)) end))), fun (V292) -> begin (V293 = (V291(V292))), case V293 of {'Prelude.Types.Left', V294} -> {'Prelude.Types.Left', V294}; {'Prelude.Types.Right', V295} -> (begin (V398 = begin (V297 = ('Idris.Idris2.Core.Core':'un--traverse_'(fun (V296) -> ('Idris.Idris2.TTImp.Elab.Check':'un--processDecl'(V0, V1, V2, V3, V5, V6, [], V183, V184, V296)) end, V281))), fun (V298) -> begin (V299 = (V297(V298))), case V299 of {'Prelude.Types.Left', V300} -> {'Prelude.Types.Left', V300}; {'Prelude.Types.Right', V301} -> (begin (V397 = begin (V330 = begin (V307 = begin (V302 = V3), fun (V303) -> begin (V306 = (begin (V304 = V302), fun (V305) -> ('erlang':'get'(V304)) end end(V303))), {'Prelude.Types.Right', V306} end end end), fun (V308) -> begin (V309 = (V307(V308))), case V309 of {'Prelude.Types.Left', V310} -> {'Prelude.Types.Left', V310}; {'Prelude.Types.Right', V311} -> (begin (V329 = begin (V312 = V3), fun (V313) -> begin (V328 = (begin (V314 = V312), fun (V315) -> ('erlang':'put'(V314, case V311 of {'Core.UnifyState.MkUState', V316, V317, V318, V319, V320, V321, V322, V323, V324, V325, V326, V327} -> {'Core.UnifyState.MkUState', V316, V317, V318, V319, V320, V321, V322, V323, V324, V325, V207, V327} end)) end end(V313))), {'Prelude.Types.Right', V328} end end end), V329 end(V308)) end end end end), fun (V331) -> begin (V332 = (V330(V331))), case V332 of {'Prelude.Types.Left', V333} -> {'Prelude.Types.Left', V333}; {'Prelude.Types.Right', V334} -> (begin (V396 = begin (V335 = (V10(V183))), fun (V336) -> begin (V337 = (V335(V336))), case V337 of {'Prelude.Types.Left', V338} -> {'Prelude.Types.Left', V338}; {'Prelude.Types.Right', V339} -> (begin (V395 = begin (V388 = begin (V345 = begin (V340 = V1), fun (V341) -> begin (V344 = (begin (V342 = V340), fun (V343) -> ('erlang':'get'(V342)) end end(V341))), {'Prelude.Types.Right', V344} end end end), fun (V346) -> begin (V347 = (V345(V346))), case V347 of {'Prelude.Types.Left', V348} -> {'Prelude.Types.Left', V348}; {'Prelude.Types.Right', V349} -> (begin (V387 = begin (V350 = V1), fun (V351) -> begin (V386 = (begin (V352 = V350), fun (V353) -> ('erlang':'put'(V352, case V349 of {'Core.Context.MkDefs', V354, V355, V356, V357, V358, V359, V360, V361, V362, V363, V364, V365, V366, V367, V368, V369, V370, V371, V372, V373, V374, V375, V376, V377, V378, V379, V380, V381, V382, V383, V384, V385} -> {'Core.Context.MkDefs', V354, V355, V356, V357, V358, V359, V360, V361, V362, V363, V272, V365, V366, V367, V368, V369, V370, V371, V372, V373, V374, V375, V376, V377, V378, V379, V380, V381, V382, V383, V384, V385} end)) end end(V351))), {'Prelude.Types.Right', V386} end end end), V387 end(V346)) end end end end), fun (V389) -> begin (V390 = (V388(V389))), case V390 of {'Prelude.Types.Left', V391} -> {'Prelude.Types.Left', V391}; {'Prelude.Types.Right', V392} -> (begin (V394 = fun (V393) -> {'Prelude.Types.Right', V339} end), V394 end(V389)) end end end end), V395 end(V336)) end end end end), V396 end(V331)) end end end end), V397 end(V298)) end end end end), V398 end(V292)) end end end end end end), V399 end(V236)) end end end end), V400 end(V226)) end end end end end), V401 end(V191)) end end end end end end), V402 end(V178)) end end end end end end end end end), V403 end(V93)) end end end end), V404 end(V42)) end end end end end), V405 end(V17)) end end end end.
'un--getLocalTerm'(V0, V1, V2, V3, V4, V5) -> case V5 of [] -> fun (V6) -> {'Prelude.Types.Right', {'Builtin.MkPair', V4, []}} end; [E0 | E1] -> (fun (V7, V8) -> ('case--getLocalTerm-14652'(V0, V7, V8, V4, V3, V2, V1, ('Idris.Idris2.Core.Env':'un--defined'(V0, V7, V3)))) end(E0, E1)) end.
'un--checkLocal'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> ('un--localHelper'(V0, V1, V2, V3, V4, V5, V6, V9, V10, V12, fun (V15) -> ('Idris.Idris2.TTImp.Elab.Check':'un--check'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V15, V10, V13, V14)) end)).
'un--checkCaseLocal'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16) -> begin (V22 = begin (V17 = V1), fun (V18) -> begin (V21 = (begin (V19 = V17), fun (V20) -> ('erlang':'get'(V19)) end end(V18))), {'Prelude.Types.Right', V21} end end end), fun (V23) -> begin (V24 = (V22(V23))), case V24 of {'Prelude.Types.Left', V25} -> {'Prelude.Types.Left', V25}; {'Prelude.Types.Right', V26} -> (begin (V129 = begin (V59 = ('Idris.Idris2.Core.Context':'un--lookupCtxtExact'(V13, case V26 of {'Core.Context.MkDefs', V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40, V41, V42, V43, V44, V45, V46, V47, V48, V49, V50, V51, V52, V53, V54, V55, V56, V57, V58} -> V27 end))), fun (V60) -> begin (V61 = (V59(V60))), case V61 of {'Prelude.Types.Left', V62} -> {'Prelude.Types.Left', V62}; {'Prelude.Types.Right', V63} -> (begin (V128 = case V63 of {'Prelude.Types.Just', V64} -> begin (V87 = ('Idris.Idris2.Data.Maybe':'un--fromMaybe'(fun () -> {'Core.TT.Func'} end, ('Idris.Idris2.Core.Context.Context':'un--defNameType'(case V64 of {'Core.Context.Context.MkGlobalDef', V65, V66, V67, V68, V69, V70, V71, V72, V73, V74, V75, V76, V77, V78, V79, V80, V81, V82, V83, V84, V85, V86} -> V82 end))))), begin (V88 = {'Core.TT.Ref', V11, V87, V13}), begin (V89 = ('un--getLocalTerm'(V0, V1, V11, V10, V88, V14))), fun (V90) -> begin (V91 = (V89(V90))), case V91 of {'Prelude.Types.Left', V92} -> {'Prelude.Types.Left', V92}; {'Prelude.Types.Right', V93} -> (begin (V127 = case V93 of {'Builtin.MkPair', V94, V95} -> begin (V105 = ('Idris.Idris2.Core.Context.Log':'un--log'(V1, (begin (V97 = fun (V96) -> V96 end), fun (V98) -> (V97(V98)) end end(<<"elab.local"/utf8>>)), 5, fun () -> <<(begin (V100 = fun (V99) -> V99 end), fun (V101) -> (V100(V101)) end end(<<"Updating case local "/utf8>>))/binary, <<('Idris.Idris2.Core.Name':'dn--un--show_Show_Name'(V12))/binary, <<<<" "/utf8>>/binary, ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_(List $a)'({'Prelude.Show.MkShow', fun (V102) -> ('Idris.Idris2.Core.TT':'dn--un--show_Show_(Var $ns)'(V102)) end, fun (V103) -> fun (V104) -> ('Idris.Idris2.Core.TT':'dn--un--showPrec_Show_(Var $ns)'(V103, V104)) end end}, V95))/binary>>/binary>>/binary>> end))), fun (V106) -> begin (V107 = (V105(V106))), case V107 of {'Prelude.Types.Left', V108} -> {'Prelude.Types.Left', V108}; {'Prelude.Types.Right', V109} -> (begin (V126 = begin (V116 = ('Idris.Idris2.Core.Normalise':'un--logTermNF'(V0, V1, (begin (V111 = fun (V110) -> V110 end), fun (V112) -> (V111(V112)) end end(<<"elab.local"/utf8>>)), 5, fun () -> (begin (V114 = fun (V113) -> V113 end), fun (V115) -> (V114(V115)) end end(<<"To"/utf8>>)) end, V10, V94))), fun (V117) -> begin (V118 = (V116(V117))), case V118 of {'Prelude.Types.Left', V119} -> {'Prelude.Types.Left', V119}; {'Prelude.Types.Right', V120} -> (begin (V125 = begin (V124 = begin (V121 = V9), [{'Builtin.MkPair', V12, {'Builtin.MkPair', {'Prelude.Types.Just', V13}, {'Builtin.MkPair', V95, fun (V122) -> fun (V123) -> V94 end end}}} | V121] end), ('Idris.Idris2.TTImp.Elab.Check':'un--check'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V124, V10, V15, V16)) end), V125 end(V117)) end end end end), V126 end(V106)) end end end end end), V127 end(V90)) end end end end end end; {'Prelude.Types.Nothing'} -> ('Idris.Idris2.TTImp.Elab.Check':'un--check'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V15, V16)) end), V128 end(V60)) end end end end), V129 end(V23)) end end end end.
