-module('Idris.Idris2.Data.SortedSet').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--toList-5203'/3,
  'dn--un--neutral_Monoid__(SortedSet $k)'/2,
  'dn--un--foldr_Foldable__SortedSet'/5,
  'dn--un--foldl_Foldable__SortedSet'/5,
  'dn--un--__Impl_Semigroup_(SortedSet $k)'/4,
  'dn--un--__Impl_Monoid_(SortedSet $k)'/2,
  'dn--un--__Impl_Foldable_SortedSet'/0,
  'dn--un--<+>_Semigroup__(SortedSet $k)'/4,
  'un--union'/3,
  'un--toList'/2,
  'un--symDifference'/3,
  'un--keySet'/3,
  'un--intersection'/3,
  'un--insert'/3,
  'un--fromList'/3,
  'un--empty'/2,
  'un--difference'/3,
  'un--delete'/3,
  'un--contains'/3
]).
'case--toList-5203'(V0, V1, V2) -> case V2 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V3, V4) -> V3 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--neutral_Monoid__(SortedSet $k)'(V0, V1) -> ('un--empty'('erased', V1)).
'dn--un--foldr_Foldable__SortedSet'(V0, V1, V2, V3, V4) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable__List'('erased', 'erased', V2, V3, ('un--toList'('erased', V4)))).
'dn--un--foldl_Foldable__SortedSet'(V0, V1, V2, V3, V4) -> (('dn--un--foldr_Foldable__SortedSet'('erased', 'erased', fun (V5) -> fun (V6) -> ('Idris.Idris2.Prelude.Basics':'un--flip'('erased', 'erased', 'erased', fun (V7) -> fun (V8) -> fun (V9) -> (V7((V8(V9)))) end end end, fun (V10) -> ('Idris.Idris2.Prelude.Basics':'un--flip'('erased', 'erased', 'erased', V2, V5, V10)) end, V6)) end end, fun (V11) -> V11 end, V4))(V3)).
'dn--un--__Impl_Semigroup_(SortedSet $k)'(V0, V1, V2, V3) -> ('dn--un--<+>_Semigroup__(SortedSet $k)'('erased', V1, V2, V3)).
'dn--un--__Impl_Monoid_(SortedSet $k)'(V0, V1) -> {'Idris.Prelude.Interfaces.dn--un--__mkMonoid', fun (V2) -> fun (V3) -> ('dn--un--<+>_Semigroup__(SortedSet $k)'('erased', V1, V2, V3)) end end, ('dn--un--neutral_Monoid__(SortedSet $k)'('erased', V1))}.
'dn--un--__Impl_Foldable_SortedSet'() -> {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--foldr_Foldable__SortedSet'('erased', 'erased', V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--foldl_Foldable__SortedSet'('erased', 'erased', V7, V8, V9)) end end end end end}.
'dn--un--<+>_Semigroup__(SortedSet $k)'(V0, V1, V2, V3) -> ('un--union'('erased', V2, V3)).
'un--union'(V0, V1, V2) -> ('dn--un--foldr_Foldable__SortedSet'('erased', 'erased', fun (V3) -> fun (V4) -> ('un--insert'('erased', V3, V4)) end end, V1, V2)).
'un--toList'(V0, V1) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__List'('erased', 'erased', fun (V2) -> case V2 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V3, V4) -> V3 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end, ('Idris.Idris2.Data.SortedMap':'un--toList'('erased', 'erased', V1)))).
'un--symDifference'(V0, V1, V2) -> ('un--union'('erased', ('un--difference'('erased', V1, V2)), ('un--difference'('erased', V2, V1)))).
'un--keySet'(V0, V1, V2) -> ('Idris.Idris2.Data.SortedMap':'dn--un--map_Functor__(SortedMap $k)'('erased', 'erased', 'erased', fun (V3) -> {'Idris.Builtin.MkUnit'} end, V2)).
'un--intersection'(V0, V1, V2) -> ('un--difference'('erased', V1, ('un--difference'('erased', V1, V2)))).
'un--insert'(V0, V1, V2) -> ('Idris.Idris2.Data.SortedMap':'un--insert'('erased', 'erased', V1, {'Idris.Builtin.MkUnit'}, V2)).
'un--fromList'(V0, V1, V2) -> ('Idris.Idris2.Data.SortedMap':'un--fromList'('erased', 'erased', V1, ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__List'('erased', 'erased', fun (V3) -> {'Idris.Builtin.MkPair', V3, {'Idris.Builtin.MkUnit'}} end, V2)))).
'un--empty'(V0, V1) -> ('Idris.Idris2.Data.SortedMap':'un--empty'('erased', 'erased', V1)).
'un--difference'(V0, V1, V2) -> ('dn--un--foldr_Foldable__SortedSet'('erased', 'erased', fun (V3) -> fun (V4) -> ('un--delete'('erased', V3, V4)) end end, V1, V2)).
'un--delete'(V0, V1, V2) -> ('Idris.Idris2.Data.SortedMap':'un--delete'('erased', 'erased', V1, V2)).
'un--contains'(V0, V1, V2) -> ('Idris.Idris2.Data.Maybe':'un--isJust'('erased', ('Idris.Idris2.Data.SortedMap':'un--lookup'('erased', 'erased', V1, V2)))).
