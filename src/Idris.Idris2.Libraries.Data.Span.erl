-module('Idris.Idris2.Libraries.Data.Span').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--traverse_Traversable_Span'/3,
  'dn--un--toList_Foldable_Span'/1,
  'dn--un--show_Show_(Span $a)'/2,
  'dn--un--showPrec_Show_(Span $a)'/3,
  'dn--un--null_Foldable_Span'/1,
  'dn--un--map_Functor_Span'/2,
  'dn--un--foldr_Foldable_Span'/3,
  'dn--un--foldl_Foldable_Span'/3,
  'dn--un--foldlM_Foldable_Span'/4,
  'dn--un--foldMap_Foldable_Span'/3,
  'dn--un--__Impl_Traversable_Span'/0,
  'dn--un--__Impl_Show_(Span $a)'/1,
  'dn--un--__Impl_Functor_Span'/4,
  'dn--un--__Impl_Foldable_Span'/0
]).
'dn--un--traverse_Traversable_Span'(V0, V1, V2) -> case V2 of {'Libraries.Data.Span.MkSpan', V3, V4, V5} -> ((begin (V10 = case V0 of {'Prelude.Interfaces.MkApplicative', V7, V8, V9} -> V7 end), fun (V11) -> fun (V12) -> ((((V10('erased'))('erased'))(V11))(V12)) end end end(fun (V6) -> {'Libraries.Data.Span.MkSpan', V3, V4, V6} end))((V1(V5)))) end.
'dn--un--toList_Foldable_Span'(V0) -> ('dn--un--foldr_Foldable_Span'(fun (V1) -> fun (V2) -> [V1 | V2] end end, [], V0)).
'dn--un--show_Show_(Span $a)'(V0, V1) -> case V1 of {'Libraries.Data.Span.MkSpan', V2, V3, V4} -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V5) -> fun (V6) -> <<V5/binary, V6/binary>> end end, <<""/utf8>>}, fun (V7) -> V7 end, [<<"["/utf8>> | [('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V2)) | [<<"-"/utf8>> | [('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V3)) | [<<"]"/utf8>> | [case V0 of {'Prelude.Show.MkShow', V8, V9} -> (V8(V4)) end | []]]]]]])) end.
'dn--un--showPrec_Show_(Span $a)'(V0, V1, V2) -> ('dn--un--show_Show_(Span $a)'(V0, V2)).
'dn--un--null_Foldable_Span'(V0) -> (('dn--un--foldr_Foldable_Span'(fun (V1) -> fun (V2) -> fun () -> 0 end end end, fun () -> 1 end, V0))()).
'dn--un--map_Functor_Span'(V0, V1) -> case V1 of {'Libraries.Data.Span.MkSpan', V2, V3, V4} -> {'Libraries.Data.Span.MkSpan', V2, V3, (V0(V4))} end.
'dn--un--foldr_Foldable_Span'(V0, V1, V2) -> ((V0(case V2 of {'Libraries.Data.Span.MkSpan', V3, V4, V5} -> V5 end))(V1)).
'dn--un--foldl_Foldable_Span'(V0, V1, V2) -> (('dn--un--foldr_Foldable_Span'(fun (V3) -> fun (V4) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(fun (V5) -> fun (V6) -> fun (V7) -> (V5((V6(V7)))) end end end, fun (V8) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(V0, V3, V8)) end, V4)) end end, fun (V9) -> V9 end, V2))(V1)).
'dn--un--foldlM_Foldable_Span'(V0, V1, V2, V3) -> ('dn--un--foldl_Foldable_Span'(fun (V4) -> fun (V5) -> case V0 of {'Prelude.Interfaces.MkMonad', V6, V7, V8} -> ((((V7('erased'))('erased'))(V4))(fun (V9) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(V1, V5, V9)) end)) end end end, case V0 of {'Prelude.Interfaces.MkMonad', V10, V11, V12} -> case V10 of {'Prelude.Interfaces.MkApplicative', V13, V14, V15} -> ((V14('erased'))(V2)) end end, V3)).
'dn--un--foldMap_Foldable_Span'(V0, V1, V2) -> ('dn--un--foldr_Foldable_Span'(fun (V3) -> (begin (V6 = case V0 of {'Prelude.Interfaces.MkMonoid', V4, V5} -> V4 end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end((V1(V3)))) end, case V0 of {'Prelude.Interfaces.MkMonoid', V9, V10} -> V10 end, V2)).
'dn--un--__Impl_Traversable_Span'() -> {'Prelude.Interfaces.MkTraversable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_Span'(V2, V3)) end end end end, {'Prelude.Interfaces.MkFoldable', fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('dn--un--foldr_Foldable_Span'(V6, V7, V8)) end end end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un--foldl_Foldable_Span'(V11, V12, V13)) end end end end end, fun (V14) -> fun (V15) -> ('dn--un--null_Foldable_Span'(V15)) end end, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> ('dn--un--foldlM_Foldable_Span'(V19, V20, V21, V22)) end end end end end end end, fun (V23) -> fun (V24) -> ('dn--un--toList_Foldable_Span'(V24)) end end, fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> ('dn--un--foldMap_Foldable_Span'(V27, V28, V29)) end end end end end}, fun (V30) -> fun (V31) -> fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> ('dn--un--traverse_Traversable_Span'(V33, V34, V35)) end end end end end end}.
'dn--un--__Impl_Show_(Span $a)'(V0) -> {'Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_(Span $a)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_(Span $a)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Functor_Span'(V0, V1, V2, V3) -> ('dn--un--map_Functor_Span'(V2, V3)).
'dn--un--__Impl_Foldable_Span'() -> {'Prelude.Interfaces.MkFoldable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--foldr_Foldable_Span'(V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--foldl_Foldable_Span'(V7, V8, V9)) end end end end end, fun (V10) -> fun (V11) -> ('dn--un--null_Foldable_Span'(V11)) end end, fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> ('dn--un--foldlM_Foldable_Span'(V15, V16, V17, V18)) end end end end end end end, fun (V19) -> fun (V20) -> ('dn--un--toList_Foldable_Span'(V20)) end end, fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> ('dn--un--foldMap_Foldable_Span'(V23, V24, V25)) end end end end end}.
