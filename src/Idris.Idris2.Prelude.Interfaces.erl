-module('Idris.Idris2.Prelude.Interfaces').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--guard-10280'/2,
  'dn--un--neutral_Monoid_Ordering'/0,
  'dn--un--neutral_Monoid_MonoidApplicative($f $a)'/2,
  'dn--un--neutral_Monoid_MonoidAlternative($f $a)'/1,
  'dn--un--neutral_Monoid_(|Unit,MkUnit|)'/0,
  'dn--un--neutral_Monoid_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/2,
  'dn--un--neutral_Monoid_(%pi RigW Explicit Nothing $a $b)'/2,
  'dn--un--__Traversable_(Functor t)'/1,
  'dn--un--__Traversable_(Foldable t)'/1,
  'dn--un--__Monoid_(Semigroup ty)'/1,
  'dn--un--__Monad_(Applicative m)'/1,
  'dn--un--__Impl_Semigroup_Ordering'/2,
  'dn--un--__Impl_Semigroup_(|Unit,MkUnit|)'/2,
  'dn--un--__Impl_Semigroup_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/4,
  'dn--un--__Impl_Semigroup_(%pi RigW Explicit Nothing $a $b)'/4,
  'dn--un--__Impl_Monoid_Ordering'/0,
  'dn--un--__Impl_Monoid_(|Unit,MkUnit|)'/0,
  'dn--un--__Impl_Monoid_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/2,
  'dn--un--__Impl_Monoid_(%pi RigW Explicit Nothing $a $b)'/1,
  'dn--un--__Bitraversable_(Bifunctor p)'/1,
  'dn--un--__Bitraversable_(Bifoldable p)'/1,
  'dn--un--__Applicative_(Functor f)'/1,
  'dn--un--__Alternative_(Applicative f)'/1,
  'dn--un--<+>_Semigroup_SemigroupApplicative($f $a)'/4,
  'dn--un--<+>_Semigroup_SemigroupAlternative($f $a)'/3,
  'dn--un--<+>_Semigroup_Ordering'/2,
  'dn--un--<+>_Semigroup_(|Unit,MkUnit|)'/2,
  'dn--un--<+>_Semigroup_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/4,
  'dn--un--<+>_Semigroup_(%pi RigW Explicit Nothing $a $b)'/4,
  'un--when'/3,
  'un--unless'/3,
  'un--traverse_'/4,
  'un--traverse'/4,
  'un--toList'/2,
  'un--sum\x{27}'/3,
  'un--sum'/3,
  'un--sequence_'/3,
  'un--sequence'/3,
  'un--pure'/2,
  'un--product\x{27}'/3,
  'un--product'/3,
  'un--or'/2,
  'un--null'/2,
  'un--neutral'/1,
  'un--mapSnd'/3,
  'un--mapHom'/3,
  'un--mapFst'/3,
  'un--map'/1,
  'un--join'/2,
  'un--ignore'/1,
  'un--guard'/2,
  'un--for_'/4,
  'un--for'/4,
  'un--foldr'/4,
  'un--foldlM'/5,
  'un--foldl'/4,
  'un--foldMap'/4,
  'un--empty'/1,
  'un--concatMap'/4,
  'un--concat'/3,
  'un--choiceMap'/4,
  'un--choice'/3,
  'un--bitraverse'/5,
  'un--bisequence'/3,
  'un--binull'/2,
  'un--bimap'/4,
  'un--bifor'/5,
  'un--bifoldr'/4,
  'un--bifoldl'/4,
  'un--bifoldMapFst'/4,
  'un--bifoldMap'/5,
  'un--any'/3,
  'un--and'/2,
  'un--all'/3,
  'un--SemigroupApplicative'/4,
  'un--SemigroupAlternative'/3,
  'un--MonoidApplicative'/2,
  'un--MonoidAlternative'/1,
  'un-->>='/3,
  'un-->>'/3,
  'un-->=>'/4,
  'un--=<<'/3,
  'un--<|>'/3,
  'un--<=<'/3,
  'un--<+>'/1,
  'un--<*>'/3,
  'un--<*'/3,
  'un--<&>'/3,
  'un--<$>'/3,
  'un--<$'/2,
  'un--*>'/3,
  'un--$>'/3
]).
'case--guard-10280'(V0, V1) -> case V1 of 1 -> case V0 of {'Prelude.Interfaces.MkAlternative', V2, V3, V4} -> case V2 of {'Prelude.Interfaces.MkApplicative', V5, V6, V7} -> ((V6('erased'))({'Builtin.MkUnit'})) end end; 0 -> case V0 of {'Prelude.Interfaces.MkAlternative', V8, V9, V10} -> (V9('erased')) end end.
'dn--un--neutral_Monoid_Ordering'() -> 1.
'dn--un--neutral_Monoid_MonoidApplicative($f $a)'(V0, V1) -> case V0 of {'Prelude.Interfaces.MkApplicative', V2, V3, V4} -> ((V3('erased'))(case V1 of {'Prelude.Interfaces.MkMonoid', V5, V6} -> V6 end)) end.
'dn--un--neutral_Monoid_MonoidAlternative($f $a)'(V0) -> case V0 of {'Prelude.Interfaces.MkAlternative', V1, V2, V3} -> (V2('erased')) end.
'dn--un--neutral_Monoid_(|Unit,MkUnit|)'() -> {'Builtin.MkUnit'}.
'dn--un--neutral_Monoid_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1) -> {'Builtin.MkPair', case V0 of {'Prelude.Interfaces.MkMonoid', V2, V3} -> V3 end, case V1 of {'Prelude.Interfaces.MkMonoid', V4, V5} -> V5 end}.
'dn--un--neutral_Monoid_(%pi RigW Explicit Nothing $a $b)'(V0, V1) -> case V0 of {'Prelude.Interfaces.MkMonoid', V2, V3} -> V3 end.
'dn--un--__Traversable_(Functor t)'(V0) -> case V0 of {'Prelude.Interfaces.MkTraversable', V1, V2, V3} -> V1 end.
'dn--un--__Traversable_(Foldable t)'(V0) -> case V0 of {'Prelude.Interfaces.MkTraversable', V1, V2, V3} -> V2 end.
'dn--un--__Monoid_(Semigroup ty)'(V0) -> case V0 of {'Prelude.Interfaces.MkMonoid', V1, V2} -> V1 end.
'dn--un--__Monad_(Applicative m)'(V0) -> case V0 of {'Prelude.Interfaces.MkMonad', V1, V2, V3} -> V1 end.
'dn--un--__Impl_Semigroup_Ordering'(V0, V1) -> ('dn--un--<+>_Semigroup_Ordering'(V0, V1)).
'dn--un--__Impl_Semigroup_(|Unit,MkUnit|)'(V0, V1) -> {'Builtin.MkUnit'}.
'dn--un--__Impl_Semigroup_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3) -> ('dn--un--<+>_Semigroup_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3)).
'dn--un--__Impl_Semigroup_(%pi RigW Explicit Nothing $a $b)'(V0, V1, V2, V3) -> ('dn--un--<+>_Semigroup_(%pi RigW Explicit Nothing $a $b)'(V0, V1, V2, V3)).
'dn--un--__Impl_Monoid_Ordering'() -> {'Prelude.Interfaces.MkMonoid', fun (V0) -> fun (V1) -> ('dn--un--<+>_Semigroup_Ordering'(V0, V1)) end end, 1}.
'dn--un--__Impl_Monoid_(|Unit,MkUnit|)'() -> {'Prelude.Interfaces.MkMonoid', fun (V0) -> fun (V1) -> {'Builtin.MkUnit'} end end, {'Builtin.MkUnit'}}.
'dn--un--__Impl_Monoid_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1) -> {'Prelude.Interfaces.MkMonoid', fun (V2) -> fun (V3) -> ('dn--un--<+>_Semigroup_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(case V0 of {'Prelude.Interfaces.MkMonoid', V4, V5} -> V4 end, case V1 of {'Prelude.Interfaces.MkMonoid', V6, V7} -> V6 end, V2, V3)) end end, ('dn--un--neutral_Monoid_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1))}.
'dn--un--__Impl_Monoid_(%pi RigW Explicit Nothing $a $b)'(V0) -> {'Prelude.Interfaces.MkMonoid', fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--<+>_Semigroup_(%pi RigW Explicit Nothing $a $b)'(case V0 of {'Prelude.Interfaces.MkMonoid', V4, V5} -> V4 end, V1, V2, V3)) end end end, fun (V6) -> ('dn--un--neutral_Monoid_(%pi RigW Explicit Nothing $a $b)'(V0, V6)) end}.
'dn--un--__Bitraversable_(Bifunctor p)'(V0) -> case V0 of {'Prelude.Interfaces.MkBitraversable', V1, V2, V3} -> V1 end.
'dn--un--__Bitraversable_(Bifoldable p)'(V0) -> case V0 of {'Prelude.Interfaces.MkBitraversable', V1, V2, V3} -> V2 end.
'dn--un--__Applicative_(Functor f)'(V0) -> case V0 of {'Prelude.Interfaces.MkApplicative', V1, V2, V3} -> V1 end.
'dn--un--__Alternative_(Applicative f)'(V0) -> case V0 of {'Prelude.Interfaces.MkAlternative', V1, V2, V3} -> V1 end.
'dn--un--<+>_Semigroup_SemigroupApplicative($f $a)'(V0, V1, V2, V3) -> case V0 of {'Prelude.Interfaces.MkApplicative', V4, V5, V6} -> ((((V6('erased'))('erased'))(case V0 of {'Prelude.Interfaces.MkApplicative', V7, V8, V9} -> ((((V9('erased'))('erased'))(case V0 of {'Prelude.Interfaces.MkApplicative', V10, V11, V12} -> ((V11('erased'))(begin (V13 = V1), fun (V14) -> fun (V15) -> ((V13(V14))(V15)) end end end)) end))(V2)) end))(V3)) end.
'dn--un--<+>_Semigroup_SemigroupAlternative($f $a)'(V0, V1, V2) -> case V0 of {'Prelude.Interfaces.MkAlternative', V3, V4, V5} -> (((V5('erased'))(V1))(fun () -> V2 end)) end.
'dn--un--<+>_Semigroup_Ordering'(V0, V1) -> case V0 of 0 -> 0; 2 -> 2; 1 -> V1 end.
'dn--un--<+>_Semigroup_(|Unit,MkUnit|)'(V0, V1) -> {'Builtin.MkUnit'}.
'dn--un--<+>_Semigroup_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3) -> case V2 of {'Builtin.MkPair', V4, V5} -> case V3 of {'Builtin.MkPair', V6, V7} -> {'Builtin.MkPair', ((begin (V8 = V0), fun (V9) -> fun (V10) -> ((V8(V9))(V10)) end end end(V4))(V6)), ((begin (V11 = V1), fun (V12) -> fun (V13) -> ((V11(V12))(V13)) end end end(V5))(V7))} end end.
'dn--un--<+>_Semigroup_(%pi RigW Explicit Nothing $a $b)'(V0, V1, V2, V3) -> ((begin (V4 = V0), fun (V5) -> fun (V6) -> ((V4(V5))(V6)) end end end((V1(V3))))((V2(V3)))).
'un--when'(V0, V1, V2) -> case V1 of 1 -> (V2()); 0 -> case V0 of {'Prelude.Interfaces.MkApplicative', V3, V4, V5} -> ((V4('erased'))({'Builtin.MkUnit'})) end end.
'un--unless'(V0, V1, V2) -> ('un--when'(V0, case V1 of 1 -> 0; 0 -> 1 end, V2)).
'un--traverse_'(V0, V1, V2, V3) -> case V1 of {'Prelude.Interfaces.MkFoldable', V4, V5, V6, V7, V8, V9} -> (((((V4('erased'))('erased'))(fun (V13) -> fun (V14) -> ('un--*>'(V0, (V2(V13)), V14)) end end))(case V0 of {'Prelude.Interfaces.MkApplicative', V10, V11, V12} -> ((V11('erased'))({'Builtin.MkUnit'})) end))(V3)) end.
'un--traverse'(V0, V1, V2, V3) -> case V0 of {'Prelude.Interfaces.MkTraversable', V4, V5, V6} -> ((((((V6('erased'))('erased'))('erased'))(V1))(V2))(V3)) end.
'un--toList'(V0, V1) -> case V0 of {'Prelude.Interfaces.MkFoldable', V2, V3, V4, V5, V6, V7} -> ((V6('erased'))(V1)) end.
'un--sum\x{27}'(V0, V1, V2) -> ('un--sum'(V0, V1, V2)).
'un--sum'(V0, V1, V2) -> case V1 of {'Prelude.Interfaces.MkFoldable', V3, V4, V5, V6, V7, V8} -> (((((V8('erased'))('erased'))({'Prelude.Interfaces.MkMonoid', fun (V10) -> fun (V11) -> ('Idris.Idris2.Prelude.Interfaces.Num.Semigroup':'dn--un--<+>_Semigroup_Additive$a'(V0, V10, V11)) end end, ('Idris.Idris2.Prelude.Interfaces.Num.Monoid':'dn--un--neutral_Monoid_Additive$a'(V0))}))(fun (V9) -> V9 end))(V2)) end.
'un--sequence_'(V0, V1, V2) -> case V1 of {'Prelude.Interfaces.MkFoldable', V3, V4, V5, V6, V7, V8} -> (((((V3('erased'))('erased'))(fun (V12) -> fun (V13) -> ('un--*>'(V0, V12, V13)) end end))(case V0 of {'Prelude.Interfaces.MkApplicative', V9, V10, V11} -> ((V10('erased'))({'Builtin.MkUnit'})) end))(V2)) end.
'un--sequence'(V0, V1, V2) -> case V1 of {'Prelude.Interfaces.MkTraversable', V3, V4, V5} -> ((((((V5('erased'))('erased'))('erased'))(V0))(fun (V6) -> V6 end))(V2)) end.
'un--pure'(V0, V1) -> case V0 of {'Prelude.Interfaces.MkApplicative', V2, V3, V4} -> ((V3('erased'))(V1)) end.
'un--product\x{27}'(V0, V1, V2) -> ('un--product'(V0, V1, V2)).
'un--product'(V0, V1, V2) -> case V1 of {'Prelude.Interfaces.MkFoldable', V3, V4, V5, V6, V7, V8} -> (((((V8('erased'))('erased'))({'Prelude.Interfaces.MkMonoid', fun (V10) -> fun (V11) -> ('Idris.Idris2.Prelude.Interfaces.Num.Semigroup':'dn--un--<+>_Semigroup_Multiplicative$a'(V0, V10, V11)) end end, ('Idris.Idris2.Prelude.Interfaces.Num.Monoid':'dn--un--neutral_Monoid_Multiplicative$a'(V0))}))(fun (V9) -> V9 end))(V2)) end.
'un--or'(V0, V1) -> (case V0 of {'Prelude.Interfaces.MkFoldable', V2, V3, V4, V5, V6, V7} -> (((((V7('erased'))('erased'))({'Prelude.Interfaces.MkMonoid', fun (V9) -> fun (V10) -> ('Idris.Idris2.Prelude.Interfaces.Bool.Lazy.Semigroup':'dn--un--<+>_Semigroup_Any(%delayed Bool)'(V9, V10)) end end, fun () -> 0 end}))(fun (V8) -> V8 end))(V1)) end()).
'un--null'(V0, V1) -> case V0 of {'Prelude.Interfaces.MkFoldable', V2, V3, V4, V5, V6, V7} -> ((V4('erased'))(V1)) end.
'un--neutral'(V0) -> case V0 of {'Prelude.Interfaces.MkMonoid', V1, V2} -> V2 end.
'un--mapSnd'(V0, V1, V2) -> case V0 of {'Prelude.Interfaces.MkBifunctor', V3, V4, V5} -> (((((V5('erased'))('erased'))('erased'))(V1))(V2)) end.
'un--mapHom'(V0, V1, V2) -> case V0 of {'Prelude.Interfaces.MkBifunctor', V3, V4, V5} -> (((((((V3('erased'))('erased'))('erased'))('erased'))(V1))(V1))(V2)) end.
'un--mapFst'(V0, V1, V2) -> case V0 of {'Prelude.Interfaces.MkBifunctor', V3, V4, V5} -> (((((V4('erased'))('erased'))('erased'))(V1))(V2)) end.
'un--map'(V0) -> begin (V1 = V0), fun (V2) -> fun (V3) -> ((((V1('erased'))('erased'))(V2))(V3)) end end end.
'un--join'(V0, V1) -> case V0 of {'Prelude.Interfaces.MkMonad', V2, V3, V4} -> ((V4('erased'))(V1)) end.
'un--ignore'(V0) -> (begin (V2 = V0), fun (V3) -> fun (V4) -> ((((V2('erased'))('erased'))(V3))(V4)) end end end(fun (V1) -> {'Builtin.MkUnit'} end)).
'un--guard'(V0, V1) -> case V1 of 1 -> case V0 of {'Prelude.Interfaces.MkAlternative', V2, V3, V4} -> case V2 of {'Prelude.Interfaces.MkApplicative', V5, V6, V7} -> ((V6('erased'))({'Builtin.MkUnit'})) end end; 0 -> case V0 of {'Prelude.Interfaces.MkAlternative', V8, V9, V10} -> (V9('erased')) end end.
'un--for_'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(fun (V4) -> fun (V5) -> ('un--traverse_'(V0, V1, V4, V5)) end end, V2, V3)).
'un--for'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(fun (V4) -> fun (V5) -> case V1 of {'Prelude.Interfaces.MkTraversable', V6, V7, V8} -> ((((((V8('erased'))('erased'))('erased'))(V0))(V4))(V5)) end end end, V2, V3)).
'un--foldr'(V0, V1, V2, V3) -> case V0 of {'Prelude.Interfaces.MkFoldable', V4, V5, V6, V7, V8, V9} -> (((((V4('erased'))('erased'))(V1))(V2))(V3)) end.
'un--foldlM'(V0, V1, V2, V3, V4) -> case V0 of {'Prelude.Interfaces.MkFoldable', V5, V6, V7, V8, V9, V10} -> (((((((V8('erased'))('erased'))('erased'))(V1))(V2))(V3))(V4)) end.
'un--foldl'(V0, V1, V2, V3) -> case V0 of {'Prelude.Interfaces.MkFoldable', V4, V5, V6, V7, V8, V9} -> (((((V5('erased'))('erased'))(V1))(V2))(V3)) end.
'un--foldMap'(V0, V1, V2, V3) -> case V0 of {'Prelude.Interfaces.MkFoldable', V4, V5, V6, V7, V8, V9} -> (((((V9('erased'))('erased'))(V1))(V2))(V3)) end.
'un--empty'(V0) -> case V0 of {'Prelude.Interfaces.MkAlternative', V1, V2, V3} -> (V2('erased')) end.
'un--concatMap'(V0, V1, V2, V3) -> case V1 of {'Prelude.Interfaces.MkFoldable', V4, V5, V6, V7, V8, V9} -> (((((V9('erased'))('erased'))(V0))(V2))(V3)) end.
'un--concat'(V0, V1, V2) -> case V1 of {'Prelude.Interfaces.MkFoldable', V3, V4, V5, V6, V7, V8} -> (((((V8('erased'))('erased'))(V0))(fun (V9) -> V9 end))(V2)) end.
'un--choiceMap'(V0, V1, V2, V3) -> case V1 of {'Prelude.Interfaces.MkFoldable', V4, V5, V6, V7, V8, V9} -> (((((V9('erased'))('erased'))({'Prelude.Interfaces.MkMonoid', fun (V10) -> fun (V11) -> ('dn--un--<+>_Semigroup_SemigroupAlternative($f $a)'(V0, V10, V11)) end end, ('dn--un--neutral_Monoid_MonoidAlternative($f $a)'(V0))}))(V2))(V3)) end.
'un--choice'(V0, V1, V2) -> (case V1 of {'Prelude.Interfaces.MkFoldable', V3, V4, V5, V6, V7, V8} -> (((((V8('erased'))('erased'))({'Prelude.Interfaces.MkMonoid', fun (V10) -> fun (V11) -> ('Idris.Idris2.Prelude.Interfaces.Lazy':'dn--un--<+>_Semigroup_SemigroupAlternative(%delayed ($f $a))'(V0, V10, V11)) end end, ('Idris.Idris2.Prelude.Interfaces.Lazy':'dn--un--neutral_Monoid_MonoidAlternative(%delayed ($f $a))'(V0))}))(fun (V9) -> V9 end))(V2)) end()).
'un--bitraverse'(V0, V1, V2, V3, V4) -> case V0 of {'Prelude.Interfaces.MkBitraversable', V5, V6, V7} -> (((((((((V7('erased'))('erased'))('erased'))('erased'))('erased'))(V1))(V2))(V3))(V4)) end.
'un--bisequence'(V0, V1, V2) -> case V1 of {'Prelude.Interfaces.MkBitraversable', V3, V4, V5} -> (((((((((V5('erased'))('erased'))('erased'))('erased'))('erased'))(V0))(fun (V7) -> V7 end))(fun (V6) -> V6 end))(V2)) end.
'un--binull'(V0, V1) -> case V0 of {'Prelude.Interfaces.MkBifoldable', V2, V3, V4} -> (((V4('erased'))('erased'))(V1)) end.
'un--bimap'(V0, V1, V2, V3) -> case V0 of {'Prelude.Interfaces.MkBifunctor', V4, V5, V6} -> (((((((V4('erased'))('erased'))('erased'))('erased'))(V1))(V2))(V3)) end.
'un--bifor'(V0, V1, V2, V3, V4) -> case V1 of {'Prelude.Interfaces.MkBitraversable', V5, V6, V7} -> (((((((((V7('erased'))('erased'))('erased'))('erased'))('erased'))(V0))(V3))(V4))(V2)) end.
'un--bifoldr'(V0, V1, V2, V3) -> case V0 of {'Prelude.Interfaces.MkBifoldable', V4, V5, V6} -> fun (V7) -> (((((((V4('erased'))('erased'))('erased'))(V1))(V2))(V3))(V7)) end end.
'un--bifoldl'(V0, V1, V2, V3) -> case V0 of {'Prelude.Interfaces.MkBifoldable', V4, V5, V6} -> fun (V7) -> (((((((V5('erased'))('erased'))('erased'))(V1))(V2))(V3))(V7)) end end.
'un--bifoldMapFst'(V0, V1, V2, V3) -> ('un--bifoldMap'(V0, V1, V2, fun (V4) -> case V0 of {'Prelude.Interfaces.MkMonoid', V5, V6} -> V6 end end, V3)).
'un--bifoldMap'(V0, V1, V2, V3, V4) -> case V1 of {'Prelude.Interfaces.MkBifoldable', V5, V6, V7} -> (((((((V5('erased'))('erased'))('erased'))(fun (V16) -> (begin (V19 = case V0 of {'Prelude.Interfaces.MkMonoid', V17, V18} -> V17 end), fun (V20) -> fun (V21) -> ((V19(V20))(V21)) end end end((V2(V16)))) end))(fun (V10) -> (begin (V13 = case V0 of {'Prelude.Interfaces.MkMonoid', V11, V12} -> V11 end), fun (V14) -> fun (V15) -> ((V13(V14))(V15)) end end end((V3(V10)))) end))(case V0 of {'Prelude.Interfaces.MkMonoid', V8, V9} -> V9 end))(V4)) end.
'un--any'(V0, V1, V2) -> case V0 of {'Prelude.Interfaces.MkFoldable', V3, V4, V5, V6, V7, V8} -> (((((V8('erased'))('erased'))({'Prelude.Interfaces.MkMonoid', fun (V9) -> fun (V10) -> ('Idris.Idris2.Prelude.Interfaces.Bool.Semigroup':'dn--un--<+>_Semigroup_AnyBool'(V9, V10)) end end, 0}))(V1))(V2)) end.
'un--and'(V0, V1) -> (case V0 of {'Prelude.Interfaces.MkFoldable', V2, V3, V4, V5, V6, V7} -> (((((V7('erased'))('erased'))({'Prelude.Interfaces.MkMonoid', fun (V9) -> fun (V10) -> ('Idris.Idris2.Prelude.Interfaces.Bool.Lazy.Semigroup':'dn--un--<+>_Semigroup_All(%delayed Bool)'(V9, V10)) end end, fun () -> 1 end}))(fun (V8) -> V8 end))(V1)) end()).
'un--all'(V0, V1, V2) -> case V0 of {'Prelude.Interfaces.MkFoldable', V3, V4, V5, V6, V7, V8} -> (((((V8('erased'))('erased'))({'Prelude.Interfaces.MkMonoid', fun (V9) -> fun (V10) -> ('Idris.Idris2.Prelude.Interfaces.Bool.Semigroup':'dn--un--<+>_Semigroup_AllBool'(V9, V10)) end end, 1}))(V1))(V2)) end.
'un--SemigroupApplicative'(V0, V1, V2, V3) -> ('dn--un--<+>_Semigroup_SemigroupApplicative($f $a)'(V0, V1, V2, V3)).
'un--SemigroupAlternative'(V0, V1, V2) -> ('dn--un--<+>_Semigroup_SemigroupAlternative($f $a)'(V0, V1, V2)).
'un--MonoidApplicative'(V0, V1) -> {'Prelude.Interfaces.MkMonoid', fun (V2) -> fun (V3) -> ('dn--un--<+>_Semigroup_SemigroupApplicative($f $a)'(V0, case V1 of {'Prelude.Interfaces.MkMonoid', V4, V5} -> V4 end, V2, V3)) end end, ('dn--un--neutral_Monoid_MonoidApplicative($f $a)'(V0, V1))}.
'un--MonoidAlternative'(V0) -> {'Prelude.Interfaces.MkMonoid', fun (V1) -> fun (V2) -> ('dn--un--<+>_Semigroup_SemigroupAlternative($f $a)'(V0, V1, V2)) end end, ('dn--un--neutral_Monoid_MonoidAlternative($f $a)'(V0))}.
'un-->>='(V0, V1, V2) -> case V0 of {'Prelude.Interfaces.MkMonad', V3, V4, V5} -> ((((V4('erased'))('erased'))(V1))(V2)) end.
'un-->>'(V0, V1, V2) -> case V0 of {'Prelude.Interfaces.MkMonad', V3, V4, V5} -> ((((V4('erased'))('erased'))(V1))(fun (V6) -> (V2()) end)) end.
'un-->=>'(V0, V1, V2, V3) -> case V0 of {'Prelude.Interfaces.MkMonad', V4, V5, V6} -> ((((V5('erased'))('erased'))((V1(V3))))(V2)) end.
'un--=<<'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(fun (V3) -> fun (V4) -> case V0 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> ((((V6('erased'))('erased'))(V3))(V4)) end end end, V1, V2)).
'un--<|>'(V0, V1, V2) -> case V0 of {'Prelude.Interfaces.MkAlternative', V3, V4, V5} -> (((V5('erased'))(V1))(V2)) end.
'un--<=<'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(fun (V3) -> fun (V4) -> fun (V5) -> ('un-->=>'(V0, V3, V4, V5)) end end end, V1, V2)).
'un--<+>'(V0) -> begin (V1 = V0), fun (V2) -> fun (V3) -> ((V1(V2))(V3)) end end end.
'un--<*>'(V0, V1, V2) -> case V0 of {'Prelude.Interfaces.MkApplicative', V3, V4, V5} -> ((((V5('erased'))('erased'))(V1))(V2)) end.
'un--<*'(V0, V1, V2) -> case V0 of {'Prelude.Interfaces.MkApplicative', V3, V4, V5} -> ((((V5('erased'))('erased'))(((begin (V11 = case V0 of {'Prelude.Interfaces.MkApplicative', V8, V9, V10} -> V8 end), fun (V12) -> fun (V13) -> ((((V11('erased'))('erased'))(V12))(V13)) end end end(fun (V6) -> fun (V7) -> V6 end end))(V1))))(V2)) end.
'un--<&>'(V0, V1, V2) -> ((begin (V3 = V0), fun (V4) -> fun (V5) -> ((((V3('erased'))('erased'))(V4))(V5)) end end end(V2))(V1)).
'un--<$>'(V0, V1, V2) -> ((begin (V3 = V0), fun (V4) -> fun (V5) -> ((((V3('erased'))('erased'))(V4))(V5)) end end end(V1))(V2)).
'un--<$'(V0, V1) -> (begin (V3 = V0), fun (V4) -> fun (V5) -> ((((V3('erased'))('erased'))(V4))(V5)) end end end(fun (V2) -> V1 end)).
'un--*>'(V0, V1, V2) -> case V0 of {'Prelude.Interfaces.MkApplicative', V3, V4, V5} -> ((((V5('erased'))('erased'))(((begin (V11 = case V0 of {'Prelude.Interfaces.MkApplicative', V8, V9, V10} -> V8 end), fun (V12) -> fun (V13) -> ((((V11('erased'))('erased'))(V12))(V13)) end end end(fun (V6) -> fun (V7) -> V7 end end))(V1))))(V2)) end.
'un--$>'(V0, V1, V2) -> ((begin (V4 = V0), fun (V5) -> fun (V6) -> ((((V4('erased'))('erased'))(V5))(V6)) end end end(fun (V3) -> V2 end))(V1)).
