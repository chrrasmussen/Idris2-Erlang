-module('Idris.Idris2.Core.Case.Util').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--6609-6739--in--un--emptyRHSalt'/6,
  'nested--6321-6499--in--un--addTy'/9,
  'un--tagIs'/2,
  'un--mkAlt'/4,
  'un--getCons'/4,
  'un--emptyRHS'/2
]).
'nested--6609-6739--in--un--emptyRHSalt'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Core.Case.CaseTree.ConCase', V6, V7, V8, V9} -> {'Core.Case.CaseTree.ConCase', V6, V7, V8, ('un--emptyRHS'(V4, V9))}; {'Core.Case.CaseTree.DelayCase', V10, V11, V12} -> {'Core.Case.CaseTree.DelayCase', V10, V11, ('un--emptyRHS'(V4, V12))}; {'Core.Case.CaseTree.ConstCase', V13, V14} -> {'Core.Case.CaseTree.ConstCase', V13, ('un--emptyRHS'(V4, V14))}; {'Core.Case.CaseTree.DefaultCase', V15} -> {'Core.Case.CaseTree.DefaultCase', ('un--emptyRHS'(V4, V15))} end.
'nested--6321-6499--in--un--addTy'(V0, V1, V2, V3, V4, V5, V6, V7, V8) -> begin (V41 = ('Idris.Idris2.Core.Context':'un--lookupCtxtExact'(V8, case V6 of {'Core.Context.MkDefs', V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40} -> V9 end))), fun (V42) -> begin (V43 = (V41(V42))), case V43 of {'Prelude.Types.Left', V44} -> {'Prelude.Types.Left', V44}; {'Prelude.Types.Right', V45} -> (begin (V74 = case V45 of {'Prelude.Types.Just', V46} -> fun (V47) -> case V46 of {'Core.Context.Context.MkGlobalDef', V48, V49, V50, V51, V52, V53, V54, V55, V56, V57, V58, V59, V60, V61, V62, V63, V64, V65, V66, V67, V68, V69} -> case V65 of {'Core.Context.Context.DCon', V70, V71, V72} -> {'Prelude.Types.Right', {'Prelude.Types.Just', {'Core.Case.Util.MkDataCon', V8, V70, V71}}}; _ -> {'Prelude.Types.Right', {'Prelude.Types.Nothing'}} end end end; _ -> fun (V73) -> {'Prelude.Types.Right', {'Prelude.Types.Nothing'}} end end), V74 end(V42)) end end end end.
'un--tagIs'(V0, V1) -> case V1 of {'Core.Case.CaseTree.ConCase', V2, V3, V4, V5} -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(V0, V3)); {'Core.Case.CaseTree.ConstCase', V6, V7} -> 0; {'Core.Case.CaseTree.DelayCase', V8, V9, V10} -> 0; {'Core.Case.CaseTree.DefaultCase', V11} -> 1 end.
'un--mkAlt'(V0, V1, V2, V3) -> case V3 of {'Core.Case.Util.MkDataCon', V4, V5, V6} -> {'Core.Case.CaseTree.ConCase', V4, V5, ((begin (V56 = fun (V52) -> fun (V53) -> fun (V54) -> fun (V55) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V54, V55)) end end end end), fun (V57) -> fun (V58) -> ((((V56('erased'))('erased'))(V57))(V58)) end end end(fun (V51) -> {'Core.Name.MN', <<"m"/utf8>>, V51} end))(('Idris.Idris2.Prelude.Types':'un--take'(V6, ('Idris.Idris2.Prelude.Types':'dn--un--rangeFrom_Range_$a'({'Builtin.MkPair', {'Prelude.Num.MkIntegral', {'Prelude.Num.MkNum', fun (V7) -> fun (V8) -> begin (V9 = (V7 + V8)), case ((V9 band 9223372036854775808) =/= 0) of 'true' -> (V9 bor -9223372036854775808); _ -> (V9 band 9223372036854775807) end end end end, fun (V10) -> fun (V11) -> begin (V12 = (V10 * V11)), case ((V12 band 9223372036854775808) =/= 0) of 'true' -> (V12 bor -9223372036854775808); _ -> (V12 band 9223372036854775807) end end end end, fun (V13) -> begin (V14 = V13), case ((V14 band 9223372036854775808) =/= 0) of 'true' -> (V14 bor -9223372036854775808); _ -> (V14 band 9223372036854775807) end end end}, fun (V15) -> fun (V16) -> ('Idris.Idris2.Prelude.Num':'dn--un--div_Integral_Int'(V15, V16)) end end, fun (V17) -> fun (V18) -> ('Idris.Idris2.Prelude.Num':'dn--un--mod_Integral_Int'(V17, V18)) end end}, {'Builtin.MkPair', {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V19) -> fun (V20) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(V19, V20)) end end, fun (V21) -> fun (V22) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Int'(V21, V22)) end end}, fun (V23) -> fun (V24) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Int'(V23, V24)) end end, fun (V25) -> fun (V26) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Int'(V25, V26)) end end, fun (V27) -> fun (V28) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord_Int'(V27, V28)) end end, fun (V29) -> fun (V30) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord_Int'(V29, V30)) end end, fun (V31) -> fun (V32) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord_Int'(V31, V32)) end end, fun (V33) -> fun (V34) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--max_Ord_Int'(V33, V34)) end end, fun (V35) -> fun (V36) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--min_Ord_Int'(V35, V36)) end end}, {'Prelude.Num.MkNeg', {'Prelude.Num.MkNum', fun (V37) -> fun (V38) -> begin (V39 = (V37 + V38)), case ((V39 band 9223372036854775808) =/= 0) of 'true' -> (V39 bor -9223372036854775808); _ -> (V39 band 9223372036854775807) end end end end, fun (V40) -> fun (V41) -> begin (V42 = (V40 * V41)), case ((V42 band 9223372036854775808) =/= 0) of 'true' -> (V42 bor -9223372036854775808); _ -> (V42 band 9223372036854775807) end end end end, fun (V43) -> begin (V44 = V43), case ((V44 band 9223372036854775808) =/= 0) of 'true' -> (V44 bor -9223372036854775808); _ -> (V44 band 9223372036854775807) end end end}, fun (V45) -> begin (V46 = (0 - V45)), case ((V46 band 9223372036854775808) =/= 0) of 'true' -> (V46 bor -9223372036854775808); _ -> (V46 band 9223372036854775807) end end end, fun (V47) -> fun (V48) -> begin (V49 = (V47 - V48)), case ((V49 band 9223372036854775808) =/= 0) of 'true' -> (V49 bor -9223372036854775808); _ -> (V49 band 9223372036854775807) end end end end}}}, begin (V50 = 0), case ((V50 band 9223372036854775808) =/= 0) of 'true' -> (V50 bor -9223372036854775808); _ -> (V50 band 9223372036854775807) end end)))))), ('Idris.Idris2.Core.Case.CaseTree':'dn--un--weakenNs_Weaken_CaseTree'(('Idris.Idris2.Core.TT.SizeOf':'un--map'(V6)), ('un--emptyRHS'(V1, V2))))} end.
'un--getCons'(V0, V1, V2, V3) -> case V3 of {'Core.Value.NTCon', V4, V5, V6, V7, V8} -> begin (V41 = ('Idris.Idris2.Core.Context':'un--lookupDefExact'(V5, case V2 of {'Core.Context.MkDefs', V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40} -> V9 end))), fun (V42) -> begin (V43 = (V41(V42))), case V43 of {'Prelude.Types.Left', V44} -> {'Prelude.Types.Left', V44}; {'Prelude.Types.Right', V45} -> (begin (V65 = case V45 of {'Prelude.Types.Just', V46} -> case V46 of {'Core.Context.Context.TCon', V47, V48, V49, V50, V51, V52, V53, V54} -> begin (V56 = ('Idris.Idris2.Core.Core':'un--traverse\x{27}'(fun (V55) -> ('nested--6321-6499--in--un--addTy'(V1, V4, V6, V7, V8, V5, V2, V0, V55)) end, V53, []))), fun (V57) -> begin (V58 = (V56(V57))), case V58 of {'Prelude.Types.Left', V59} -> {'Prelude.Types.Left', V59}; {'Prelude.Types.Right', V60} -> (begin (V62 = fun (V61) -> {'Prelude.Types.Right', ('Idris.Idris2.Data.List':'un--catMaybes'(V60))} end), V62 end(V57)) end end end end; _ -> fun (V63) -> ('Idris.Idris2.Core.Core':'dn--un--throw_Catchable_Core_Error'({'Core.Core.InternalError', <<"Called `getCons` on something that is not a Type constructor"/utf8>>}, V63)) end end; _ -> fun (V64) -> ('Idris.Idris2.Core.Core':'dn--un--throw_Catchable_Core_Error'({'Core.Core.InternalError', <<"Called `getCons` on something that is not a Type constructor"/utf8>>}, V64)) end end), V65 end(V42)) end end end end; _ -> fun (V66) -> {'Prelude.Types.Right', []} end end.
'un--emptyRHS'(V0, V1) -> case V1 of {'Core.Case.CaseTree.Case', V2, V3, V4, V5} -> {'Core.Case.CaseTree.Case', V2, V3, V4, ((begin (V11 = fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V9, V10)) end end end end), fun (V12) -> fun (V13) -> ((((V11('erased'))('erased'))(V12))(V13)) end end end(fun (V6) -> ('nested--6609-6739--in--un--emptyRHSalt'(V2, V5, V4, V3, V0, V6)) end))(V5))}; {'Core.Case.CaseTree.STerm', V14, V15} -> {'Core.Case.CaseTree.STerm', V14, {'Core.TT.Erased', V0, {'Core.TT.Placeholder'}}}; _ -> V1 end.
