-module('Idris.Idris2.Core.Core.Functor').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--map_Functor_CORECore'/2,
  'un--CORE'/4
]).
'dn--un--map_Functor_CORECore'(V0, V1) -> begin (V2 = V1), ((begin (V17 = fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V14, V15, V16)) end end end end end), fun (V18) -> fun (V19) -> ((((V17('erased'))('erased'))(V18))(V19)) end end end((begin (V9 = fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> case V6 of {'Prelude.Types.Left', V7} -> {'Prelude.Types.Left', V7}; {'Prelude.Types.Right', V8} -> {'Prelude.Types.Right', (V5(V8))} end end end end end), fun (V10) -> fun (V11) -> ((((V9('erased'))('erased'))(V10))(V11)) end end end(V0))))(V2)) end.
'un--CORE'(V0, V1, V2, V3) -> ('dn--un--map_Functor_CORECore'(V2, V3)).
