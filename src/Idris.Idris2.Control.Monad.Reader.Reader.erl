-module('Idris.Idris2.Control.Monad.Reader.Reader').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--pure_Applicative_((ReaderT $stateType) $f)'/3,
  'dn--un--map_Functor_((ReaderT $stateType) $f)'/3,
  'dn--un--lift_MonadTrans_(ReaderT $stateType)'/3,
  'dn--un--liftIO_HasIO_((ReaderT $stateType) $m)'/3,
  'dn--un--join_Monad_((ReaderT $stateType) $m)'/2,
  'dn--un--empty_Alternative_((ReaderT $stateType) $f)'/2,
  'dn--un--__Impl_Monad_((ReaderT $stateType) $m)'/1,
  'dn--un--__Impl_MonadTrans_(ReaderT $stateType)'/5,
  'dn--un--__Impl_HasIO_((ReaderT $stateType) $m)'/1,
  'dn--un--__Impl_Functor_((ReaderT $stateType) $f)'/5,
  'dn--un--__Impl_Applicative_((ReaderT $stateType) $f)'/1,
  'dn--un--__Impl_Alternative_((ReaderT $stateType) $f)'/1,
  'dn--un-->>=_Monad_((ReaderT $stateType) $m)'/3,
  'dn--un--<|>_Alternative_((ReaderT $stateType) $f)'/3,
  'dn--un--<*>_Applicative_((ReaderT $stateType) $f)'/3,
  'un--runReaderT'/2,
  'un--runReader'/2,
  'un--mapReaderT'/3,
  'un--Reader'/2
]).
'dn--un--pure_Applicative_((ReaderT $stateType) $f)'(V0, V1, V2) -> case V0 of {'Prelude.Interfaces.MkApplicative', V3, V4, V5} -> ((V4('erased'))(V1)) end.
'dn--un--map_Functor_((ReaderT $stateType) $f)'(V0, V1, V2) -> begin (V3 = V2), fun (V4) -> ((begin (V5 = V0), fun (V6) -> fun (V7) -> ((((V5('erased'))('erased'))(V6))(V7)) end end end(V1))((V3(V4)))) end end.
'dn--un--lift_MonadTrans_(ReaderT $stateType)'(V0, V1, V2) -> V1.
'dn--un--liftIO_HasIO_((ReaderT $stateType) $m)'(V0, V1, V2) -> case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> ((V4('erased'))(V1)) end.
'dn--un--join_Monad_((ReaderT $stateType) $m)'(V0, V1) -> ('dn--un-->>=_Monad_((ReaderT $stateType) $m)'(V0, V1, fun (V2) -> V2 end)).
'dn--un--empty_Alternative_((ReaderT $stateType) $f)'(V0, V1) -> case V0 of {'Prelude.Interfaces.MkAlternative', V2, V3, V4} -> (V3('erased')) end.
'dn--un--__Impl_Monad_((ReaderT $stateType) $m)'(V0) -> {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_((ReaderT $stateType) $f)'(case V0 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> case V5 of {'Prelude.Interfaces.MkApplicative', V8, V9, V10} -> V8 end end, V3, V4)) end end end end, fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--pure_Applicative_((ReaderT $stateType) $f)'(case V0 of {'Prelude.Interfaces.MkMonad', V14, V15, V16} -> V14 end, V12, V13)) end end end, fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> ('dn--un--<*>_Applicative_((ReaderT $stateType) $f)'(case V0 of {'Prelude.Interfaces.MkMonad', V21, V22, V23} -> V21 end, V19, V20)) end end end end}, fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> ('dn--un-->>=_Monad_((ReaderT $stateType) $m)'(V0, V26, V27)) end end end end, fun (V28) -> fun (V29) -> ('dn--un--join_Monad_((ReaderT $stateType) $m)'(V0, V29)) end end}.
'dn--un--__Impl_MonadTrans_(ReaderT $stateType)'(V0, V1, V2, V3, V4) -> V3.
'dn--un--__Impl_HasIO_((ReaderT $stateType) $m)'(V0) -> {'Prelude.IO.MkHasIO', {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_((ReaderT $stateType) $f)'(case V0 of {'Prelude.IO.MkHasIO', V5, V6} -> case V5 of {'Prelude.Interfaces.MkMonad', V7, V8, V9} -> case V7 of {'Prelude.Interfaces.MkApplicative', V10, V11, V12} -> V10 end end end, V3, V4)) end end end end, fun (V13) -> fun (V14) -> fun (V15) -> ('dn--un--pure_Applicative_((ReaderT $stateType) $f)'(case V0 of {'Prelude.IO.MkHasIO', V16, V17} -> case V16 of {'Prelude.Interfaces.MkMonad', V18, V19, V20} -> V18 end end, V14, V15)) end end end, fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> ('dn--un--<*>_Applicative_((ReaderT $stateType) $f)'(case V0 of {'Prelude.IO.MkHasIO', V25, V26} -> case V25 of {'Prelude.Interfaces.MkMonad', V27, V28, V29} -> V27 end end, V23, V24)) end end end end}, fun (V30) -> fun (V31) -> fun (V32) -> fun (V33) -> ('dn--un-->>=_Monad_((ReaderT $stateType) $m)'(case V0 of {'Prelude.IO.MkHasIO', V34, V35} -> V34 end, V32, V33)) end end end end, fun (V36) -> fun (V37) -> ('dn--un--join_Monad_((ReaderT $stateType) $m)'(case V0 of {'Prelude.IO.MkHasIO', V38, V39} -> V38 end, V37)) end end}, fun (V40) -> fun (V41) -> fun (V42) -> ('dn--un--liftIO_HasIO_((ReaderT $stateType) $m)'(V0, V41, V42)) end end end}.
'dn--un--__Impl_Functor_((ReaderT $stateType) $f)'(V0, V1, V2, V3, V4) -> ('dn--un--map_Functor_((ReaderT $stateType) $f)'(V0, V3, V4)).
'dn--un--__Impl_Applicative_((ReaderT $stateType) $f)'(V0) -> {'Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_((ReaderT $stateType) $f)'(case V0 of {'Prelude.Interfaces.MkApplicative', V5, V6, V7} -> V5 end, V3, V4)) end end end end, fun (V8) -> fun (V9) -> fun (V10) -> ('dn--un--pure_Applicative_((ReaderT $stateType) $f)'(V0, V9, V10)) end end end, fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> ('dn--un--<*>_Applicative_((ReaderT $stateType) $f)'(V0, V13, V14)) end end end end}.
'dn--un--__Impl_Alternative_((ReaderT $stateType) $f)'(V0) -> {'Prelude.Interfaces.MkAlternative', {'Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_((ReaderT $stateType) $f)'(case V0 of {'Prelude.Interfaces.MkAlternative', V5, V6, V7} -> case V5 of {'Prelude.Interfaces.MkApplicative', V8, V9, V10} -> V8 end end, V3, V4)) end end end end, fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--pure_Applicative_((ReaderT $stateType) $f)'(case V0 of {'Prelude.Interfaces.MkAlternative', V14, V15, V16} -> V14 end, V12, V13)) end end end, fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> ('dn--un--<*>_Applicative_((ReaderT $stateType) $f)'(case V0 of {'Prelude.Interfaces.MkAlternative', V21, V22, V23} -> V21 end, V19, V20)) end end end end}, fun (V24) -> fun (V25) -> ('dn--un--empty_Alternative_((ReaderT $stateType) $f)'(V0, V25)) end end, fun (V26) -> fun (V27) -> fun (V28) -> ('dn--un--<|>_Alternative_((ReaderT $stateType) $f)'(V0, V27, V28)) end end end}.
'dn--un-->>=_Monad_((ReaderT $stateType) $m)'(V0, V1, V2) -> begin (V3 = V1), fun (V4) -> case V0 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> ((((V6('erased'))('erased'))((V3(V4))))(fun (V8) -> (begin (V9 = (V2(V8))), V9 end(V4)) end)) end end end.
'dn--un--<|>_Alternative_((ReaderT $stateType) $f)'(V0, V1, V2) -> begin (V3 = V1), fun (V4) -> case V0 of {'Prelude.Interfaces.MkAlternative', V5, V6, V7} -> (((V7('erased'))((V3(V4))))(fun () -> (begin (V8 = (V2())), V8 end(V4)) end)) end end end.
'dn--un--<*>_Applicative_((ReaderT $stateType) $f)'(V0, V1, V2) -> begin (V3 = V1), begin (V4 = V2), fun (V5) -> begin (V6 = (V3(V5))), begin (V7 = (V4(V5))), case V0 of {'Prelude.Interfaces.MkApplicative', V8, V9, V10} -> ((((V10('erased'))('erased'))(V6))(V7)) end end end end end end.
'un--runReaderT'(V0, V1) -> (begin (V2 = V1), V2 end(V0)).
'un--runReader'(V0, V1) -> begin (V3 = (begin (V2 = V1), V2 end(V0))), V3 end.
'un--mapReaderT'(V0, V1, V2) -> (V0((begin (V3 = V1), V3 end(V2)))).
'un--Reader'(V0, V1) -> {'Control.Monad.Reader.Reader.ReaderT', V0, fun (V2) -> {'Control.Monad.Identity.Identity', V2} end, V1}.
