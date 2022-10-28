-module('Idris.Idris2.Prelude.Interfaces.Foldable').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--toList_Foldable_Compose((. $t) $f)'/3,
  'dn--un--null_Foldable_Compose((. $t) $f)'/3,
  'dn--un--foldr_Foldable_Compose((. $t) $f)'/5,
  'dn--un--foldl_Foldable_Compose((. $t) $f)'/5,
  'dn--un--foldlM_Foldable_Compose((. $t) $f)'/6,
  'dn--un--foldMap_Foldable_Compose((. $t) $f)'/5,
  'un--Compose'/2
]).
'dn--un--toList_Foldable_Compose((. $t) $f)'(V0, V1, V2) -> ('dn--un--foldr_Foldable_Compose((. $t) $f)'(V0, V1, fun (V3) -> fun (V4) -> [V3 | V4] end end, [], V2)).
'dn--un--null_Foldable_Compose((. $t) $f)'(V0, V1, V2) -> case case V0 of {'Prelude.Interfaces.MkFoldable', V3, V4, V5, V6, V7, V8} -> ((V5('erased'))(V2)) end of 1 -> 1; 0 -> case V0 of {'Prelude.Interfaces.MkFoldable', V9, V10, V11, V12, V13, V14} -> (((((V14('erased'))('erased'))({'Prelude.Interfaces.MkMonoid', fun (V22) -> fun (V23) -> ('Idris.Idris2.Prelude.Interfaces.Bool.Semigroup':'dn--un--<+>_Semigroup_AllBool'(V22, V23)) end end, 1}))(fun (V15) -> case V1 of {'Prelude.Interfaces.MkFoldable', V16, V17, V18, V19, V20, V21} -> ((V18('erased'))(V15)) end end))(V2)) end end.
'dn--un--foldr_Foldable_Compose((. $t) $f)'(V0, V1, V2, V3, V4) -> case V0 of {'Prelude.Interfaces.MkFoldable', V5, V6, V7, V8, V9, V10} -> (((((V5('erased'))('erased'))(fun (V11) -> fun (V12) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(fun (V13) -> fun (V14) -> case V1 of {'Prelude.Interfaces.MkFoldable', V15, V16, V17, V18, V19, V20} -> (((((V15('erased'))('erased'))(V2))(V13))(V14)) end end end, V11, V12)) end end))(V3))(V4)) end.
'dn--un--foldl_Foldable_Compose((. $t) $f)'(V0, V1, V2, V3, V4) -> case V0 of {'Prelude.Interfaces.MkFoldable', V5, V6, V7, V8, V9, V10} -> (((((V6('erased'))('erased'))(fun (V11) -> fun (V12) -> case V1 of {'Prelude.Interfaces.MkFoldable', V13, V14, V15, V16, V17, V18} -> (((((V14('erased'))('erased'))(V2))(V11))(V12)) end end end))(V3))(V4)) end.
'dn--un--foldlM_Foldable_Compose((. $t) $f)'(V0, V1, V2, V3, V4, V5) -> ('dn--un--foldl_Foldable_Compose((. $t) $f)'(V0, V1, fun (V6) -> fun (V7) -> case V2 of {'Prelude.Interfaces.MkMonad', V8, V9, V10} -> ((((V9('erased'))('erased'))(V6))(fun (V11) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(V3, V7, V11)) end)) end end end, case V2 of {'Prelude.Interfaces.MkMonad', V12, V13, V14} -> case V12 of {'Prelude.Interfaces.MkApplicative', V15, V16, V17} -> ((V16('erased'))(V4)) end end, V5)).
'dn--un--foldMap_Foldable_Compose((. $t) $f)'(V0, V1, V2, V3, V4) -> case V0 of {'Prelude.Interfaces.MkFoldable', V5, V6, V7, V8, V9, V10} -> (((((V10('erased'))('erased'))(V2))(fun (V11) -> case V1 of {'Prelude.Interfaces.MkFoldable', V12, V13, V14, V15, V16, V17} -> (((((V17('erased'))('erased'))(V2))(V3))(V11)) end end))(V4)) end.
'un--Compose'(V0, V1) -> {'Prelude.Interfaces.MkFoldable', fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('dn--un--foldr_Foldable_Compose((. $t) $f)'(V0, V1, V4, V5, V6)) end end end end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> ('dn--un--foldl_Foldable_Compose((. $t) $f)'(V0, V1, V9, V10, V11)) end end end end end, fun (V12) -> fun (V13) -> ('dn--un--null_Foldable_Compose((. $t) $f)'(V0, V1, V13)) end end, fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> ('dn--un--foldlM_Foldable_Compose((. $t) $f)'(V0, V1, V17, V18, V19, V20)) end end end end end end end, fun (V21) -> fun (V22) -> ('dn--un--toList_Foldable_Compose((. $t) $f)'(V0, V1, V22)) end end, fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> ('dn--un--foldMap_Foldable_Compose((. $t) $f)'(V0, V1, V25, V26, V27)) end end end end end}.
