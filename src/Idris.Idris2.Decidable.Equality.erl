-module('Idris.Idris2.Decidable.Equality').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--decEq-4268'/4,
  'case--decEq-3761'/6,
  'case--decEq-3734'/6,
  'case--decEq-3707'/6,
  'case--decEq-3680'/5,
  'case--decEq-3654'/6,
  'case--decEq-3627'/5,
  'nested--5392-4214--in--un--primitiveNotEq'/4,
  'nested--5392-4213--in--un--primitiveEq'/3,
  'dn--un--decEq_DecEq_String'/0,
  'dn--un--decEq_DecEq_Nat'/2,
  'dn--un--decEq_DecEq_Integer'/0,
  'dn--un--decEq_DecEq_Int8'/0,
  'dn--un--decEq_DecEq_Int64'/0,
  'dn--un--decEq_DecEq_Int32'/0,
  'dn--un--decEq_DecEq_Int16'/0,
  'dn--un--decEq_DecEq_Int'/0,
  'dn--un--decEq_DecEq_FromEq$a'/3,
  'dn--un--decEq_DecEq_Char'/0,
  'dn--un--decEq_DecEq_Bool'/2,
  'dn--un--decEq_DecEq_Bits8'/0,
  'dn--un--decEq_DecEq_Bits64'/0,
  'dn--un--decEq_DecEq_Bits32'/0,
  'dn--un--decEq_DecEq_Bits16'/0,
  'dn--un--decEq_DecEq_(|Unit,MkUnit|)'/2,
  'dn--un--decEq_DecEq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/3,
  'dn--un--decEq_DecEq_(SnocList $a)'/3,
  'dn--un--decEq_DecEq_(Maybe $t)'/3,
  'dn--un--decEq_DecEq_(List1 $a)'/3,
  'dn--un--decEq_DecEq_(List $a)'/3,
  'dn--un--decEq_DecEq_((These $t) $s)'/4,
  'dn--un--decEq_DecEq_((Either $t) $s)'/3,
  'dn--un--__Impl_DecEq_String'/2,
  'dn--un--__Impl_DecEq_Nat'/2,
  'dn--un--__Impl_DecEq_Integer'/2,
  'dn--un--__Impl_DecEq_Int8'/2,
  'dn--un--__Impl_DecEq_Int64'/2,
  'dn--un--__Impl_DecEq_Int32'/2,
  'dn--un--__Impl_DecEq_Int16'/2,
  'dn--un--__Impl_DecEq_Int'/2,
  'dn--un--__Impl_DecEq_Char'/2,
  'dn--un--__Impl_DecEq_Bool'/2,
  'dn--un--__Impl_DecEq_Bits8'/2,
  'dn--un--__Impl_DecEq_Bits64'/2,
  'dn--un--__Impl_DecEq_Bits32'/2,
  'dn--un--__Impl_DecEq_Bits16'/2,
  'dn--un--__Impl_DecEq_(|Unit,MkUnit|)'/2,
  'dn--un--__Impl_DecEq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/3,
  'dn--un--__Impl_DecEq_(SnocList $a)'/3,
  'dn--un--__Impl_DecEq_(Maybe $t)'/3,
  'dn--un--__Impl_DecEq_(List1 $a)'/3,
  'dn--un--__Impl_DecEq_(List $a)'/3,
  'dn--un--__Impl_DecEq_((These $t) $s)'/4,
  'dn--un--__Impl_DecEq_((Either $t) $s)'/3,
  'un--FromEq'/3
]).
'case--decEq-4268'(V0, V1, V2, V3) -> case V3 of 1 -> {'Prelude.Types.Yes', ('nested--5392-4213--in--un--primitiveEq'(V0, V1, V2))}; 0 -> {'Prelude.Types.No', fun (V4) -> ('nested--5392-4214--in--un--primitiveNotEq'(V0, V1, V2, V4)) end} end.
'case--decEq-3761'(V0, V1, V2, V3, V4, V5) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-3734'(V0, V1, V2, V3, V4, V5) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-3707'(V0, V1, V2, V3, V4, V5) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-3680'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-3654'(V0, V1, V2, V3, V4, V5) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-3627'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'nested--5392-4214--in--un--primitiveNotEq'(V0, V1, V2, V3) -> {'Builtin.MkUnit'}.
'nested--5392-4213--in--un--primitiveEq'(V0, V1, V2) -> {'Builtin.Refl'}.
'dn--un--decEq_DecEq_String'() -> begin (V6 = fun (V0) -> fun (V1) -> ('dn--un--decEq_DecEq_FromEq$a'({'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_String'(V4, V5)) end end}, V0, V1)) end end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end.
'dn--un--decEq_DecEq_Nat'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> {'Prelude.Types.Yes', {'Builtin.Refl'}}; _ -> {'Prelude.Types.No', fun (V2) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V3) -> ('Idris.Idris2.Data.Nat':'dn--un--uninhabited_Uninhabited_(|((Builtin.=== Z) (S $n)),((Builtin.~=~ Z) (S $n))|)'(V3)) end, V2)) end} end; _ -> begin (V4 = (V0 - 1)), case V1 of 0 -> {'Prelude.Types.No', fun (V5) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V6) -> ('Idris.Idris2.Data.Nat':'dn--un--uninhabited_Uninhabited_(|((Builtin.=== (S $n)) Z),((Builtin.~=~ (S $n)) Z)|)'(V6)) end, V5)) end}; _ -> begin (V7 = (V1 - 1)), ('Idris.Idris2.Decidable.Equality.Core':'un--decEqCong'(((begin (V10 = fun (V8) -> fun (V9) -> ('dn--un--decEq_DecEq_Nat'(V8, V9)) end end), fun (V11) -> fun (V12) -> ((V10(V11))(V12)) end end end(V4))(V7)))) end end end end.
'dn--un--decEq_DecEq_Integer'() -> begin (V6 = fun (V0) -> fun (V1) -> ('dn--un--decEq_DecEq_FromEq$a'({'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Integer'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Integer'(V4, V5)) end end}, V0, V1)) end end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end.
'dn--un--decEq_DecEq_Int8'() -> begin (V6 = fun (V0) -> fun (V1) -> ('dn--un--decEq_DecEq_FromEq$a'({'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int8'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Int8'(V4, V5)) end end}, V0, V1)) end end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end.
'dn--un--decEq_DecEq_Int64'() -> begin (V6 = fun (V0) -> fun (V1) -> ('dn--un--decEq_DecEq_FromEq$a'({'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int64'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Int64'(V4, V5)) end end}, V0, V1)) end end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end.
'dn--un--decEq_DecEq_Int32'() -> begin (V6 = fun (V0) -> fun (V1) -> ('dn--un--decEq_DecEq_FromEq$a'({'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int32'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Int32'(V4, V5)) end end}, V0, V1)) end end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end.
'dn--un--decEq_DecEq_Int16'() -> begin (V6 = fun (V0) -> fun (V1) -> ('dn--un--decEq_DecEq_FromEq$a'({'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int16'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Int16'(V4, V5)) end end}, V0, V1)) end end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end.
'dn--un--decEq_DecEq_Int'() -> begin (V6 = fun (V0) -> fun (V1) -> ('dn--un--decEq_DecEq_FromEq$a'({'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Int'(V4, V5)) end end}, V0, V1)) end end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end.
'dn--un--decEq_DecEq_FromEq$a'(V0, V1, V2) -> case case V0 of {'Prelude.EqOrd.MkEq', V3, V4} -> ((V3(V1))(V2)) end of 1 -> {'Prelude.Types.Yes', ('nested--5392-4213--in--un--primitiveEq'(V0, V1, V2))}; 0 -> {'Prelude.Types.No', fun (V5) -> ('nested--5392-4214--in--un--primitiveNotEq'(V0, V1, V2, V5)) end} end.
'dn--un--decEq_DecEq_Char'() -> begin (V6 = fun (V0) -> fun (V1) -> ('dn--un--decEq_DecEq_FromEq$a'({'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Char'(V4, V5)) end end}, V0, V1)) end end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end.
'dn--un--decEq_DecEq_Bool'(V0, V1) -> case V0 of 1 -> case V1 of 1 -> {'Prelude.Types.Yes', {'Builtin.Refl'}}; 0 -> {'Prelude.Types.No', fun (V2) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V3) -> ('Idris.Idris2.Prelude.Uninhabited':'dn--un--uninhabited_Uninhabited_(|((Builtin.=== True) False),((Builtin.~=~ True) False)|)'(V3)) end, V2)) end} end; 0 -> case V1 of 0 -> {'Prelude.Types.Yes', {'Builtin.Refl'}}; 1 -> {'Prelude.Types.No', fun (V4) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V5) -> ('Idris.Idris2.Prelude.Uninhabited':'dn--un--uninhabited_Uninhabited_(|((Builtin.=== False) True),((Builtin.~=~ False) True)|)'(V5)) end, V4)) end} end end.
'dn--un--decEq_DecEq_Bits8'() -> begin (V6 = fun (V0) -> fun (V1) -> ('dn--un--decEq_DecEq_FromEq$a'({'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits8'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Bits8'(V4, V5)) end end}, V0, V1)) end end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end.
'dn--un--decEq_DecEq_Bits64'() -> begin (V6 = fun (V0) -> fun (V1) -> ('dn--un--decEq_DecEq_FromEq$a'({'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits64'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Bits64'(V4, V5)) end end}, V0, V1)) end end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end.
'dn--un--decEq_DecEq_Bits32'() -> begin (V6 = fun (V0) -> fun (V1) -> ('dn--un--decEq_DecEq_FromEq$a'({'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits32'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Bits32'(V4, V5)) end end}, V0, V1)) end end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end.
'dn--un--decEq_DecEq_Bits16'() -> begin (V6 = fun (V0) -> fun (V1) -> ('dn--un--decEq_DecEq_FromEq$a'({'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits16'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Bits16'(V4, V5)) end end}, V0, V1)) end end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end.
'dn--un--decEq_DecEq_(|Unit,MkUnit|)'(V0, V1) -> {'Prelude.Types.Yes', {'Builtin.Refl'}}.
'dn--un--decEq_DecEq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2) -> case V1 of {'Builtin.MkPair', V3, V4} -> case V2 of {'Builtin.MkPair', V5, V6} -> ('Idris.Idris2.Decidable.Equality.Core':'un--decEqCong2'(((begin (V7 = ('Idris.Idris2.Builtin':'un--fst'(V0))), fun (V8) -> fun (V9) -> ((V7(V8))(V9)) end end end(V3))(V5)), fun () -> ((begin (V10 = ('Idris.Idris2.Builtin':'un--snd'(V0))), fun (V11) -> fun (V12) -> ((V10(V11))(V12)) end end end(V4))(V6)) end)) end end.
'dn--un--decEq_DecEq_(SnocList $a)'(V0, V1, V2) -> case V1 of {'Prelude.Basics.Lin'} -> case V2 of {'Prelude.Basics.Lin'} -> {'Prelude.Types.Yes', {'Builtin.Refl'}}; {'Prelude.Basics.:<', V3, V4} -> {'Prelude.Types.No', fun (V5) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V6) -> ('Idris.Idris2.Data.SnocList':'dn--un--uninhabited_Uninhabited_(|((Builtin.=== Lin) ((:< $x) $xs)),((Builtin.~=~ Lin) ((:< $x) $xs))|)'(V6)) end, V5)) end} end; {'Prelude.Basics.:<', V7, V8} -> case V2 of {'Prelude.Basics.Lin'} -> {'Prelude.Types.No', fun (V9) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V10) -> ('Idris.Idris2.Data.SnocList':'dn--un--uninhabited_Uninhabited_(|((Builtin.=== ((:< $x) $xs)) Lin),((Builtin.~=~ ((:< $x) $xs)) Lin)|)'(V10)) end, V9)) end}; {'Prelude.Basics.:<', V11, V12} -> ('Idris.Idris2.Decidable.Equality.Core':'un--decEqCong2'(((begin (V15 = fun (V13) -> fun (V14) -> ('dn--un--decEq_DecEq_(SnocList $a)'(V0, V13, V14)) end end), fun (V16) -> fun (V17) -> ((V15(V16))(V17)) end end end(V7))(V11)), fun () -> ((begin (V18 = V0), fun (V19) -> fun (V20) -> ((V18(V19))(V20)) end end end(V8))(V12)) end)) end end.
'dn--un--decEq_DecEq_(Maybe $t)'(V0, V1, V2) -> case V1 of {'Prelude.Types.Nothing'} -> case V2 of {'Prelude.Types.Nothing'} -> {'Prelude.Types.Yes', {'Builtin.Refl'}}; {'Prelude.Types.Just', V3} -> {'Prelude.Types.No', fun (V4) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V5) -> ('Idris.Idris2.Prelude.Types':'dn--un--uninhabited_Uninhabited_(|((Builtin.=== Nothing) (Just $x)),((Builtin.~=~ Nothing) (Just $x))|)'(V5)) end, V4)) end} end; {'Prelude.Types.Just', V6} -> case V2 of {'Prelude.Types.Just', V7} -> ('Idris.Idris2.Decidable.Equality.Core':'un--decEqCong'(((begin (V8 = V0), fun (V9) -> fun (V10) -> ((V8(V9))(V10)) end end end(V6))(V7)))); {'Prelude.Types.Nothing'} -> {'Prelude.Types.No', fun (V11) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V12) -> ('Idris.Idris2.Prelude.Types':'dn--un--uninhabited_Uninhabited_(|((Builtin.=== (Just $x)) Nothing),((Builtin.~=~ (Just $x)) Nothing)|)'(V12)) end, V11)) end} end end.
'dn--un--decEq_DecEq_(List1 $a)'(V0, V1, V2) -> case V1 of {'Data.List1.:::', V3, V4} -> case V2 of {'Data.List1.:::', V5, V6} -> ('Idris.Idris2.Decidable.Equality.Core':'un--decEqCong2'(((begin (V7 = V0), fun (V8) -> fun (V9) -> ((V7(V8))(V9)) end end end(V3))(V5)), fun () -> ((begin (V12 = fun (V10) -> fun (V11) -> ('dn--un--decEq_DecEq_(List $a)'(V0, V10, V11)) end end), fun (V13) -> fun (V14) -> ((V12(V13))(V14)) end end end(V4))(V6)) end)) end end.
'dn--un--decEq_DecEq_(List $a)'(V0, V1, V2) -> case V1 of [] -> case V2 of [] -> {'Prelude.Types.Yes', {'Builtin.Refl'}}; [E0 | E1] -> (fun (V3, V4) -> {'Prelude.Types.No', fun (V5) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V6) -> ('Idris.Idris2.Data.List':'dn--un--uninhabited_Uninhabited_(|((Builtin.=== Nil) ((:: $x) $xs)),((Builtin.~=~ Nil) ((:: $x) $xs))|)'(V6)) end, V5)) end} end(E0, E1)) end; [E2 | E3] -> (fun (V7, V8) -> case V2 of [] -> {'Prelude.Types.No', fun (V9) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V10) -> ('Idris.Idris2.Data.List':'dn--un--uninhabited_Uninhabited_(|((Builtin.=== ((:: $x) $xs)) Nil),((Builtin.~=~ ((:: $x) $xs)) Nil)|)'(V10)) end, V9)) end}; [E4 | E5] -> (fun (V11, V12) -> ('Idris.Idris2.Decidable.Equality.Core':'un--decEqCong2'(((begin (V13 = V0), fun (V14) -> fun (V15) -> ((V13(V14))(V15)) end end end(V7))(V11)), fun () -> ((begin (V18 = fun (V16) -> fun (V17) -> ('dn--un--decEq_DecEq_(List $a)'(V0, V16, V17)) end end), fun (V19) -> fun (V20) -> ((V18(V19))(V20)) end end end(V8))(V12)) end)) end(E4, E5)) end end(E2, E3)) end.
'dn--un--decEq_DecEq_((These $t) $s)'(V0, V1, V2, V3) -> case V2 of {'Data.These.This', V4} -> case V3 of {'Data.These.This', V5} -> ('Idris.Idris2.Decidable.Equality.Core':'un--decEqCong'(((begin (V6 = V0), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end(V4))(V5)))); {'Data.These.That', V9} -> {'Prelude.Types.No', fun (V10) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Data.These.Both', V11, V12} -> {'Prelude.Types.No', fun (V13) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end} end; {'Data.These.That', V14} -> case V3 of {'Data.These.That', V15} -> ('Idris.Idris2.Decidable.Equality.Core':'un--decEqCong'(((begin (V16 = V1), fun (V17) -> fun (V18) -> ((V16(V17))(V18)) end end end(V14))(V15)))); {'Data.These.This', V19} -> {'Prelude.Types.No', fun (V20) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Data.These.Both', V21, V22} -> {'Prelude.Types.No', fun (V23) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end} end; {'Data.These.Both', V24, V25} -> case V3 of {'Data.These.Both', V26, V27} -> ('Idris.Idris2.Decidable.Equality.Core':'un--decEqCong2'(((begin (V28 = V0), fun (V29) -> fun (V30) -> ((V28(V29))(V30)) end end end(V24))(V26)), fun () -> ((begin (V31 = V1), fun (V32) -> fun (V33) -> ((V31(V32))(V33)) end end end(V25))(V27)) end)); {'Data.These.This', V34} -> {'Prelude.Types.No', fun (V35) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Data.These.That', V36} -> {'Prelude.Types.No', fun (V37) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end} end end.
'dn--un--decEq_DecEq_((Either $t) $s)'(V0, V1, V2) -> case V1 of {'Prelude.Types.Left', V3} -> case V2 of {'Prelude.Types.Left', V4} -> ('Idris.Idris2.Decidable.Equality.Core':'un--decEqCong'(((begin (V5 = ('Idris.Idris2.Builtin':'un--fst'(V0))), fun (V6) -> fun (V7) -> ((V5(V6))(V7)) end end end(V3))(V4)))); {'Prelude.Types.Right', V8} -> {'Prelude.Types.No', fun (V9) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V10) -> ('Idris.Idris2.Prelude.Types':'dn--un--uninhabited_Uninhabited_((=== (Left $p)) (Right $q))'(V10)) end, V9)) end} end; {'Prelude.Types.Right', V11} -> case V2 of {'Prelude.Types.Right', V12} -> ('Idris.Idris2.Decidable.Equality.Core':'un--decEqCong'(((begin (V13 = ('Idris.Idris2.Builtin':'un--snd'(V0))), fun (V14) -> fun (V15) -> ((V13(V14))(V15)) end end end(V11))(V12)))); {'Prelude.Types.Left', V16} -> {'Prelude.Types.No', fun (V17) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V18) -> ('Idris.Idris2.Prelude.Types':'dn--un--uninhabited_Uninhabited_((=== (Right $p)) (Left $q))'(V18)) end, V17)) end} end end.
'dn--un--__Impl_DecEq_String'(V0, V1) -> ((('dn--un--decEq_DecEq_String'())(V0))(V1)).
'dn--un--__Impl_DecEq_Nat'(V0, V1) -> ('dn--un--decEq_DecEq_Nat'(V0, V1)).
'dn--un--__Impl_DecEq_Integer'(V0, V1) -> ((('dn--un--decEq_DecEq_Integer'())(V0))(V1)).
'dn--un--__Impl_DecEq_Int8'(V0, V1) -> ((('dn--un--decEq_DecEq_Int8'())(V0))(V1)).
'dn--un--__Impl_DecEq_Int64'(V0, V1) -> ((('dn--un--decEq_DecEq_Int64'())(V0))(V1)).
'dn--un--__Impl_DecEq_Int32'(V0, V1) -> ((('dn--un--decEq_DecEq_Int32'())(V0))(V1)).
'dn--un--__Impl_DecEq_Int16'(V0, V1) -> ((('dn--un--decEq_DecEq_Int16'())(V0))(V1)).
'dn--un--__Impl_DecEq_Int'(V0, V1) -> ((('dn--un--decEq_DecEq_Int'())(V0))(V1)).
'dn--un--__Impl_DecEq_Char'(V0, V1) -> ((('dn--un--decEq_DecEq_Char'())(V0))(V1)).
'dn--un--__Impl_DecEq_Bool'(V0, V1) -> ('dn--un--decEq_DecEq_Bool'(V0, V1)).
'dn--un--__Impl_DecEq_Bits8'(V0, V1) -> ((('dn--un--decEq_DecEq_Bits8'())(V0))(V1)).
'dn--un--__Impl_DecEq_Bits64'(V0, V1) -> ((('dn--un--decEq_DecEq_Bits64'())(V0))(V1)).
'dn--un--__Impl_DecEq_Bits32'(V0, V1) -> ((('dn--un--decEq_DecEq_Bits32'())(V0))(V1)).
'dn--un--__Impl_DecEq_Bits16'(V0, V1) -> ((('dn--un--decEq_DecEq_Bits16'())(V0))(V1)).
'dn--un--__Impl_DecEq_(|Unit,MkUnit|)'(V0, V1) -> ('dn--un--decEq_DecEq_(|Unit,MkUnit|)'(V0, V1)).
'dn--un--__Impl_DecEq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2) -> ('dn--un--decEq_DecEq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2)).
'dn--un--__Impl_DecEq_(SnocList $a)'(V0, V1, V2) -> ('dn--un--decEq_DecEq_(SnocList $a)'(V0, V1, V2)).
'dn--un--__Impl_DecEq_(Maybe $t)'(V0, V1, V2) -> ('dn--un--decEq_DecEq_(Maybe $t)'(V0, V1, V2)).
'dn--un--__Impl_DecEq_(List1 $a)'(V0, V1, V2) -> ('dn--un--decEq_DecEq_(List1 $a)'(V0, V1, V2)).
'dn--un--__Impl_DecEq_(List $a)'(V0, V1, V2) -> ('dn--un--decEq_DecEq_(List $a)'(V0, V1, V2)).
'dn--un--__Impl_DecEq_((These $t) $s)'(V0, V1, V2, V3) -> ('dn--un--decEq_DecEq_((These $t) $s)'(V0, V1, V2, V3)).
'dn--un--__Impl_DecEq_((Either $t) $s)'(V0, V1, V2) -> ('dn--un--decEq_DecEq_((Either $t) $s)'(V0, V1, V2)).
'un--FromEq'(V0, V1, V2) -> ('dn--un--decEq_DecEq_FromEq$a'(V0, V1, V2)).
