-module('Idris.Idris2.Control.Monad.ST').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--pure_Applicative_(ST $s)'/2,
  'dn--un--map_Functor_(ST $s)'/2,
  'dn--un--join_Monad_(ST $s)'/2,
  'dn--un--__Impl_Monad_(ST $s)'/0,
  'dn--un--__Impl_Functor_(ST $s)'/4,
  'dn--un--__Impl_Applicative_(ST $s)'/0,
  'dn--un-->>=_Monad_(ST $s)'/3,
  'dn--un--<*>_Applicative_(ST $s)'/3,
  'un--writeSTRef'/3,
  'un--runST'/1,
  'un--readSTRef'/2,
  'un--newSTRef'/2,
  'un--modifySTRef'/3
]).
'dn--un--pure_Applicative_(ST $s)'(V0, V1) -> V0.
'dn--un--map_Functor_(ST $s)'(V0, V1) -> ('Idris.Idris2.Prelude.Interfaces':'un--<$>'(fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V4, V5, V6)) end end end end end, V0, V1)).
'dn--un--join_Monad_(ST $s)'(V0, V1) -> ('dn--un-->>=_Monad_(ST $s)'(V0, fun (V2) -> V2 end, V1)).
'dn--un--__Impl_Monad_(ST $s)'() -> {'Idris.Prelude.Interfaces.MkMonad', {'Idris.Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_(ST $s)'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> fun (V6) -> ('dn--un--pure_Applicative_(ST $s)'(V5, V6)) end end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> ('dn--un--<*>_Applicative_(ST $s)'(V9, V10, V11)) end end end end end}, fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> ('dn--un-->>=_Monad_(ST $s)'(V14, V15, V16)) end end end end end, fun (V17) -> fun (V18) -> fun (V19) -> ('dn--un--join_Monad_(ST $s)'(V18, V19)) end end end}.
'dn--un--__Impl_Functor_(ST $s)'(V0, V1, V2, V3) -> ('dn--un--map_Functor_(ST $s)'(V2, V3)).
'dn--un--__Impl_Applicative_(ST $s)'() -> {'Idris.Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_(ST $s)'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> fun (V6) -> ('dn--un--pure_Applicative_(ST $s)'(V5, V6)) end end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> ('dn--un--<*>_Applicative_(ST $s)'(V9, V10, V11)) end end end end end}.
'dn--un-->>=_Monad_(ST $s)'(V0, V1, V2) -> begin (V3 = (V0(V2))), ((V1(V3))(V2)) end.
'dn--un--<*>_Applicative_(ST $s)'(V0, V1, V2) -> begin (V3 = (V0(V2))), begin (V4 = (V1(V2))), (V3(V4)) end end.
'un--writeSTRef'(V0, V1, V2) -> ('erlang':'put'(V0, V1)).
'un--runST'(V0) -> ('Idris.Idris2.PrimIO':'un--unsafePerformIO'((V0('erased')))).
'un--readSTRef'(V0, V1) -> ('erlang':'get'(V0)).
'un--newSTRef'(V0, V1) -> begin (V29 = (('Idris.Idris2.Data.IORef':'un--newIORef'({'Idris.Prelude.IO.MkHasIO', {'Idris.Prelude.Interfaces.MkMonad', {'Idris.Prelude.Interfaces.MkApplicative', fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V4, V5, V6)) end end end end end, fun (V7) -> fun (V8) -> fun (V9) -> V8 end end end, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> begin (V15 = (V12(V14))), begin (V16 = (V13(V14))), (V15(V16)) end end end end end end end}, fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> begin (V22 = (V19(V21))), ((V20(V22))(V21)) end end end end end end, fun (V23) -> fun (V24) -> fun (V25) -> begin (V26 = (V24(V25))), (V26(V25)) end end end end}, fun (V27) -> fun (V28) -> V28 end end}, V0))(V1))), V29 end.
'un--modifySTRef'(V0, V1, V2) -> ('dn--un-->>=_Monad_(ST $s)'(fun (V3) -> ('erlang':'get'(V0)) end, fun (V4) -> fun (V5) -> ('erlang':'put'(V0, (V1(V4)))) end end, V2)).
