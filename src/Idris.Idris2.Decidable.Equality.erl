-module('Idris.Idris2.Decidable.Equality').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--with block in decEq-1372'/8,
  'with--decEq-1326'/7,
  'with--with block in decEq-1251'/6,
  'with--decEq-1201'/7,
  'with--with block in decEq-1071'/7,
  'with--decEq-1012'/8,
  'with--decEq-890'/6,
  'with--decEq-789'/6,
  'with--decEq-719'/5,
  'with--decEq-619'/3,
  'case--decEq-1687'/3,
  'case--decEq-1616'/3,
  'case--decEq-1545'/3,
  'case--decEq-1474'/3,
  'nested--4446-1648--in--un--primitiveNotEq'/3,
  'nested--4368-1577--in--un--primitiveNotEq'/3,
  'nested--4290-1506--in--un--primitiveNotEq'/3,
  'nested--4212-1435--in--un--primitiveNotEq'/3,
  'nested--4446-1647--in--un--primitiveEq'/2,
  'nested--4368-1576--in--un--primitiveEq'/2,
  'nested--4290-1505--in--un--primitiveEq'/2,
  'nested--4212-1434--in--un--primitiveEq'/2,
  'dn--un--decEq_DecEq_String'/2,
  'dn--un--decEq_DecEq_Nat'/2,
  'dn--un--decEq_DecEq_Integer'/2,
  'dn--un--decEq_DecEq_Int'/2,
  'dn--un--decEq_DecEq_Char'/2,
  'dn--un--decEq_DecEq_Bool'/2,
  'dn--un--decEq_DecEq_(|Unit,MkUnit|)'/2,
  'dn--un--decEq_DecEq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/3,
  'dn--un--decEq_DecEq_(Maybe $t)'/3,
  'dn--un--decEq_DecEq_(List1 $a)'/3,
  'dn--un--decEq_DecEq_(List $a)'/3,
  'dn--un--decEq_DecEq_((Either $t) $s)'/3,
  'dn--un--__Impl_DecEq_String'/2,
  'dn--un--__Impl_DecEq_Nat'/2,
  'dn--un--__Impl_DecEq_Integer'/2,
  'dn--un--__Impl_DecEq_Int'/2,
  'dn--un--__Impl_DecEq_Char'/2,
  'dn--un--__Impl_DecEq_Bool'/2,
  'dn--un--__Impl_DecEq_(|Unit,MkUnit|)'/2,
  'dn--un--__Impl_DecEq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/3,
  'dn--un--__Impl_DecEq_(Maybe $t)'/3,
  'dn--un--__Impl_DecEq_(List1 $a)'/3,
  'dn--un--__Impl_DecEq_(List $a)'/3,
  'dn--un--__Impl_DecEq_((Either $t) $s)'/3,
  'un--pairInjective'/1
]).
'with--with block in decEq-1372'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V4 of {'Idris.Prelude.Types.No', E0} -> (fun (V8) -> {'Idris.Prelude.Types.No', fun (V9) -> (V8(('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Data.List1':'un--consInjective'(V9)))))) end} end(E0)); {'Idris.Prelude.Types.Yes', E1} -> (fun (V10) -> {'Idris.Prelude.Types.Yes', ('Idris.Idris2.Prelude.Basics':'un--cong2'(V7, V10))} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--decEq-1326'(V0, V1, V2, V3, V4, V5, V6) -> case V4 of {'Idris.Prelude.Types.No', E0} -> (fun (V7) -> {'Idris.Prelude.Types.No', fun (V8) -> (V7(('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Data.List1':'un--consInjective'(V8)))))) end} end(E0)); {'Idris.Prelude.Types.Yes', E1} -> (fun (V9) -> ('with--with block in decEq-1372'('erased', V1, V6, V5, ('dn--un--decEq_DecEq_(List $a)'(V1, V5, V6)), V2, V3, V9)) end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--with block in decEq-1251'(V0, V1, V2, V3, V4, V5) -> case V4 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V6) -> case V6 of 0 -> {'Idris.Prelude.Types.Yes', 0}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V7) -> {'Idris.Prelude.Types.No', fun (V8) -> (V7(('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Data.List':'un--consInjective'(V8)))))) end} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--decEq-1201'(V0, V1, V2, V3, V4, V5, V6) -> case V4 of {'Idris.Prelude.Types.No', E0} -> (fun (V7) -> {'Idris.Prelude.Types.No', fun (V8) -> (V7(('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Data.List':'un--consInjective'(V8)))))) end} end(E0)); {'Idris.Prelude.Types.Yes', E1} -> (fun (V9) -> case V9 of 0 -> ('with--with block in decEq-1251'('erased', V1, V6, V5, ('dn--un--decEq_DecEq_(List $a)'(V1, V5, V6)), V2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--with block in decEq-1071'(V0, V1, V2, V3, V4, V5, V6) -> case V5 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V7) -> case V7 of 0 -> {'Idris.Prelude.Types.Yes', 0}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V8) -> {'Idris.Prelude.Types.No', fun (V9) -> (V8(('Idris.Idris2.Builtin':'un--snd'(('un--pairInjective'(V9)))))) end} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--decEq-1012'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V5 of {'Idris.Prelude.Types.No', E0} -> (fun (V8) -> {'Idris.Prelude.Types.No', fun (V9) -> (V8(('Idris.Idris2.Builtin':'un--fst'(('un--pairInjective'(V9)))))) end} end(E0)); {'Idris.Prelude.Types.Yes', E1} -> (fun (V10) -> case V10 of 0 -> ('with--with block in decEq-1071'('erased', 'erased', V2, V6, V7, ((('Idris.Idris2.Builtin':'un--snd'(V2))(V6))(V7)), V3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--decEq-890'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V6) -> case V6 of 0 -> {'Idris.Prelude.Types.Yes', 0}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V7) -> {'Idris.Prelude.Types.No', fun (V8) -> (V7(('Idris.Idris2.Data.Either':'un--rightInjective'(V8)))) end} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--decEq-789'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V6) -> case V6 of 0 -> {'Idris.Prelude.Types.Yes', 0}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V7) -> {'Idris.Prelude.Types.No', fun (V8) -> (V7(('Idris.Idris2.Data.Either':'un--leftInjective'(V8)))) end} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--decEq-719'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V5) -> {'Idris.Prelude.Types.Yes', ('Idris.Idris2.Prelude.Basics':'un--cong'(V5))} end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V6) -> {'Idris.Prelude.Types.No', fun (V7) -> (V6(('Idris.Idris2.Data.Maybe':'un--justInjective'(V7)))) end} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--decEq-619'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V3) -> {'Idris.Prelude.Types.Yes', ('Idris.Idris2.Prelude.Basics':'un--cong'(V3))} end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V4) -> {'Idris.Prelude.Types.No', fun (V5) -> (V4(('Idris.Idris2.Data.Nat':'un--succInjective'(V5)))) end} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--decEq-1687'(V0, V1, V2) -> case V2 of 1 -> {'Idris.Prelude.Types.Yes', ('nested--4446-1647--in--un--primitiveEq'(V0, V1))}; 0 -> {'Idris.Prelude.Types.No', fun (V3) -> ('nested--4446-1648--in--un--primitiveNotEq'(V0, V1, V3)) end}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--decEq-1616'(V0, V1, V2) -> case V2 of 1 -> {'Idris.Prelude.Types.Yes', ('nested--4368-1576--in--un--primitiveEq'(V0, V1))}; 0 -> {'Idris.Prelude.Types.No', fun (V3) -> ('nested--4368-1577--in--un--primitiveNotEq'(V0, V1, V3)) end}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--decEq-1545'(V0, V1, V2) -> case V2 of 1 -> {'Idris.Prelude.Types.Yes', ('nested--4290-1505--in--un--primitiveEq'(V0, V1))}; 0 -> {'Idris.Prelude.Types.No', fun (V3) -> ('nested--4290-1506--in--un--primitiveNotEq'(V0, V1, V3)) end}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--decEq-1474'(V0, V1, V2) -> case V2 of 1 -> {'Idris.Prelude.Types.Yes', ('nested--4212-1434--in--un--primitiveEq'(V0, V1))}; 0 -> {'Idris.Prelude.Types.No', fun (V3) -> ('nested--4212-1435--in--un--primitiveNotEq'(V0, V1, V3)) end}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--4446-1648--in--un--primitiveNotEq'(V0, V1, V2) -> ('Idris.Idris2.Builtin':'un--believe_me'(0)).
'nested--4368-1577--in--un--primitiveNotEq'(V0, V1, V2) -> ('Idris.Idris2.Builtin':'un--believe_me'(0)).
'nested--4290-1506--in--un--primitiveNotEq'(V0, V1, V2) -> ('Idris.Idris2.Builtin':'un--believe_me'(0)).
'nested--4212-1435--in--un--primitiveNotEq'(V0, V1, V2) -> ('Idris.Idris2.Builtin':'un--believe_me'(0)).
'nested--4446-1647--in--un--primitiveEq'(V0, V1) -> ('Idris.Idris2.Builtin':'un--believe_me'(0)).
'nested--4368-1576--in--un--primitiveEq'(V0, V1) -> ('Idris.Idris2.Builtin':'un--believe_me'(0)).
'nested--4290-1505--in--un--primitiveEq'(V0, V1) -> ('Idris.Idris2.Builtin':'un--believe_me'(0)).
'nested--4212-1434--in--un--primitiveEq'(V0, V1) -> ('Idris.Idris2.Builtin':'un--believe_me'(0)).
'dn--un--decEq_DecEq_String'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V0, V1)) of 1 -> {'Idris.Prelude.Types.Yes', ('nested--4446-1647--in--un--primitiveEq'(V1, V0))}; 0 -> {'Idris.Prelude.Types.No', fun (V2) -> ('nested--4446-1648--in--un--primitiveNotEq'(V1, V0, V2)) end}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--decEq_DecEq_Nat'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> {'Idris.Prelude.Types.Yes', 0}; _ -> {'Idris.Prelude.Types.No', fun (V2) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V3) -> ('Idris.Idris2.Data.Nat':'dn--un--uninhabited_Uninhabited_(|((=== Z) (S $n)),((~=~ Z) (S $n))|)'(V3)) end, V2)) end} end; _ -> begin (V4 = (V0 - 1)), case V1 of 0 -> {'Idris.Prelude.Types.No', fun (V5) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V6) -> ('Idris.Idris2.Data.Nat':'dn--un--uninhabited_Uninhabited_(|((=== (S $n)) Z),((~=~ (S $n)) Z)|)'(V6)) end, V5)) end}; _ -> begin (V7 = (V1 - 1)), ('with--decEq-619'(V4, V7, ('dn--un--decEq_DecEq_Nat'(V4, V7)))) end end end end.
'dn--un--decEq_DecEq_Integer'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Integer'(V0, V1)) of 1 -> {'Idris.Prelude.Types.Yes', ('nested--4368-1576--in--un--primitiveEq'(V1, V0))}; 0 -> {'Idris.Prelude.Types.No', fun (V2) -> ('nested--4368-1577--in--un--primitiveNotEq'(V1, V0, V2)) end}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--decEq_DecEq_Int'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(V0, V1)) of 1 -> {'Idris.Prelude.Types.Yes', ('nested--4212-1434--in--un--primitiveEq'(V1, V0))}; 0 -> {'Idris.Prelude.Types.No', fun (V2) -> ('nested--4212-1435--in--un--primitiveNotEq'(V1, V0, V2)) end}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--decEq_DecEq_Char'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V0, V1)) of 1 -> {'Idris.Prelude.Types.Yes', ('nested--4290-1505--in--un--primitiveEq'(V1, V0))}; 0 -> {'Idris.Prelude.Types.No', fun (V2) -> ('nested--4290-1506--in--un--primitiveNotEq'(V1, V0, V2)) end}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--decEq_DecEq_Bool'(V0, V1) -> case V0 of 1 -> case V1 of 1 -> {'Idris.Prelude.Types.Yes', 0}; 0 -> {'Idris.Prelude.Types.No', fun (V2) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V3) -> ('Idris.Idris2.Prelude.Uninhabited':'dn--un--uninhabited_Uninhabited_(|((=== True) False),((~=~ True) False)|)'(V3)) end, V2)) end}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; 0 -> case V1 of 0 -> {'Idris.Prelude.Types.Yes', 0}; 1 -> {'Idris.Prelude.Types.No', fun (V4) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V5) -> ('Idris.Idris2.Prelude.Uninhabited':'dn--un--uninhabited_Uninhabited_(|((=== False) True),((~=~ False) True)|)'(V5)) end, V4)) end}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--decEq_DecEq_(|Unit,MkUnit|)'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> {'Idris.Prelude.Types.Yes', 0}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--decEq_DecEq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2) -> case V1 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V3, V4) -> case V2 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V5, V6) -> ('with--decEq-1012'('erased', 'erased', V0, V3, V5, ((('Idris.Idris2.Builtin':'un--fst'(V0))(V3))(V5)), V4, V6)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--decEq_DecEq_(Maybe $t)'(V0, V1, V2) -> case V1 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> case V2 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> {'Idris.Prelude.Types.Yes', 0} end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V3) -> {'Idris.Prelude.Types.No', fun (V4) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V5) -> ('Idris.Idris2.Prelude.Types':'dn--un--uninhabited_Uninhabited_(|((=== Nothing) (Just $x)),((~=~ Nothing) (Just $x))|)'(V5)) end, V4)) end} end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); {'Idris.Prelude.Types.Just', E1} -> (fun (V6) -> case V2 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> {'Idris.Prelude.Types.No', fun (V7) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V8) -> ('Idris.Idris2.Prelude.Types':'dn--un--uninhabited_Uninhabited_(|((=== (Just $x)) Nothing),((~=~ (Just $x)) Nothing)|)'(V8)) end, V7)) end} end()); {'Idris.Prelude.Types.Just', E2} -> (fun (V9) -> ('with--decEq-719'('erased', V0, V6, V9, ((V0(V6))(V9)))) end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--decEq_DecEq_(List1 $a)'(V0, V1, V2) -> case V1 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V3, V4) -> case V2 of {'Idris.Data.List1.:::', E2, E3} -> (fun (V5, V6) -> ('with--decEq-1326'('erased', V0, V3, V5, ((V0(V3))(V5)), V4, V6)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--decEq_DecEq_(List $a)'(V0, V1, V2) -> case V1 of [] -> case V2 of [] -> {'Idris.Prelude.Types.Yes', 0}; [E0 | E1] -> (fun (V3, V4) -> {'Idris.Prelude.Types.No', fun (V5) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V6) -> ('Idris.Idris2.Data.List':'dn--un--uninhabited_Uninhabited_(|((=== Nil) ((:: $x) $xs)),((~=~ Nil) ((:: $x) $xs))|)'(V6)) end, V5)) end} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; [E2 | E3] -> (fun (V7, V8) -> case V2 of [] -> {'Idris.Prelude.Types.No', fun (V9) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V10) -> ('Idris.Idris2.Data.List':'dn--un--uninhabited_Uninhabited_(|((=== ((:: $x) $xs)) Nil),((~=~ ((:: $x) $xs)) Nil)|)'(V10)) end, V9)) end}; [E4 | E5] -> (fun (V11, V12) -> ('with--decEq-1201'('erased', V0, V7, V11, ((V0(V7))(V11)), V8, V12)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--decEq_DecEq_((Either $t) $s)'(V0, V1, V2) -> case V1 of {'Idris.Prelude.Types.Left', E0} -> (fun (V3) -> case V2 of {'Idris.Prelude.Types.Left', E1} -> (fun (V4) -> ('with--decEq-789'('erased', 'erased', V0, V3, V4, ((('Idris.Idris2.Builtin':'un--fst'(V0))(V3))(V4)))) end(E1)); {'Idris.Prelude.Types.Right', E2} -> (fun (V5) -> {'Idris.Prelude.Types.No', fun (V6) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V7) -> ('Idris.Idris2.Prelude.Types':'dn--un--uninhabited_Uninhabited_((=== (Left $p)) (Right $q))'(V7)) end, V6)) end} end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.Right', E3} -> (fun (V8) -> case V2 of {'Idris.Prelude.Types.Left', E4} -> (fun (V9) -> {'Idris.Prelude.Types.No', fun (V10) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V11) -> ('Idris.Idris2.Prelude.Types':'dn--un--uninhabited_Uninhabited_((=== (Right $p)) (Left $q))'(V11)) end, V10)) end} end(E4)); {'Idris.Prelude.Types.Right', E5} -> (fun (V12) -> ('with--decEq-890'('erased', 'erased', V0, V8, V12, ((('Idris.Idris2.Builtin':'un--snd'(V0))(V8))(V12)))) end(E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Impl_DecEq_String'(V0, V1) -> ('dn--un--decEq_DecEq_String'(V0, V1)).
'dn--un--__Impl_DecEq_Nat'(V0, V1) -> ('dn--un--decEq_DecEq_Nat'(V0, V1)).
'dn--un--__Impl_DecEq_Integer'(V0, V1) -> ('dn--un--decEq_DecEq_Integer'(V0, V1)).
'dn--un--__Impl_DecEq_Int'(V0, V1) -> ('dn--un--decEq_DecEq_Int'(V0, V1)).
'dn--un--__Impl_DecEq_Char'(V0, V1) -> ('dn--un--decEq_DecEq_Char'(V0, V1)).
'dn--un--__Impl_DecEq_Bool'(V0, V1) -> ('dn--un--decEq_DecEq_Bool'(V0, V1)).
'dn--un--__Impl_DecEq_(|Unit,MkUnit|)'(V0, V1) -> ('dn--un--decEq_DecEq_(|Unit,MkUnit|)'(V0, V1)).
'dn--un--__Impl_DecEq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2) -> ('dn--un--decEq_DecEq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2)).
'dn--un--__Impl_DecEq_(Maybe $t)'(V0, V1, V2) -> ('dn--un--decEq_DecEq_(Maybe $t)'(V0, V1, V2)).
'dn--un--__Impl_DecEq_(List1 $a)'(V0, V1, V2) -> ('dn--un--decEq_DecEq_(List1 $a)'(V0, V1, V2)).
'dn--un--__Impl_DecEq_(List $a)'(V0, V1, V2) -> ('dn--un--decEq_DecEq_(List $a)'(V0, V1, V2)).
'dn--un--__Impl_DecEq_((Either $t) $s)'(V0, V1, V2) -> ('dn--un--decEq_DecEq_((Either $t) $s)'(V0, V1, V2)).
'un--pairInjective'(V0) -> case V0 of 0 -> {'Idris.Builtin.MkPair', 0, 0}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
