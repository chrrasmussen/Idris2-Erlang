-module('Idris.Idris2.Prelude.Num').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--abs-619'/2,
  'case--mod-459'/3,
  'case--div-440'/3,
  'case--abs-408'/2,
  'case--mod-337'/3,
  'case--div-318'/3,
  'case--abs-286'/2,
  'dn--un--recip_Fractional__Double'/1,
  'dn--un--negate_Neg__Integer'/1,
  'dn--un--negate_Neg__Int'/1,
  'dn--un--negate_Neg__Double'/1,
  'dn--un--mod_Integral__Integer'/2,
  'dn--un--mod_Integral__Int'/2,
  'dn--un--fromInteger_Num__Integer'/1,
  'dn--un--fromInteger_Num__Int'/1,
  'dn--un--fromInteger_Num__Double'/1,
  'dn--un--fromInteger_Num__Bits8'/1,
  'dn--un--fromInteger_Num__Bits64'/1,
  'dn--un--fromInteger_Num__Bits32'/1,
  'dn--un--fromInteger_Num__Bits16'/1,
  'dn--un--div_Integral__Integer'/2,
  'dn--un--div_Integral__Int'/2,
  'dn--un--abs_Abs__Integer'/1,
  'dn--un--abs_Abs__Int'/1,
  'dn--un--abs_Abs__Double'/1,
  'dn--un--__Neg_(Num ty)'/2,
  'dn--un--__Integral_(Num ty)'/2,
  'dn--un--__Impl_Num_Integer'/0,
  'dn--un--__Impl_Num_Int'/0,
  'dn--un--__Impl_Num_Double'/0,
  'dn--un--__Impl_Num_Bits8'/0,
  'dn--un--__Impl_Num_Bits64'/0,
  'dn--un--__Impl_Num_Bits32'/0,
  'dn--un--__Impl_Num_Bits16'/0,
  'dn--un--__Impl_Neg_Integer'/0,
  'dn--un--__Impl_Neg_Int'/0,
  'dn--un--__Impl_Neg_Double'/0,
  'dn--un--__Impl_Integral_Integer'/0,
  'dn--un--__Impl_Integral_Int'/0,
  'dn--un--__Impl_Fractional_Double'/0,
  'dn--un--__Impl_Abs_Integer'/0,
  'dn--un--__Impl_Abs_Int'/0,
  'dn--un--__Impl_Abs_Double'/0,
  'dn--un--__Fractional_(Num ty)'/2,
  'dn--un--__Abs_(Num ty)'/2,
  'dn--un--/_Fractional__Double'/2,
  'dn--un---_Neg__Integer'/2,
  'dn--un---_Neg__Int'/2,
  'dn--un---_Neg__Double'/2,
  'dn--un--+_Num__Integer'/2,
  'dn--un--+_Num__Int'/2,
  'dn--un--+_Num__Double'/2,
  'dn--un--+_Num__Bits8'/2,
  'dn--un--+_Num__Bits64'/2,
  'dn--un--+_Num__Bits32'/2,
  'dn--un--+_Num__Bits16'/2,
  'dn--un--*_Num__Integer'/2,
  'dn--un--*_Num__Int'/2,
  'dn--un--*_Num__Double'/2,
  'dn--un--*_Num__Bits8'/2,
  'dn--un--*_Num__Bits64'/2,
  'dn--un--*_Num__Bits32'/2,
  'dn--un--*_Num__Bits16'/2,
  'un--recip'/2,
  'un--negate'/2,
  'un--mod'/2,
  'un--fromInteger'/2,
  'un--div'/2,
  'un--defaultInteger'/0,
  'un--abs'/2,
  'un--/'/2,
  'un---'/2,
  'un--+'/2,
  'un--*'/2
]).
'case--abs-619'(V0, V1) -> case V1 of 0 -> ('dn--un--negate_Neg__Double'(V0)); 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--mod-459'(V0, V1, V2) -> case V2 of 1 -> (V1 rem V0); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'('erased', <<"Unhandled input for Prelude.Num.case block in mod at Prelude/Num.idr:116:3--122:8"/utf8>>)) end.
'case--div-440'(V0, V1, V2) -> case V2 of 1 -> ((V1 div V0) rem 9223372036854775808); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'('erased', <<"Unhandled input for Prelude.Num.case block in div at Prelude/Num.idr:113:3--116:6"/utf8>>)) end.
'case--abs-408'(V0, V1) -> case V1 of 0 -> ('dn--un--negate_Neg__Int'(V0)); 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--mod-337'(V0, V1, V2) -> case V2 of 1 -> (V1 rem V0); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'('erased', <<"Unhandled input for Prelude.Num.case block in mod at Prelude/Num.idr:80:3--87:13"/utf8>>)) end.
'case--div-318'(V0, V1, V2) -> case V2 of 1 -> (V1 div V0); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'('erased', <<"Unhandled input for Prelude.Num.case block in div at Prelude/Num.idr:77:3--80:6"/utf8>>)) end.
'case--abs-286'(V0, V1) -> case V1 of 0 -> ('dn--un--negate_Neg__Integer'(V0)); 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--recip_Fractional__Double'(V0) -> ('dn--un--/_Fractional__Double'(1.0, V0)).
'dn--un--negate_Neg__Integer'(V0) -> (0 - V0).
'dn--un--negate_Neg__Int'(V0) -> ((0 - V0) rem 9223372036854775808).
'dn--un--negate_Neg__Double'(V0) -> ('erlang':'-'(V0)).
'dn--un--mod_Integral__Integer'(V0, V1) -> ('case--mod-337'(V1, V0, ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Integer'(V1, 0)))).
'dn--un--mod_Integral__Int'(V0, V1) -> ('case--mod-459'(V1, V0, ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Int'(V1, 0)))).
'dn--un--fromInteger_Num__Integer'(V0) -> V0.
'dn--un--fromInteger_Num__Int'(V0) -> V0.
'dn--un--fromInteger_Num__Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--fromInteger_Num__Bits8'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 256); _ -> ((V0 + 256) rem 256) end.
'dn--un--fromInteger_Num__Bits64'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 18446744073709551616); _ -> ((V0 + 18446744073709551616) rem 18446744073709551616) end.
'dn--un--fromInteger_Num__Bits32'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 4294967296); _ -> ((V0 + 4294967296) rem 4294967296) end.
'dn--un--fromInteger_Num__Bits16'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 65536); _ -> ((V0 + 65536) rem 65536) end.
'dn--un--div_Integral__Integer'(V0, V1) -> ('case--div-318'(V1, V0, ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Integer'(V1, 0)))).
'dn--un--div_Integral__Int'(V0, V1) -> ('case--div-440'(V1, V0, ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Int'(V1, 0)))).
'dn--un--abs_Abs__Integer'(V0) -> ('case--abs-286'(V0, ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord__Integer'(V0, 0)))).
'dn--un--abs_Abs__Int'(V0) -> ('case--abs-408'(V0, ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord__Int'(V0, 0)))).
'dn--un--abs_Abs__Double'(V0) -> ('case--abs-619'(V0, ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord__Double'(V0, ('dn--un--fromInteger_Num__Double'(0)))))).
'dn--un--__Neg_(Num ty)'(V0, V1) -> case V1 of {'Idris.Prelude.Num.dn--un--__mkNeg', E0, E1, E2} -> (fun (V2, V3, V4) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Integral_(Num ty)'(V0, V1) -> case V1 of {'Idris.Prelude.Num.dn--un--__mkIntegral', E0, E1, E2} -> (fun (V2, V3, V4) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Impl_Num_Integer'() -> {'Idris.Prelude.Num.dn--un--__mkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> V4 end}.
'dn--un--__Impl_Num_Int'() -> {'Idris.Prelude.Num.dn--un--__mkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 9223372036854775808) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 9223372036854775808) end end, fun (V4) -> V4 end}.
'dn--un--__Impl_Num_Double'() -> {'Idris.Prelude.Num.dn--un--__mkNum', fun (V0) -> fun (V1) -> ('dn--un--+_Num__Double'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--*_Num__Double'(V2, V3)) end end, fun (V4) -> ('dn--un--fromInteger_Num__Double'(V4)) end}.
'dn--un--__Impl_Num_Bits8'() -> {'Idris.Prelude.Num.dn--un--__mkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 256) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 256) end end, fun (V4) -> case (V4 >= 0) of 'true' -> (V4 rem 256); _ -> ((V4 + 256) rem 256) end end}.
'dn--un--__Impl_Num_Bits64'() -> {'Idris.Prelude.Num.dn--un--__mkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 18446744073709551616) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 18446744073709551616) end end, fun (V4) -> case (V4 >= 0) of 'true' -> (V4 rem 18446744073709551616); _ -> ((V4 + 18446744073709551616) rem 18446744073709551616) end end}.
'dn--un--__Impl_Num_Bits32'() -> {'Idris.Prelude.Num.dn--un--__mkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 4294967296) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 4294967296) end end, fun (V4) -> case (V4 >= 0) of 'true' -> (V4 rem 4294967296); _ -> ((V4 + 4294967296) rem 4294967296) end end}.
'dn--un--__Impl_Num_Bits16'() -> {'Idris.Prelude.Num.dn--un--__mkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 65536) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 65536) end end, fun (V4) -> case (V4 >= 0) of 'true' -> (V4 rem 65536); _ -> ((V4 + 65536) rem 65536) end end}.
'dn--un--__Impl_Neg_Integer'() -> {'Idris.Prelude.Num.dn--un--__mkNeg', {'Idris.Prelude.Num.dn--un--__mkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> V4 end}, fun (V5) -> ('dn--un--negate_Neg__Integer'(V5)) end, fun (V6) -> fun (V7) -> ('dn--un---_Neg__Integer'(V6, V7)) end end}.
'dn--un--__Impl_Neg_Int'() -> {'Idris.Prelude.Num.dn--un--__mkNeg', {'Idris.Prelude.Num.dn--un--__mkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 9223372036854775808) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 9223372036854775808) end end, fun (V4) -> V4 end}, fun (V5) -> ('dn--un--negate_Neg__Int'(V5)) end, fun (V6) -> fun (V7) -> ('dn--un---_Neg__Int'(V6, V7)) end end}.
'dn--un--__Impl_Neg_Double'() -> {'Idris.Prelude.Num.dn--un--__mkNeg', {'Idris.Prelude.Num.dn--un--__mkNum', fun (V0) -> fun (V1) -> ('dn--un--+_Num__Double'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--*_Num__Double'(V2, V3)) end end, fun (V4) -> ('dn--un--fromInteger_Num__Double'(V4)) end}, fun (V5) -> ('dn--un--negate_Neg__Double'(V5)) end, fun (V6) -> fun (V7) -> ('dn--un---_Neg__Double'(V6, V7)) end end}.
'dn--un--__Impl_Integral_Integer'() -> {'Idris.Prelude.Num.dn--un--__mkIntegral', {'Idris.Prelude.Num.dn--un--__mkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> V4 end}, fun (V5) -> fun (V6) -> ('dn--un--div_Integral__Integer'(V5, V6)) end end, fun (V7) -> fun (V8) -> ('dn--un--mod_Integral__Integer'(V7, V8)) end end}.
'dn--un--__Impl_Integral_Int'() -> {'Idris.Prelude.Num.dn--un--__mkIntegral', {'Idris.Prelude.Num.dn--un--__mkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 9223372036854775808) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 9223372036854775808) end end, fun (V4) -> V4 end}, fun (V5) -> fun (V6) -> ('dn--un--div_Integral__Int'(V5, V6)) end end, fun (V7) -> fun (V8) -> ('dn--un--mod_Integral__Int'(V7, V8)) end end}.
'dn--un--__Impl_Fractional_Double'() -> {'Idris.Prelude.Num.dn--un--__mkFractional', {'Idris.Prelude.Num.dn--un--__mkNum', fun (V0) -> fun (V1) -> ('dn--un--+_Num__Double'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--*_Num__Double'(V2, V3)) end end, fun (V4) -> ('dn--un--fromInteger_Num__Double'(V4)) end}, fun (V5) -> fun (V6) -> ('dn--un--/_Fractional__Double'(V5, V6)) end end, fun (V7) -> ('dn--un--recip_Fractional__Double'(V7)) end}.
'dn--un--__Impl_Abs_Integer'() -> {'Idris.Prelude.Num.dn--un--__mkAbs', {'Idris.Prelude.Num.dn--un--__mkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> V4 end}, fun (V5) -> ('dn--un--abs_Abs__Integer'(V5)) end}.
'dn--un--__Impl_Abs_Int'() -> {'Idris.Prelude.Num.dn--un--__mkAbs', {'Idris.Prelude.Num.dn--un--__mkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 9223372036854775808) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 9223372036854775808) end end, fun (V4) -> V4 end}, fun (V5) -> ('dn--un--abs_Abs__Int'(V5)) end}.
'dn--un--__Impl_Abs_Double'() -> {'Idris.Prelude.Num.dn--un--__mkAbs', {'Idris.Prelude.Num.dn--un--__mkNum', fun (V0) -> fun (V1) -> ('dn--un--+_Num__Double'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--*_Num__Double'(V2, V3)) end end, fun (V4) -> ('dn--un--fromInteger_Num__Double'(V4)) end}, fun (V5) -> ('dn--un--abs_Abs__Double'(V5)) end}.
'dn--un--__Fractional_(Num ty)'(V0, V1) -> case V1 of {'Idris.Prelude.Num.dn--un--__mkFractional', E0, E1, E2} -> (fun (V2, V3, V4) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Abs_(Num ty)'(V0, V1) -> case V1 of {'Idris.Prelude.Num.dn--un--__mkAbs', E0, E1} -> (fun (V2, V3) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--/_Fractional__Double'(V0, V1) -> (V0 / V1).
'dn--un---_Neg__Integer'(V0, V1) -> (V0 - V1).
'dn--un---_Neg__Int'(V0, V1) -> ((V0 - V1) rem 9223372036854775808).
'dn--un---_Neg__Double'(V0, V1) -> (V0 - V1).
'dn--un--+_Num__Integer'(V0, V1) -> (V0 + V1).
'dn--un--+_Num__Int'(V0, V1) -> ((V0 + V1) rem 9223372036854775808).
'dn--un--+_Num__Double'(V0, V1) -> (V0 + V1).
'dn--un--+_Num__Bits8'(V0, V1) -> ((V0 + V1) rem 256).
'dn--un--+_Num__Bits64'(V0, V1) -> ((V0 + V1) rem 18446744073709551616).
'dn--un--+_Num__Bits32'(V0, V1) -> ((V0 + V1) rem 4294967296).
'dn--un--+_Num__Bits16'(V0, V1) -> ((V0 + V1) rem 65536).
'dn--un--*_Num__Integer'(V0, V1) -> (V0 * V1).
'dn--un--*_Num__Int'(V0, V1) -> ((V0 * V1) rem 9223372036854775808).
'dn--un--*_Num__Double'(V0, V1) -> (V0 * V1).
'dn--un--*_Num__Bits8'(V0, V1) -> ((V0 * V1) rem 256).
'dn--un--*_Num__Bits64'(V0, V1) -> ((V0 * V1) rem 18446744073709551616).
'dn--un--*_Num__Bits32'(V0, V1) -> ((V0 * V1) rem 4294967296).
'dn--un--*_Num__Bits16'(V0, V1) -> ((V0 * V1) rem 65536).
'un--recip'(V0, V1) -> case V1 of {'Idris.Prelude.Num.dn--un--__mkFractional', E0, E1, E2} -> (fun (V2, V3, V4) -> fun (V5) -> (V4(V5)) end end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--negate'(V0, V1) -> case V1 of {'Idris.Prelude.Num.dn--un--__mkNeg', E0, E1, E2} -> (fun (V2, V3, V4) -> fun (V5) -> (V3(V5)) end end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--mod'(V0, V1) -> case V1 of {'Idris.Prelude.Num.dn--un--__mkIntegral', E0, E1, E2} -> (fun (V2, V3, V4) -> fun (V5) -> fun (V6) -> ((V4(V5))(V6)) end end end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--fromInteger'(V0, V1) -> case V1 of {'Idris.Prelude.Num.dn--un--__mkNum', E0, E1, E2} -> (fun (V2, V3, V4) -> fun (V5) -> (V4(V5)) end end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--div'(V0, V1) -> case V1 of {'Idris.Prelude.Num.dn--un--__mkIntegral', E0, E1, E2} -> (fun (V2, V3, V4) -> fun (V5) -> fun (V6) -> ((V3(V5))(V6)) end end end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--defaultInteger'() -> {'Idris.Prelude.Num.dn--un--__mkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> V4 end}.
'un--abs'(V0, V1) -> case V1 of {'Idris.Prelude.Num.dn--un--__mkAbs', E0, E1} -> (fun (V2, V3) -> fun (V4) -> (V3(V4)) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--/'(V0, V1) -> case V1 of {'Idris.Prelude.Num.dn--un--__mkFractional', E0, E1, E2} -> (fun (V2, V3, V4) -> fun (V5) -> fun (V6) -> ((V3(V5))(V6)) end end end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un---'(V0, V1) -> case V1 of {'Idris.Prelude.Num.dn--un--__mkNeg', E0, E1, E2} -> (fun (V2, V3, V4) -> fun (V5) -> fun (V6) -> ((V4(V5))(V6)) end end end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--+'(V0, V1) -> case V1 of {'Idris.Prelude.Num.dn--un--__mkNum', E0, E1, E2} -> (fun (V2, V3, V4) -> fun (V5) -> fun (V6) -> ((V2(V5))(V6)) end end end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--*'(V0, V1) -> case V1 of {'Idris.Prelude.Num.dn--un--__mkNum', E0, E1, E2} -> (fun (V2, V3, V4) -> fun (V5) -> fun (V6) -> ((V3(V5))(V6)) end end end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
