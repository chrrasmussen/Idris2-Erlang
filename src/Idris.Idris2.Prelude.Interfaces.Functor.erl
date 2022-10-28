-module('Idris.Idris2.Prelude.Interfaces.Functor').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--map_Functor_Compose((. $f) $g)'/3,
  'un--Compose'/6
]).
'dn--un--map_Functor_Compose((. $f) $g)'(V0, V1, V2) -> (begin (V6 = V0), fun (V7) -> fun (V8) -> ((((V6('erased'))('erased'))(V7))(V8)) end end end((begin (V3 = V1), fun (V4) -> fun (V5) -> ((((V3('erased'))('erased'))(V4))(V5)) end end end(V2)))).
'un--Compose'(V0, V1, V2, V3, V4, V5) -> (('dn--un--map_Functor_Compose((. $f) $g)'(V0, V1, V4))(V5)).
