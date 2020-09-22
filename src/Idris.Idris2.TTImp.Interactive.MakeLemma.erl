-module('Idris.Idris2.TTImp.Interactive.MakeLemma').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--makeLemma-4676'/7,
  'case--case block in case block in getArgs-4437'/20,
  'case--case block in getArgs-4388'/20,
  'case--case block in getArgs-4270'/21,
  'case--getArgs-4224'/17,
  'case--bindable-3958'/4,
  'nested--8358-4624--in--un--getArg'/4,
  'un--used'/1,
  'un--mkType'/3,
  'un--mkApp'/3,
  'un--makeLemma'/7,
  'un--hiddenName'/1,
  'un--getArgs'/5,
  'un--bindableArg'/3,
  'un--bindable'/3
]).
'case--makeLemma-4676'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V7, V8) -> fun (V9) -> {'Idris.Prelude.Types.Right', {'Idris.Builtin.MkPair', ('un--mkType'(V3, V7, V8)), ('un--mkApp'(V3, V2, V7))}} end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in case block in getArgs-4437'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19) -> case V19 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> {'Idris.Prelude.Types.Just', V15} end()); _ -> {'Idris.Prelude.Types.Nothing'} end.
'case--case block in getArgs-4388'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19) -> case V19 of 0 -> ('case--case block in case block in getArgs-4437'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, ('Idris.Idris2.Core.TT':'un--shrinkTerm'('erased', 'erased', V7, {'Idris.Core.TT.DropCons', {'Idris.Core.TT.SubRefl'}})))); 1 -> {'Idris.Prelude.Types.Just', V15}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in getArgs-4270'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20) -> case V20 of 0 -> {'Idris.Core.TT.Explicit'}; 1 -> {'Idris.Core.TT.Implicit'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--getArgs-4224'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16) -> case V16 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V17, V18) -> begin (V20 = begin (V19 = {'Idris.Builtin.MkPair', V17, V18}), ('case--case block in getArgs-4388'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V17, V18, V19, ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--==_Eq__ZeroOneOmega'(V9, ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--top_Top__ZeroOneOmega'()))))) end), begin (V22 = begin (V21 = {'Idris.Builtin.MkPair', V17, V18}), ('case--case block in getArgs-4270'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V17, V18, V21, V20, ('Idris.Idris2.Prelude.Basics':'un--&&'(('un--used'(V9)), fun () -> ('Idris.Idris2.Prelude.Basics':'un--&&'(('Idris.Idris2.Prelude.Basics':'un--not'(('un--bindableArg'('erased', 0, V7)))), fun () -> ('Idris.Idris2.Prelude.Basics':'un--not'(('un--hiddenName'(V6)))) end)) end)))) end), fun (V23) -> {'Idris.Prelude.Types.Right', {'Idris.Builtin.MkPair', [{'Idris.Builtin.MkPair', V6, {'Idris.Builtin.MkPair', V20, {'Idris.Builtin.MkPair', V22, {'Idris.Builtin.MkPair', V9, V13}}}} | V17], V18}} end end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--bindable-3958'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V4, V5) -> case V4 of {'Idris.Core.TT.Ref', E2, E3, E4} -> (fun (V6, V7, V8) -> case V7 of {'Idris.Core.TT.TyCon', E5, E6} -> (fun (V9, V10) -> (('Idris.Idris2.Prelude.Interfaces':'un--any'('erased', 'erased', {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable__List'('erased', 'erased', V13, V14, V15)) end end end end end, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable__List'('erased', 'erased', V18, V19, V20)) end end end end end}, fun (V21) -> ('un--bindable'('erased', V2, V21)) end))(V5)) end(E5, E6)); {'Idris.Core.TT.DataCon', E7, E8} -> (fun (V22, V23) -> (('Idris.Idris2.Prelude.Interfaces':'un--any'('erased', 'erased', {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable__List'('erased', 'erased', V26, V27, V28)) end end end end end, fun (V29) -> fun (V30) -> fun (V31) -> fun (V32) -> fun (V33) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable__List'('erased', 'erased', V31, V32, V33)) end end end end end}, fun (V34) -> ('un--bindable'('erased', V2, V34)) end))(V5)) end(E7, E8)); _ -> 1 end end(E2, E3, E4)); {'Idris.Core.TT.TDelayed', E9, E10, E11} -> (fun (V35, V36, V37) -> (('Idris.Idris2.Prelude.Interfaces':'un--any'('erased', 'erased', {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', fun (V38) -> fun (V39) -> fun (V40) -> fun (V41) -> fun (V42) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable__List'('erased', 'erased', V40, V41, V42)) end end end end end, fun (V43) -> fun (V44) -> fun (V45) -> fun (V46) -> fun (V47) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable__List'('erased', 'erased', V45, V46, V47)) end end end end end}, fun (V48) -> ('un--bindable'('erased', V2, V48)) end))([V37 | V5])) end(E9, E10, E11)); {'Idris.Core.TT.TDelay', E12, E13, E14, E15} -> (fun (V49, V50, V51, V52) -> (('Idris.Idris2.Prelude.Interfaces':'un--any'('erased', 'erased', {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', fun (V53) -> fun (V54) -> fun (V55) -> fun (V56) -> fun (V57) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable__List'('erased', 'erased', V55, V56, V57)) end end end end end, fun (V58) -> fun (V59) -> fun (V60) -> fun (V61) -> fun (V62) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable__List'('erased', 'erased', V60, V61, V62)) end end end end end}, fun (V63) -> ('un--bindable'('erased', V2, V63)) end))([V52 | V5])) end(E12, E13, E14, E15)); {'Idris.Core.TT.TForce', E16, E17, E18} -> (fun (V64, V65, V66) -> (('Idris.Idris2.Prelude.Interfaces':'un--any'('erased', 'erased', {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', fun (V67) -> fun (V68) -> fun (V69) -> fun (V70) -> fun (V71) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable__List'('erased', 'erased', V69, V70, V71)) end end end end end, fun (V72) -> fun (V73) -> fun (V74) -> fun (V75) -> fun (V76) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable__List'('erased', 'erased', V74, V75, V76)) end end end end end}, fun (V77) -> ('un--bindable'('erased', V2, V77)) end))([V66 | V5])) end(E16, E17, E18)); {'Idris.Core.TT.Local', E19, E20, E21} -> (fun (V78, V79, V80) -> case V5 of [] -> ('Idris.Idris2.Prelude.Types':'dn--un--==_Eq__Nat'(V2, V80)); _ -> 1 end end(E19, E20, E21)); _ -> 1 end end(E0, E1)); _ -> 1 end.
'nested--8358-4624--in--un--getArg'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V4, V5) -> case V5 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V6, V7) -> case V7 of {'Idris.Builtin.MkPair', E4, E5} -> (fun (V8, V9) -> case V8 of {'Idris.Core.TT.Explicit'} -> (fun () -> case V9 of {'Idris.Builtin.MkPair', E6, E7} -> (fun (V10, V11) -> {'Idris.Prelude.Types.Just', {'Idris.TTImp.TTImp.IVar', V2, V4}} end(E6, E7)); _ -> {'Idris.Prelude.Types.Nothing'} end end()); _ -> {'Idris.Prelude.Types.Nothing'} end end(E4, E5)); _ -> {'Idris.Prelude.Types.Nothing'} end end(E2, E3)); _ -> {'Idris.Prelude.Types.Nothing'} end end(E0, E1)); _ -> {'Idris.Prelude.Types.Nothing'} end.
'un--used'(V0) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('Idris.Idris2.Algebra.Semiring':'un--isErased'('erased', {'Idris.Builtin.MkPair', {'Idris.Algebra.Semiring.dn--un--__mkSemiring', fun (V1) -> fun (V2) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--|+|_Semiring__ZeroOneOmega'(V1, V2)) end end, ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--plusNeutral_Semiring__ZeroOneOmega'()), fun (V3) -> fun (V4) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--|*|_Semiring__ZeroOneOmega'(V3, V4)) end end, ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--timesNeutral_Semiring__ZeroOneOmega'())}, {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V5) -> fun (V6) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--==_Eq__ZeroOneOmega'(V5, V6)) end end, fun (V7) -> fun (V8) -> ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--/=_Eq__ZeroOneOmega'(V7, V8)) end end}}, V0)))).
'un--mkType'(V0, V1, V2) -> case V1 of [] -> V2; [E0 | E1] -> (fun (V3, V4) -> case V3 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V5, V6) -> case V6 of {'Idris.Builtin.MkPair', E4, E5} -> (fun (V7, V8) -> case V8 of {'Idris.Builtin.MkPair', E6, E7} -> (fun (V9, V10) -> case V10 of {'Idris.Builtin.MkPair', E8, E9} -> (fun (V11, V12) -> {'Idris.TTImp.TTImp.IPi', V0, V11, V9, V7, V12, ('un--mkType'(V0, V4, V2))} end(E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--mkApp'(V0, V1, V2) -> ('Idris.Idris2.TTImp.TTImp':'un--apply'({'Idris.TTImp.TTImp.IVar', V0, V1}, ('Idris.Idris2.Data.List':'un--mapMaybe'('erased', 'erased', fun (V3) -> ('nested--8358-4624--in--un--getArg'(V2, V1, V0, V3)) end, V2)))).
'un--makeLemma'(V0, V1, V2, V3, V4, V5, V6) -> begin (V7 = (('un--getArgs'([], V1, {'Idris.Core.Env.Nil'}, V4, V5))(V6))), case V7 of {'Idris.Prelude.Types.Left', E0} -> (fun (V8) -> {'Idris.Prelude.Types.Left', V8} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V9) -> case V9 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V10, V11) -> {'Idris.Prelude.Types.Right', {'Idris.Builtin.MkPair', ('un--mkType'(V2, V10, V11)), ('un--mkApp'(V2, V3, V10))}} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.
'un--hiddenName'(V0) -> case V0 of {'Idris.Core.Name.MN', E0, E1} -> (fun (V1, V2) -> case V1 of <<"_"/utf8>> -> 0; _ -> 1 end end(E0, E1)); _ -> 1 end.
'un--getArgs'(V0, V1, V2, V3, V4) -> case V3 of 0 -> fun (V5) -> begin (V34 = begin (V33 = (('Idris.Idris2.Erlang.Data.IORef':'un--readIORef'('erased', 'erased', {'Idris.Prelude.IO.dn--un--__mkHasIO', {'Idris.Prelude.Interfaces.dn--un--__mkMonad', {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor__IO'('erased', 'erased', V8, V9, V10)) end end end end end, fun (V11) -> fun (V12) -> fun (V13) -> V12 end end end, fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> begin (V19 = (V16(V18))), begin (V20 = (V17(V18))), (V19(V20)) end end end end end end end}, fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> begin (V26 = (V23(V25))), ((V24(V26))(V25)) end end end end end end, fun (V27) -> fun (V28) -> fun (V29) -> begin (V30 = (V28(V29))), (V30(V29)) end end end end}, fun (V31) -> fun (V32) -> V32 end end}, V1))(V5))), {'Idris.Prelude.Types.Right', V33} end), case V34 of {'Idris.Prelude.Types.Left', E32} -> (fun (V35) -> {'Idris.Prelude.Types.Left', V35} end(E32)); {'Idris.Prelude.Types.Right', E33} -> (fun (V36) -> begin (V40 = begin (V37 = ('Idris.Idris2.Core.Normalise':'un--normalise'(V1, V0, V36, V2, V4, V5))), case V37 of {'Idris.Prelude.Types.Left', E34} -> (fun (V38) -> {'Idris.Prelude.Types.Left', V38} end(E34)); {'Idris.Prelude.Types.Right', E35} -> (fun (V39) -> (('Idris.Idris2.TTImp.Unelab':'un--unelab'(V0, V1, V2, V39))(V5)) end(E35)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end), case V40 of {'Idris.Prelude.Types.Left', E36} -> (fun (V41) -> {'Idris.Prelude.Types.Left', V41} end(E36)); {'Idris.Prelude.Types.Right', E37} -> (fun (V42) -> {'Idris.Prelude.Types.Right', {'Idris.Builtin.MkPair', [], V42}} end(E37)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E33)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end; _ -> begin (V43 = (V3 - 1)), case V4 of {'Idris.Core.TT.Bind', E6, E7, E8, E9} -> (fun (V44, V45, V46, V47) -> case V46 of {'Idris.Core.TT.Pi', E16, E17, E18, E19} -> (fun (V48, V49, V50, V51) -> fun (V52) -> begin (V81 = begin (V80 = (('Idris.Idris2.Erlang.Data.IORef':'un--readIORef'('erased', 'erased', {'Idris.Prelude.IO.dn--un--__mkHasIO', {'Idris.Prelude.Interfaces.dn--un--__mkMonad', {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V53) -> fun (V54) -> fun (V55) -> fun (V56) -> fun (V57) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor__IO'('erased', 'erased', V55, V56, V57)) end end end end end, fun (V58) -> fun (V59) -> fun (V60) -> V59 end end end, fun (V61) -> fun (V62) -> fun (V63) -> fun (V64) -> fun (V65) -> begin (V66 = (V63(V65))), begin (V67 = (V64(V65))), (V66(V67)) end end end end end end end}, fun (V68) -> fun (V69) -> fun (V70) -> fun (V71) -> fun (V72) -> begin (V73 = (V70(V72))), ((V71(V73))(V72)) end end end end end end, fun (V74) -> fun (V75) -> fun (V76) -> begin (V77 = (V75(V76))), (V77(V76)) end end end end}, fun (V78) -> fun (V79) -> V79 end end}, V1))(V52))), {'Idris.Prelude.Types.Right', V80} end), case V81 of {'Idris.Prelude.Types.Left', E20} -> (fun (V82) -> {'Idris.Prelude.Types.Left', V82} end(E20)); {'Idris.Prelude.Types.Right', E21} -> (fun (V83) -> begin (V87 = begin (V84 = ('Idris.Idris2.Core.Normalise':'un--normalise'(V1, V0, V83, V2, V51, V52))), case V84 of {'Idris.Prelude.Types.Left', E22} -> (fun (V85) -> {'Idris.Prelude.Types.Left', V85} end(E22)); {'Idris.Prelude.Types.Right', E23} -> (fun (V86) -> (('Idris.Idris2.TTImp.Unelab':'un--unelab'(V0, V1, V2, V86))(V52)) end(E23)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end), case V87 of {'Idris.Prelude.Types.Left', E24} -> (fun (V88) -> {'Idris.Prelude.Types.Left', V88} end(E24)); {'Idris.Prelude.Types.Right', E25} -> (fun (V89) -> begin (V91 = ('Idris.Idris2.TTImp.Utils':'un--uniqueName'(V83, ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__List'('erased', 'erased', fun (V90) -> ('Idris.Idris2.Core.Name':'un--nameRoot'(V90)) end, V0)), ('Idris.Idris2.Core.Name':'un--nameRoot'(V45)), V52))), case V91 of {'Idris.Prelude.Types.Left', E26} -> (fun (V92) -> {'Idris.Prelude.Types.Left', V92} end(E26)); {'Idris.Prelude.Types.Right', E27} -> (fun (V93) -> begin (V94 = {'Idris.Core.Name.UN', V93}), begin (V95 = (('un--getArgs'([V94 | V0], V1, {'Idris.Core.Env.::', V46, V2}, V43, ('Idris.Idris2.Core.TT':'un--renameTop'('erased', 'erased', V94, V47))))(V52))), case V95 of {'Idris.Prelude.Types.Left', E28} -> (fun (V96) -> {'Idris.Prelude.Types.Left', V96} end(E28)); {'Idris.Prelude.Types.Right', E29} -> (fun (V97) -> begin (V98 = {'Idris.Core.TT.Pi', V48, V49, V50, V51}), case V97 of {'Idris.Builtin.MkPair', E30, E31} -> (fun (V99, V100) -> begin (V102 = begin (V101 = {'Idris.Builtin.MkPair', V99, V100}), ('case--case block in getArgs-4388'(V1, V44, V48, V0, V50, V43, V45, V47, V51, V49, V98, V2, V83, V89, V93, V94, V99, V100, V101, ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--==_Eq__ZeroOneOmega'(V49, ('Idris.Idris2.Algebra.ZeroOneOmega':'dn--un--top_Top__ZeroOneOmega'()))))) end), begin (V104 = begin (V103 = {'Idris.Builtin.MkPair', V99, V100}), ('case--case block in getArgs-4270'(V1, V44, V48, V0, V50, V43, V45, V47, V51, V49, V98, V2, V83, V89, V93, V94, V99, V100, V103, V102, ('Idris.Idris2.Prelude.Basics':'un--&&'(('un--used'(V49)), fun () -> ('Idris.Idris2.Prelude.Basics':'un--&&'(('Idris.Idris2.Prelude.Basics':'un--not'(('un--bindableArg'('erased', 0, V47)))), fun () -> ('Idris.Idris2.Prelude.Basics':'un--not'(('un--hiddenName'(V45)))) end)) end)))) end), {'Idris.Prelude.Types.Right', {'Idris.Builtin.MkPair', [{'Idris.Builtin.MkPair', V45, {'Idris.Builtin.MkPair', V102, {'Idris.Builtin.MkPair', V104, {'Idris.Builtin.MkPair', V49, V89}}}} | V99], V100}} end end end(E30, E31)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E29)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end(E27)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E25)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E21)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end(E16, E17, E18, E19)); _ -> fun (V105) -> begin (V134 = begin (V133 = (('Idris.Idris2.Erlang.Data.IORef':'un--readIORef'('erased', 'erased', {'Idris.Prelude.IO.dn--un--__mkHasIO', {'Idris.Prelude.Interfaces.dn--un--__mkMonad', {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V106) -> fun (V107) -> fun (V108) -> fun (V109) -> fun (V110) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor__IO'('erased', 'erased', V108, V109, V110)) end end end end end, fun (V111) -> fun (V112) -> fun (V113) -> V112 end end end, fun (V114) -> fun (V115) -> fun (V116) -> fun (V117) -> fun (V118) -> begin (V119 = (V116(V118))), begin (V120 = (V117(V118))), (V119(V120)) end end end end end end end}, fun (V121) -> fun (V122) -> fun (V123) -> fun (V124) -> fun (V125) -> begin (V126 = (V123(V125))), ((V124(V126))(V125)) end end end end end end, fun (V127) -> fun (V128) -> fun (V129) -> begin (V130 = (V128(V129))), (V130(V129)) end end end end}, fun (V131) -> fun (V132) -> V132 end end}, V1))(V105))), {'Idris.Prelude.Types.Right', V133} end), case V134 of {'Idris.Prelude.Types.Left', E10} -> (fun (V135) -> {'Idris.Prelude.Types.Left', V135} end(E10)); {'Idris.Prelude.Types.Right', E11} -> (fun (V136) -> begin (V140 = begin (V137 = ('Idris.Idris2.Core.Normalise':'un--normalise'(V1, V0, V136, V2, V4, V105))), case V137 of {'Idris.Prelude.Types.Left', E12} -> (fun (V138) -> {'Idris.Prelude.Types.Left', V138} end(E12)); {'Idris.Prelude.Types.Right', E13} -> (fun (V139) -> (('Idris.Idris2.TTImp.Unelab':'un--unelab'(V0, V1, V2, V139))(V105)) end(E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end), case V140 of {'Idris.Prelude.Types.Left', E14} -> (fun (V141) -> {'Idris.Prelude.Types.Left', V141} end(E14)); {'Idris.Prelude.Types.Right', E15} -> (fun (V142) -> {'Idris.Prelude.Types.Right', {'Idris.Builtin.MkPair', [], V142}} end(E15)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end end(E6, E7, E8, E9)); _ -> fun (V143) -> begin (V172 = begin (V171 = (('Idris.Idris2.Erlang.Data.IORef':'un--readIORef'('erased', 'erased', {'Idris.Prelude.IO.dn--un--__mkHasIO', {'Idris.Prelude.Interfaces.dn--un--__mkMonad', {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V144) -> fun (V145) -> fun (V146) -> fun (V147) -> fun (V148) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor__IO'('erased', 'erased', V146, V147, V148)) end end end end end, fun (V149) -> fun (V150) -> fun (V151) -> V150 end end end, fun (V152) -> fun (V153) -> fun (V154) -> fun (V155) -> fun (V156) -> begin (V157 = (V154(V156))), begin (V158 = (V155(V156))), (V157(V158)) end end end end end end end}, fun (V159) -> fun (V160) -> fun (V161) -> fun (V162) -> fun (V163) -> begin (V164 = (V161(V163))), ((V162(V164))(V163)) end end end end end end, fun (V165) -> fun (V166) -> fun (V167) -> begin (V168 = (V166(V167))), (V168(V167)) end end end end}, fun (V169) -> fun (V170) -> V170 end end}, V1))(V143))), {'Idris.Prelude.Types.Right', V171} end), case V172 of {'Idris.Prelude.Types.Left', E0} -> (fun (V173) -> {'Idris.Prelude.Types.Left', V173} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V174) -> begin (V178 = begin (V175 = ('Idris.Idris2.Core.Normalise':'un--normalise'(V1, V0, V174, V2, V4, V143))), case V175 of {'Idris.Prelude.Types.Left', E2} -> (fun (V176) -> {'Idris.Prelude.Types.Left', V176} end(E2)); {'Idris.Prelude.Types.Right', E3} -> (fun (V177) -> (('Idris.Idris2.TTImp.Unelab':'un--unelab'(V0, V1, V2, V177))(V143)) end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end), case V178 of {'Idris.Prelude.Types.Left', E4} -> (fun (V179) -> {'Idris.Prelude.Types.Left', V179} end(E4)); {'Idris.Prelude.Types.Right', E5} -> (fun (V180) -> {'Idris.Prelude.Types.Right', {'Idris.Builtin.MkPair', [], V180}} end(E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end end end.
'un--bindableArg'(V0, V1, V2) -> case V2 of {'Idris.Core.TT.Bind', E0, E1, E2, E3} -> (fun (V3, V4, V5, V6) -> case V5 of {'Idris.Core.TT.Pi', E4, E5, E6, E7} -> (fun (V7, V8, V9, V10) -> ('Idris.Idris2.Prelude.Basics':'un--||'(('un--bindable'('erased', V1, V10)), fun () -> ('un--bindableArg'('erased', ('Idris.Idris2.Prelude.Types':'dn--un--+_Num__Nat'(('Idris.Idris2.Prelude.Types':'dn--un--fromInteger_Num__Nat'(1)), V1)), V6)) end)) end(E4, E5, E6, E7)); _ -> 1 end end(E0, E1, E2, E3)); _ -> 1 end.
'un--bindable'(V0, V1, V2) -> ('case--bindable-3958'('erased', V2, V1, ('Idris.Idris2.Core.TT':'un--getFnArgs'('erased', V2)))).
