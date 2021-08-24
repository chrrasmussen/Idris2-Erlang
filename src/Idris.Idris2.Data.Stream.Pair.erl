-module('Idris.Idris2.Data.Stream.Pair').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--planeWith'/3,
  'un--plane'/2
]).
'un--planeWith'(V0, V1, V2) -> ('Idris.Idris2.Data.Stream':'un--cantor'(('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Stream'(fun (V3) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Stream'((V0(V3)), (V2(V3)))) end, V1)))).
'un--plane'(V0, V1) -> ('un--planeWith'(fun (V2) -> fun (V3) -> {'Idris.Builtin.MkPair', V2, V3} end end, V0, V1)).
