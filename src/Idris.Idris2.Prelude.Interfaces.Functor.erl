-module('Idris.Idris2.Prelude.Interfaces.Functor').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--map_Functor_Compose((. $f) $g)'/3,
  'un--Compose'/5
]).
'dn--un--map_Functor_Compose((. $f) $g)'(V0, V1, V2) -> ((((('Idris.Idris2.Builtin':'un--fst'(V0))('erased'))('erased'))(fun (V3) -> ((((('Idris.Idris2.Builtin':'un--snd'(V0))('erased'))('erased'))(V1))(V3)) end))(V2)).
'un--Compose'(V0, V1, V2, V3, V4) -> ('dn--un--map_Functor_Compose((. $f) $g)'(V0, V3, V4)).
