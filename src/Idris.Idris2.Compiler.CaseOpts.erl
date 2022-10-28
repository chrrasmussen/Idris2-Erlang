-module('Idris.Idris2.Compiler.CaseOpts').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--9600-4330--in--un--updateAlt'/6,
  'nested--9533-4270--in--un--updateAlt'/6,
  'nested--9850-4545--in--un--go'/3,
  'nested--9401-4143--in--un--doCaseLam'/3,
  'nested--8747-3774--in--un--defLam'/6,
  'nested--8747-3552--in--un--defLam'/6,
  'nested--9643-4457--in--un--constCase'/7,
  'nested--9643-4361--in--un--conCase'/7,
  'nested--9643-4458--in--un--canCaseOfCase'/7,
  'nested--9643-4362--in--un--canCaseOfCase'/7,
  'un--tryLiftOutConst'/2,
  'un--tryLiftOut'/2,
  'un--tryLiftDef'/2,
  'un--tryCaseOfCase'/1,
  'un--shiftVar'/3,
  'un--shiftUnder'/2,
  'un--shiftBinderConstAlt'/4,
  'un--shiftBinderConAlt'/4,
  'un--shiftBinder'/4,
  'un--liftOutLambda'/3,
  'un--getName'/1,
  'un--doCaseOfConstCase'/5,
  'un--doCaseOfCase'/5,
  'un--caseOfCase'/1,
  'un--caseLamDef'/2,
  'un--caseLamConstAlt'/2,
  'un--caseLamConAlt'/2,
  'un--caseLam'/2,
  'un--allLamsConst'/1,
  'un--allLams'/1
]).
'nested--9600-4330--in--un--updateAlt'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Core.CompileExpr.MkConstAlt', V6, V7} -> {'Core.CompileExpr.MkConstAlt', V6, {'Core.CompileExpr.CConstCase', V4, V7, V1, V0}} end.
'nested--9533-4270--in--un--updateAlt'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Core.CompileExpr.MkConAlt', V6, V7, V8, V9, V10} -> {'Core.CompileExpr.MkConAlt', V6, V7, V8, V9, {'Core.CompileExpr.CConCase', V4, V10, ((begin (V16 = fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V14, V15)) end end end end), fun (V17) -> fun (V18) -> ((((V16('erased'))('erased'))(V17))(V18)) end end end(fun (V11) -> ('Idris.Idris2.Core.CompileExpr':'dn--un--weakenNs_Weaken_CConAlt'(('Idris.Idris2.Core.TT.SizeOf':'un--mkSizeOf'(V9)), V11)) end))(V1)), ((begin (V24 = fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V22, V23)) end end end end), fun (V25) -> fun (V26) -> ((((V24('erased'))('erased'))(V25))(V26)) end end end(fun (V19) -> ('Idris.Idris2.Core.CompileExpr':'dn--un--weakenNs_Weaken_CExp'(('Idris.Idris2.Core.TT.SizeOf':'un--mkSizeOf'(V9)), V19)) end))(V0))}} end.
'nested--9850-4545--in--un--go'(V0, V1, V2) -> case V1 of 0 -> V2; _ -> begin (V3 = (V1 - 1)), ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> V2 end, fun () -> fun (V4) -> ('nested--9850-4545--in--un--go'(V0, V3, V4)) end end, ('un--tryCaseOfCase'(V2)))) end end.
'nested--9401-4143--in--un--doCaseLam'(V0, V1, V2) -> case V2 of {'Core.CompileExpr.MkFun', V3, V4} -> begin (V5 = ('Idris.Idris2.Core.Core':'un--newRef'({'Compiler.CaseOpts.NextName'}, 0))), fun (V6) -> begin (V7 = (V5(V6))), case V7 of {'Prelude.Types.Left', V8} -> {'Prelude.Types.Left', V8}; {'Prelude.Types.Right', V9} -> (begin (V17 = begin (V10 = ('un--caseLam'(V9, V4))), fun (V11) -> begin (V12 = (V10(V11))), case V12 of {'Prelude.Types.Left', V13} -> {'Prelude.Types.Left', V13}; {'Prelude.Types.Right', V14} -> (begin (V16 = fun (V15) -> {'Prelude.Types.Right', {'Core.CompileExpr.MkFun', V3, V14}} end), V16 end(V11)) end end end end), V17 end(V6)) end end end end; _ -> fun (V18) -> {'Prelude.Types.Right', V2} end end.
'nested--8747-3774--in--un--defLam'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Prelude.Types.Nothing'} -> 1; {'Prelude.Types.Just', V6} -> case V6 of {'Core.CompileExpr.CLam', V7, V8, V9} -> 1; _ -> 0 end; _ -> 0 end.
'nested--8747-3552--in--un--defLam'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Prelude.Types.Nothing'} -> 1; {'Prelude.Types.Just', V6} -> case V6 of {'Core.CompileExpr.CLam', V7, V8, V9} -> 1; _ -> 0 end; _ -> 0 end.
'nested--9643-4457--in--un--constCase'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Core.CompileExpr.MkConstAlt', V7, V8} -> case V8 of {'Core.CompileExpr.CPrimVal', V9, V10} -> 1; _ -> 0 end; _ -> 0 end.
'nested--9643-4361--in--un--conCase'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Core.CompileExpr.MkConAlt', V7, V8, V9, V10, V11} -> case V11 of {'Core.CompileExpr.CCon', V12, V13, V14, V15, V16} -> 1; _ -> 0 end; _ -> 0 end.
'nested--9643-4458--in--un--canCaseOfCase'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of [] -> 1; [E0 | E1] -> (fun (V7, V8) -> case V8 of [] -> 1; _ -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V9) -> fun (V10) -> ('Idris.Idris2.Prelude.Interfaces.Bool.Semigroup':'dn--un--<+>_Semigroup_AllBool'(V9, V10)) end end, 1}, fun (V11) -> ('nested--9643-4457--in--un--constCase'(V0, V1, V2, V3, V4, V5, V11)) end, V6)) end end(E0, E1)); _ -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.Interfaces.Bool.Semigroup':'dn--un--<+>_Semigroup_AllBool'(V12, V13)) end end, 1}, fun (V14) -> ('nested--9643-4457--in--un--constCase'(V0, V1, V2, V3, V4, V5, V14)) end, V6)) end.
'nested--9643-4362--in--un--canCaseOfCase'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of [] -> 1; [E0 | E1] -> (fun (V7, V8) -> case V8 of [] -> 1; _ -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V9) -> fun (V10) -> ('Idris.Idris2.Prelude.Interfaces.Bool.Semigroup':'dn--un--<+>_Semigroup_AllBool'(V9, V10)) end end, 1}, fun (V11) -> ('nested--9643-4361--in--un--conCase'(V0, V1, V2, V3, V4, V5, V11)) end, V6)) end end(E0, E1)); _ -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.Interfaces.Bool.Semigroup':'dn--un--<+>_Semigroup_AllBool'(V12, V13)) end end, 1}, fun (V14) -> ('nested--9643-4361--in--un--conCase'(V0, V1, V2, V3, V4, V5, V14)) end, V6)) end.
'un--tryLiftOutConst'(V0, V1) -> case V1 of [] -> {'Prelude.Types.Just', []}; [E0 | E1] -> (fun (V2, V3) -> case V2 of {'Core.CompileExpr.MkConstAlt', V4, V5} -> case V5 of {'Core.CompileExpr.CLam', V6, V7, V8} -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('un--tryLiftOutConst'(V0, V3)), fun (V9) -> begin (V10 = ('un--liftOutLambda'([], V0, V8))), {'Prelude.Types.Just', [{'Core.CompileExpr.MkConstAlt', V4, V10} | V9]} end end)); _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end end(E0, E1)); _ -> {'Prelude.Types.Nothing'} end.
'un--tryLiftOut'(V0, V1) -> case V1 of [] -> {'Prelude.Types.Just', []}; [E0 | E1] -> (fun (V2, V3) -> case V2 of {'Core.CompileExpr.MkConAlt', V4, V5, V6, V7, V8} -> case V8 of {'Core.CompileExpr.CLam', V9, V10, V11} -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('un--tryLiftOut'(V0, V3)), fun (V12) -> begin (V13 = ('un--liftOutLambda'(V7, V0, V11))), {'Prelude.Types.Just', [{'Core.CompileExpr.MkConAlt', V4, V5, V6, V7, V13} | V12]} end end)); _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end end(E0, E1)); _ -> {'Prelude.Types.Nothing'} end.
'un--tryLiftDef'(V0, V1) -> case V1 of {'Prelude.Types.Nothing'} -> {'Prelude.Types.Just', {'Prelude.Types.Nothing'}}; {'Prelude.Types.Just', V2} -> case V2 of {'Core.CompileExpr.CLam', V3, V4, V5} -> begin (V6 = ('un--liftOutLambda'([], V0, V5))), {'Prelude.Types.Just', {'Prelude.Types.Just', V6}} end; _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end.
'un--tryCaseOfCase'(V0) -> case V0 of {'Core.CompileExpr.CConCase', V1, V2, V3, V4} -> case V2 of {'Core.CompileExpr.CConCase', V5, V6, V7, V8} -> case V8 of {'Prelude.Types.Nothing'} -> case ('nested--9643-4362--in--un--canCaseOfCase'(V7, V6, V5, V4, V3, V1, V7)) of 1 -> {'Prelude.Types.Just', ('un--doCaseOfCase'(V5, V6, V7, V3, V4))}; 0 -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end; {'Core.CompileExpr.CConstCase', V9, V10, V11, V12} -> case V10 of {'Core.CompileExpr.CConstCase', V13, V14, V15, V16} -> case V16 of {'Prelude.Types.Nothing'} -> case ('nested--9643-4458--in--un--canCaseOfCase'(V15, V14, V13, V12, V11, V9, V15)) of 1 -> {'Prelude.Types.Just', ('un--doCaseOfConstCase'(V13, V14, V15, V11, V12))}; 0 -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end.
'un--shiftVar'(V0, V1, V2) -> case V0 of [] -> ('un--shiftUnder'(V1, V2)); [E0 | E1] -> (fun (V3, V4) -> case V2 of 0 -> 0; _ -> begin (V5 = (V2 - 1)), begin (V6 = ('un--shiftVar'(V4, V1, V5))), (V6 + 1) end end end end(E0, E1)) end.
'un--shiftUnder'(V0, V1) -> case V1 of 0 -> ('Idris.Idris2.Core.TT':'un--weakenNVar'(('Idris.Idris2.Core.TT.SizeOf':'un--mkSizeOf'(V0)), 0)); _ -> begin (V2 = (V1 - 1)), ('Idris.Idris2.Core.TT':'un--insertNVar'(('Idris.Idris2.Core.TT.SizeOf':'un--mkSizeOf'(V0)), V2)) end end.
'un--shiftBinderConstAlt'(V0, V1, V2, V3) -> case V3 of {'Core.CompileExpr.MkConstAlt', V4, V5} -> {'Core.CompileExpr.MkConstAlt', V4, ('un--shiftBinder'(V0, V1, V2, V5))} end.
'un--shiftBinderConAlt'(V0, V1, V2, V3) -> case V3 of {'Core.CompileExpr.MkConAlt', V4, V5, V6, V7, V8} -> begin (V9 = V8), {'Core.CompileExpr.MkConAlt', V4, V5, V6, V7, ('un--shiftBinder'(('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(V7, V0)), V1, V2, V9))} end end.
'un--shiftBinder'(V0, V1, V2, V3) -> case V3 of {'Core.CompileExpr.CLocal', V4, V5} -> begin (V6 = ('un--shiftVar'(V0, V1, V4))), {'Core.CompileExpr.CLocal', V6, V5} end; {'Core.CompileExpr.CRef', V7, V8} -> {'Core.CompileExpr.CRef', V7, V8}; {'Core.CompileExpr.CLam', V9, V10, V11} -> {'Core.CompileExpr.CLam', V9, V10, ('un--shiftBinder'([V10 | V0], V1, V2, V11))}; {'Core.CompileExpr.CLet', V12, V13, V14, V15, V16} -> {'Core.CompileExpr.CLet', V12, V13, V14, ('un--shiftBinder'(V0, V1, V2, V15)), ('un--shiftBinder'([V13 | V0], V1, V2, V16))}; {'Core.CompileExpr.CApp', V17, V18, V19} -> {'Core.CompileExpr.CApp', V17, ('un--shiftBinder'(V0, V1, V2, V18)), ((begin (V25 = fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V23, V24)) end end end end), fun (V26) -> fun (V27) -> ((((V25('erased'))('erased'))(V26))(V27)) end end end(fun (V20) -> ('un--shiftBinder'(V0, V1, V2, V20)) end))(V19))}; {'Core.CompileExpr.CCon', V28, V29, V30, V31, V32} -> {'Core.CompileExpr.CCon', V28, V29, V30, V31, ((begin (V38 = fun (V34) -> fun (V35) -> fun (V36) -> fun (V37) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V36, V37)) end end end end), fun (V39) -> fun (V40) -> ((((V38('erased'))('erased'))(V39))(V40)) end end end(fun (V33) -> ('un--shiftBinder'(V0, V1, V2, V33)) end))(V32))}; {'Core.CompileExpr.COp', V41, V42, V43, V44} -> {'Core.CompileExpr.COp', V41, V42, V43, ('Idris.Idris2.Data.Vect':'dn--un--map_Functor_(Vect $n)'(fun (V45) -> ('un--shiftBinder'(V0, V1, V2, V45)) end, V44))}; {'Core.CompileExpr.CExtPrim', V46, V47, V48} -> {'Core.CompileExpr.CExtPrim', V46, V47, ((begin (V54 = fun (V50) -> fun (V51) -> fun (V52) -> fun (V53) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V52, V53)) end end end end), fun (V55) -> fun (V56) -> ((((V54('erased'))('erased'))(V55))(V56)) end end end(fun (V49) -> ('un--shiftBinder'(V0, V1, V2, V49)) end))(V48))}; {'Core.CompileExpr.CForce', V57, V58, V59} -> {'Core.CompileExpr.CForce', V57, V58, ('un--shiftBinder'(V0, V1, V2, V59))}; {'Core.CompileExpr.CDelay', V60, V61, V62} -> {'Core.CompileExpr.CDelay', V60, V61, ('un--shiftBinder'(V0, V1, V2, V62))}; {'Core.CompileExpr.CConCase', V63, V64, V65, V66} -> {'Core.CompileExpr.CConCase', V63, ('un--shiftBinder'(V0, V1, V2, V64)), ((begin (V72 = fun (V68) -> fun (V69) -> fun (V70) -> fun (V71) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V70, V71)) end end end end), fun (V73) -> fun (V74) -> ((((V72('erased'))('erased'))(V73))(V74)) end end end(fun (V67) -> ('un--shiftBinderConAlt'(V0, V1, V2, V67)) end))(V65)), ((begin (V80 = fun (V76) -> fun (V77) -> fun (V78) -> fun (V79) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V78, V79)) end end end end), fun (V81) -> fun (V82) -> ((((V80('erased'))('erased'))(V81))(V82)) end end end(fun (V75) -> ('un--shiftBinder'(V0, V1, V2, V75)) end))(V66))}; {'Core.CompileExpr.CConstCase', V83, V84, V85, V86} -> {'Core.CompileExpr.CConstCase', V83, ('un--shiftBinder'(V0, V1, V2, V84)), ((begin (V92 = fun (V88) -> fun (V89) -> fun (V90) -> fun (V91) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V90, V91)) end end end end), fun (V93) -> fun (V94) -> ((((V92('erased'))('erased'))(V93))(V94)) end end end(fun (V87) -> ('un--shiftBinderConstAlt'(V0, V1, V2, V87)) end))(V85)), ((begin (V100 = fun (V96) -> fun (V97) -> fun (V98) -> fun (V99) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V98, V99)) end end end end), fun (V101) -> fun (V102) -> ((((V100('erased'))('erased'))(V101))(V102)) end end end(fun (V95) -> ('un--shiftBinder'(V0, V1, V2, V95)) end))(V86))}; {'Core.CompileExpr.CPrimVal', V103, V104} -> {'Core.CompileExpr.CPrimVal', V103, V104}; {'Core.CompileExpr.CErased', V105} -> {'Core.CompileExpr.CErased', V105}; {'Core.CompileExpr.CCrash', V106, V107} -> {'Core.CompileExpr.CCrash', V106, V107} end.
'un--liftOutLambda'(V0, V1, V2) -> ('un--shiftBinder'([], V0, V1, V2)).
'un--getName'(V0) -> begin (V6 = begin (V1 = V0), fun (V2) -> begin (V5 = (begin (V3 = V1), fun (V4) -> ('erlang':'get'(V3)) end end(V2))), {'Prelude.Types.Right', V5} end end end), fun (V7) -> begin (V8 = (V6(V7))), case V8 of {'Prelude.Types.Left', V9} -> {'Prelude.Types.Left', V9}; {'Prelude.Types.Right', V10} -> (begin (V24 = begin (V17 = begin (V11 = V0), fun (V12) -> begin (V16 = (begin (V13 = V11), fun (V14) -> ('erlang':'put'(V13, begin (V15 = (V10 + 1)), case ((V15 band 9223372036854775808) =/= 0) of 'true' -> (V15 bor -9223372036854775808); _ -> (V15 band 9223372036854775807) end end)) end end(V12))), {'Prelude.Types.Right', V16} end end end), fun (V18) -> begin (V19 = (V17(V18))), case V19 of {'Prelude.Types.Left', V20} -> {'Prelude.Types.Left', V20}; {'Prelude.Types.Right', V21} -> (begin (V23 = fun (V22) -> {'Prelude.Types.Right', {'Core.Name.MN', <<"clam"/utf8>>, V10}} end), V23 end(V18)) end end end end), V24 end(V7)) end end end end.
'un--doCaseOfConstCase'(V0, V1, V2, V3, V4) -> {'Core.CompileExpr.CConstCase', V0, V1, ((begin (V10 = fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V8, V9)) end end end end), fun (V11) -> fun (V12) -> ((((V10('erased'))('erased'))(V11))(V12)) end end end(fun (V5) -> ('nested--9600-4330--in--un--updateAlt'(V4, V3, V2, V1, V0, V5)) end))(V2)), {'Prelude.Types.Nothing'}}.
'un--doCaseOfCase'(V0, V1, V2, V3, V4) -> {'Core.CompileExpr.CConCase', V0, V1, ((begin (V10 = fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V8, V9)) end end end end), fun (V11) -> fun (V12) -> ((((V10('erased'))('erased'))(V11))(V12)) end end end(fun (V5) -> ('nested--9533-4270--in--un--updateAlt'(V4, V3, V2, V1, V0, V5)) end))(V2)), {'Prelude.Types.Nothing'}}.
'un--caseOfCase'(V0) -> ('nested--9850-4545--in--un--go'(V0, 5, V0)).
'un--caseLamDef'(V0, V1) -> begin (V7 = begin (V2 = V0), fun (V3) -> begin (V6 = (begin (V4 = V2), fun (V5) -> ('erlang':'get'(V4)) end end(V3))), {'Prelude.Types.Right', V6} end end end), fun (V8) -> begin (V9 = (V7(V8))), case V9 of {'Prelude.Types.Left', V10} -> {'Prelude.Types.Left', V10}; {'Prelude.Types.Right', V11} -> (begin (V82 = begin (V44 = ('Idris.Idris2.Core.Context':'un--lookupCtxtExact'(V1, case V11 of {'Core.Context.MkDefs', V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40, V41, V42, V43} -> V12 end))), fun (V45) -> begin (V46 = (V44(V45))), case V46 of {'Prelude.Types.Left', V47} -> {'Prelude.Types.Left', V47}; {'Prelude.Types.Right', V48} -> (begin (V81 = case V48 of {'Prelude.Types.Just', V49} -> case V49 of {'Core.Context.Context.MkGlobalDef', V50, V51, V52, V53, V54, V55, V56, V57, V58, V59, V60, V61, V62, V63, V64, V65, V66, V67, V68, V69, V70, V71} -> case V68 of {'Prelude.Types.Just', V72} -> begin (V73 = ('nested--9401-4143--in--un--doCaseLam'(V1, V0, V72))), fun (V74) -> begin (V75 = (V73(V74))), case V75 of {'Prelude.Types.Left', V76} -> {'Prelude.Types.Left', V76}; {'Prelude.Types.Right', V77} -> (begin (V78 = ('Idris.Idris2.Core.Context':'un--setCompiled'(V0, V1, V77))), V78 end(V74)) end end end end; {'Prelude.Types.Nothing'} -> fun (V79) -> {'Prelude.Types.Right', {'Builtin.MkUnit'}} end end end; {'Prelude.Types.Nothing'} -> fun (V80) -> {'Prelude.Types.Right', {'Builtin.MkUnit'}} end end), V81 end(V45)) end end end end), V82 end(V8)) end end end end.
'un--caseLamConstAlt'(V0, V1) -> case V1 of {'Core.CompileExpr.MkConstAlt', V2, V3} -> begin (V4 = ('un--caseLam'(V0, V3))), ((begin (V20 = fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V17, V18, V19)) end end end end end), fun (V21) -> fun (V22) -> ((((V20('erased'))('erased'))(V21))(V22)) end end end((begin (V12 = fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> case V9 of {'Prelude.Types.Left', V10} -> {'Prelude.Types.Left', V10}; {'Prelude.Types.Right', V11} -> {'Prelude.Types.Right', (V8(V11))} end end end end end), fun (V13) -> fun (V14) -> ((((V12('erased'))('erased'))(V13))(V14)) end end end(fun (V5) -> {'Core.CompileExpr.MkConstAlt', V2, V5} end))))(V4)) end end.
'un--caseLamConAlt'(V0, V1) -> case V1 of {'Core.CompileExpr.MkConAlt', V2, V3, V4, V5, V6} -> begin (V7 = ('un--caseLam'(V0, V6))), ((begin (V23 = fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V20, V21, V22)) end end end end end), fun (V24) -> fun (V25) -> ((((V23('erased'))('erased'))(V24))(V25)) end end end((begin (V15 = fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> case V12 of {'Prelude.Types.Left', V13} -> {'Prelude.Types.Left', V13}; {'Prelude.Types.Right', V14} -> {'Prelude.Types.Right', (V11(V14))} end end end end end), fun (V16) -> fun (V17) -> ((((V15('erased'))('erased'))(V16))(V17)) end end end(fun (V8) -> {'Core.CompileExpr.MkConAlt', V2, V3, V4, V5, V8} end))))(V7)) end end.
'un--caseLam'(V0, V1) -> case V1 of {'Core.CompileExpr.CConCase', V2, V3, V4, V5} -> case case ('un--allLams'(V4)) of 1 -> ('nested--8747-3552--in--un--defLam'(V5, V4, V3, V2, V0, V5)); 0 -> 0 end of 1 -> begin (V6 = ('un--getName'(V0))), fun (V7) -> begin (V8 = (V6(V7))), case V8 of {'Prelude.Types.Left', V9} -> {'Prelude.Types.Left', V9}; {'Prelude.Types.Right', V10} -> (begin (V50 = case ('un--tryLiftOut'(V10, V4)) of {'Prelude.Types.Just', V11} -> case ('un--tryLiftDef'(V10, V5)) of {'Prelude.Types.Just', V12} -> begin (V14 = ('Idris.Idris2.Core.Core':'un--traverse\x{27}'(fun (V13) -> ('un--caseLamConAlt'(V0, V13)) end, V11, []))), fun (V15) -> begin (V16 = (V14(V15))), case V16 of {'Prelude.Types.Left', V17} -> {'Prelude.Types.Left', V17}; {'Prelude.Types.Right', V18} -> (begin (V47 = begin (V40 = case V12 of {'Prelude.Types.Nothing'} -> fun (V19) -> {'Prelude.Types.Right', {'Prelude.Types.Nothing'}} end; {'Prelude.Types.Just', V20} -> begin (V21 = ('un--caseLam'(V0, V20))), ((begin (V37 = fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> fun (V36) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V34, V35, V36)) end end end end end), fun (V38) -> fun (V39) -> ((((V37('erased'))('erased'))(V38))(V39)) end end end((begin (V29 = fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> case V26 of {'Prelude.Types.Left', V27} -> {'Prelude.Types.Left', V27}; {'Prelude.Types.Right', V28} -> {'Prelude.Types.Right', (V25(V28))} end end end end end), fun (V30) -> fun (V31) -> ((((V29('erased'))('erased'))(V30))(V31)) end end end(fun (V22) -> {'Prelude.Types.Just', V22} end))))(V21)) end end), fun (V41) -> begin (V42 = (V40(V41))), case V42 of {'Prelude.Types.Left', V43} -> {'Prelude.Types.Left', V43}; {'Prelude.Types.Right', V44} -> (begin (V46 = fun (V45) -> {'Prelude.Types.Right', {'Core.CompileExpr.CLam', V2, V10, {'Core.CompileExpr.CConCase', V2, ('Idris.Idris2.Core.CompileExpr':'dn--un--weaken_Weaken_CExp'(V3)), V18, V44}}} end), V46 end(V41)) end end end end), V47 end(V15)) end end end end; {'Prelude.Types.Nothing'} -> fun (V48) -> ('Idris.Idris2.Core.Core':'dn--un--throw_Catchable_Core_Error'({'Core.Core.InternalError', <<"Can\x{27}t happen caseLam 2"/utf8>>}, V48)) end end; {'Prelude.Types.Nothing'} -> fun (V49) -> ('Idris.Idris2.Core.Core':'dn--un--throw_Catchable_Core_Error'({'Core.Core.InternalError', <<"Can\x{27}t happen caseLam 1"/utf8>>}, V49)) end end), V50 end(V7)) end end end end; 0 -> begin (V51 = ('un--caseLam'(V0, V3))), fun (V52) -> begin (V53 = (V51(V52))), case V53 of {'Prelude.Types.Left', V54} -> {'Prelude.Types.Left', V54}; {'Prelude.Types.Right', V55} -> (begin (V91 = begin (V57 = ('Idris.Idris2.Core.Core':'un--traverse\x{27}'(fun (V56) -> ('un--caseLamConAlt'(V0, V56)) end, V4, []))), fun (V58) -> begin (V59 = (V57(V58))), case V59 of {'Prelude.Types.Left', V60} -> {'Prelude.Types.Left', V60}; {'Prelude.Types.Right', V61} -> (begin (V90 = begin (V83 = case V5 of {'Prelude.Types.Nothing'} -> fun (V62) -> {'Prelude.Types.Right', {'Prelude.Types.Nothing'}} end; {'Prelude.Types.Just', V63} -> begin (V64 = ('un--caseLam'(V0, V63))), ((begin (V80 = fun (V75) -> fun (V76) -> fun (V77) -> fun (V78) -> fun (V79) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V77, V78, V79)) end end end end end), fun (V81) -> fun (V82) -> ((((V80('erased'))('erased'))(V81))(V82)) end end end((begin (V72 = fun (V66) -> fun (V67) -> fun (V68) -> fun (V69) -> case V69 of {'Prelude.Types.Left', V70} -> {'Prelude.Types.Left', V70}; {'Prelude.Types.Right', V71} -> {'Prelude.Types.Right', (V68(V71))} end end end end end), fun (V73) -> fun (V74) -> ((((V72('erased'))('erased'))(V73))(V74)) end end end(fun (V65) -> {'Prelude.Types.Just', V65} end))))(V64)) end end), fun (V84) -> begin (V85 = (V83(V84))), case V85 of {'Prelude.Types.Left', V86} -> {'Prelude.Types.Left', V86}; {'Prelude.Types.Right', V87} -> (begin (V89 = fun (V88) -> {'Prelude.Types.Right', {'Core.CompileExpr.CConCase', V2, V55, V61, V87}} end), V89 end(V84)) end end end end), V90 end(V58)) end end end end), V91 end(V52)) end end end end end; {'Core.CompileExpr.CConstCase', V92, V93, V94, V95} -> case case ('un--allLamsConst'(V94)) of 1 -> ('nested--8747-3774--in--un--defLam'(V95, V94, V93, V92, V0, V95)); 0 -> 0 end of 1 -> begin (V96 = ('un--getName'(V0))), fun (V97) -> begin (V98 = (V96(V97))), case V98 of {'Prelude.Types.Left', V99} -> {'Prelude.Types.Left', V99}; {'Prelude.Types.Right', V100} -> (begin (V140 = case ('un--tryLiftOutConst'(V100, V94)) of {'Prelude.Types.Just', V101} -> case ('un--tryLiftDef'(V100, V95)) of {'Prelude.Types.Just', V102} -> begin (V104 = ('Idris.Idris2.Core.Core':'un--traverse\x{27}'(fun (V103) -> ('un--caseLamConstAlt'(V0, V103)) end, V101, []))), fun (V105) -> begin (V106 = (V104(V105))), case V106 of {'Prelude.Types.Left', V107} -> {'Prelude.Types.Left', V107}; {'Prelude.Types.Right', V108} -> (begin (V137 = begin (V130 = case V102 of {'Prelude.Types.Nothing'} -> fun (V109) -> {'Prelude.Types.Right', {'Prelude.Types.Nothing'}} end; {'Prelude.Types.Just', V110} -> begin (V111 = ('un--caseLam'(V0, V110))), ((begin (V127 = fun (V122) -> fun (V123) -> fun (V124) -> fun (V125) -> fun (V126) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V124, V125, V126)) end end end end end), fun (V128) -> fun (V129) -> ((((V127('erased'))('erased'))(V128))(V129)) end end end((begin (V119 = fun (V113) -> fun (V114) -> fun (V115) -> fun (V116) -> case V116 of {'Prelude.Types.Left', V117} -> {'Prelude.Types.Left', V117}; {'Prelude.Types.Right', V118} -> {'Prelude.Types.Right', (V115(V118))} end end end end end), fun (V120) -> fun (V121) -> ((((V119('erased'))('erased'))(V120))(V121)) end end end(fun (V112) -> {'Prelude.Types.Just', V112} end))))(V111)) end end), fun (V131) -> begin (V132 = (V130(V131))), case V132 of {'Prelude.Types.Left', V133} -> {'Prelude.Types.Left', V133}; {'Prelude.Types.Right', V134} -> (begin (V136 = fun (V135) -> {'Prelude.Types.Right', {'Core.CompileExpr.CLam', V92, V100, {'Core.CompileExpr.CConstCase', V92, ('Idris.Idris2.Core.CompileExpr':'dn--un--weaken_Weaken_CExp'(V93)), V108, V134}}} end), V136 end(V131)) end end end end), V137 end(V105)) end end end end; {'Prelude.Types.Nothing'} -> fun (V138) -> ('Idris.Idris2.Core.Core':'dn--un--throw_Catchable_Core_Error'({'Core.Core.InternalError', <<"Can\x{27}t happen caseLam 2"/utf8>>}, V138)) end end; {'Prelude.Types.Nothing'} -> fun (V139) -> ('Idris.Idris2.Core.Core':'dn--un--throw_Catchable_Core_Error'({'Core.Core.InternalError', <<"Can\x{27}t happen caseLam 1"/utf8>>}, V139)) end end), V140 end(V97)) end end end end; 0 -> begin (V141 = ('un--caseLam'(V0, V93))), fun (V142) -> begin (V143 = (V141(V142))), case V143 of {'Prelude.Types.Left', V144} -> {'Prelude.Types.Left', V144}; {'Prelude.Types.Right', V145} -> (begin (V181 = begin (V147 = ('Idris.Idris2.Core.Core':'un--traverse\x{27}'(fun (V146) -> ('un--caseLamConstAlt'(V0, V146)) end, V94, []))), fun (V148) -> begin (V149 = (V147(V148))), case V149 of {'Prelude.Types.Left', V150} -> {'Prelude.Types.Left', V150}; {'Prelude.Types.Right', V151} -> (begin (V180 = begin (V173 = case V95 of {'Prelude.Types.Nothing'} -> fun (V152) -> {'Prelude.Types.Right', {'Prelude.Types.Nothing'}} end; {'Prelude.Types.Just', V153} -> begin (V154 = ('un--caseLam'(V0, V153))), ((begin (V170 = fun (V165) -> fun (V166) -> fun (V167) -> fun (V168) -> fun (V169) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V167, V168, V169)) end end end end end), fun (V171) -> fun (V172) -> ((((V170('erased'))('erased'))(V171))(V172)) end end end((begin (V162 = fun (V156) -> fun (V157) -> fun (V158) -> fun (V159) -> case V159 of {'Prelude.Types.Left', V160} -> {'Prelude.Types.Left', V160}; {'Prelude.Types.Right', V161} -> {'Prelude.Types.Right', (V158(V161))} end end end end end), fun (V163) -> fun (V164) -> ((((V162('erased'))('erased'))(V163))(V164)) end end end(fun (V155) -> {'Prelude.Types.Just', V155} end))))(V154)) end end), fun (V174) -> begin (V175 = (V173(V174))), case V175 of {'Prelude.Types.Left', V176} -> {'Prelude.Types.Left', V176}; {'Prelude.Types.Right', V177} -> (begin (V179 = fun (V178) -> {'Prelude.Types.Right', {'Core.CompileExpr.CConstCase', V92, V145, V151, V177}} end), V179 end(V174)) end end end end), V180 end(V148)) end end end end), V181 end(V142)) end end end end end; {'Core.CompileExpr.CLam', V182, V183, V184} -> begin (V185 = ('un--caseLam'(V0, V184))), ((begin (V201 = fun (V196) -> fun (V197) -> fun (V198) -> fun (V199) -> fun (V200) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V198, V199, V200)) end end end end end), fun (V202) -> fun (V203) -> ((((V201('erased'))('erased'))(V202))(V203)) end end end((begin (V193 = fun (V187) -> fun (V188) -> fun (V189) -> fun (V190) -> case V190 of {'Prelude.Types.Left', V191} -> {'Prelude.Types.Left', V191}; {'Prelude.Types.Right', V192} -> {'Prelude.Types.Right', (V189(V192))} end end end end end), fun (V194) -> fun (V195) -> ((((V193('erased'))('erased'))(V194))(V195)) end end end(fun (V186) -> {'Core.CompileExpr.CLam', V182, V183, V186} end))))(V185)) end; {'Core.CompileExpr.CLet', V204, V205, V206, V207, V208} -> ('Idris.Idris2.Core.Core':'un--<*>'(begin (V209 = ('un--caseLam'(V0, V207))), ((begin (V226 = fun (V221) -> fun (V222) -> fun (V223) -> fun (V224) -> fun (V225) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V223, V224, V225)) end end end end end), fun (V227) -> fun (V228) -> ((((V226('erased'))('erased'))(V227))(V228)) end end end((begin (V218 = fun (V212) -> fun (V213) -> fun (V214) -> fun (V215) -> case V215 of {'Prelude.Types.Left', V216} -> {'Prelude.Types.Left', V216}; {'Prelude.Types.Right', V217} -> {'Prelude.Types.Right', (V214(V217))} end end end end end), fun (V219) -> fun (V220) -> ((((V218('erased'))('erased'))(V219))(V220)) end end end(fun (V210) -> fun (V211) -> {'Core.CompileExpr.CLet', V204, V205, V206, V210, V211} end end))))(V209)) end, ('un--caseLam'(V0, V208)))); {'Core.CompileExpr.CApp', V229, V230, V231} -> ('Idris.Idris2.Core.Core':'un--<*>'(begin (V232 = ('un--caseLam'(V0, V230))), ((begin (V249 = fun (V244) -> fun (V245) -> fun (V246) -> fun (V247) -> fun (V248) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V246, V247, V248)) end end end end end), fun (V250) -> fun (V251) -> ((((V249('erased'))('erased'))(V250))(V251)) end end end((begin (V241 = fun (V235) -> fun (V236) -> fun (V237) -> fun (V238) -> case V238 of {'Prelude.Types.Left', V239} -> {'Prelude.Types.Left', V239}; {'Prelude.Types.Right', V240} -> {'Prelude.Types.Right', (V237(V240))} end end end end end), fun (V242) -> fun (V243) -> ((((V241('erased'))('erased'))(V242))(V243)) end end end(fun (V233) -> fun (V234) -> {'Core.CompileExpr.CApp', V229, V233, V234} end end))))(V232)) end, ('Idris.Idris2.Core.Core':'un--traverse\x{27}'(fun (V252) -> ('un--caseLam'(V0, V252)) end, V231, [])))); {'Core.CompileExpr.CCon', V253, V254, V255, V256, V257} -> begin (V259 = ('Idris.Idris2.Core.Core':'un--traverse\x{27}'(fun (V258) -> ('un--caseLam'(V0, V258)) end, V257, []))), ((begin (V275 = fun (V270) -> fun (V271) -> fun (V272) -> fun (V273) -> fun (V274) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V272, V273, V274)) end end end end end), fun (V276) -> fun (V277) -> ((((V275('erased'))('erased'))(V276))(V277)) end end end((begin (V267 = fun (V261) -> fun (V262) -> fun (V263) -> fun (V264) -> case V264 of {'Prelude.Types.Left', V265} -> {'Prelude.Types.Left', V265}; {'Prelude.Types.Right', V266} -> {'Prelude.Types.Right', (V263(V266))} end end end end end), fun (V268) -> fun (V269) -> ((((V267('erased'))('erased'))(V268))(V269)) end end end(fun (V260) -> {'Core.CompileExpr.CCon', V253, V254, V255, V256, V260} end))))(V259)) end; {'Core.CompileExpr.COp', V278, V279, V280, V281} -> begin (V283 = ('Idris.Idris2.Core.Core':'un--traverseVect'(fun (V282) -> ('un--caseLam'(V0, V282)) end, V281))), ((begin (V299 = fun (V294) -> fun (V295) -> fun (V296) -> fun (V297) -> fun (V298) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V296, V297, V298)) end end end end end), fun (V300) -> fun (V301) -> ((((V299('erased'))('erased'))(V300))(V301)) end end end((begin (V291 = fun (V285) -> fun (V286) -> fun (V287) -> fun (V288) -> case V288 of {'Prelude.Types.Left', V289} -> {'Prelude.Types.Left', V289}; {'Prelude.Types.Right', V290} -> {'Prelude.Types.Right', (V287(V290))} end end end end end), fun (V292) -> fun (V293) -> ((((V291('erased'))('erased'))(V292))(V293)) end end end(fun (V284) -> {'Core.CompileExpr.COp', V278, V279, V280, V284} end))))(V283)) end; {'Core.CompileExpr.CExtPrim', V302, V303, V304} -> begin (V306 = ('Idris.Idris2.Core.Core':'un--traverse\x{27}'(fun (V305) -> ('un--caseLam'(V0, V305)) end, V304, []))), ((begin (V322 = fun (V317) -> fun (V318) -> fun (V319) -> fun (V320) -> fun (V321) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V319, V320, V321)) end end end end end), fun (V323) -> fun (V324) -> ((((V322('erased'))('erased'))(V323))(V324)) end end end((begin (V314 = fun (V308) -> fun (V309) -> fun (V310) -> fun (V311) -> case V311 of {'Prelude.Types.Left', V312} -> {'Prelude.Types.Left', V312}; {'Prelude.Types.Right', V313} -> {'Prelude.Types.Right', (V310(V313))} end end end end end), fun (V315) -> fun (V316) -> ((((V314('erased'))('erased'))(V315))(V316)) end end end(fun (V307) -> {'Core.CompileExpr.CExtPrim', V302, V303, V307} end))))(V306)) end; {'Core.CompileExpr.CForce', V325, V326, V327} -> begin (V328 = ('un--caseLam'(V0, V327))), ((begin (V344 = fun (V339) -> fun (V340) -> fun (V341) -> fun (V342) -> fun (V343) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V341, V342, V343)) end end end end end), fun (V345) -> fun (V346) -> ((((V344('erased'))('erased'))(V345))(V346)) end end end((begin (V336 = fun (V330) -> fun (V331) -> fun (V332) -> fun (V333) -> case V333 of {'Prelude.Types.Left', V334} -> {'Prelude.Types.Left', V334}; {'Prelude.Types.Right', V335} -> {'Prelude.Types.Right', (V332(V335))} end end end end end), fun (V337) -> fun (V338) -> ((((V336('erased'))('erased'))(V337))(V338)) end end end(fun (V329) -> {'Core.CompileExpr.CForce', V325, V326, V329} end))))(V328)) end; {'Core.CompileExpr.CDelay', V347, V348, V349} -> begin (V350 = ('un--caseLam'(V0, V349))), ((begin (V366 = fun (V361) -> fun (V362) -> fun (V363) -> fun (V364) -> fun (V365) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V363, V364, V365)) end end end end end), fun (V367) -> fun (V368) -> ((((V366('erased'))('erased'))(V367))(V368)) end end end((begin (V358 = fun (V352) -> fun (V353) -> fun (V354) -> fun (V355) -> case V355 of {'Prelude.Types.Left', V356} -> {'Prelude.Types.Left', V356}; {'Prelude.Types.Right', V357} -> {'Prelude.Types.Right', (V354(V357))} end end end end end), fun (V359) -> fun (V360) -> ((((V358('erased'))('erased'))(V359))(V360)) end end end(fun (V351) -> {'Core.CompileExpr.CDelay', V347, V348, V351} end))))(V350)) end; _ -> fun (V369) -> {'Prelude.Types.Right', V1} end end.
'un--allLamsConst'(V0) -> case V0 of [] -> 1; [E0 | E1] -> (fun (V1, V2) -> case V1 of {'Core.CompileExpr.MkConstAlt', V3, V4} -> case V4 of {'Core.CompileExpr.CLam', V5, V6, V7} -> ('un--allLamsConst'(V2)); _ -> 0 end; _ -> 0 end end(E0, E1)); _ -> 0 end.
'un--allLams'(V0) -> case V0 of [] -> 1; [E0 | E1] -> (fun (V1, V2) -> case V1 of {'Core.CompileExpr.MkConAlt', V3, V4, V5, V6, V7} -> case V7 of {'Core.CompileExpr.CLam', V8, V9, V10} -> ('un--allLams'(V2)); _ -> 0 end; _ -> 0 end end(E0, E1)); _ -> 0 end.
