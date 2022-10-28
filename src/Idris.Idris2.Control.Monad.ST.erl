-module('Idris.Idris2.Control.Monad.ST').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--pure_Applicative_(ST $s)'/2,
  'dn--un--map_Functor_(ST $s)'/2,
  'dn--un--join_Monad_(ST $s)'/1,
  'dn--un--__Impl_Monad_(ST $s)'/0,
  'dn--un--__Impl_Functor_(ST $s)'/4,
  'dn--un--__Impl_Applicative_(ST $s)'/0,
  'dn--un-->>=_Monad_(ST $s)'/2,
  'dn--un--<*>_Applicative_(ST $s)'/2,
  'un--writeSTRef'/2,
  'un--runST'/1,
  'un--readSTRef'/1,
  'un--newSTRef'/2,
  'un--modifySTRef'/2
]).
'dn--un--pure_Applicative_(ST $s)'(V0, V1) -> V0.
'dn--un--map_Functor_(ST $s)'(V0, V1) -> begin (V2 = V1), ((begin (V8 = fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V5, V6, V7)) end end end end end), fun (V9) -> fun (V10) -> ((((V8('erased'))('erased'))(V9))(V10)) end end end(V0))(V2)) end.
'dn--un--join_Monad_(ST $s)'(V0) -> ('dn--un-->>=_Monad_(ST $s)'(V0, fun (V1) -> V1 end)).
'dn--un--__Impl_Monad_(ST $s)'() -> {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_(ST $s)'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> fun (V6) -> V5 end end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('dn--un--<*>_Applicative_(ST $s)'(V9, V10)) end end end end}, fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> ('dn--un-->>=_Monad_(ST $s)'(V13, V14)) end end end end, fun (V15) -> fun (V16) -> ('dn--un--join_Monad_(ST $s)'(V16)) end end}.
'dn--un--__Impl_Functor_(ST $s)'(V0, V1, V2, V3) -> ('dn--un--map_Functor_(ST $s)'(V2, V3)).
'dn--un--__Impl_Applicative_(ST $s)'() -> {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_(ST $s)'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> fun (V6) -> V5 end end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('dn--un--<*>_Applicative_(ST $s)'(V9, V10)) end end end end}.
'dn--un-->>=_Monad_(ST $s)'(V0, V1) -> begin (V2 = V0), fun (V3) -> begin (V4 = (V2(V3))), (begin (V5 = (V1(V4))), V5 end(V3)) end end end.
'dn--un--<*>_Applicative_(ST $s)'(V0, V1) -> begin (V2 = V0), begin (V3 = V1), fun (V4) -> begin (V5 = (V2(V4))), begin (V6 = (V3(V4))), (V5(V6)) end end end end end.
'un--writeSTRef'(V0, V1) -> begin (V2 = V0), begin (V3 = V2), fun (V4) -> ('erlang':'put'(V3, V1)) end end end.
'un--runST'(V0) -> begin (V1 = (V0('erased'))), ('Idris.Idris2.PrimIO':'un--unsafePerformIO'(V1)) end.
'un--readSTRef'(V0) -> begin (V1 = V0), begin (V2 = V1), fun (V3) -> ('erlang':'get'(V2)) end end end.
'un--newSTRef'(V0, V1) -> begin (V29 = (('Idris.Idris2.Data.IORef':'un--newIORef'({'Prelude.IO.MkHasIO', {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V4, V5, V6)) end end end end end, fun (V7) -> fun (V8) -> fun (V9) -> V8 end end end, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> begin (V15 = (V12(V14))), begin (V16 = (V13(V14))), (V15(V16)) end end end end end end end}, fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> begin (V22 = (V19(V21))), ((V20(V22))(V21)) end end end end end end, fun (V23) -> fun (V24) -> fun (V25) -> begin (V26 = (V24(V25))), (V26(V25)) end end end end}, fun (V27) -> fun (V28) -> V28 end end}, V0))(V1))), V29 end.
'un--modifySTRef'(V0, V1) -> ('dn--un-->>=_Monad_(ST $s)'(begin (V2 = V0), begin (V3 = V2), fun (V4) -> ('erlang':'get'(V3)) end end end, fun (V5) -> begin (V6 = V0), begin (V7 = V6), fun (V8) -> ('erlang':'put'(V7, (V1(V5)))) end end end end)).
