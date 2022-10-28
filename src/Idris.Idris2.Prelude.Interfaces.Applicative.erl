-module('Idris.Idris2.Prelude.Interfaces.Applicative').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--pure_Applicative_Compose((. $f) $g)'/3,
  'dn--un--<*>_Applicative_Compose((. $f) $g)'/4,
  'un--Compose'/2
]).
'dn--un--pure_Applicative_Compose((. $f) $g)'(V0, V1, V2) -> case V0 of {'Prelude.Interfaces.MkApplicative', V3, V4, V5} -> ((V4('erased'))(case V1 of {'Prelude.Interfaces.MkApplicative', V6, V7, V8} -> ((V7('erased'))(V2)) end)) end.
'dn--un--<*>_Applicative_Compose((. $f) $g)'(V0, V1, V2, V3) -> case V0 of {'Prelude.Interfaces.MkApplicative', V4, V5, V6} -> ((((V6('erased'))('erased'))(case V0 of {'Prelude.Interfaces.MkApplicative', V7, V8, V9} -> ((((V9('erased'))('erased'))(case V0 of {'Prelude.Interfaces.MkApplicative', V10, V11, V12} -> ((V11('erased'))(fun (V13) -> fun (V14) -> case V1 of {'Prelude.Interfaces.MkApplicative', V15, V16, V17} -> ((((V17('erased'))('erased'))(V13))(V14)) end end end)) end))(V2)) end))(V3)) end.
'un--Compose'(V0, V1) -> {'Prelude.Interfaces.MkApplicative', fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> (('Idris.Idris2.Prelude.Interfaces.Functor':'dn--un--map_Functor_Compose((. $f) $g)'(case V0 of {'Prelude.Interfaces.MkApplicative', V6, V7, V8} -> V6 end, case V1 of {'Prelude.Interfaces.MkApplicative', V9, V10, V11} -> V9 end, V4))(V5)) end end end end, fun (V12) -> fun (V13) -> ('dn--un--pure_Applicative_Compose((. $f) $g)'(V0, V1, V13)) end end, fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> ('dn--un--<*>_Applicative_Compose((. $f) $g)'(V0, V1, V16, V17)) end end end end}.
