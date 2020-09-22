-module('Idris.Idris2.Control.Monad.Identity').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--max-595'/5,
  'case--min-567'/5,
  'dn--un--show_Show__(Identity $a)'/3,
  'dn--un--showPrec_Show__(Identity $a)'/4,
  'dn--un--pure_Applicative__Identity'/2,
  'dn--un--neutral_Monoid__(Identity $a)'/2,
  'dn--un--min_Ord__(Identity $a)'/4,
  'dn--un--max_Ord__(Identity $a)'/4,
  'dn--un--map_Functor__Identity'/4,
  'dn--un--join_Monad__Identity'/2,
  'dn--un--compare_Ord__(Identity $a)'/4,
  'dn--un--__Impl_Show_(Identity $a)'/2,
  'dn--un--__Impl_Semigroup_(Identity $a)'/4,
  'dn--un--__Impl_Ord_(Identity $a)'/2,
  'dn--un--__Impl_Monoid_(Identity $a)'/2,
  'dn--un--__Impl_Monad_Identity'/0,
  'dn--un--__Impl_Functor_Identity'/4,
  'dn--un--__Impl_Eq_(Identity $a)'/2,
  'dn--un--__Impl_Applicative_Identity'/0,
  'dn--un-->_Ord__(Identity $a)'/4,
  'dn--un-->>=_Monad__Identity'/4,
  'dn--un-->=_Ord__(Identity $a)'/4,
  'dn--un--==_Eq__(Identity $a)'/4,
  'dn--un--<_Ord__(Identity $a)'/4,
  'dn--un--<=_Ord__(Identity $a)'/4,
  'dn--un--<+>_Semigroup__(Identity $a)'/4,
  'dn--un--<*>_Applicative__Identity'/4,
  'dn--un--/=_Eq__(Identity $a)'/4
]).
'case--max-595'(V0, V1, V2, V3, V4) -> case V4 of 0 -> V3; 1 -> V2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-567'(V0, V1, V2, V3, V4) -> case V4 of 0 -> V3; 1 -> V2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show__(Identity $a)'(V0, V1, V2) -> ('dn--un--showPrec_Show__(Identity $a)'('erased', V1, {'Idris.Prelude.Show.Open'}, V2)).
'dn--un--showPrec_Show__(Identity $a)'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.Show':'un--showCon'(V2, <<"Id"/utf8>>, ('Idris.Idris2.Prelude.Show':'un--showArg'('erased', V1, V3)))).
'dn--un--pure_Applicative__Identity'(V0, V1) -> V1.
'dn--un--neutral_Monoid__(Identity $a)'(V0, V1) -> case V1 of {'Idris.Prelude.Interfaces.dn--un--__mkMonoid', E0, E1} -> (fun (V2, V3) -> V3 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--min_Ord__(Identity $a)'(V0, V1, V2, V3) -> ('case--min-567'('erased', V1, V3, V2, ('dn--un--<_Ord__(Identity $a)'('erased', V1, V2, V3)))).
'dn--un--max_Ord__(Identity $a)'(V0, V1, V2, V3) -> ('case--max-595'('erased', V1, V3, V2, ('dn--un-->_Ord__(Identity $a)'('erased', V1, V2, V3)))).
'dn--un--map_Functor__Identity'(V0, V1, V2, V3) -> (V2(V3)).
'dn--un--join_Monad__Identity'(V0, V1) -> ('dn--un-->>=_Monad__Identity'('erased', 'erased', V1, fun (V2) -> V2 end)).
'dn--un--compare_Ord__(Identity $a)'(V0, V1, V2, V3) -> case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V4, V5, V6, V7, V8, V9, V10, V11) -> ((V5(V2))(V3)) end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Impl_Show_(Identity $a)'(V0, V1) -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V2) -> ('dn--un--show_Show__(Identity $a)'('erased', V1, V2)) end, fun (V3) -> fun (V4) -> ('dn--un--showPrec_Show__(Identity $a)'('erased', V1, V3, V4)) end end}.
'dn--un--__Impl_Semigroup_(Identity $a)'(V0, V1, V2, V3) -> ('dn--un--<+>_Semigroup__(Identity $a)'('erased', V1, V2, V3)).
'dn--un--__Impl_Ord_(Identity $a)'(V0, V1) -> {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V2) -> fun (V3) -> ('dn--un--==_Eq__(Identity $a)'('erased', case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V4, V5, V6, V7, V8, V9, V10, V11) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V2, V3)) end end, fun (V12) -> fun (V13) -> ('dn--un--/=_Eq__(Identity $a)'('erased', case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E8, E9, E10, E11, E12, E13, E14, E15} -> (fun (V14, V15, V16, V17, V18, V19, V20, V21) -> V14 end(E8, E9, E10, E11, E12, E13, E14, E15)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V12, V13)) end end}, fun (V22) -> fun (V23) -> ('dn--un--compare_Ord__(Identity $a)'('erased', V1, V22, V23)) end end, fun (V24) -> fun (V25) -> ('dn--un--<_Ord__(Identity $a)'('erased', V1, V24, V25)) end end, fun (V26) -> fun (V27) -> ('dn--un-->_Ord__(Identity $a)'('erased', V1, V26, V27)) end end, fun (V28) -> fun (V29) -> ('dn--un--<=_Ord__(Identity $a)'('erased', V1, V28, V29)) end end, fun (V30) -> fun (V31) -> ('dn--un-->=_Ord__(Identity $a)'('erased', V1, V30, V31)) end end, fun (V32) -> fun (V33) -> ('dn--un--max_Ord__(Identity $a)'('erased', V1, V32, V33)) end end, fun (V34) -> fun (V35) -> ('dn--un--min_Ord__(Identity $a)'('erased', V1, V34, V35)) end end}.
'dn--un--__Impl_Monoid_(Identity $a)'(V0, V1) -> {'Idris.Prelude.Interfaces.dn--un--__mkMonoid', fun (V2) -> fun (V3) -> ('dn--un--<+>_Semigroup__(Identity $a)'('erased', case V1 of {'Idris.Prelude.Interfaces.dn--un--__mkMonoid', E0, E1} -> (fun (V4, V5) -> V4 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V2, V3)) end end, ('dn--un--neutral_Monoid__(Identity $a)'('erased', V1))}.
'dn--un--__Impl_Monad_Identity'() -> {'Idris.Prelude.Interfaces.dn--un--__mkMonad', {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor__Identity'('erased', 'erased', V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative__Identity'('erased', V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative__Identity'('erased', 'erased', V8, V9)) end end end end}, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un-->>=_Monad__Identity'('erased', 'erased', V12, V13)) end end end end, fun (V14) -> fun (V15) -> ('dn--un--join_Monad__Identity'('erased', V15)) end end}.
'dn--un--__Impl_Functor_Identity'(V0, V1, V2, V3) -> ('dn--un--map_Functor__Identity'('erased', 'erased', V2, V3)).
'dn--un--__Impl_Eq_(Identity $a)'(V0, V1) -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V2) -> fun (V3) -> ('dn--un--==_Eq__(Identity $a)'('erased', V1, V2, V3)) end end, fun (V4) -> fun (V5) -> ('dn--un--/=_Eq__(Identity $a)'('erased', V1, V4, V5)) end end}.
'dn--un--__Impl_Applicative_Identity'() -> {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor__Identity'('erased', 'erased', V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative__Identity'('erased', V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative__Identity'('erased', 'erased', V8, V9)) end end end end}.
'dn--un-->_Ord__(Identity $a)'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__(Identity $a)'('erased', V1, V2, V3)), 2)).
'dn--un-->>=_Monad__Identity'(V0, V1, V2, V3) -> (V3(V2)).
'dn--un-->=_Ord__(Identity $a)'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__(Identity $a)'('erased', V1, V2, V3)), 0)).
'dn--un--==_Eq__(Identity $a)'(V0, V1, V2, V3) -> case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E0, E1} -> (fun (V4, V5) -> ((V4(V2))(V3)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--<_Ord__(Identity $a)'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__(Identity $a)'('erased', V1, V2, V3)), 0)).
'dn--un--<=_Ord__(Identity $a)'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__(Identity $a)'('erased', V1, V2, V3)), 2)).
'dn--un--<+>_Semigroup__(Identity $a)'(V0, V1, V2, V3) -> ((V1(V2))(V3)).
'dn--un--<*>_Applicative__Identity'(V0, V1, V2, V3) -> (V2(V3)).
'dn--un--/=_Eq__(Identity $a)'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__(Identity $a)'('erased', V1, V2, V3)))).
