-module('Idris.Idris2.Core.Core.Search').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--traverse'/2,
  'un--functor'/4,
  'un--filter'/2,
  'un--Search'/1
]).
'un--traverse'(V0, V1) -> ('Idris.Idris2.Libraries.Data.Tap':'un--traverse'({'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('Idris.Idris2.Core.Core.Functor':'dn--un--map_Functor_CORECore'(V4, V5)) end end end end, fun (V6) -> fun (V7) -> fun (V8) -> ('Idris.Idris2.Core.Core.Applicative':'dn--un--pure_Applicative_CORECore'(V7, V8)) end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> ('Idris.Idris2.Core.Core.Applicative':'dn--un--<*>_Applicative_CORECore'(V11, V12)) end end end end}, fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> ('Idris.Idris2.Core.Core.Monad':'dn--un-->>=_Monad_CORECore'(V15, V16)) end end end end, fun (V17) -> fun (V18) -> ('Idris.Idris2.Core.Core.Monad':'dn--un--join_Monad_CORECore'(V18)) end end}, V0, V1)).
'un--functor'(V0, V1, V2, V3) -> ('Idris.Idris2.Libraries.Data.Tap':'dn--un--map_Functor_(Tap $m)'(fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Core.Core.Functor':'dn--un--map_Functor_CORECore'(V6, V7)) end end end end, V2, V3)).
'un--filter'(V0, V1) -> ('Idris.Idris2.Libraries.Data.Tap':'un--filter'({'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('Idris.Idris2.Core.Core.Functor':'dn--un--map_Functor_CORECore'(V4, V5)) end end end end, fun (V6) -> fun (V7) -> fun (V8) -> ('Idris.Idris2.Core.Core.Applicative':'dn--un--pure_Applicative_CORECore'(V7, V8)) end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> ('Idris.Idris2.Core.Core.Applicative':'dn--un--<*>_Applicative_CORECore'(V11, V12)) end end end end}, fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> ('Idris.Idris2.Core.Core.Monad':'dn--un-->>=_Monad_CORECore'(V15, V16)) end end end end, fun (V17) -> fun (V18) -> ('Idris.Idris2.Core.Core.Monad':'dn--un--join_Monad_CORECore'(V18)) end end}, V0, V1)).
'un--Search'(V0) -> {'Libraries.Data.Tap.Tap', fun (V1) -> {'Core.Core.Core', V1} end, V0}.
