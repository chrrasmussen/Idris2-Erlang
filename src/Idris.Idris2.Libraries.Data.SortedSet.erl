-module('Idris.Idris2.Libraries.Data.SortedSet').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--toList_Foldable_SortedSet'/1,
  'dn--un--null_Foldable_SortedSet'/1,
  'dn--un--neutral_Monoid_(SortedSet $k)'/1,
  'dn--un--foldr_Foldable_SortedSet'/3,
  'dn--un--foldl_Foldable_SortedSet'/3,
  'dn--un--foldlM_Foldable_SortedSet'/4,
  'dn--un--foldMap_Foldable_SortedSet'/3,
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
'dn--un--null_Foldable_SortedSet'(V0) -> ('Idris.Idris2.Libraries.Data.SortedMap':'dn--un--null_Foldable_(SortedMap $k)'(V0)).
'dn--un--neutral_Monoid_(SortedSet $k)'(V0) -> ('un--empty'(V0)).
'dn--un--foldr_Foldable_SortedSet'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V0, V1, ('un--toList'(V2)))).
'dn--un--foldl_Foldable_SortedSet'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V0, V1, ('un--toList'(V2)))).
'dn--un--foldlM_Foldable_SortedSet'(V0, V1, V2, V3) -> ('dn--un--foldl_Foldable_SortedSet'(fun (V4) -> fun (V5) -> case V0 of {'Idris.Prelude.Interfaces.MkMonad', E0, E1, E2} -> (fun (V6, V7, V8) -> ((((V7('erased'))('erased'))(V4))(fun (V9) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(V1, V5, V9)) end)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, case V0 of {'Idris.Prelude.Interfaces.MkMonad', E3, E4, E5} -> (fun (V10, V11, V12) -> case V10 of {'Idris.Prelude.Interfaces.MkApplicative', E6, E7, E8} -> (fun (V13, V14, V15) -> ((V14('erased'))(V2)) end(E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V3)).
'dn--un--foldMap_Foldable_SortedSet'(V0, V1, V2) -> ('dn--un--foldr_Foldable_SortedSet'(fun (V3) -> fun (V4) -> case V0 of {'Idris.Prelude.Interfaces.MkMonoid', E0, E1} -> (fun (V5, V6) -> ((V5((V1(V3))))(V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, case V0 of {'Idris.Prelude.Interfaces.MkMonoid', E2, E3} -> (fun (V7, V8) -> V8 end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V2)).
'dn--un--__Impl_Semigroup_(SortedSet $k)'(V0, V1, V2) -> ('dn--un--<+>_Semigroup_(SortedSet $k)'(V0, V1, V2)).
'dn--un--__Impl_Monoid_(SortedSet $k)'(V0) -> {'Idris.Prelude.Interfaces.MkMonoid', fun (V1) -> fun (V2) -> ('dn--un--<+>_Semigroup_(SortedSet $k)'(V0, V1, V2)) end end, ('dn--un--neutral_Monoid_(SortedSet $k)'(V0))}.
'dn--un--__Impl_Foldable_SortedSet'() -> {'Idris.Prelude.Interfaces.MkFoldable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--foldr_Foldable_SortedSet'(V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--foldl_Foldable_SortedSet'(V7, V8, V9)) end end end end end, fun (V10) -> fun (V11) -> ('dn--un--null_Foldable_SortedSet'(V11)) end end, fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> ('dn--un--foldlM_Foldable_SortedSet'(V15, V16, V17, V18)) end end end end end end end, fun (V19) -> fun (V20) -> ('dn--un--toList_Foldable_SortedSet'(V20)) end end, fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> ('dn--un--foldMap_Foldable_SortedSet'(V23, V24, V25)) end end end end end}.
'dn--un--<+>_Semigroup_(SortedSet $k)'(V0, V1, V2) -> ('un--union'(V1, V2)).
'un--union'(V0, V1) -> ('dn--un--foldr_Foldable_SortedSet'(fun (V2) -> fun (V3) -> ('un--insert'(V2, V3)) end end, V0, V1)).
'un--toSortedMap'(V0) -> V0.
'un--toList'(V0) -> ('Idris.Idris2.Libraries.Data.SortedMap':'un--keys'(V0)).
'un--symDifference'(V0, V1) -> ('un--union'(('un--difference'(V0, V1)), ('un--difference'(V1, V0)))).
'un--singleton'(V0, V1) -> ('un--insert'(V1, ('un--empty'(V0)))).
'un--keySet'(V0) -> ('Idris.Idris2.Libraries.Data.SortedMap':'dn--un--map_Functor_(SortedMap $k)'(fun (V1) -> 0 end, V0)).
'un--intersection'(V0, V1) -> ('un--difference'(V0, ('un--difference'(V0, V1)))).
'un--insert'(V0, V1) -> ('Idris.Idris2.Libraries.Data.SortedMap':'un--insert'(V0, 0, V1)).
'un--fromList'(V0, V1) -> ('Idris.Idris2.Libraries.Data.SortedMap':'un--fromList'(V0, ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_List'(fun (V2) -> {'Idris.Builtin.MkPair', V2, 0} end, V1)))).
'un--empty'(V0) -> ('Idris.Idris2.Libraries.Data.SortedMap':'un--empty'(V0)).
'un--difference'(V0, V1) -> ('dn--un--foldr_Foldable_SortedSet'(fun (V2) -> fun (V3) -> ('un--delete'(V2, V3)) end end, V0, V1)).
'un--delete'(V0, V1) -> ('Idris.Idris2.Libraries.Data.SortedMap':'un--delete'(V0, V1)).
'un--contains'(V0, V1) -> ('Idris.Idris2.Data.Maybe':'un--isJust'(('Idris.Idris2.Libraries.Data.SortedMap':'un--lookup'(V0, V1)))).
