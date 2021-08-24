-module('Idris.Idris2.Prelude.Interfaces').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--guard-1021'/2,
  'nested--2379-1564--in--un--monoid'/1,
  'dn--un--neutral_Monoid_Ordering'/0,
  'dn--un--neutral_Monoid_MonoidAlternative($f $a)'/1,
  'dn--un--neutral_Monoid_(|Unit,MkUnit|)'/0,
  'dn--un--neutral_Monoid_(%pi RigW Explicit Nothing $a $b)'/2,
  'dn--un--__Traversable_(Functor t)'/1,
  'dn--un--__Traversable_(Foldable t)'/1,
  'dn--un--__Monoid_(Semigroup ty)'/1,
  'dn--un--__Monad_(Applicative m)'/1,
  'dn--un--__Impl_Semigroup_Ordering'/2,
  'dn--un--__Impl_Semigroup_(|Unit,MkUnit|)'/2,
  'dn--un--__Impl_Semigroup_(%pi RigW Explicit Nothing $a $b)'/4,
  'dn--un--__Impl_Monoid_Ordering'/0,
  'dn--un--__Impl_Monoid_(|Unit,MkUnit|)'/0,
  'dn--un--__Impl_Monoid_(%pi RigW Explicit Nothing $a $b)'/1,
  'dn--un--__Bitraversable_(Bifunctor p)'/1,
  'dn--un--__Bitraversable_(Bifoldable p)'/1,
  'dn--un--__Applicative_(Functor f)'/1,
  'dn--un--__Alternative_(Applicative f)'/1,
  'dn--un--<+>_Semigroup_SemigroupAlternative($f $a)'/3,
  'dn--un--<+>_Semigroup_Ordering'/2,
  'dn--un--<+>_Semigroup_(|Unit,MkUnit|)'/2,
  'dn--un--<+>_Semigroup_(%pi RigW Explicit Nothing $a $b)'/4,
  'un--when'/3,
  'un--unless'/3,
  'un--traverse_'/3,
  'un--traverse'/4,
  'un--toList'/2,
  'un--sum\x{27}'/2,
  'un--sum'/2,
  'un--sequence_'/2,
  'un--sequence'/2,
  'un--pure'/2,
  'un--product\x{27}'/2,
  'un--product'/2,
  'un--or'/2,
  'un--null'/2,
  'un--neutral'/1,
  'un--mapSnd'/3,
  'un--mapHom'/3,
  'un--mapFst'/3,
  'un--map'/3,
  'un--join'/2,
  'un--ignore'/2,
  'un--guard'/2,
  'un--for_'/3,
  'un--for'/3,
  'un--foldr'/4,
  'un--foldlM'/5,
  'un--foldl'/4,
  'un--foldMap'/4,
  'un--empty'/1,
  'un--concatMap'/3,
  'un--concat'/2,
  'un--choiceMap'/3,
  'un--choice'/2,
  'un--bitraverse'/5,
  'un--bisequence'/2,
  'un--binull'/2,
  'un--bimap'/4,
  'un--bifor'/4,
  'un--bifoldr'/4,
  'un--bifoldl'/4,
  'un--any'/3,
  'un--and'/2,
  'un--all'/3,
  'un--SemigroupAlternative'/3,
  'un--MonoidAlternative'/1,
  'un-->>='/3,
  'un-->>'/3,
  'un-->=>'/4,
  'un--=<<'/3,
  'un--<|>'/3,
  'un--<=<'/3,
  'un--<+>'/3,
  'un--<*>'/3,
  'un--<*'/3,
  'un--<&>'/3,
  'un--<$>'/3,
  'un--<$'/3,
  'un--*>'/3,
  'un--$>'/3
]).
'case--guard-1021'(V0, V1) -> case V1 of 1 -> case V0 of {'Idris.Prelude.Interfaces.MkAlternative', E0, E1, E2} -> (fun (V2, V3, V4) -> case V2 of {'Idris.Prelude.Interfaces.MkApplicative', E3, E4, E5} -> (fun (V5, V6, V7) -> ((V6('erased'))(0)) end(E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; 0 -> case V0 of {'Idris.Prelude.Interfaces.MkAlternative', E6, E7, E8} -> (fun (V8, V9, V10) -> (V9('erased')) end(E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--2379-1564--in--un--monoid'(V0) -> {'Idris.Prelude.Interfaces.MkMonoid', fun (V1) -> fun (V2) -> case V1 of 1 -> V2; 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, 1}.
'dn--un--neutral_Monoid_Ordering'() -> 1.
'dn--un--neutral_Monoid_MonoidAlternative($f $a)'(V0) -> case V0 of {'Idris.Prelude.Interfaces.MkAlternative', E0, E1, E2} -> (fun (V1, V2, V3) -> (V2('erased')) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--neutral_Monoid_(|Unit,MkUnit|)'() -> 0.
'dn--un--neutral_Monoid_(%pi RigW Explicit Nothing $a $b)'(V0, V1) -> case V0 of {'Idris.Prelude.Interfaces.MkMonoid', E0, E1} -> (fun (V2, V3) -> V3 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Traversable_(Functor t)'(V0) -> case V0 of {'Idris.Prelude.Interfaces.MkTraversable', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Traversable_(Foldable t)'(V0) -> case V0 of {'Idris.Prelude.Interfaces.MkTraversable', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Monoid_(Semigroup ty)'(V0) -> case V0 of {'Idris.Prelude.Interfaces.MkMonoid', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Monad_(Applicative m)'(V0) -> case V0 of {'Idris.Prelude.Interfaces.MkMonad', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Impl_Semigroup_Ordering'(V0, V1) -> ('dn--un--<+>_Semigroup_Ordering'(V0, V1)).
'dn--un--__Impl_Semigroup_(|Unit,MkUnit|)'(V0, V1) -> ('dn--un--<+>_Semigroup_(|Unit,MkUnit|)'(V0, V1)).
'dn--un--__Impl_Semigroup_(%pi RigW Explicit Nothing $a $b)'(V0, V1, V2, V3) -> ('dn--un--<+>_Semigroup_(%pi RigW Explicit Nothing $a $b)'(V0, V1, V2, V3)).
'dn--un--__Impl_Monoid_Ordering'() -> {'Idris.Prelude.Interfaces.MkMonoid', fun (V0) -> fun (V1) -> ('dn--un--<+>_Semigroup_Ordering'(V0, V1)) end end, ('dn--un--neutral_Monoid_Ordering'())}.
'dn--un--__Impl_Monoid_(|Unit,MkUnit|)'() -> {'Idris.Prelude.Interfaces.MkMonoid', fun (V0) -> fun (V1) -> ('dn--un--<+>_Semigroup_(|Unit,MkUnit|)'(V0, V1)) end end, ('dn--un--neutral_Monoid_(|Unit,MkUnit|)'())}.
'dn--un--__Impl_Monoid_(%pi RigW Explicit Nothing $a $b)'(V0) -> {'Idris.Prelude.Interfaces.MkMonoid', fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--<+>_Semigroup_(%pi RigW Explicit Nothing $a $b)'(case V0 of {'Idris.Prelude.Interfaces.MkMonoid', E0, E1} -> (fun (V4, V5) -> V4 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V1, V2, V3)) end end end, fun (V6) -> ('dn--un--neutral_Monoid_(%pi RigW Explicit Nothing $a $b)'(V0, V6)) end}.
'dn--un--__Bitraversable_(Bifunctor p)'(V0) -> case V0 of {'Idris.Prelude.Interfaces.MkBitraversable', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Bitraversable_(Bifoldable p)'(V0) -> case V0 of {'Idris.Prelude.Interfaces.MkBitraversable', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Applicative_(Functor f)'(V0) -> case V0 of {'Idris.Prelude.Interfaces.MkApplicative', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Alternative_(Applicative f)'(V0) -> case V0 of {'Idris.Prelude.Interfaces.MkAlternative', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--<+>_Semigroup_SemigroupAlternative($f $a)'(V0, V1, V2) -> case V0 of {'Idris.Prelude.Interfaces.MkAlternative', E0, E1, E2} -> (fun (V3, V4, V5) -> (((V5('erased'))(V1))(fun () -> V2 end)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--<+>_Semigroup_Ordering'(V0, V1) -> case V0 of 0 -> 0; 2 -> 2; 1 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--<+>_Semigroup_(|Unit,MkUnit|)'(V0, V1) -> 0.
'dn--un--<+>_Semigroup_(%pi RigW Explicit Nothing $a $b)'(V0, V1, V2, V3) -> ((V0((V1(V3))))((V2(V3)))).
'un--when'(V0, V1, V2) -> case V1 of 1 -> (V2()); 0 -> case V0 of {'Idris.Prelude.Interfaces.MkApplicative', E0, E1, E2} -> (fun (V3, V4, V5) -> ((V4('erased'))(0)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--unless'(V0, V1, V2) -> ('un--when'(V0, case V1 of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V2)).
'un--traverse_'(V0, V1, V2) -> case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Idris.Prelude.Interfaces.MkFoldable', E0, E1, E2, E3, E4, E5} -> (fun (V3, V4, V5, V6, V7, V8) -> (((((V3('erased'))('erased'))(fun (V12) -> fun (V13) -> ('un--*>'(('Idris.Idris2.Builtin':'un--snd'(V0)), (V1(V12)), V13)) end end))(case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Idris.Prelude.Interfaces.MkApplicative', E6, E7, E8} -> (fun (V9, V10, V11) -> ((V10('erased'))(0)) end(E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end))(V2)) end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--traverse'(V0, V1, V2, V3) -> case V0 of {'Idris.Prelude.Interfaces.MkTraversable', E0, E1, E2} -> (fun (V4, V5, V6) -> ((((((V6('erased'))('erased'))('erased'))(V1))(V2))(V3)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--toList'(V0, V1) -> case V0 of {'Idris.Prelude.Interfaces.MkFoldable', E0, E1, E2, E3, E4, E5} -> (fun (V2, V3, V4, V5, V6, V7) -> ((V6('erased'))(V1)) end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--sum\x{27}'(V0, V1) -> ('un--sum'(V0, V1)).
'un--sum'(V0, V1) -> ('un--concat'({'Idris.Builtin.MkPair', ('Idris.Idris2.Builtin':'un--fst'(V0)), {'Idris.Prelude.Interfaces.MkMonoid', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.Interfaces.Num.Semigroup':'dn--un--<+>_Semigroup_Additive$a'(('Idris.Idris2.Builtin':'un--snd'(V0)), V2, V3)) end end, ('Idris.Idris2.Prelude.Interfaces.Num.Monoid':'dn--un--neutral_Monoid_Additive$a'(('Idris.Idris2.Builtin':'un--snd'(V0))))}}, V1)).
'un--sequence_'(V0, V1) -> case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Idris.Prelude.Interfaces.MkFoldable', E0, E1, E2, E3, E4, E5} -> (fun (V2, V3, V4, V5, V6, V7) -> (((((V2('erased'))('erased'))(fun (V11) -> fun (V12) -> ('un--*>'(('Idris.Idris2.Builtin':'un--snd'(V0)), V11, V12)) end end))(case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Idris.Prelude.Interfaces.MkApplicative', E6, E7, E8} -> (fun (V8, V9, V10) -> ((V9('erased'))(0)) end(E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end))(V1)) end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--sequence'(V0, V1) -> case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Idris.Prelude.Interfaces.MkTraversable', E0, E1, E2} -> (fun (V2, V3, V4) -> ((((((V4('erased'))('erased'))('erased'))(('Idris.Idris2.Builtin':'un--snd'(V0))))(fun (V5) -> V5 end))(V1)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--pure'(V0, V1) -> case V0 of {'Idris.Prelude.Interfaces.MkApplicative', E0, E1, E2} -> (fun (V2, V3, V4) -> ((V3('erased'))(V1)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--product\x{27}'(V0, V1) -> ('un--product'(V0, V1)).
'un--product'(V0, V1) -> ('un--concat'({'Idris.Builtin.MkPair', ('Idris.Idris2.Builtin':'un--fst'(V0)), {'Idris.Prelude.Interfaces.MkMonoid', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.Interfaces.Num.Semigroup':'dn--un--<+>_Semigroup_Multiplicative$a'(('Idris.Idris2.Builtin':'un--snd'(V0)), V2, V3)) end end, ('Idris.Idris2.Prelude.Interfaces.Num.Monoid':'dn--un--neutral_Monoid_Multiplicative$a'(('Idris.Idris2.Builtin':'un--snd'(V0))))}}, V1)).
'un--or'(V0, V1) -> (('un--concat'({'Idris.Builtin.MkPair', V0, {'Idris.Prelude.Interfaces.MkMonoid', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.Interfaces.Bool.Lazy.Semigroup':'dn--un--<+>_Semigroup_Any(%delayed Bool)'(V2, V3)) end end, ('Idris.Idris2.Prelude.Interfaces.Bool.Lazy.Monoid':'dn--un--neutral_Monoid_Any(%delayed Bool)'())}}, V1))()).
'un--null'(V0, V1) -> case V0 of {'Idris.Prelude.Interfaces.MkFoldable', E0, E1, E2, E3, E4, E5} -> (fun (V2, V3, V4, V5, V6, V7) -> ((V4('erased'))(V1)) end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--neutral'(V0) -> case V0 of {'Idris.Prelude.Interfaces.MkMonoid', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--mapSnd'(V0, V1, V2) -> case V0 of {'Idris.Prelude.Interfaces.MkBifunctor', E0, E1, E2} -> (fun (V3, V4, V5) -> (((((V5('erased'))('erased'))('erased'))(V1))(V2)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--mapHom'(V0, V1, V2) -> case V0 of {'Idris.Prelude.Interfaces.MkBifunctor', E0, E1, E2} -> (fun (V3, V4, V5) -> (((((((V3('erased'))('erased'))('erased'))('erased'))(V1))(V1))(V2)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--mapFst'(V0, V1, V2) -> case V0 of {'Idris.Prelude.Interfaces.MkBifunctor', E0, E1, E2} -> (fun (V3, V4, V5) -> (((((V4('erased'))('erased'))('erased'))(V1))(V2)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--map'(V0, V1, V2) -> ((((V0('erased'))('erased'))(V1))(V2)).
'un--join'(V0, V1) -> case V0 of {'Idris.Prelude.Interfaces.MkMonad', E0, E1, E2} -> (fun (V2, V3, V4) -> ((V4('erased'))(V1)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--ignore'(V0, V1) -> ((((V0('erased'))('erased'))(fun (V2) -> 0 end))(V1)).
'un--guard'(V0, V1) -> case V1 of 1 -> case V0 of {'Idris.Prelude.Interfaces.MkAlternative', E0, E1, E2} -> (fun (V2, V3, V4) -> case V2 of {'Idris.Prelude.Interfaces.MkApplicative', E3, E4, E5} -> (fun (V5, V6, V7) -> ((V6('erased'))(0)) end(E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; 0 -> case V0 of {'Idris.Prelude.Interfaces.MkAlternative', E6, E7, E8} -> (fun (V8, V9, V10) -> (V9('erased')) end(E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--for_'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(fun (V3) -> fun (V4) -> ('un--traverse_'(V0, V3, V4)) end end, V1, V2)).
'un--for'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(fun (V3) -> fun (V4) -> case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Idris.Prelude.Interfaces.MkTraversable', E0, E1, E2} -> (fun (V5, V6, V7) -> ((((((V7('erased'))('erased'))('erased'))(('Idris.Idris2.Builtin':'un--snd'(V0))))(V3))(V4)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V1, V2)).
'un--foldr'(V0, V1, V2, V3) -> case V0 of {'Idris.Prelude.Interfaces.MkFoldable', E0, E1, E2, E3, E4, E5} -> (fun (V4, V5, V6, V7, V8, V9) -> (((((V4('erased'))('erased'))(V1))(V2))(V3)) end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--foldlM'(V0, V1, V2, V3, V4) -> case V0 of {'Idris.Prelude.Interfaces.MkFoldable', E0, E1, E2, E3, E4, E5} -> (fun (V5, V6, V7, V8, V9, V10) -> (((((((V8('erased'))('erased'))('erased'))(V1))(V2))(V3))(V4)) end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--foldl'(V0, V1, V2, V3) -> case V0 of {'Idris.Prelude.Interfaces.MkFoldable', E0, E1, E2, E3, E4, E5} -> (fun (V4, V5, V6, V7, V8, V9) -> (((((V5('erased'))('erased'))(V1))(V2))(V3)) end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--foldMap'(V0, V1, V2, V3) -> case V0 of {'Idris.Prelude.Interfaces.MkFoldable', E0, E1, E2, E3, E4, E5} -> (fun (V4, V5, V6, V7, V8, V9) -> (((((V9('erased'))('erased'))(V1))(V2))(V3)) end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--empty'(V0) -> case V0 of {'Idris.Prelude.Interfaces.MkAlternative', E0, E1, E2} -> (fun (V1, V2, V3) -> (V2('erased')) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--concatMap'(V0, V1, V2) -> case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Idris.Prelude.Interfaces.MkFoldable', E0, E1, E2, E3, E4, E5} -> (fun (V3, V4, V5, V6, V7, V8) -> (((((V8('erased'))('erased'))(('Idris.Idris2.Builtin':'un--snd'(V0))))(V1))(V2)) end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--concat'(V0, V1) -> case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Idris.Prelude.Interfaces.MkFoldable', E0, E1, E2, E3, E4, E5} -> (fun (V2, V3, V4, V5, V6, V7) -> (((((V7('erased'))('erased'))(('Idris.Idris2.Builtin':'un--snd'(V0))))(fun (V8) -> V8 end))(V1)) end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--choiceMap'(V0, V1, V2) -> case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Idris.Prelude.Interfaces.MkFoldable', E0, E1, E2, E3, E4, E5} -> (fun (V3, V4, V5, V6, V7, V8) -> (((((V8('erased'))('erased'))({'Idris.Prelude.Interfaces.MkMonoid', fun (V9) -> fun (V10) -> ('dn--un--<+>_Semigroup_SemigroupAlternative($f $a)'(('Idris.Idris2.Builtin':'un--snd'(V0)), V9, V10)) end end, ('dn--un--neutral_Monoid_MonoidAlternative($f $a)'(('Idris.Idris2.Builtin':'un--snd'(V0))))}))(V1))(V2)) end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--choice'(V0, V1) -> (('un--concat'({'Idris.Builtin.MkPair', ('Idris.Idris2.Builtin':'un--fst'(V0)), {'Idris.Prelude.Interfaces.MkMonoid', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.Interfaces.Lazy':'dn--un--<+>_Semigroup_SemigroupAlternative(%delayed ($f $a))'(('Idris.Idris2.Builtin':'un--snd'(V0)), V2, V3)) end end, ('Idris.Idris2.Prelude.Interfaces.Lazy':'dn--un--neutral_Monoid_MonoidAlternative(%delayed ($f $a))'(('Idris.Idris2.Builtin':'un--snd'(V0))))}}, V1))()).
'un--bitraverse'(V0, V1, V2, V3, V4) -> case V0 of {'Idris.Prelude.Interfaces.MkBitraversable', E0, E1, E2} -> (fun (V5, V6, V7) -> (((((((((V7('erased'))('erased'))('erased'))('erased'))('erased'))(V1))(V2))(V3))(V4)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--bisequence'(V0, V1) -> case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Idris.Prelude.Interfaces.MkBitraversable', E0, E1, E2} -> (fun (V2, V3, V4) -> (((((((((V4('erased'))('erased'))('erased'))('erased'))('erased'))(('Idris.Idris2.Builtin':'un--snd'(V0))))(fun (V6) -> V6 end))(fun (V5) -> V5 end))(V1)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--binull'(V0, V1) -> case V0 of {'Idris.Prelude.Interfaces.MkBifoldable', E0, E1, E2} -> (fun (V2, V3, V4) -> (((V4('erased'))('erased'))(V1)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--bimap'(V0, V1, V2, V3) -> case V0 of {'Idris.Prelude.Interfaces.MkBifunctor', E0, E1, E2} -> (fun (V4, V5, V6) -> (((((((V4('erased'))('erased'))('erased'))('erased'))(V1))(V2))(V3)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--bifor'(V0, V1, V2, V3) -> case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Idris.Prelude.Interfaces.MkBitraversable', E0, E1, E2} -> (fun (V4, V5, V6) -> (((((((((V6('erased'))('erased'))('erased'))('erased'))('erased'))(('Idris.Idris2.Builtin':'un--snd'(V0))))(V2))(V3))(V1)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--bifoldr'(V0, V1, V2, V3) -> case V0 of {'Idris.Prelude.Interfaces.MkBifoldable', E0, E1, E2} -> (fun (V4, V5, V6) -> fun (V7) -> (((((((V4('erased'))('erased'))('erased'))(V1))(V2))(V3))(V7)) end end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--bifoldl'(V0, V1, V2, V3) -> case V0 of {'Idris.Prelude.Interfaces.MkBifoldable', E0, E1, E2} -> (fun (V4, V5, V6) -> fun (V7) -> (((((((V5('erased'))('erased'))('erased'))(V1))(V2))(V3))(V7)) end end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--any'(V0, V1, V2) -> case V0 of {'Idris.Prelude.Interfaces.MkFoldable', E0, E1, E2, E3, E4, E5} -> (fun (V3, V4, V5, V6, V7, V8) -> (((((V8('erased'))('erased'))({'Idris.Prelude.Interfaces.MkMonoid', fun (V9) -> fun (V10) -> ('Idris.Idris2.Prelude.Interfaces.Bool.Semigroup':'dn--un--<+>_Semigroup_AnyBool'(V9, V10)) end end, ('Idris.Idris2.Prelude.Interfaces.Bool.Monoid':'dn--un--neutral_Monoid_AnyBool'())}))(V1))(V2)) end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--and'(V0, V1) -> (('un--concat'({'Idris.Builtin.MkPair', V0, {'Idris.Prelude.Interfaces.MkMonoid', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.Interfaces.Bool.Lazy.Semigroup':'dn--un--<+>_Semigroup_All(%delayed Bool)'(V2, V3)) end end, ('Idris.Idris2.Prelude.Interfaces.Bool.Lazy.Monoid':'dn--un--neutral_Monoid_All(%delayed Bool)'())}}, V1))()).
'un--all'(V0, V1, V2) -> case V0 of {'Idris.Prelude.Interfaces.MkFoldable', E0, E1, E2, E3, E4, E5} -> (fun (V3, V4, V5, V6, V7, V8) -> (((((V8('erased'))('erased'))({'Idris.Prelude.Interfaces.MkMonoid', fun (V9) -> fun (V10) -> ('Idris.Idris2.Prelude.Interfaces.Bool.Semigroup':'dn--un--<+>_Semigroup_AllBool'(V9, V10)) end end, ('Idris.Idris2.Prelude.Interfaces.Bool.Monoid':'dn--un--neutral_Monoid_AllBool'())}))(V1))(V2)) end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--SemigroupAlternative'(V0, V1, V2) -> ('dn--un--<+>_Semigroup_SemigroupAlternative($f $a)'(V0, V1, V2)).
'un--MonoidAlternative'(V0) -> {'Idris.Prelude.Interfaces.MkMonoid', fun (V1) -> fun (V2) -> ('dn--un--<+>_Semigroup_SemigroupAlternative($f $a)'(V0, V1, V2)) end end, ('dn--un--neutral_Monoid_MonoidAlternative($f $a)'(V0))}.
'un-->>='(V0, V1, V2) -> case V0 of {'Idris.Prelude.Interfaces.MkMonad', E0, E1, E2} -> (fun (V3, V4, V5) -> ((((V4('erased'))('erased'))(V1))(V2)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un-->>'(V0, V1, V2) -> case V0 of {'Idris.Prelude.Interfaces.MkMonad', E0, E1, E2} -> (fun (V3, V4, V5) -> ((((V4('erased'))('erased'))(V1))(fun (V6) -> (V2()) end)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un-->=>'(V0, V1, V2, V3) -> case V0 of {'Idris.Prelude.Interfaces.MkMonad', E0, E1, E2} -> (fun (V4, V5, V6) -> ((((V5('erased'))('erased'))((V1(V3))))(V2)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--=<<'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(fun (V3) -> fun (V4) -> case V0 of {'Idris.Prelude.Interfaces.MkMonad', E0, E1, E2} -> (fun (V5, V6, V7) -> ((((V6('erased'))('erased'))(V3))(V4)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V1, V2)).
'un--<|>'(V0, V1, V2) -> case V0 of {'Idris.Prelude.Interfaces.MkAlternative', E0, E1, E2} -> (fun (V3, V4, V5) -> (((V5('erased'))(V1))(V2)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--<=<'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(fun (V3) -> fun (V4) -> fun (V5) -> ('un-->=>'(V0, V3, V4, V5)) end end end, V1, V2)).
'un--<+>'(V0, V1, V2) -> ((V0(V1))(V2)).
'un--<*>'(V0, V1, V2) -> case V0 of {'Idris.Prelude.Interfaces.MkApplicative', E0, E1, E2} -> (fun (V3, V4, V5) -> ((((V5('erased'))('erased'))(V1))(V2)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--<*'(V0, V1, V2) -> case V0 of {'Idris.Prelude.Interfaces.MkApplicative', E0, E1, E2} -> (fun (V3, V4, V5) -> ((((V5('erased'))('erased'))(case V0 of {'Idris.Prelude.Interfaces.MkApplicative', E3, E4, E5} -> (fun (V6, V7, V8) -> ((((V6('erased'))('erased'))(fun (V9) -> fun (V10) -> V9 end end))(V1)) end(E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end))(V2)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--<&>'(V0, V1, V2) -> ((((V0('erased'))('erased'))(V2))(V1)).
'un--<$>'(V0, V1, V2) -> ((((V0('erased'))('erased'))(V1))(V2)).
'un--<$'(V0, V1, V2) -> ((((V0('erased'))('erased'))(fun (V3) -> V1 end))(V2)).
'un--*>'(V0, V1, V2) -> case V0 of {'Idris.Prelude.Interfaces.MkApplicative', E0, E1, E2} -> (fun (V3, V4, V5) -> ((((V5('erased'))('erased'))(case V0 of {'Idris.Prelude.Interfaces.MkApplicative', E3, E4, E5} -> (fun (V6, V7, V8) -> ((((V6('erased'))('erased'))(fun (V9) -> fun (V10) -> V10 end end))(V1)) end(E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end))(V2)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--$>'(V0, V1, V2) -> ((((V0('erased'))('erased'))(fun (V3) -> V2 end))(V1)).
