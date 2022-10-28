-module('Idris.Idris2.Libraries.Data.SortedSet').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--toList_Foldable_SortedSet'/1,
  'dn--un--show_Show_(SortedSet $k)'/2,
  'dn--un--showPrec_Show_(SortedSet $k)'/3,
  'dn--un--null_Foldable_SortedSet'/1,
  'dn--un--neutral_Monoid_(SortedSet $k)'/1,
  'dn--un--foldr_Foldable_SortedSet'/3,
  'dn--un--foldl_Foldable_SortedSet'/3,
  'dn--un--foldlM_Foldable_SortedSet'/4,
  'dn--un--foldMap_Foldable_SortedSet'/3,
  'dn--un--__Impl_Show_(SortedSet $k)'/1,
  'dn--un--__Impl_Semigroup_(SortedSet $k)'/3,
  'dn--un--__Impl_Monoid_(SortedSet $k)'/1,
  'dn--un--__Impl_Foldable_SortedSet'/0,
  'dn--un--<+>_Semigroup_(SortedSet $k)'/3,
  'un--union'/2,
  'un--toSortedMap'/1,
  'un--toList'/1,
  'un--symDifference'/2,
  'un--singleton'/2,
  'un--keySet'/1,
  'un--intersection'/2,
  'un--insert'/2,
  'un--fromList'/2,
  'un--empty'/1,
  'un--difference'/2,
  'un--delete'/2,
  'un--contains'/2
]).
'dn--un--toList_Foldable_SortedSet'(V0) -> ('dn--un--foldr_Foldable_SortedSet'(fun (V1) -> fun (V2) -> [V1 | V2] end end, [], V0)).
'dn--un--show_Show_(SortedSet $k)'(V0, V1) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_(List $a)'(V0, ('un--toList'(V1)))).
'dn--un--showPrec_Show_(SortedSet $k)'(V0, V1, V2) -> ('dn--un--show_Show_(SortedSet $k)'(V0, V2)).
'dn--un--null_Foldable_SortedSet'(V0) -> begin (V1 = V0), ('Idris.Idris2.Libraries.Data.SortedMap':'dn--un--null_Foldable_(SortedMap $k)'(V1)) end.
'dn--un--neutral_Monoid_(SortedSet $k)'(V0) -> ('un--empty'(V0)).
'dn--un--foldr_Foldable_SortedSet'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V0, V1, ('un--toList'(V2)))).
'dn--un--foldl_Foldable_SortedSet'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V0, V1, ('un--toList'(V2)))).
'dn--un--foldlM_Foldable_SortedSet'(V0, V1, V2, V3) -> ('dn--un--foldl_Foldable_SortedSet'(fun (V4) -> fun (V5) -> case V0 of {'Prelude.Interfaces.MkMonad', V6, V7, V8} -> ((((V7('erased'))('erased'))(V4))(fun (V9) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(V1, V5, V9)) end)) end end end, case V0 of {'Prelude.Interfaces.MkMonad', V10, V11, V12} -> case V10 of {'Prelude.Interfaces.MkApplicative', V13, V14, V15} -> ((V14('erased'))(V2)) end end, V3)).
'dn--un--foldMap_Foldable_SortedSet'(V0, V1, V2) -> ('dn--un--foldr_Foldable_SortedSet'(fun (V3) -> (begin (V6 = case V0 of {'Prelude.Interfaces.MkMonoid', V4, V5} -> V4 end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end((V1(V3)))) end, case V0 of {'Prelude.Interfaces.MkMonoid', V9, V10} -> V10 end, V2)).
'dn--un--__Impl_Show_(SortedSet $k)'(V0) -> {'Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_(SortedSet $k)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_(SortedSet $k)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Semigroup_(SortedSet $k)'(V0, V1, V2) -> ('dn--un--<+>_Semigroup_(SortedSet $k)'(V0, V1, V2)).
'dn--un--__Impl_Monoid_(SortedSet $k)'(V0) -> {'Prelude.Interfaces.MkMonoid', fun (V1) -> fun (V2) -> ('dn--un--<+>_Semigroup_(SortedSet $k)'(V0, V1, V2)) end end, ('dn--un--neutral_Monoid_(SortedSet $k)'(V0))}.
'dn--un--__Impl_Foldable_SortedSet'() -> {'Prelude.Interfaces.MkFoldable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--foldr_Foldable_SortedSet'(V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--foldl_Foldable_SortedSet'(V7, V8, V9)) end end end end end, fun (V10) -> fun (V11) -> ('dn--un--null_Foldable_SortedSet'(V11)) end end, fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> ('dn--un--foldlM_Foldable_SortedSet'(V15, V16, V17, V18)) end end end end end end end, fun (V19) -> fun (V20) -> ('dn--un--toList_Foldable_SortedSet'(V20)) end end, fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> ('dn--un--foldMap_Foldable_SortedSet'(V23, V24, V25)) end end end end end}.
'dn--un--<+>_Semigroup_(SortedSet $k)'(V0, V1, V2) -> ('un--union'(V1, V2)).
'un--union'(V0, V1) -> ('dn--un--foldr_Foldable_SortedSet'(fun (V2) -> fun (V3) -> ('un--insert'(V2, V3)) end end, V0, V1)).
'un--toSortedMap'(V0) -> begin (V1 = V0), V1 end.
'un--toList'(V0) -> begin (V1 = V0), ('Idris.Idris2.Libraries.Data.SortedMap':'un--keys'(V1)) end.
'un--symDifference'(V0, V1) -> ('un--union'(('un--difference'(V0, V1)), ('un--difference'(V1, V0)))).
'un--singleton'(V0, V1) -> ('un--insert'(V1, ('un--empty'(V0)))).
'un--keySet'(V0) -> ((begin (V6 = fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('Idris.Idris2.Libraries.Data.SortedMap':'dn--un--map_Functor_(SortedMap $k)'(V4, V5)) end end end end), fun (V7) -> fun (V8) -> ((((V6('erased'))('erased'))(V7))(V8)) end end end(fun (V1) -> {'Builtin.MkUnit'} end))(V0)).
'un--intersection'(V0, V1) -> ('un--difference'(V0, ('un--difference'(V0, V1)))).
'un--insert'(V0, V1) -> begin (V2 = V1), ('Idris.Idris2.Libraries.Data.SortedMap':'un--insert'(V0, {'Builtin.MkUnit'}, V2)) end.
'un--fromList'(V0, V1) -> ('Idris.Idris2.Libraries.Data.SortedMap':'un--fromList'(V0, ((begin (V7 = fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V5, V6)) end end end end), fun (V8) -> fun (V9) -> ((((V7('erased'))('erased'))(V8))(V9)) end end end(fun (V2) -> {'Builtin.MkPair', V2, {'Builtin.MkUnit'}} end))(V1)))).
'un--empty'(V0) -> ('Idris.Idris2.Libraries.Data.SortedMap':'un--empty'(V0)).
'un--difference'(V0, V1) -> ('dn--un--foldr_Foldable_SortedSet'(fun (V2) -> fun (V3) -> ('un--delete'(V2, V3)) end end, V0, V1)).
'un--delete'(V0, V1) -> begin (V2 = V1), ('Idris.Idris2.Libraries.Data.SortedMap':'un--delete'(V0, V2)) end.
'un--contains'(V0, V1) -> begin (V2 = V1), ('Idris.Idris2.Data.Maybe':'un--isJust'(('Idris.Idris2.Libraries.Data.SortedMap':'un--lookup'(V0, V2)))) end.
