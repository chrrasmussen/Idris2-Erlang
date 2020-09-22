-module('Idris.Idris2.Decidable.Equality').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--with block in decEq-2152'/8,
  'with--decEq-2100'/7,
  'with--with block in decEq-2019'/6,
  'with--decEq-1963'/7,
  'with--with block in decEq-1821'/7,
  'with--decEq-1752'/8,
  'with--decEq-1621'/6,
  'with--decEq-1508'/6,
  'with--decEq-1349'/5,
  'with--decEq-1246'/3,
  'with--decEqSelfIsYes-1133'/4,
  'case--decEq-2445'/3,
  'case--decEq-2381'/3,
  'case--decEq-2317'/3,
  'case--decEq-2253'/3,
  'nested--3737-2410--in--un--primitiveNotEq'/6,
  'nested--3669-2346--in--un--primitiveNotEq'/6,
  'nested--3601-2282--in--un--primitiveNotEq'/6,
  'nested--3533-2218--in--un--primitiveNotEq'/6,
  'nested--3737-2409--in--un--primitiveEq'/5,
  'nested--3669-2345--in--un--primitiveEq'/5,
  'nested--3601-2281--in--un--primitiveEq'/5,
  'nested--3533-2217--in--un--primitiveEq'/5,
  'dn--un--uninhabited_Uninhabited__(|((=== (Right $x)) (Left $y)),((~=~ (Right $x)) (Left $y))|)'/5,
  'dn--un--uninhabited_Uninhabited__(|((=== (Left $x)) (Right $y)),((~=~ (Left $x)) (Right $y))|)'/5,
  'dn--un--decEq_DecEq__String'/2,
  'dn--un--decEq_DecEq__Nat'/2,
  'dn--un--decEq_DecEq__Integer'/2,
  'dn--un--decEq_DecEq__Int'/2,
  'dn--un--decEq_DecEq__Char'/2,
  'dn--un--decEq_DecEq__Bool'/2,
  'dn--un--decEq_DecEq__(|Unit,MkUnit|)'/2,
  'dn--un--decEq_DecEq__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/5,
  'dn--un--decEq_DecEq__(Maybe $t)'/4,
  'dn--un--decEq_DecEq__(List1 $a)'/4,
  'dn--un--decEq_DecEq__(List $a)'/4,
  'dn--un--decEq_DecEq__((Either $t) $s)'/5,
  'dn--un--__Impl_Uninhabited_(|((=== (Right $x)) (Left $y)),((~=~ (Right $x)) (Left $y))|)'/5,
  'dn--un--__Impl_Uninhabited_(|((=== (Left $x)) (Right $y)),((~=~ (Left $x)) (Right $y))|)'/5,
  'dn--un--__Impl_DecEq_String'/2,
  'dn--un--__Impl_DecEq_Nat'/2,
  'dn--un--__Impl_DecEq_Integer'/2,
  'dn--un--__Impl_DecEq_Int'/2,
  'dn--un--__Impl_DecEq_Char'/2,
  'dn--un--__Impl_DecEq_Bool'/2,
  'dn--un--__Impl_DecEq_(|Unit,MkUnit|)'/2,
  'dn--un--__Impl_DecEq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/5,
  'dn--un--__Impl_DecEq_(Maybe $t)'/4,
  'dn--un--__Impl_DecEq_(List1 $a)'/4,
  'dn--un--__Impl_DecEq_(List $a)'/4,
  'dn--un--__Impl_DecEq_((Either $t) $s)'/5,
  'un--pairInjective'/7,
  'un--negEqSym'/5,
  'un--decEqSelfIsYes'/3,
  'un--decEq'/4
]).
'with--with block in decEq-2152'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V4 of {'Idris.Prelude.Types.No', E0} -> (fun (V8) -> {'Idris.Prelude.Types.No', fun (V9) -> (V8(('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Data.List1':'un--consInjective'('erased', 'erased', 'erased', 'erased', 'erased', V9)))))) end} end(E0)); {'Idris.Prelude.Types.Yes', E1} -> (fun (V10) -> {'Idris.Prelude.Types.Yes', ('Idris.Idris2.Prelude.Basics':'un--cong2'('erased', 'erased', 'erased', 'erased', 'erased', 'erased', 'erased', 'erased', V7, V10))} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--decEq-2100'(V0, V1, V2, V3, V4, V5, V6) -> case V4 of {'Idris.Prelude.Types.No', E0} -> (fun (V7) -> {'Idris.Prelude.Types.No', fun (V8) -> (V7(('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', ('Idris.Idris2.Data.List1':'un--consInjective'('erased', 'erased', 'erased', 'erased', 'erased', V8)))))) end} end(E0)); {'Idris.Prelude.Types.Yes', E1} -> (fun (V9) -> ('with--with block in decEq-2152'('erased', V1, V6, V5, ('dn--un--decEq_DecEq__(List $a)'('erased', V1, V5, V6)), V2, V3, V9)) end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--with block in decEq-2019'(V0, V1, V2, V3, V4, V5) -> case V4 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V6) -> case V6 of {'Idris.Builtin.Refl'} -> (fun () -> {'Idris.Prelude.Types.Yes', {'Idris.Builtin.Refl'}} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V7) -> {'Idris.Prelude.Types.No', fun (V8) -> (V7(('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('Idris.Idris2.Data.List':'un--consInjective'('erased', 'erased', 'erased', 'erased', 'erased', 'erased', V8)))))) end} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--decEq-1963'(V0, V1, V2, V3, V4, V5, V6) -> case V4 of {'Idris.Prelude.Types.No', E0} -> (fun (V7) -> {'Idris.Prelude.Types.No', fun (V8) -> (V7(('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', ('Idris.Idris2.Data.List':'un--consInjective'('erased', 'erased', 'erased', 'erased', 'erased', 'erased', V8)))))) end} end(E0)); {'Idris.Prelude.Types.Yes', E1} -> (fun (V9) -> case V9 of {'Idris.Builtin.Refl'} -> (fun () -> ('with--with block in decEq-2019'('erased', V1, V6, V5, ('dn--un--decEq_DecEq__(List $a)'('erased', V1, V5, V6)), V2)) end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--with block in decEq-1821'(V0, V1, V2, V3, V4, V5, V6) -> case V5 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V7) -> case V7 of {'Idris.Builtin.Refl'} -> (fun () -> {'Idris.Prelude.Types.Yes', {'Idris.Builtin.Refl'}} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V8) -> {'Idris.Prelude.Types.No', fun (V9) -> (V8(('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', ('un--pairInjective'('erased', 'erased', 'erased', 'erased', 'erased', 'erased', V9)))))) end} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--decEq-1752'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V5 of {'Idris.Prelude.Types.No', E0} -> (fun (V8) -> {'Idris.Prelude.Types.No', fun (V9) -> (V8(('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', ('un--pairInjective'('erased', 'erased', 'erased', 'erased', 'erased', 'erased', V9)))))) end} end(E0)); {'Idris.Prelude.Types.Yes', E1} -> (fun (V10) -> case V10 of {'Idris.Builtin.Refl'} -> (fun () -> ('with--with block in decEq-1821'('erased', 'erased', V2, V6, V7, ((('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V2))(V6))(V7)), V3)) end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--decEq-1621'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V6) -> case V6 of {'Idris.Builtin.Refl'} -> (fun () -> {'Idris.Prelude.Types.Yes', {'Idris.Builtin.Refl'}} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V7) -> {'Idris.Prelude.Types.No', fun (V8) -> (V7(('Idris.Idris2.Data.Either':'un--rightInjective'('erased', 'erased', 'erased', 'erased', V8)))) end} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--decEq-1508'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V6) -> case V6 of {'Idris.Builtin.Refl'} -> (fun () -> {'Idris.Prelude.Types.Yes', {'Idris.Builtin.Refl'}} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V7) -> {'Idris.Prelude.Types.No', fun (V8) -> (V7(('Idris.Idris2.Data.Either':'un--leftInjective'('erased', 'erased', 'erased', 'erased', V8)))) end} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--decEq-1349'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V5) -> {'Idris.Prelude.Types.Yes', ('Idris.Idris2.Prelude.Basics':'un--cong'('erased', 'erased', 'erased', 'erased', 'erased', V5))} end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V6) -> {'Idris.Prelude.Types.No', fun (V7) -> (V6(('Idris.Idris2.Data.Maybe':'un--justInjective'('erased', 'erased', 'erased', V7)))) end} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--decEq-1246'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V3) -> {'Idris.Prelude.Types.Yes', ('Idris.Idris2.Prelude.Basics':'un--cong'('erased', 'erased', 'erased', 'erased', 'erased', V3))} end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V4) -> {'Idris.Prelude.Types.No', fun (V5) -> (V4(('Idris.Idris2.Data.Nat':'un--succInjective'('erased', 'erased', V5)))) end} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--decEqSelfIsYes-1133'(V0, V1, V2, V3) -> case V3 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V4) -> case V4 of {'Idris.Builtin.Refl'} -> (fun () -> {'Idris.Builtin.Refl'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V5) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'('erased', 'erased', fun (V6) -> ('Idris.Idris2.Prelude.Uninhabited':'dn--un--uninhabited_Uninhabited__Void'(V6)) end, (V5({'Idris.Builtin.Refl'})))) end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--decEq-2445'(V0, V1, V2) -> case V2 of 0 -> {'Idris.Prelude.Types.Yes', ('nested--3737-2409--in--un--primitiveEq'(V0, V1, 'erased', 'erased', 'erased'))}; 1 -> {'Idris.Prelude.Types.No', fun (V3) -> ('nested--3737-2410--in--un--primitiveNotEq'(V0, V1, 'erased', 'erased', 'erased', V3)) end}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--decEq-2381'(V0, V1, V2) -> case V2 of 0 -> {'Idris.Prelude.Types.Yes', ('nested--3669-2345--in--un--primitiveEq'(V0, V1, 'erased', 'erased', 'erased'))}; 1 -> {'Idris.Prelude.Types.No', fun (V3) -> ('nested--3669-2346--in--un--primitiveNotEq'(V0, V1, 'erased', 'erased', 'erased', V3)) end}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--decEq-2317'(V0, V1, V2) -> case V2 of 0 -> {'Idris.Prelude.Types.Yes', ('nested--3601-2281--in--un--primitiveEq'(V0, V1, 'erased', 'erased', 'erased'))}; 1 -> {'Idris.Prelude.Types.No', fun (V3) -> ('nested--3601-2282--in--un--primitiveNotEq'(V0, V1, 'erased', 'erased', 'erased', V3)) end}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--decEq-2253'(V0, V1, V2) -> case V2 of 0 -> {'Idris.Prelude.Types.Yes', ('nested--3533-2217--in--un--primitiveEq'(V0, V1, 'erased', 'erased', 'erased'))}; 1 -> {'Idris.Prelude.Types.No', fun (V3) -> ('nested--3533-2218--in--un--primitiveNotEq'(V0, V1, 'erased', 'erased', 'erased', V3)) end}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--3737-2410--in--un--primitiveNotEq'(V0, V1, V2, V3, V4, V5) -> ('Idris.Idris2.Builtin':'un--believe_me'('erased', 'erased', {'Idris.Builtin.MkUnit'})).
'nested--3669-2346--in--un--primitiveNotEq'(V0, V1, V2, V3, V4, V5) -> ('Idris.Idris2.Builtin':'un--believe_me'('erased', 'erased', {'Idris.Builtin.MkUnit'})).
'nested--3601-2282--in--un--primitiveNotEq'(V0, V1, V2, V3, V4, V5) -> ('Idris.Idris2.Builtin':'un--believe_me'('erased', 'erased', {'Idris.Builtin.MkUnit'})).
'nested--3533-2218--in--un--primitiveNotEq'(V0, V1, V2, V3, V4, V5) -> ('Idris.Idris2.Builtin':'un--believe_me'('erased', 'erased', {'Idris.Builtin.MkUnit'})).
'nested--3737-2409--in--un--primitiveEq'(V0, V1, V2, V3, V4) -> ('Idris.Idris2.Builtin':'un--believe_me'('erased', 'erased', {'Idris.Builtin.Refl'})).
'nested--3669-2345--in--un--primitiveEq'(V0, V1, V2, V3, V4) -> ('Idris.Idris2.Builtin':'un--believe_me'('erased', 'erased', {'Idris.Builtin.Refl'})).
'nested--3601-2281--in--un--primitiveEq'(V0, V1, V2, V3, V4) -> ('Idris.Idris2.Builtin':'un--believe_me'('erased', 'erased', {'Idris.Builtin.Refl'})).
'nested--3533-2217--in--un--primitiveEq'(V0, V1, V2, V3, V4) -> ('Idris.Idris2.Builtin':'un--believe_me'('erased', 'erased', {'Idris.Builtin.Refl'})).
'dn--un--uninhabited_Uninhabited__(|((=== (Right $x)) (Left $y)),((~=~ (Right $x)) (Left $y))|)'(V0, V1, V2, V3, V4) -> ('erlang':'throw'("No clauses")).
'dn--un--uninhabited_Uninhabited__(|((=== (Left $x)) (Right $y)),((~=~ (Left $x)) (Right $y))|)'(V0, V1, V2, V3, V4) -> ('erlang':'throw'("No clauses")).
'dn--un--decEq_DecEq__String'(V0, V1) -> ('case--decEq-2445'(V1, V0, ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__String'(V0, V1)))).
'dn--un--decEq_DecEq__Nat'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> {'Idris.Prelude.Types.Yes', {'Idris.Builtin.Refl'}}; _ -> {'Idris.Prelude.Types.No', fun (V2) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'('erased', 'erased', fun (V3) -> ('Idris.Idris2.Data.Nat':'dn--un--uninhabited_Uninhabited__(|((=== Z) (S $n)),((~=~ Z) (S $n))|)'('erased', V3)) end, V2)) end} end; _ -> begin (V4 = (V0 - 1)), case V1 of 0 -> {'Idris.Prelude.Types.No', fun (V5) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'('erased', 'erased', fun (V6) -> ('Idris.Idris2.Data.Nat':'dn--un--uninhabited_Uninhabited__(|((=== (S $n)) Z),((~=~ (S $n)) Z)|)'('erased', V6)) end, V5)) end}; _ -> begin (V7 = (V1 - 1)), ('with--decEq-1246'(V4, V7, ('dn--un--decEq_DecEq__Nat'(V4, V7)))) end end end end.
'dn--un--decEq_DecEq__Integer'(V0, V1) -> ('case--decEq-2381'(V1, V0, ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Integer'(V0, V1)))).
'dn--un--decEq_DecEq__Int'(V0, V1) -> ('case--decEq-2253'(V1, V0, ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Int'(V0, V1)))).
'dn--un--decEq_DecEq__Char'(V0, V1) -> ('case--decEq-2317'(V1, V0, ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Char'(V0, V1)))).
'dn--un--decEq_DecEq__Bool'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> {'Idris.Prelude.Types.Yes', {'Idris.Builtin.Refl'}}; 1 -> {'Idris.Prelude.Types.No', fun (V2) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'('erased', 'erased', fun (V3) -> ('Idris.Idris2.Prelude.Uninhabited':'dn--un--uninhabited_Uninhabited__(|((=== True) False),((~=~ True) False)|)'(V3)) end, V2)) end}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; 1 -> case V1 of 1 -> {'Idris.Prelude.Types.Yes', {'Idris.Builtin.Refl'}}; 0 -> {'Idris.Prelude.Types.No', fun (V4) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'('erased', 'erased', fun (V5) -> ('Idris.Idris2.Prelude.Uninhabited':'dn--un--uninhabited_Uninhabited__(|((=== False) True),((~=~ False) True)|)'(V5)) end, V4)) end}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--decEq_DecEq__(|Unit,MkUnit|)'(V0, V1) -> case V0 of {'Idris.Builtin.MkUnit'} -> (fun () -> case V1 of {'Idris.Builtin.MkUnit'} -> (fun () -> {'Idris.Prelude.Types.Yes', {'Idris.Builtin.Refl'}} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--decEq_DecEq__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3, V4) -> case V3 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V5, V6) -> case V4 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V7, V8) -> ('with--decEq-1752'('erased', 'erased', V2, V5, V7, ((('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V2))(V5))(V7)), V6, V8)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--decEq_DecEq__(Maybe $t)'(V0, V1, V2, V3) -> case V2 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> case V3 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> {'Idris.Prelude.Types.Yes', {'Idris.Builtin.Refl'}} end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V4) -> {'Idris.Prelude.Types.No', fun (V5) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'('erased', 'erased', fun (V6) -> ('Idris.Idris2.Prelude.Types':'dn--un--uninhabited_Uninhabited__(|((=== Nothing) (Just $x)),((~=~ Nothing) (Just $x))|)'('erased', 'erased', V6)) end, V5)) end} end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); {'Idris.Prelude.Types.Just', E1} -> (fun (V7) -> case V3 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> {'Idris.Prelude.Types.No', fun (V8) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'('erased', 'erased', fun (V9) -> ('Idris.Idris2.Prelude.Types':'dn--un--uninhabited_Uninhabited__(|((=== (Just $x)) Nothing),((~=~ (Just $x)) Nothing)|)'('erased', 'erased', V9)) end, V8)) end} end()); {'Idris.Prelude.Types.Just', E2} -> (fun (V10) -> ('with--decEq-1349'('erased', V1, V7, V10, ((V1(V7))(V10)))) end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--decEq_DecEq__(List1 $a)'(V0, V1, V2, V3) -> case V2 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V4, V5) -> case V3 of {'Idris.Data.List1.:::', E2, E3} -> (fun (V6, V7) -> ('with--decEq-2100'('erased', V1, V4, V6, ((V1(V4))(V6)), V5, V7)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--decEq_DecEq__(List $a)'(V0, V1, V2, V3) -> case V2 of [] -> case V3 of [] -> {'Idris.Prelude.Types.Yes', {'Idris.Builtin.Refl'}}; [E0 | E1] -> (fun (V4, V5) -> {'Idris.Prelude.Types.No', fun (V6) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'('erased', 'erased', fun (V7) -> ('Idris.Idris2.Data.List':'dn--un--uninhabited_Uninhabited__(|((=== Nil) ((Prelude.:: $x) $xs)),((~=~ Nil) ((Prelude.:: $x) $xs))|)'('erased', 'erased', 'erased', V7)) end, V6)) end} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; [E2 | E3] -> (fun (V8, V9) -> case V3 of [] -> {'Idris.Prelude.Types.No', fun (V10) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'('erased', 'erased', fun (V11) -> ('Idris.Idris2.Data.List':'dn--un--uninhabited_Uninhabited__(|((=== ((Prelude.:: $x) $xs)) Nil),((~=~ ((Prelude.:: $x) $xs)) Nil)|)'('erased', 'erased', 'erased', V11)) end, V10)) end}; [E4 | E5] -> (fun (V12, V13) -> ('with--decEq-1963'('erased', V1, V8, V12, ((V1(V8))(V12)), V9, V13)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--decEq_DecEq__((Either $t) $s)'(V0, V1, V2, V3, V4) -> case V3 of {'Idris.Prelude.Types.Left', E0} -> (fun (V5) -> case V4 of {'Idris.Prelude.Types.Left', E1} -> (fun (V6) -> ('with--decEq-1508'('erased', 'erased', V2, V5, V6, ((('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V2))(V5))(V6)))) end(E1)); {'Idris.Prelude.Types.Right', E2} -> (fun (V7) -> {'Idris.Prelude.Types.No', fun (V8) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'('erased', 'erased', fun (V9) -> ('dn--un--uninhabited_Uninhabited__(|((=== (Left $x)) (Right $y)),((~=~ (Left $x)) (Right $y))|)'('erased', 'erased', 'erased', 'erased', V9)) end, V8)) end} end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.Right', E3} -> (fun (V10) -> case V4 of {'Idris.Prelude.Types.Left', E4} -> (fun (V11) -> {'Idris.Prelude.Types.No', fun (V12) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'('erased', 'erased', fun (V13) -> ('dn--un--uninhabited_Uninhabited__(|((=== (Right $x)) (Left $y)),((~=~ (Right $x)) (Left $y))|)'('erased', 'erased', 'erased', 'erased', V13)) end, V12)) end} end(E4)); {'Idris.Prelude.Types.Right', E5} -> (fun (V14) -> ('with--decEq-1621'('erased', 'erased', V2, V10, V14, ((('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V2))(V10))(V14)))) end(E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Impl_Uninhabited_(|((=== (Right $x)) (Left $y)),((~=~ (Right $x)) (Left $y))|)'(V0, V1, V2, V3, V4) -> ('dn--un--uninhabited_Uninhabited__(|((=== (Right $x)) (Left $y)),((~=~ (Right $x)) (Left $y))|)'('erased', 'erased', 'erased', 'erased', V4)).
'dn--un--__Impl_Uninhabited_(|((=== (Left $x)) (Right $y)),((~=~ (Left $x)) (Right $y))|)'(V0, V1, V2, V3, V4) -> ('dn--un--uninhabited_Uninhabited__(|((=== (Left $x)) (Right $y)),((~=~ (Left $x)) (Right $y))|)'('erased', 'erased', 'erased', 'erased', V4)).
'dn--un--__Impl_DecEq_String'(V0, V1) -> ('dn--un--decEq_DecEq__String'(V0, V1)).
'dn--un--__Impl_DecEq_Nat'(V0, V1) -> ('dn--un--decEq_DecEq__Nat'(V0, V1)).
'dn--un--__Impl_DecEq_Integer'(V0, V1) -> ('dn--un--decEq_DecEq__Integer'(V0, V1)).
'dn--un--__Impl_DecEq_Int'(V0, V1) -> ('dn--un--decEq_DecEq__Int'(V0, V1)).
'dn--un--__Impl_DecEq_Char'(V0, V1) -> ('dn--un--decEq_DecEq__Char'(V0, V1)).
'dn--un--__Impl_DecEq_Bool'(V0, V1) -> ('dn--un--decEq_DecEq__Bool'(V0, V1)).
'dn--un--__Impl_DecEq_(|Unit,MkUnit|)'(V0, V1) -> ('dn--un--decEq_DecEq__(|Unit,MkUnit|)'(V0, V1)).
'dn--un--__Impl_DecEq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3, V4) -> ('dn--un--decEq_DecEq__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', V2, V3, V4)).
'dn--un--__Impl_DecEq_(Maybe $t)'(V0, V1, V2, V3) -> ('dn--un--decEq_DecEq__(Maybe $t)'('erased', V1, V2, V3)).
'dn--un--__Impl_DecEq_(List1 $a)'(V0, V1, V2, V3) -> ('dn--un--decEq_DecEq__(List1 $a)'('erased', V1, V2, V3)).
'dn--un--__Impl_DecEq_(List $a)'(V0, V1, V2, V3) -> ('dn--un--decEq_DecEq__(List $a)'('erased', V1, V2, V3)).
'dn--un--__Impl_DecEq_((Either $t) $s)'(V0, V1, V2, V3, V4) -> ('dn--un--decEq_DecEq__((Either $t) $s)'('erased', 'erased', V2, V3, V4)).
'un--pairInjective'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Idris.Builtin.Refl'} -> (fun () -> {'Idris.Builtin.MkPair', {'Idris.Builtin.Refl'}, {'Idris.Builtin.Refl'}} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--negEqSym'(V0, V1, V2, V3, V4) -> (V3({'Idris.Builtin.Refl'})).
'un--decEqSelfIsYes'(V0, V1, V2) -> ('with--decEqSelfIsYes-1133'('erased', V1, V2, ((V1(V2))(V2)))).
'un--decEq'(V0, V1, V2, V3) -> ((V1(V2))(V3)).
