-module('Idris.Idris2.Control.Monad.State.State').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case-->>=-1760'/5,
  'case--case block in <*>-1573'/8,
  'case--<*>-1534'/5,
  'case--mapState-1273'/2,
  'dn--un--pure_Applicative_((StateT $stateType) $f)'/3,
  'dn--un--map_Functor_((StateT $stateType) $f)'/3,
  'dn--un--lift_MonadTrans_(StateT $stateType)'/3,
  'dn--un--liftIO_HasIO_((StateT $stateType) $m)'/3,
  'dn--un--join_Monad_((StateT $stateType) $m)'/2,
  'dn--un--empty_Alternative_((StateT $st) $f)'/2,
  'dn--un--__Impl_Monad_((StateT $stateType) $m)'/1,
  'dn--un--__Impl_MonadTrans_(StateT $stateType)'/5,
  'dn--un--__Impl_HasIO_((StateT $stateType) $m)'/1,
  'dn--un--__Impl_Functor_((StateT $stateType) $f)'/5,
  'dn--un--__Impl_Applicative_((StateT $stateType) $f)'/1,
  'dn--un--__Impl_Alternative_((StateT $st) $f)'/1,
  'dn--un-->>=_Monad_((StateT $stateType) $m)'/3,
  'dn--un--<|>_Alternative_((StateT $st) $f)'/3,
  'dn--un--<*>_Applicative_((StateT $stateType) $f)'/3,
  'un--runStateT'/2,
  'un--runState'/2,
  'un--mapStateT'/3,
  'un--mapState'/3,
  'un--execStateT'/3,
  'un--execState'/2,
  'un--evalStateT'/3,
  'un--evalState'/2,
  'un--State'/2
]).
'case-->>=-1760'(V0, V1, V2, V3, V4) -> case V4 of {'Builtin.MkPair', V5, V6} -> (begin (V7 = (V2(V6))), V7 end(V5)) end.
'case--case block in <*>-1573'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V7 of {'Builtin.MkPair', V8, V9} -> case V0 of {'Prelude.Interfaces.MkMonad', V10, V11, V12} -> case V10 of {'Prelude.Interfaces.MkApplicative', V13, V14, V15} -> ((V14('erased'))({'Builtin.MkPair', V8, (V5(V9))})) end end end.
'case--<*>-1534'(V0, V1, V2, V3, V4) -> case V4 of {'Builtin.MkPair', V5, V6} -> case V0 of {'Prelude.Interfaces.MkMonad', V7, V8, V9} -> ((((V8('erased'))('erased'))((V2(V5))))(fun (V10) -> case V10 of {'Builtin.MkPair', V11, V12} -> case V0 of {'Prelude.Interfaces.MkMonad', V13, V14, V15} -> case V13 of {'Prelude.Interfaces.MkApplicative', V16, V17, V18} -> ((V17('erased'))({'Builtin.MkPair', V11, (V6(V12))})) end end end end)) end end.
'case--mapState-1273'(V0, V1) -> begin (V2 = V1), (V0(V2)) end.
'dn--un--pure_Applicative_((StateT $stateType) $f)'(V0, V1, V2) -> case V0 of {'Prelude.Interfaces.MkMonad', V3, V4, V5} -> case V3 of {'Prelude.Interfaces.MkApplicative', V6, V7, V8} -> ((V7('erased'))({'Builtin.MkPair', V2, V1})) end end.
'dn--un--map_Functor_((StateT $stateType) $f)'(V0, V1, V2) -> begin (V3 = V2), fun (V4) -> ((begin (V14 = V0), fun (V15) -> fun (V16) -> ((((V14('erased'))('erased'))(V15))(V16)) end end end((begin (V11 = fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> case V8 of {'Builtin.MkPair', V9, V10} -> {'Builtin.MkPair', V9, (V7(V10))} end end end end end), fun (V12) -> fun (V13) -> ((((V11('erased'))('erased'))(V12))(V13)) end end end(V1))))((V3(V4)))) end end.
'dn--un--lift_MonadTrans_(StateT $stateType)'(V0, V1, V2) -> ((begin (V10 = case V0 of {'Prelude.Interfaces.MkMonad', V4, V5, V6} -> case V4 of {'Prelude.Interfaces.MkApplicative', V7, V8, V9} -> V7 end end), fun (V11) -> fun (V12) -> ((((V10('erased'))('erased'))(V11))(V12)) end end end(fun (V3) -> {'Builtin.MkPair', V2, V3} end))(V1)).
'dn--un--liftIO_HasIO_((StateT $stateType) $m)'(V0, V1, V2) -> case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> ((V4('erased'))(fun (V5) -> begin (V6 = (V1(V5))), {'Builtin.MkPair', V2, V6} end end)) end.
'dn--un--join_Monad_((StateT $stateType) $m)'(V0, V1) -> ('dn--un-->>=_Monad_((StateT $stateType) $m)'(V0, V1, fun (V2) -> V2 end)).
'dn--un--empty_Alternative_((StateT $st) $f)'(V0, V1) -> ('dn--un--lift_MonadTrans_(StateT $stateType)'(('Idris.Idris2.Builtin':'un--fst'(V0)), case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Prelude.Interfaces.MkAlternative', V2, V3, V4} -> (V3('erased')) end, V1)).
'dn--un--__Impl_Monad_((StateT $stateType) $m)'(V0) -> {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_((StateT $stateType) $f)'(case V0 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> case V5 of {'Prelude.Interfaces.MkApplicative', V8, V9, V10} -> V8 end end, V3, V4)) end end end end, fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--pure_Applicative_((StateT $stateType) $f)'(V0, V12, V13)) end end end, fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> ('dn--un--<*>_Applicative_((StateT $stateType) $f)'(V0, V16, V17)) end end end end}, fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> ('dn--un-->>=_Monad_((StateT $stateType) $m)'(V0, V20, V21)) end end end end, fun (V22) -> fun (V23) -> ('dn--un--join_Monad_((StateT $stateType) $m)'(V0, V23)) end end}.
'dn--un--__Impl_MonadTrans_(StateT $stateType)'(V0, V1, V2, V3, V4) -> ('dn--un--lift_MonadTrans_(StateT $stateType)'(V2, V3, V4)).
'dn--un--__Impl_HasIO_((StateT $stateType) $m)'(V0) -> {'Prelude.IO.MkHasIO', {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_((StateT $stateType) $f)'(case V0 of {'Prelude.IO.MkHasIO', V5, V6} -> case V5 of {'Prelude.Interfaces.MkMonad', V7, V8, V9} -> case V7 of {'Prelude.Interfaces.MkApplicative', V10, V11, V12} -> V10 end end end, V3, V4)) end end end end, fun (V13) -> fun (V14) -> fun (V15) -> ('dn--un--pure_Applicative_((StateT $stateType) $f)'(case V0 of {'Prelude.IO.MkHasIO', V16, V17} -> V16 end, V14, V15)) end end end, fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> ('dn--un--<*>_Applicative_((StateT $stateType) $f)'(case V0 of {'Prelude.IO.MkHasIO', V22, V23} -> V22 end, V20, V21)) end end end end}, fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> ('dn--un-->>=_Monad_((StateT $stateType) $m)'(case V0 of {'Prelude.IO.MkHasIO', V28, V29} -> V28 end, V26, V27)) end end end end, fun (V30) -> fun (V31) -> ('dn--un--join_Monad_((StateT $stateType) $m)'(case V0 of {'Prelude.IO.MkHasIO', V32, V33} -> V32 end, V31)) end end}, fun (V34) -> fun (V35) -> fun (V36) -> ('dn--un--liftIO_HasIO_((StateT $stateType) $m)'(V0, V35, V36)) end end end}.
'dn--un--__Impl_Functor_((StateT $stateType) $f)'(V0, V1, V2, V3, V4) -> ('dn--un--map_Functor_((StateT $stateType) $f)'(V0, V3, V4)).
'dn--un--__Impl_Applicative_((StateT $stateType) $f)'(V0) -> {'Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_((StateT $stateType) $f)'(case V0 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> case V5 of {'Prelude.Interfaces.MkApplicative', V8, V9, V10} -> V8 end end, V3, V4)) end end end end, fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--pure_Applicative_((StateT $stateType) $f)'(V0, V12, V13)) end end end, fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> ('dn--un--<*>_Applicative_((StateT $stateType) $f)'(V0, V16, V17)) end end end end}.
'dn--un--__Impl_Alternative_((StateT $st) $f)'(V0) -> {'Prelude.Interfaces.MkAlternative', {'Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_((StateT $stateType) $f)'(case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> case V5 of {'Prelude.Interfaces.MkApplicative', V8, V9, V10} -> V8 end end, V3, V4)) end end end end, fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--pure_Applicative_((StateT $stateType) $f)'(('Idris.Idris2.Builtin':'un--fst'(V0)), V12, V13)) end end end, fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> ('dn--un--<*>_Applicative_((StateT $stateType) $f)'(('Idris.Idris2.Builtin':'un--fst'(V0)), V16, V17)) end end end end}, fun (V18) -> fun (V19) -> ('dn--un--empty_Alternative_((StateT $st) $f)'(V0, V19)) end end, fun (V20) -> fun (V21) -> fun (V22) -> ('dn--un--<|>_Alternative_((StateT $st) $f)'(V0, V21, V22)) end end end}.
'dn--un-->>=_Monad_((StateT $stateType) $m)'(V0, V1, V2) -> begin (V3 = V1), fun (V4) -> case V0 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> ((((V6('erased'))('erased'))((V3(V4))))(fun (V8) -> case V8 of {'Builtin.MkPair', V9, V10} -> (begin (V11 = (V2(V10))), V11 end(V9)) end end)) end end end.
'dn--un--<|>_Alternative_((StateT $st) $f)'(V0, V1, V2) -> begin (V3 = V1), fun (V4) -> case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Prelude.Interfaces.MkAlternative', V5, V6, V7} -> (((V7('erased'))((V3(V4))))(fun () -> (begin (V8 = (V2())), V8 end(V4)) end)) end end end.
'dn--un--<*>_Applicative_((StateT $stateType) $f)'(V0, V1, V2) -> begin (V3 = V1), begin (V4 = V2), fun (V5) -> case V0 of {'Prelude.Interfaces.MkMonad', V6, V7, V8} -> ((((V7('erased'))('erased'))((V3(V5))))(fun (V9) -> case V9 of {'Builtin.MkPair', V10, V11} -> case V0 of {'Prelude.Interfaces.MkMonad', V12, V13, V14} -> ((((V13('erased'))('erased'))((V4(V10))))(fun (V15) -> case V15 of {'Builtin.MkPair', V16, V17} -> case V0 of {'Prelude.Interfaces.MkMonad', V18, V19, V20} -> case V18 of {'Prelude.Interfaces.MkApplicative', V21, V22, V23} -> ((V22('erased'))({'Builtin.MkPair', V16, (V11(V17))})) end end end end)) end end end)) end end end end.
'un--runStateT'(V0, V1) -> (begin (V2 = V1), V2 end(V0)).
'un--runState'(V0, V1) -> begin (V3 = (begin (V2 = V1), V2 end(V0))), V3 end.
'un--mapStateT'(V0, V1, V2) -> (V0((begin (V3 = V1), V3 end(V2)))).
'un--mapState'(V0, V1, V2) -> begin (V4 = (begin (V3 = V1), V3 end(V2))), (V0(V4)) end.
'un--execStateT'(V0, V1, V2) -> ((begin (V5 = V0), fun (V6) -> fun (V7) -> ((((V5('erased'))('erased'))(V6))(V7)) end end end(fun (V4) -> ('Idris.Idris2.Builtin':'un--fst'(V4)) end))((begin (V3 = V2), V3 end(V1)))).
'un--execState'(V0, V1) -> ('Idris.Idris2.Builtin':'un--fst'(begin (V3 = (begin (V2 = V1), V2 end(V0))), V3 end)).
'un--evalStateT'(V0, V1, V2) -> ((begin (V5 = V0), fun (V6) -> fun (V7) -> ((((V5('erased'))('erased'))(V6))(V7)) end end end(fun (V4) -> ('Idris.Idris2.Builtin':'un--snd'(V4)) end))((begin (V3 = V2), V3 end(V1)))).
'un--evalState'(V0, V1) -> ('Idris.Idris2.Builtin':'un--snd'(begin (V3 = (begin (V2 = V1), V2 end(V0))), V3 end)).
'un--State'(V0, V1) -> {'Control.Monad.State.State.StateT', V0, fun (V2) -> {'Control.Monad.Identity.Identity', V2} end, V1}.
