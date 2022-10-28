-module('Idris.Idris2.Core.Transform').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--trans-14083'/8,
  'case--addMatch-13438'/4,
  'un--unload'/2,
  'un--tryReplace'/2,
  'un--tryApply'/2,
  'un--transLoop'/4,
  'un--trans'/5,
  'un--match'/3,
  'un--lookupMatch'/2,
  'un--applyTransforms'/3,
  'un--apply'/2,
  'un--addMatch'/3
]).
'case--trans-14083'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V7 of {'Prelude.Types.Nothing'} -> fun (V8) -> {'Prelude.Types.Right', ('un--unload'(V2, {'Core.TT.Ref', V1, {'Core.TT.Func'}, V0}))} end; {'Prelude.Types.Just', V9} -> begin (V10 = ('un--unload'(V2, {'Core.TT.Ref', V1, {'Core.TT.Func'}, V0}))), case ('un--apply'(V9, V10)) of {'Builtin.MkPair', V11, V12} -> begin (V29 = begin (V18 = begin (V13 = V4), fun (V14) -> begin (V17 = (begin (V15 = V13), fun (V16) -> ('erlang':'get'(V15)) end end(V14))), {'Prelude.Types.Right', V17} end end end), fun (V19) -> begin (V20 = (V18(V19))), case V20 of {'Prelude.Types.Left', V21} -> {'Prelude.Types.Left', V21}; {'Prelude.Types.Right', V22} -> (begin (V28 = begin (V23 = V4), fun (V24) -> begin (V27 = (begin (V25 = V23), fun (V26) -> ('erlang':'put'(V25, case V22 of 1 -> 1; 0 -> V11 end)) end end(V24))), {'Prelude.Types.Right', V27} end end end), V28 end(V19)) end end end end), fun (V30) -> begin (V31 = (V29(V30))), case V31 of {'Prelude.Types.Left', V32} -> {'Prelude.Types.Left', V32}; {'Prelude.Types.Right', V33} -> (begin (V35 = fun (V34) -> {'Prelude.Types.Right', V12} end), V35 end(V30)) end end end end end end end.
'case--addMatch-13438'(V0, V1, V2, V3) -> case V3 of {'Prelude.Types.Nothing'} -> {'Prelude.Types.Just', {'Core.Transform.Match', V2, V1, V0}}; {'Prelude.Types.Just', V4} -> case ('Idris.Idris2.Core.TT':'un--eqTerm'(V1, V4)) of 1 -> {'Prelude.Types.Just', V0}; 0 -> {'Prelude.Types.Nothing'} end end.
'un--unload'(V0, V1) -> case V0 of [] -> V1; [E0 | E1] -> (fun (V2, V3) -> case V2 of {'Builtin.MkPair', V4, V5} -> ('un--unload'(V3, {'Core.TT.App', V4, V1, V5})) end end(E0, E1)) end.
'un--tryReplace'(V0, V1) -> case V1 of {'Core.TT.Local', V2, V3, V4} -> ('un--lookupMatch'(V4, V0)); {'Core.TT.Ref', V5, V6, V7} -> {'Prelude.Types.Just', {'Core.TT.Ref', V5, V6, V7}}; {'Core.TT.Meta', V8, V9, V10, V11} -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('Idris.Idris2.Prelude.Types':'dn--un--traverse_Traversable_List'({'Prelude.Interfaces.MkApplicative', fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V14, V15)) end end end end, fun (V16) -> fun (V17) -> {'Prelude.Types.Just', V17} end end, fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> ('Idris.Idris2.Prelude.Types':'dn--un--<*>_Applicative_Maybe'(V20, V21)) end end end end}, fun (V22) -> ('un--tryReplace'(V0, V22)) end, V11)), fun (V23) -> {'Prelude.Types.Just', {'Core.TT.Meta', V8, V9, V10, V23}} end)); {'Core.TT.Bind', V24, V25, V26, V27} -> {'Prelude.Types.Nothing'}; {'Core.TT.App', V28, V29, V30} -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('un--tryReplace'(V0, V29)), fun (V31) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('un--tryReplace'(V0, V30)), fun (V32) -> {'Prelude.Types.Just', {'Core.TT.App', V28, V31, V32}} end)) end)); {'Core.TT.As', V33, V34, V35, V36} -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('un--tryReplace'(V0, V35)), fun (V37) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('un--tryReplace'(V0, V36)), fun (V38) -> {'Prelude.Types.Just', {'Core.TT.As', V33, V34, V37, V38}} end)) end)); {'Core.TT.TDelayed', V39, V40, V41} -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('un--tryReplace'(V0, V41)), fun (V42) -> {'Prelude.Types.Just', {'Core.TT.TDelayed', V39, V40, V42}} end)); {'Core.TT.TDelay', V43, V44, V45, V46} -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('un--tryReplace'(V0, V45)), fun (V47) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('un--tryReplace'(V0, V46)), fun (V48) -> {'Prelude.Types.Just', {'Core.TT.TDelay', V43, V44, V47, V48}} end)) end)); {'Core.TT.TForce', V49, V50, V51} -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('un--tryReplace'(V0, V51)), fun (V52) -> {'Prelude.Types.Just', {'Core.TT.TForce', V49, V50, V52}} end)); {'Core.TT.PrimVal', V53, V54} -> {'Prelude.Types.Just', {'Core.TT.PrimVal', V53, V54}}; {'Core.TT.Erased', V55, V56} -> case V56 of {'Core.TT.Impossible'} -> {'Prelude.Types.Just', {'Core.TT.Erased', V55, {'Core.TT.Impossible'}}}; {'Core.TT.Placeholder'} -> {'Prelude.Types.Just', {'Core.TT.Erased', V55, {'Core.TT.Placeholder'}}}; {'Core.TT.Dotted', V57} -> ((begin (V63 = fun (V59) -> fun (V60) -> fun (V61) -> fun (V62) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V61, V62)) end end end end), fun (V64) -> fun (V65) -> ((((V63('erased'))('erased'))(V64))(V65)) end end end(fun (V58) -> {'Core.TT.Erased', V55, {'Core.TT.Dotted', V58}} end))(('un--tryReplace'(V0, V57)))) end; {'Core.TT.TType', V66, V67} -> {'Prelude.Types.Just', {'Core.TT.TType', V66, V67}} end.
'un--tryApply'(V0, V1) -> case V0 of {'Core.Context.MkTransform', V2, V3, V4, V5, V6} -> begin (V7 = {'Core.Context.MkTransform', V2, V3, V4, V5, V6}), case ('un--match'({'Core.Transform.None'}, V5, V1)) of {'Prelude.Types.Just', V8} -> ('un--tryReplace'(V8, V6)); {'Prelude.Types.Nothing'} -> case V1 of {'Core.TT.App', V9, V10, V11} -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('un--tryApply'(V7, V10)), fun (V12) -> {'Prelude.Types.Just', {'Core.TT.App', V9, V12, V11}} end)); _ -> {'Prelude.Types.Nothing'} end end end end.
'un--transLoop'(V0, V1, V2, V3) -> case V1 of 0 -> fun (V4) -> {'Prelude.Types.Right', V3} end; _ -> begin (V5 = (V1 - 1)), begin (V6 = ('Idris.Idris2.Core.Core':'un--newRef'({'Core.Transform.Upd'}, 0))), fun (V7) -> begin (V8 = (V6(V7))), case V8 of {'Prelude.Types.Left', V9} -> {'Prelude.Types.Left', V9}; {'Prelude.Types.Right', V10} -> (begin (V29 = begin (V11 = ('un--trans'(V0, V10, V2, [], V3))), fun (V12) -> begin (V13 = (V11(V12))), case V13 of {'Prelude.Types.Left', V14} -> {'Prelude.Types.Left', V14}; {'Prelude.Types.Right', V15} -> (begin (V28 = begin (V21 = begin (V16 = V10), fun (V17) -> begin (V20 = (begin (V18 = V16), fun (V19) -> ('erlang':'get'(V18)) end end(V17))), {'Prelude.Types.Right', V20} end end end), fun (V22) -> begin (V23 = (V21(V22))), case V23 of {'Prelude.Types.Left', V24} -> {'Prelude.Types.Left', V24}; {'Prelude.Types.Right', V25} -> (begin (V27 = case V25 of 1 -> ('un--transLoop'(V0, V5, V2, V15)); 0 -> fun (V26) -> {'Prelude.Types.Right', V15} end end), V27 end(V22)) end end end end), V28 end(V12)) end end end end), V29 end(V7)) end end end end end end.
'un--trans'(V0, V1, V2, V3, V4) -> case V4 of {'Core.TT.Ref', V5, V6, V7} -> case V6 of {'Core.TT.Func'} -> begin (V13 = begin (V8 = V0), fun (V9) -> begin (V12 = (begin (V10 = V8), fun (V11) -> ('erlang':'get'(V10)) end end(V9))), {'Prelude.Types.Right', V12} end end end), fun (V14) -> begin (V15 = (V13(V14))), case V15 of {'Prelude.Types.Left', V16} -> {'Prelude.Types.Left', V16}; {'Prelude.Types.Right', V17} -> (begin (V50 = ('case--trans-14083'(V7, V5, V3, V2, V1, V0, V17, ('Idris.Idris2.Libraries.Data.NameMap':'un--lookup'(V7, case V17 of {'Core.Context.MkDefs', V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40, V41, V42, V43, V44, V45, V46, V47, V48, V49} -> V31 end))))), V50 end(V14)) end end end end; _ -> fun (V51) -> {'Prelude.Types.Right', ('un--unload'(V3, V4))} end end; {'Core.TT.Meta', V52, V53, V54, V55} -> begin (V57 = ('Idris.Idris2.Core.Core':'un--traverse\x{27}'(fun (V56) -> ('un--trans'(V0, V1, V2, [], V56)) end, V55, []))), fun (V58) -> begin (V59 = (V57(V58))), case V59 of {'Prelude.Types.Left', V60} -> {'Prelude.Types.Left', V60}; {'Prelude.Types.Right', V61} -> (begin (V63 = fun (V62) -> {'Prelude.Types.Right', ('un--unload'(V3, {'Core.TT.Meta', V52, V53, V54, V61}))} end), V63 end(V58)) end end end end; {'Core.TT.Bind', V64, V65, V66, V67} -> begin (V69 = ('Idris.Idris2.Core.Core.Binder':'un--traverse'(fun (V68) -> ('un--trans'(V0, V1, V2, [], V68)) end, V66))), fun (V70) -> begin (V71 = (V69(V70))), case V71 of {'Prelude.Types.Left', V72} -> {'Prelude.Types.Left', V72}; {'Prelude.Types.Right', V73} -> (begin (V81 = begin (V74 = ('un--trans'(V0, V1, {'Core.Env.::', V73, V2}, [], V67))), fun (V75) -> begin (V76 = (V74(V75))), case V76 of {'Prelude.Types.Left', V77} -> {'Prelude.Types.Left', V77}; {'Prelude.Types.Right', V78} -> (begin (V80 = fun (V79) -> {'Prelude.Types.Right', ('un--unload'(V3, {'Core.TT.Bind', V64, V65, V73, V78}))} end), V80 end(V75)) end end end end), V81 end(V70)) end end end end; {'Core.TT.App', V82, V83, V84} -> begin (V85 = ('un--trans'(V0, V1, V2, [], V84))), fun (V86) -> begin (V87 = (V85(V86))), case V87 of {'Prelude.Types.Left', V88} -> {'Prelude.Types.Left', V88}; {'Prelude.Types.Right', V89} -> (begin (V90 = ('un--trans'(V0, V1, V2, [{'Builtin.MkPair', V82, V89} | V3], V83))), V90 end(V86)) end end end end; {'Core.TT.TDelayed', V91, V92, V93} -> begin (V94 = ('un--trans'(V0, V1, V2, [], V93))), fun (V95) -> begin (V96 = (V94(V95))), case V96 of {'Prelude.Types.Left', V97} -> {'Prelude.Types.Left', V97}; {'Prelude.Types.Right', V98} -> (begin (V100 = fun (V99) -> {'Prelude.Types.Right', ('un--unload'(V3, {'Core.TT.TDelayed', V91, V92, V98}))} end), V100 end(V95)) end end end end; {'Core.TT.TDelay', V101, V102, V103, V104} -> begin (V105 = ('un--trans'(V0, V1, V2, [], V103))), fun (V106) -> begin (V107 = (V105(V106))), case V107 of {'Prelude.Types.Left', V108} -> {'Prelude.Types.Left', V108}; {'Prelude.Types.Right', V109} -> (begin (V117 = begin (V110 = ('un--trans'(V0, V1, V2, [], V104))), fun (V111) -> begin (V112 = (V110(V111))), case V112 of {'Prelude.Types.Left', V113} -> {'Prelude.Types.Left', V113}; {'Prelude.Types.Right', V114} -> (begin (V116 = fun (V115) -> {'Prelude.Types.Right', ('un--unload'(V3, {'Core.TT.TDelay', V101, V102, V109, V114}))} end), V116 end(V111)) end end end end), V117 end(V106)) end end end end; {'Core.TT.TForce', V118, V119, V120} -> begin (V121 = ('un--trans'(V0, V1, V2, [], V120))), fun (V122) -> begin (V123 = (V121(V122))), case V123 of {'Prelude.Types.Left', V124} -> {'Prelude.Types.Left', V124}; {'Prelude.Types.Right', V125} -> (begin (V127 = fun (V126) -> {'Prelude.Types.Right', ('un--unload'(V3, {'Core.TT.TForce', V118, V119, V125}))} end), V127 end(V122)) end end end end; _ -> fun (V128) -> {'Prelude.Types.Right', ('un--unload'(V3, V4))} end end.
'un--match'(V0, V1, V2) -> case V1 of {'Core.TT.Local', V3, V4, V5} -> ('un--addMatch'(V5, V2, V0)); {'Core.TT.App', V6, V7, V8} -> case V2 of {'Core.TT.App', V9, V10, V11} -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('un--match'(V0, V7, V10)), fun (V12) -> ('un--match'(V12, V8, V11)) end)); _ -> case ('Idris.Idris2.Core.TT':'un--eqTerm'(V1, V2)) of 1 -> {'Prelude.Types.Just', V0}; 0 -> {'Prelude.Types.Nothing'} end end; _ -> case ('Idris.Idris2.Core.TT':'un--eqTerm'(V1, V2)) of 1 -> {'Prelude.Types.Just', V0}; 0 -> {'Prelude.Types.Nothing'} end end.
'un--lookupMatch'(V0, V1) -> case V1 of {'Core.Transform.None'} -> {'Prelude.Types.Nothing'}; {'Core.Transform.Match', V2, V3, V4} -> case case (V0 =:= V2) of 'false' -> 0; _ -> 1 end of 1 -> {'Prelude.Types.Just', V3}; 0 -> ('un--lookupMatch'(V0, V4)) end end.
'un--applyTransforms'(V0, V1, V2) -> ('un--transLoop'(V0, 5, V1, V2)).
'un--apply'(V0, V1) -> case V0 of [] -> {'Builtin.MkPair', 0, V1}; [E0 | E1] -> (fun (V2, V3) -> case ('un--tryApply'(V2, V1)) of {'Prelude.Types.Nothing'} -> ('un--apply'(V3, V1)); {'Prelude.Types.Just', V4} -> {'Builtin.MkPair', 1, V4} end end(E0, E1)) end.
'un--addMatch'(V0, V1, V2) -> ('case--addMatch-13438'(V2, V1, V0, ('un--lookupMatch'(V0, V2)))).
