-module('Idris.Idris2.Language.Reflection').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--try_Elaboration_Elab'/2,
  'dn--un--try_Elaboration_($t $m)'/5,
  'dn--un--quote_Elaboration_Elab'/1,
  'dn--un--quote_Elaboration_($t $m)'/3,
  'dn--un--pure_Applicative_Elab'/1,
  'dn--un--map_Functor_Elab'/2,
  'dn--un--logTerm_Elaboration_Elab'/4,
  'dn--un--logTerm_Elaboration_($t $m)'/7,
  'dn--un--logSugaredTerm_Elaboration_Elab'/4,
  'dn--un--logSugaredTerm_Elaboration_($t $m)'/7,
  'dn--un--logMsg_Elaboration_Elab'/3,
  'dn--un--logMsg_Elaboration_($t $m)'/6,
  'dn--un--localVars_Elaboration_Elab'/0,
  'dn--un--localVars_Elaboration_($t $m)'/3,
  'dn--un--lambda_Elaboration_Elab'/3,
  'dn--un--lambda_Elaboration_($t $m)'/4,
  'dn--un--join_Monad_Elab'/1,
  'dn--un--inCurrentNS_Elaboration_Elab'/1,
  'dn--un--inCurrentNS_Elaboration_($t $m)'/4,
  'dn--un--goal_Elaboration_Elab'/0,
  'dn--un--goal_Elaboration_($t $m)'/3,
  'dn--un--getType_Elaboration_Elab'/1,
  'dn--un--getType_Elaboration_($t $m)'/4,
  'dn--un--getLocalType_Elaboration_Elab'/1,
  'dn--un--getLocalType_Elaboration_($t $m)'/4,
  'dn--un--getInfo_Elaboration_Elab'/1,
  'dn--un--getInfo_Elaboration_($t $m)'/4,
  'dn--un--getCons_Elaboration_Elab'/1,
  'dn--un--getCons_Elaboration_($t $m)'/4,
  'dn--un--genSym_Elaboration_Elab'/1,
  'dn--un--genSym_Elaboration_($t $m)'/4,
  'dn--un--failAt_Elaboration_Elab'/2,
  'dn--un--failAt_Elaboration_($t $m)'/5,
  'dn--un--empty_Alternative_Elab'/0,
  'dn--un--declare_Elaboration_Elab'/1,
  'dn--un--declare_Elaboration_($t $m)'/4,
  'dn--un--check_Elaboration_Elab'/1,
  'dn--un--check_Elaboration_($t $m)'/4,
  'dn--un--__Impl_Monad_Elab'/0,
  'dn--un--__Impl_Functor_Elab'/4,
  'dn--un--__Impl_Elaboration_Elab'/0,
  'dn--un--__Impl_Elaboration_($t $m)'/3,
  'dn--un--__Impl_Applicative_Elab'/0,
  'dn--un--__Impl_Alternative_Elab'/0,
  'dn--un--__Elaboration_(Monad m)'/1,
  'dn--un-->>=_Monad_Elab'/2,
  'dn--un--<|>_Alternative_Elab'/2,
  'dn--un--<*>_Applicative_Elab'/2,
  'un--try'/3,
  'un--search'/2,
  'un--quote'/2,
  'un--logTerm'/4,
  'un--logSugaredTerm'/4,
  'un--logMsg'/4,
  'un--logGoal'/4,
  'un--localVars'/1,
  'un--lambda'/4,
  'un--inCurrentNS'/2,
  'un--goal'/1,
  'un--getType'/2,
  'un--getLocalType'/2,
  'un--getInfo'/2,
  'un--getCons'/2,
  'un--genSym'/2,
  'un--failAt'/3,
  'un--fail'/2,
  'un--declare'/2,
  'un--check'/2,
  'un--catch'/2
]).
'dn--un--try_Elaboration_Elab'(V0, V1) -> {'Language.Reflection.Try', V0, V1}.
'dn--un--try_Elaboration_($t $m)'(V0, V1, V2, V3, V4) -> (begin (V23 = V1), fun (V24) -> ((((V23('erased'))('erased'))(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V25, V26, V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40, V41, V42} -> V25 end))(V24)) end end(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> (((V7('erased'))(V3))(V4)) end)).
'dn--un--quote_Elaboration_Elab'(V0) -> {'Language.Reflection.Quote'}.
'dn--un--quote_Elaboration_($t $m)'(V0, V1, V2) -> (begin (V21 = V1), fun (V22) -> ((((V21('erased'))('erased'))(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V23, V24, V25, V26, V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40} -> V23 end))(V22)) end end(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20} -> ((V10('erased'))('erased')) end)).
'dn--un--pure_Applicative_Elab'(V0) -> {'Language.Reflection.Pure', V0}.
'dn--un--map_Functor_Elab'(V0, V1) -> {'Language.Reflection.Bind', V1, fun (V2) -> {'Language.Reflection.Pure', (V0(V2))} end}.
'dn--un--logTerm_Elaboration_Elab'(V0, V1, V2, V3) -> {'Language.Reflection.LogTerm', V0, V1, V2, V3}.
'dn--un--logTerm_Elaboration_($t $m)'(V0, V1, V2, V3, V4, V5, V6) -> (begin (V25 = V1), fun (V26) -> ((((V25('erased'))('erased'))(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40, V41, V42, V43, V44} -> V27 end))(V26)) end end(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24} -> ((((V11(V3))(V4))(V5))(V6)) end)).
'dn--un--logSugaredTerm_Elaboration_Elab'(V0, V1, V2, V3) -> {'Language.Reflection.LogSugaredTerm', V0, V1, V2, V3}.
'dn--un--logSugaredTerm_Elaboration_($t $m)'(V0, V1, V2, V3, V4, V5, V6) -> (begin (V25 = V1), fun (V26) -> ((((V25('erased'))('erased'))(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40, V41, V42, V43, V44} -> V27 end))(V26)) end end(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24} -> ((((V12(V3))(V4))(V5))(V6)) end)).
'dn--un--logMsg_Elaboration_Elab'(V0, V1, V2) -> {'Language.Reflection.LogMsg', V0, V1, V2}.
'dn--un--logMsg_Elaboration_($t $m)'(V0, V1, V2, V3, V4, V5) -> (begin (V24 = V1), fun (V25) -> ((((V24('erased'))('erased'))(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V26, V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40, V41, V42, V43} -> V26 end))(V25)) end end(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23} -> (((V9(V3))(V4))(V5)) end)).
'dn--un--localVars_Elaboration_Elab'() -> {'Language.Reflection.LocalVars'}.
'dn--un--localVars_Elaboration_($t $m)'(V0, V1, V2) -> (begin (V21 = V1), fun (V22) -> ((((V21('erased'))('erased'))(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V23, V24, V25, V26, V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40} -> V23 end))(V22)) end end(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20} -> V13 end)).
'dn--un--lambda_Elaboration_Elab'(V0, V1, V2) -> {'Language.Reflection.Lambda', V2}.
'dn--un--lambda_Elaboration_($t $m)'(V0, V1, V2, V3) -> (begin (V22 = V1), fun (V23) -> ((((V22('erased'))('erased'))(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V24, V25, V26, V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40, V41} -> V24 end))(V23)) end end(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21} -> (((V12('erased'))('erased'))(V3)) end)).
'dn--un--join_Monad_Elab'(V0) -> ('dn--un-->>=_Monad_Elab'(V0, fun (V1) -> V1 end)).
'dn--un--inCurrentNS_Elaboration_Elab'(V0) -> {'Language.Reflection.InCurrentNS', V0}.
'dn--un--inCurrentNS_Elaboration_($t $m)'(V0, V1, V2, V3) -> (begin (V22 = V1), fun (V23) -> ((((V22('erased'))('erased'))(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V24, V25, V26, V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40, V41} -> V24 end))(V23)) end end(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21} -> (V16(V3)) end)).
'dn--un--goal_Elaboration_Elab'() -> {'Language.Reflection.Goal'}.
'dn--un--goal_Elaboration_($t $m)'(V0, V1, V2) -> (begin (V21 = V1), fun (V22) -> ((((V21('erased'))('erased'))(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V23, V24, V25, V26, V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40} -> V23 end))(V22)) end end(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20} -> V12 end)).
'dn--un--getType_Elaboration_Elab'(V0) -> {'Language.Reflection.GetType', V0}.
'dn--un--getType_Elaboration_($t $m)'(V0, V1, V2, V3) -> (begin (V22 = V1), fun (V23) -> ((((V22('erased'))('erased'))(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V24, V25, V26, V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40, V41} -> V24 end))(V23)) end end(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21} -> (V17(V3)) end)).
'dn--un--getLocalType_Elaboration_Elab'(V0) -> {'Language.Reflection.GetLocalType', V0}.
'dn--un--getLocalType_Elaboration_($t $m)'(V0, V1, V2, V3) -> (begin (V22 = V1), fun (V23) -> ((((V22('erased'))('erased'))(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V24, V25, V26, V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40, V41} -> V24 end))(V23)) end end(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21} -> (V19(V3)) end)).
'dn--un--getInfo_Elaboration_Elab'(V0) -> {'Language.Reflection.GetInfo', V0}.
'dn--un--getInfo_Elaboration_($t $m)'(V0, V1, V2, V3) -> (begin (V22 = V1), fun (V23) -> ((((V22('erased'))('erased'))(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V24, V25, V26, V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40, V41} -> V24 end))(V23)) end end(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21} -> (V18(V3)) end)).
'dn--un--getCons_Elaboration_Elab'(V0) -> {'Language.Reflection.GetCons', V0}.
'dn--un--getCons_Elaboration_($t $m)'(V0, V1, V2, V3) -> (begin (V22 = V1), fun (V23) -> ((((V22('erased'))('erased'))(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V24, V25, V26, V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40, V41} -> V24 end))(V23)) end end(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21} -> (V20(V3)) end)).
'dn--un--genSym_Elaboration_Elab'(V0) -> {'Language.Reflection.GenSym', V0}.
'dn--un--genSym_Elaboration_($t $m)'(V0, V1, V2, V3) -> (begin (V22 = V1), fun (V23) -> ((((V22('erased'))('erased'))(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V24, V25, V26, V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40, V41} -> V24 end))(V23)) end end(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21} -> (V15(V3)) end)).
'dn--un--failAt_Elaboration_Elab'(V0, V1) -> {'Language.Reflection.Fail', V0, V1}.
'dn--un--failAt_Elaboration_($t $m)'(V0, V1, V2, V3, V4) -> (begin (V23 = V1), fun (V24) -> ((((V23('erased'))('erased'))(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V25, V26, V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40, V41, V42} -> V25 end))(V24)) end end(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> (((V6('erased'))(V3))(V4)) end)).
'dn--un--empty_Alternative_Elab'() -> {'Language.Reflection.Fail', {'Language.Reflection.TT.EmptyFC'}, <<""/utf8>>}.
'dn--un--declare_Elaboration_Elab'(V0) -> {'Language.Reflection.Declare', V0}.
'dn--un--declare_Elaboration_($t $m)'(V0, V1, V2, V3) -> (begin (V22 = V1), fun (V23) -> ((((V22('erased'))('erased'))(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V24, V25, V26, V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40, V41} -> V24 end))(V23)) end end(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21} -> (V21(V3)) end)).
'dn--un--check_Elaboration_Elab'(V0) -> {'Language.Reflection.Check', V0}.
'dn--un--check_Elaboration_($t $m)'(V0, V1, V2, V3) -> (begin (V22 = V1), fun (V23) -> ((((V22('erased'))('erased'))(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V24, V25, V26, V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40, V41} -> V24 end))(V23)) end end(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21} -> ((V10('erased'))(V3)) end)).
'dn--un--__Impl_Monad_Elab'() -> {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_Elab'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative_Elab'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_Elab'(V8, V9)) end end end end}, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un-->>=_Monad_Elab'(V12, V13)) end end end end, fun (V14) -> fun (V15) -> ('dn--un--join_Monad_Elab'(V15)) end end}.
'dn--un--__Impl_Functor_Elab'(V0, V1, V2, V3) -> ('dn--un--map_Functor_Elab'(V2, V3)).
'dn--un--__Impl_Elaboration_Elab'() -> {'Language.Reflection.dn--un--__mkElaboration', {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_Elab'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative_Elab'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_Elab'(V8, V9)) end end end end}, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un-->>=_Monad_Elab'(V12, V13)) end end end end, fun (V14) -> fun (V15) -> ('dn--un--join_Monad_Elab'(V15)) end end}, fun (V16) -> fun (V17) -> fun (V18) -> ('dn--un--failAt_Elaboration_Elab'(V17, V18)) end end end, fun (V19) -> fun (V20) -> fun (V21) -> ('dn--un--try_Elaboration_Elab'(V20, V21)) end end end, fun (V22) -> fun (V23) -> fun (V24) -> ('dn--un--logMsg_Elaboration_Elab'(V22, V23, V24)) end end end, fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> ('dn--un--logTerm_Elaboration_Elab'(V25, V26, V27, V28)) end end end end, fun (V29) -> fun (V30) -> fun (V31) -> fun (V32) -> ('dn--un--logSugaredTerm_Elaboration_Elab'(V29, V30, V31, V32)) end end end end, fun (V33) -> fun (V34) -> ('dn--un--check_Elaboration_Elab'(V34)) end end, fun (V35) -> fun (V36) -> ('dn--un--quote_Elaboration_Elab'('erased')) end end, fun (V37) -> fun (V38) -> fun (V39) -> ('dn--un--lambda_Elaboration_Elab'('erased', 'erased', V39)) end end end, ('dn--un--goal_Elaboration_Elab'()), ('dn--un--localVars_Elaboration_Elab'()), fun (V40) -> ('dn--un--genSym_Elaboration_Elab'(V40)) end, fun (V41) -> ('dn--un--inCurrentNS_Elaboration_Elab'(V41)) end, fun (V42) -> ('dn--un--getType_Elaboration_Elab'(V42)) end, fun (V43) -> ('dn--un--getInfo_Elaboration_Elab'(V43)) end, fun (V44) -> ('dn--un--getLocalType_Elaboration_Elab'(V44)) end, fun (V45) -> ('dn--un--getCons_Elaboration_Elab'(V45)) end, fun (V46) -> ('dn--un--declare_Elaboration_Elab'(V46)) end}.
'dn--un--__Impl_Elaboration_($t $m)'(V0, V1, V2) -> {'Language.Reflection.dn--un--__mkElaboration', V2, fun (V3) -> fun (V4) -> fun (V5) -> ('dn--un--failAt_Elaboration_($t $m)'(V0, V1, V2, V4, V5)) end end end, fun (V6) -> fun (V7) -> fun (V8) -> ('dn--un--try_Elaboration_($t $m)'(V0, V1, V2, V7, V8)) end end end, fun (V9) -> fun (V10) -> fun (V11) -> ('dn--un--logMsg_Elaboration_($t $m)'(V0, V1, V2, V9, V10, V11)) end end end, fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> ('dn--un--logTerm_Elaboration_($t $m)'(V0, V1, V2, V12, V13, V14, V15)) end end end end, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> ('dn--un--logSugaredTerm_Elaboration_($t $m)'(V0, V1, V2, V16, V17, V18, V19)) end end end end, fun (V20) -> fun (V21) -> ('dn--un--check_Elaboration_($t $m)'(V0, V1, V2, V21)) end end, fun (V22) -> fun (V23) -> ('dn--un--quote_Elaboration_($t $m)'(V0, V1, V2)) end end, fun (V24) -> fun (V25) -> fun (V26) -> ('dn--un--lambda_Elaboration_($t $m)'(V0, V1, V2, V26)) end end end, ('dn--un--goal_Elaboration_($t $m)'(V0, V1, V2)), ('dn--un--localVars_Elaboration_($t $m)'(V0, V1, V2)), fun (V27) -> ('dn--un--genSym_Elaboration_($t $m)'(V0, V1, V2, V27)) end, fun (V28) -> ('dn--un--inCurrentNS_Elaboration_($t $m)'(V0, V1, V2, V28)) end, fun (V29) -> ('dn--un--getType_Elaboration_($t $m)'(V0, V1, V2, V29)) end, fun (V30) -> ('dn--un--getInfo_Elaboration_($t $m)'(V0, V1, V2, V30)) end, fun (V31) -> ('dn--un--getLocalType_Elaboration_($t $m)'(V0, V1, V2, V31)) end, fun (V32) -> ('dn--un--getCons_Elaboration_($t $m)'(V0, V1, V2, V32)) end, fun (V33) -> ('dn--un--declare_Elaboration_($t $m)'(V0, V1, V2, V33)) end}.
'dn--un--__Impl_Applicative_Elab'() -> {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_Elab'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative_Elab'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_Elab'(V8, V9)) end end end end}.
'dn--un--__Impl_Alternative_Elab'() -> {'Prelude.Interfaces.MkAlternative', {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_Elab'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative_Elab'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_Elab'(V8, V9)) end end end end}, fun (V10) -> ('dn--un--empty_Alternative_Elab'()) end, fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--<|>_Alternative_Elab'(V12, V13)) end end end}.
'dn--un--__Elaboration_(Monad m)'(V0) -> case V0 of {'Language.Reflection.dn--un--__mkElaboration', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18} -> V1 end.
'dn--un-->>=_Monad_Elab'(V0, V1) -> {'Language.Reflection.Bind', V0, V1}.
'dn--un--<|>_Alternative_Elab'(V0, V1) -> {'Language.Reflection.Try', V0, (V1())}.
'dn--un--<*>_Applicative_Elab'(V0, V1) -> {'Language.Reflection.Bind', V0, fun (V2) -> ((begin (V7 = fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('dn--un--map_Functor_Elab'(V5, V6)) end end end end), fun (V8) -> fun (V9) -> ((((V7('erased'))('erased'))(V8))(V9)) end end end(V2))(V1)) end}.
'un--try'(V0, V1, V2) -> case V0 of {'Language.Reflection.dn--un--__mkElaboration', V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20} -> (((V5('erased'))(V1))(V2)) end.
'un--search'(V0, V1) -> ('un--catch'(V0, ('dn--un--check_Elaboration_Elab'({'Language.Reflection.TTImp.ISearch', {'Language.Reflection.TT.MkFC', {'Language.Reflection.TT.PhysicalIdrSrc', [<<"Reflection"/utf8>> | [<<"Language"/utf8>> | []]]}, {'Builtin.MkPair', 217, 44}, {'Builtin.MkPair', 217, 51}}, 50})))).
'un--quote'(V0, V1) -> case V0 of {'Language.Reflection.dn--un--__mkElaboration', V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19} -> ((V9('erased'))('erased')) end.
'un--logTerm'(V0, V1, V2, V3) -> case V0 of {'Language.Reflection.dn--un--__mkElaboration', V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21} -> fun (V22) -> ((((V8(V1))(V2))(V3))(V22)) end end.
'un--logSugaredTerm'(V0, V1, V2, V3) -> case V0 of {'Language.Reflection.dn--un--__mkElaboration', V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21} -> fun (V22) -> ((((V9(V1))(V2))(V3))(V22)) end end.
'un--logMsg'(V0, V1, V2, V3) -> case V0 of {'Language.Reflection.dn--un--__mkElaboration', V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21} -> (((V7(V1))(V2))(V3)) end.
'un--logGoal'(V0, V1, V2, V3) -> case V0 of {'Language.Reflection.dn--un--__mkElaboration', V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21} -> case V4 of {'Prelude.Interfaces.MkMonad', V22, V23, V24} -> ((((V23('erased'))('erased'))(case V0 of {'Language.Reflection.dn--un--__mkElaboration', V69, V70, V71, V72, V73, V74, V75, V76, V77, V78, V79, V80, V81, V82, V83, V84, V85, V86} -> V78 end))(fun (V25) -> case V25 of {'Prelude.Types.Just', V26} -> case V0 of {'Language.Reflection.dn--un--__mkElaboration', V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40, V41, V42, V43, V44} -> ((((V31(V1))(V2))(V3))(V26)) end; {'Prelude.Types.Nothing'} -> case V0 of {'Language.Reflection.dn--un--__mkElaboration', V45, V46, V47, V48, V49, V50, V51, V52, V53, V54, V55, V56, V57, V58, V59, V60, V61, V62} -> case V45 of {'Prelude.Interfaces.MkMonad', V63, V64, V65} -> case V63 of {'Prelude.Interfaces.MkApplicative', V66, V67, V68} -> ((V67('erased'))({'Builtin.MkUnit'})) end end end end end)) end end.
'un--localVars'(V0) -> case V0 of {'Language.Reflection.dn--un--__mkElaboration', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18} -> V11 end.
'un--lambda'(V0, V1, V2, V3) -> case V0 of {'Language.Reflection.dn--un--__mkElaboration', V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21} -> (((V12('erased'))('erased'))(V3)) end.
'un--inCurrentNS'(V0, V1) -> case V0 of {'Language.Reflection.dn--un--__mkElaboration', V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19} -> (V14(V1)) end.
'un--goal'(V0) -> case V0 of {'Language.Reflection.dn--un--__mkElaboration', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18} -> V10 end.
'un--getType'(V0, V1) -> case V0 of {'Language.Reflection.dn--un--__mkElaboration', V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19} -> (V15(V1)) end.
'un--getLocalType'(V0, V1) -> case V0 of {'Language.Reflection.dn--un--__mkElaboration', V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19} -> (V17(V1)) end.
'un--getInfo'(V0, V1) -> case V0 of {'Language.Reflection.dn--un--__mkElaboration', V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19} -> (V16(V1)) end.
'un--getCons'(V0, V1) -> case V0 of {'Language.Reflection.dn--un--__mkElaboration', V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19} -> (V18(V1)) end.
'un--genSym'(V0, V1) -> case V0 of {'Language.Reflection.dn--un--__mkElaboration', V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19} -> (V13(V1)) end.
'un--failAt'(V0, V1, V2) -> case V0 of {'Language.Reflection.dn--un--__mkElaboration', V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20} -> (((V4('erased'))(V1))(V2)) end.
'un--fail'(V0, V1) -> case V0 of {'Language.Reflection.dn--un--__mkElaboration', V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19} -> (((V3('erased'))({'Language.Reflection.TT.EmptyFC'}))(V1)) end.
'un--declare'(V0, V1) -> case V0 of {'Language.Reflection.dn--un--__mkElaboration', V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19} -> (V19(V1)) end.
'un--check'(V0, V1) -> case V0 of {'Language.Reflection.dn--un--__mkElaboration', V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19} -> ((V8('erased'))(V1)) end.
'un--catch'(V0, V1) -> case V0 of {'Language.Reflection.dn--un--__mkElaboration', V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19} -> (((V4('erased'))(((begin (V25 = fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> ('dn--un--map_Functor_Elab'(V23, V24)) end end end end), fun (V26) -> fun (V27) -> ((((V25('erased'))('erased'))(V26))(V27)) end end end(fun (V20) -> {'Prelude.Types.Just', V20} end))(V1))))(('dn--un--pure_Applicative_Elab'({'Prelude.Types.Nothing'})))) end.
