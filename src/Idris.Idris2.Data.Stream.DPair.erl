-module('Idris.Idris2.Data.Stream.DPair').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--planeWith'/3,
  'un--plane'/2
]).
'un--planeWith'(V0, V1, V2) -> ('Idris.Idris2.Data.Stream':'un--cantor'(((begin (V15 = fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Stream'(V13, V14)) end end end end), fun (V16) -> fun (V17) -> ((((V15('erased'))('erased'))(V16))(V17)) end end end(fun (V3) -> ((begin (V8 = fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Stream'(V6, V7)) end end end end), fun (V9) -> fun (V10) -> ((((V8('erased'))('erased'))(V9))(V10)) end end end((V0(V3))))((V2(V3)))) end))(V1)))).
'un--plane'(V0, V1) -> ('un--planeWith'(fun (V2) -> fun (V3) -> {'Builtin.DPair.MkDPair', V2, V3} end end, V0, V1)).
