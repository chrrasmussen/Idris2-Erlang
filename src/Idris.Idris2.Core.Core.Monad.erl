-module('Idris.Idris2.Core.Core.Monad').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--join_Monad_CORECore'/1,
  'dn--un-->>=_Monad_CORECore'/2,
  'un--CORE'/0
]).
'dn--un--join_Monad_CORECore'(V0) -> begin (V1 = V0), fun (V2) -> begin (V3 = (V1(V2))), case V3 of {'Prelude.Types.Left', V4} -> {'Prelude.Types.Left', V4}; {'Prelude.Types.Right', V5} -> (begin (V6 = V5), V6 end(V2)) end end end end.
'dn--un-->>=_Monad_CORECore'(V0, V1) -> begin (V2 = V0), fun (V3) -> begin (V4 = (V2(V3))), case V4 of {'Prelude.Types.Left', V5} -> {'Prelude.Types.Left', V5}; {'Prelude.Types.Right', V6} -> (begin (V7 = (V1(V6))), V7 end(V3)) end end end end.
'un--CORE'() -> {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('Idris.Idris2.Core.Core.Functor':'dn--un--map_Functor_CORECore'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> fun (V6) -> ('Idris.Idris2.Core.Core.Applicative':'dn--un--pure_Applicative_CORECore'(V5, V6)) end end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('Idris.Idris2.Core.Core.Applicative':'dn--un--<*>_Applicative_CORECore'(V9, V10)) end end end end}, fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> ('dn--un-->>=_Monad_CORECore'(V13, V14)) end end end end, fun (V15) -> fun (V16) -> ('dn--un--join_Monad_CORECore'(V16)) end end}.
