-module('Idris.Idris2.Prelude.Num').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--abs-1462'/2,
  'case--mod-1394'/3,
  'case--div-1375'/3,
  'case--abs-1343'/2,
  'case--mod-1273'/3,
  'case--div-1254'/3,
  'case--abs-1222'/2,
  'case--mod-1152'/3,
  'case--div-1133'/3,
  'case--abs-1101'/2,
  'case--mod-1031'/3,
  'case--div-1012'/3,
  'case--abs-980'/2,
  'case--mod-910'/3,
  'case--div-891'/3,
  'case--abs-859'/2,
  'case--mod-789'/3,
  'case--div-770'/3,
  'case--abs-738'/2,
  'case--mod-668'/3,
  'case--div-649'/3,
  'case--abs-617'/2,
  'case--mod-547'/3,
  'case--div-528'/3,
  'case--abs-496'/2,
  'case--mod-426'/3,
  'case--div-407'/3,
  'case--abs-375'/2,
  'case--mod-304'/3,
  'case--div-285'/3,
  'case--abs-253'/2,
  'dn--un--recip_Fractional_Double'/1,
  'dn--un--negate_Neg_Integer'/1,
  'dn--un--negate_Neg_Int8'/1,
  'dn--un--negate_Neg_Int64'/1,
  'dn--un--negate_Neg_Int32'/1,
  'dn--un--negate_Neg_Int16'/1,
  'dn--un--negate_Neg_Int'/1,
  'dn--un--negate_Neg_Double'/1,
  'dn--un--negate_Neg_Bits8'/1,
  'dn--un--negate_Neg_Bits64'/1,
  'dn--un--negate_Neg_Bits32'/1,
  'dn--un--negate_Neg_Bits16'/1,
  'dn--un--mod_Integral_Integer'/2,
  'dn--un--mod_Integral_Int8'/2,
  'dn--un--mod_Integral_Int64'/2,
  'dn--un--mod_Integral_Int32'/2,
  'dn--un--mod_Integral_Int16'/2,
  'dn--un--mod_Integral_Int'/2,
  'dn--un--mod_Integral_Bits8'/2,
  'dn--un--mod_Integral_Bits64'/2,
  'dn--un--mod_Integral_Bits32'/2,
  'dn--un--mod_Integral_Bits16'/2,
  'dn--un--fromInteger_Num_Integer'/1,
  'dn--un--fromInteger_Num_Int8'/1,
  'dn--un--fromInteger_Num_Int64'/1,
  'dn--un--fromInteger_Num_Int32'/1,
  'dn--un--fromInteger_Num_Int16'/1,
  'dn--un--fromInteger_Num_Int'/1,
  'dn--un--fromInteger_Num_Double'/1,
  'dn--un--fromInteger_Num_Bits8'/1,
  'dn--un--fromInteger_Num_Bits64'/1,
  'dn--un--fromInteger_Num_Bits32'/1,
  'dn--un--fromInteger_Num_Bits16'/1,
  'dn--un--div_Integral_Integer'/2,
  'dn--un--div_Integral_Int8'/2,
  'dn--un--div_Integral_Int64'/2,
  'dn--un--div_Integral_Int32'/2,
  'dn--un--div_Integral_Int16'/2,
  'dn--un--div_Integral_Int'/2,
  'dn--un--div_Integral_Bits8'/2,
  'dn--un--div_Integral_Bits64'/2,
  'dn--un--div_Integral_Bits32'/2,
  'dn--un--div_Integral_Bits16'/2,
  'dn--un--abs_Abs_Integer'/1,
  'dn--un--abs_Abs_Int8'/1,
  'dn--un--abs_Abs_Int64'/1,
  'dn--un--abs_Abs_Int32'/1,
  'dn--un--abs_Abs_Int16'/1,
  'dn--un--abs_Abs_Int'/1,
  'dn--un--abs_Abs_Double'/1,
  'dn--un--abs_Abs_Bits8'/1,
  'dn--un--abs_Abs_Bits64'/1,
  'dn--un--abs_Abs_Bits32'/1,
  'dn--un--abs_Abs_Bits16'/1,
  'dn--un--__Neg_(Num ty)'/1,
  'dn--un--__Integral_(Num ty)'/1,
  'dn--un--__Impl_Num_Integer'/0,
  'dn--un--__Impl_Num_Int8'/0,
  'dn--un--__Impl_Num_Int64'/0,
  'dn--un--__Impl_Num_Int32'/0,
  'dn--un--__Impl_Num_Int16'/0,
  'dn--un--__Impl_Num_Int'/0,
  'dn--un--__Impl_Num_Double'/0,
  'dn--un--__Impl_Num_Bits8'/0,
  'dn--un--__Impl_Num_Bits64'/0,
  'dn--un--__Impl_Num_Bits32'/0,
  'dn--un--__Impl_Num_Bits16'/0,
  'dn--un--__Impl_Neg_Integer'/0,
  'dn--un--__Impl_Neg_Int8'/0,
  'dn--un--__Impl_Neg_Int64'/0,
  'dn--un--__Impl_Neg_Int32'/0,
  'dn--un--__Impl_Neg_Int16'/0,
  'dn--un--__Impl_Neg_Int'/0,
  'dn--un--__Impl_Neg_Double'/0,
  'dn--un--__Impl_Neg_Bits8'/0,
  'dn--un--__Impl_Neg_Bits64'/0,
  'dn--un--__Impl_Neg_Bits32'/0,
  'dn--un--__Impl_Neg_Bits16'/0,
  'dn--un--__Impl_Integral_Integer'/0,
  'dn--un--__Impl_Integral_Int8'/0,
  'dn--un--__Impl_Integral_Int64'/0,
  'dn--un--__Impl_Integral_Int32'/0,
  'dn--un--__Impl_Integral_Int16'/0,
  'dn--un--__Impl_Integral_Int'/0,
  'dn--un--__Impl_Integral_Bits8'/0,
  'dn--un--__Impl_Integral_Bits64'/0,
  'dn--un--__Impl_Integral_Bits32'/0,
  'dn--un--__Impl_Integral_Bits16'/0,
  'dn--un--__Impl_Fractional_Double'/0,
  'dn--un--__Impl_Abs_Integer'/0,
  'dn--un--__Impl_Abs_Int8'/0,
  'dn--un--__Impl_Abs_Int64'/0,
  'dn--un--__Impl_Abs_Int32'/0,
  'dn--un--__Impl_Abs_Int16'/0,
  'dn--un--__Impl_Abs_Int'/0,
  'dn--un--__Impl_Abs_Double'/0,
  'dn--un--__Impl_Abs_Bits8'/0,
  'dn--un--__Impl_Abs_Bits64'/0,
  'dn--un--__Impl_Abs_Bits32'/0,
  'dn--un--__Impl_Abs_Bits16'/0,
  'dn--un--__Fractional_(Num ty)'/1,
  'dn--un--__Abs_(Num ty)'/1,
  'dn--un--/_Fractional_Double'/2,
  'dn--un---_Neg_Integer'/2,
  'dn--un---_Neg_Int8'/2,
  'dn--un---_Neg_Int64'/2,
  'dn--un---_Neg_Int32'/2,
  'dn--un---_Neg_Int16'/2,
  'dn--un---_Neg_Int'/2,
  'dn--un---_Neg_Double'/2,
  'dn--un---_Neg_Bits8'/2,
  'dn--un---_Neg_Bits64'/2,
  'dn--un---_Neg_Bits32'/2,
  'dn--un---_Neg_Bits16'/2,
  'dn--un--+_Num_Integer'/2,
  'dn--un--+_Num_Int8'/2,
  'dn--un--+_Num_Int64'/2,
  'dn--un--+_Num_Int32'/2,
  'dn--un--+_Num_Int16'/2,
  'dn--un--+_Num_Int'/2,
  'dn--un--+_Num_Double'/2,
  'dn--un--+_Num_Bits8'/2,
  'dn--un--+_Num_Bits64'/2,
  'dn--un--+_Num_Bits32'/2,
  'dn--un--+_Num_Bits16'/2,
  'dn--un--*_Num_Integer'/2,
  'dn--un--*_Num_Int8'/2,
  'dn--un--*_Num_Int64'/2,
  'dn--un--*_Num_Int32'/2,
  'dn--un--*_Num_Int16'/2,
  'dn--un--*_Num_Int'/2,
  'dn--un--*_Num_Double'/2,
  'dn--un--*_Num_Bits8'/2,
  'dn--un--*_Num_Bits64'/2,
  'dn--un--*_Num_Bits32'/2,
  'dn--un--*_Num_Bits16'/2,
  'un--recip'/2,
  'un--negate'/2,
  'un--mod'/3,
  'un--fromInteger'/2,
  'un--div'/3,
  'un--defaultInteger'/0,
  'un--abs'/2,
  'un--/'/3,
  'un---'/3,
  'un--+'/3,
  'un--*'/3
]).
'case--abs-1462'(V0, V1) -> case V1 of 1 -> ('erlang':'-'(V0)); 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--mod-1394'(V0, V1, V2) -> case V2 of 0 -> (V1 rem V0); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:347:3--349:43"/utf8>>)) end.
'case--div-1375'(V0, V1, V2) -> case V2 of 0 -> ((V1 div V0) rem 18446744073709551616); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:344:3--346:43"/utf8>>)) end.
'case--abs-1343'(V0, V1) -> case V1 of 1 -> ((0 - V0) rem 18446744073709551616); 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--mod-1273'(V0, V1, V2) -> case V2 of 0 -> (V1 rem V0); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:319:3--321:43"/utf8>>)) end.
'case--div-1254'(V0, V1, V2) -> case V2 of 0 -> ((V1 div V0) rem 4294967296); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:316:3--318:43"/utf8>>)) end.
'case--abs-1222'(V0, V1) -> case V1 of 1 -> ((0 - V0) rem 4294967296); 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--mod-1152'(V0, V1, V2) -> case V2 of 0 -> (V1 rem V0); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:291:3--293:43"/utf8>>)) end.
'case--div-1133'(V0, V1, V2) -> case V2 of 0 -> ((V1 div V0) rem 65536); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:288:3--290:43"/utf8>>)) end.
'case--abs-1101'(V0, V1) -> case V1 of 1 -> ((0 - V0) rem 65536); 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--mod-1031'(V0, V1, V2) -> case V2 of 0 -> (V1 rem V0); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:263:3--265:42"/utf8>>)) end.
'case--div-1012'(V0, V1, V2) -> case V2 of 0 -> ((V1 div V0) rem 256); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:260:3--262:42"/utf8>>)) end.
'case--abs-980'(V0, V1) -> case V1 of 1 -> ((0 - V0) rem 256); 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--mod-910'(V0, V1, V2) -> case V2 of 0 -> (V1 rem V0); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:235:3--237:42"/utf8>>)) end.
'case--div-891'(V0, V1, V2) -> case V2 of 0 -> (V1 / V0); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:232:3--234:42"/utf8>>)) end.
'case--abs-859'(V0, V1) -> case V1 of 1 -> (0 - V0); 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--mod-789'(V0, V1, V2) -> case V2 of 0 -> (V1 rem V0); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:207:3--209:42"/utf8>>)) end.
'case--div-770'(V0, V1, V2) -> case V2 of 0 -> (V1 / V0); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:204:3--206:42"/utf8>>)) end.
'case--abs-738'(V0, V1) -> case V1 of 1 -> (0 - V0); 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--mod-668'(V0, V1, V2) -> case V2 of 0 -> (V1 rem V0); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:179:3--181:42"/utf8>>)) end.
'case--div-649'(V0, V1, V2) -> case V2 of 0 -> (V1 / V0); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:176:3--178:42"/utf8>>)) end.
'case--abs-617'(V0, V1) -> case V1 of 1 -> (0 - V0); 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--mod-547'(V0, V1, V2) -> case V2 of 0 -> (V1 rem V0); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:151:3--153:41"/utf8>>)) end.
'case--div-528'(V0, V1, V2) -> case V2 of 0 -> (V1 / V0); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:148:3--150:41"/utf8>>)) end.
'case--abs-496'(V0, V1) -> case V1 of 1 -> (0 - V0); 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--mod-426'(V0, V1, V2) -> case V2 of 0 -> (V1 rem V0); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:123:3--125:40"/utf8>>)) end.
'case--div-407'(V0, V1, V2) -> case V2 of 0 -> ((V1 div V0) rem 9223372036854775808); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:120:3--122:40"/utf8>>)) end.
'case--abs-375'(V0, V1) -> case V1 of 1 -> ((0 - V0) rem 9223372036854775808); 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--mod-304'(V0, V1, V2) -> case V2 of 0 -> (V1 rem V0); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:86:3--88:44"/utf8>>)) end.
'case--div-285'(V0, V1, V2) -> case V2 of 0 -> (V1 div V0); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:83:3--85:44"/utf8>>)) end.
'case--abs-253'(V0, V1) -> case V1 of 1 -> (0 - V0); 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--recip_Fractional_Double'(V0) -> ('dn--un--/_Fractional_Double'(1.0, V0)).
'dn--un--negate_Neg_Integer'(V0) -> (0 - V0).
'dn--un--negate_Neg_Int8'(V0) -> (0 - V0).
'dn--un--negate_Neg_Int64'(V0) -> (0 - V0).
'dn--un--negate_Neg_Int32'(V0) -> (0 - V0).
'dn--un--negate_Neg_Int16'(V0) -> (0 - V0).
'dn--un--negate_Neg_Int'(V0) -> ((0 - V0) rem 9223372036854775808).
'dn--un--negate_Neg_Double'(V0) -> ('erlang':'-'(V0)).
'dn--un--negate_Neg_Bits8'(V0) -> ((0 - V0) rem 256).
'dn--un--negate_Neg_Bits64'(V0) -> ((0 - V0) rem 18446744073709551616).
'dn--un--negate_Neg_Bits32'(V0) -> ((0 - V0) rem 4294967296).
'dn--un--negate_Neg_Bits16'(V0) -> ((0 - V0) rem 65536).
'dn--un--mod_Integral_Integer'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Integer'(V1, 0)) of 0 -> (V0 rem V1); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:86:3--88:44"/utf8>>)) end.
'dn--un--mod_Integral_Int8'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int8'(V1, ('erlang':'throw'("Invalid cast Integer->Int8")))) of 0 -> (V0 rem V1); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:151:3--153:41"/utf8>>)) end.
'dn--un--mod_Integral_Int64'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int64'(V1, ('erlang':'throw'("Invalid cast Integer->Int64")))) of 0 -> (V0 rem V1); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:235:3--237:42"/utf8>>)) end.
'dn--un--mod_Integral_Int32'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int32'(V1, ('erlang':'throw'("Invalid cast Integer->Int32")))) of 0 -> (V0 rem V1); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:207:3--209:42"/utf8>>)) end.
'dn--un--mod_Integral_Int16'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int16'(V1, ('erlang':'throw'("Invalid cast Integer->Int16")))) of 0 -> (V0 rem V1); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:179:3--181:42"/utf8>>)) end.
'dn--un--mod_Integral_Int'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(V1, 0)) of 0 -> (V0 rem V1); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:123:3--125:40"/utf8>>)) end.
'dn--un--mod_Integral_Bits8'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits8'(V1, case (0 >= 0) of 'true' -> (0 rem 256); _ -> ((0 + 256) rem 256) end)) of 0 -> (V0 rem V1); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:263:3--265:42"/utf8>>)) end.
'dn--un--mod_Integral_Bits64'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits64'(V1, case (0 >= 0) of 'true' -> (0 rem 18446744073709551616); _ -> ((0 + 18446744073709551616) rem 18446744073709551616) end)) of 0 -> (V0 rem V1); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:347:3--349:43"/utf8>>)) end.
'dn--un--mod_Integral_Bits32'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits32'(V1, case (0 >= 0) of 'true' -> (0 rem 4294967296); _ -> ((0 + 4294967296) rem 4294967296) end)) of 0 -> (V0 rem V1); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:319:3--321:43"/utf8>>)) end.
'dn--un--mod_Integral_Bits16'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits16'(V1, case (0 >= 0) of 'true' -> (0 rem 65536); _ -> ((0 + 65536) rem 65536) end)) of 0 -> (V0 rem V1); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:291:3--293:43"/utf8>>)) end.
'dn--un--fromInteger_Num_Integer'(V0) -> V0.
'dn--un--fromInteger_Num_Int8'(V0) -> ('erlang':'throw'("Invalid cast Integer->Int8")).
'dn--un--fromInteger_Num_Int64'(V0) -> ('erlang':'throw'("Invalid cast Integer->Int64")).
'dn--un--fromInteger_Num_Int32'(V0) -> ('erlang':'throw'("Invalid cast Integer->Int32")).
'dn--un--fromInteger_Num_Int16'(V0) -> ('erlang':'throw'("Invalid cast Integer->Int16")).
'dn--un--fromInteger_Num_Int'(V0) -> V0.
'dn--un--fromInteger_Num_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--fromInteger_Num_Bits8'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 256); _ -> ((V0 + 256) rem 256) end.
'dn--un--fromInteger_Num_Bits64'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 18446744073709551616); _ -> ((V0 + 18446744073709551616) rem 18446744073709551616) end.
'dn--un--fromInteger_Num_Bits32'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 4294967296); _ -> ((V0 + 4294967296) rem 4294967296) end.
'dn--un--fromInteger_Num_Bits16'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 65536); _ -> ((V0 + 65536) rem 65536) end.
'dn--un--div_Integral_Integer'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Integer'(V1, 0)) of 0 -> (V0 div V1); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:83:3--85:44"/utf8>>)) end.
'dn--un--div_Integral_Int8'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int8'(V1, ('erlang':'throw'("Invalid cast Integer->Int8")))) of 0 -> (V0 / V1); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:148:3--150:41"/utf8>>)) end.
'dn--un--div_Integral_Int64'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int64'(V1, ('erlang':'throw'("Invalid cast Integer->Int64")))) of 0 -> (V0 / V1); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:232:3--234:42"/utf8>>)) end.
'dn--un--div_Integral_Int32'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int32'(V1, ('erlang':'throw'("Invalid cast Integer->Int32")))) of 0 -> (V0 / V1); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:204:3--206:42"/utf8>>)) end.
'dn--un--div_Integral_Int16'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int16'(V1, ('erlang':'throw'("Invalid cast Integer->Int16")))) of 0 -> (V0 / V1); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:176:3--178:42"/utf8>>)) end.
'dn--un--div_Integral_Int'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(V1, 0)) of 0 -> ((V0 div V1) rem 9223372036854775808); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:120:3--122:40"/utf8>>)) end.
'dn--un--div_Integral_Bits8'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits8'(V1, case (0 >= 0) of 'true' -> (0 rem 256); _ -> ((0 + 256) rem 256) end)) of 0 -> ((V0 div V1) rem 256); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:260:3--262:42"/utf8>>)) end.
'dn--un--div_Integral_Bits64'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits64'(V1, case (0 >= 0) of 'true' -> (0 rem 18446744073709551616); _ -> ((0 + 18446744073709551616) rem 18446744073709551616) end)) of 0 -> ((V0 div V1) rem 18446744073709551616); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:344:3--346:43"/utf8>>)) end.
'dn--un--div_Integral_Bits32'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits32'(V1, case (0 >= 0) of 'true' -> (0 rem 4294967296); _ -> ((0 + 4294967296) rem 4294967296) end)) of 0 -> ((V0 div V1) rem 4294967296); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:316:3--318:43"/utf8>>)) end.
'dn--un--div_Integral_Bits16'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits16'(V1, case (0 >= 0) of 'true' -> (0 rem 65536); _ -> ((0 + 65536) rem 65536) end)) of 0 -> ((V0 div V1) rem 65536); _ -> ('Idris.Idris2.Builtin':'un--idris_crash'(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:288:3--290:43"/utf8>>)) end.
'dn--un--abs_Abs_Integer'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Integer'(V0, 0)) of 1 -> (0 - V0); 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--abs_Abs_Int8'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Int8'(V0, ('erlang':'throw'("Invalid cast Integer->Int8")))) of 1 -> (0 - V0); 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--abs_Abs_Int64'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Int64'(V0, ('erlang':'throw'("Invalid cast Integer->Int64")))) of 1 -> (0 - V0); 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--abs_Abs_Int32'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Int32'(V0, ('erlang':'throw'("Invalid cast Integer->Int32")))) of 1 -> (0 - V0); 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--abs_Abs_Int16'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Int16'(V0, ('erlang':'throw'("Invalid cast Integer->Int16")))) of 1 -> (0 - V0); 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--abs_Abs_Int'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Int'(V0, 0)) of 1 -> ((0 - V0) rem 9223372036854775808); 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--abs_Abs_Double'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Double'(V0, ('dn--un--fromInteger_Num_Double'(0)))) of 1 -> ('erlang':'-'(V0)); 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--abs_Abs_Bits8'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Bits8'(V0, case (0 >= 0) of 'true' -> (0 rem 256); _ -> ((0 + 256) rem 256) end)) of 1 -> ((0 - V0) rem 256); 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--abs_Abs_Bits64'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Bits64'(V0, case (0 >= 0) of 'true' -> (0 rem 18446744073709551616); _ -> ((0 + 18446744073709551616) rem 18446744073709551616) end)) of 1 -> ((0 - V0) rem 18446744073709551616); 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--abs_Abs_Bits32'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Bits32'(V0, case (0 >= 0) of 'true' -> (0 rem 4294967296); _ -> ((0 + 4294967296) rem 4294967296) end)) of 1 -> ((0 - V0) rem 4294967296); 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--abs_Abs_Bits16'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Bits16'(V0, case (0 >= 0) of 'true' -> (0 rem 65536); _ -> ((0 + 65536) rem 65536) end)) of 1 -> ((0 - V0) rem 65536); 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Neg_(Num ty)'(V0) -> case V0 of {'Idris.Prelude.Num.MkNeg', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Integral_(Num ty)'(V0) -> case V0 of {'Idris.Prelude.Num.MkIntegral', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Impl_Num_Integer'() -> {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> V4 end}.
'dn--un--__Impl_Num_Int8'() -> {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> ('erlang':'throw'("Invalid cast Integer->Int8")) end}.
'dn--un--__Impl_Num_Int64'() -> {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> ('erlang':'throw'("Invalid cast Integer->Int64")) end}.
'dn--un--__Impl_Num_Int32'() -> {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> ('erlang':'throw'("Invalid cast Integer->Int32")) end}.
'dn--un--__Impl_Num_Int16'() -> {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> ('erlang':'throw'("Invalid cast Integer->Int16")) end}.
'dn--un--__Impl_Num_Int'() -> {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 9223372036854775808) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 9223372036854775808) end end, fun (V4) -> V4 end}.
'dn--un--__Impl_Num_Double'() -> {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> ('dn--un--+_Num_Double'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--*_Num_Double'(V2, V3)) end end, fun (V4) -> ('dn--un--fromInteger_Num_Double'(V4)) end}.
'dn--un--__Impl_Num_Bits8'() -> {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 256) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 256) end end, fun (V4) -> case (V4 >= 0) of 'true' -> (V4 rem 256); _ -> ((V4 + 256) rem 256) end end}.
'dn--un--__Impl_Num_Bits64'() -> {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 18446744073709551616) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 18446744073709551616) end end, fun (V4) -> case (V4 >= 0) of 'true' -> (V4 rem 18446744073709551616); _ -> ((V4 + 18446744073709551616) rem 18446744073709551616) end end}.
'dn--un--__Impl_Num_Bits32'() -> {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 4294967296) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 4294967296) end end, fun (V4) -> case (V4 >= 0) of 'true' -> (V4 rem 4294967296); _ -> ((V4 + 4294967296) rem 4294967296) end end}.
'dn--un--__Impl_Num_Bits16'() -> {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 65536) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 65536) end end, fun (V4) -> case (V4 >= 0) of 'true' -> (V4 rem 65536); _ -> ((V4 + 65536) rem 65536) end end}.
'dn--un--__Impl_Neg_Integer'() -> {'Idris.Prelude.Num.MkNeg', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> V4 end}, fun (V5) -> (0 - V5) end, fun (V6) -> fun (V7) -> (V6 - V7) end end}.
'dn--un--__Impl_Neg_Int8'() -> {'Idris.Prelude.Num.MkNeg', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> ('erlang':'throw'("Invalid cast Integer->Int8")) end}, fun (V5) -> (0 - V5) end, fun (V6) -> fun (V7) -> (V6 - V7) end end}.
'dn--un--__Impl_Neg_Int64'() -> {'Idris.Prelude.Num.MkNeg', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> ('erlang':'throw'("Invalid cast Integer->Int64")) end}, fun (V5) -> (0 - V5) end, fun (V6) -> fun (V7) -> (V6 - V7) end end}.
'dn--un--__Impl_Neg_Int32'() -> {'Idris.Prelude.Num.MkNeg', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> ('erlang':'throw'("Invalid cast Integer->Int32")) end}, fun (V5) -> (0 - V5) end, fun (V6) -> fun (V7) -> (V6 - V7) end end}.
'dn--un--__Impl_Neg_Int16'() -> {'Idris.Prelude.Num.MkNeg', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> ('erlang':'throw'("Invalid cast Integer->Int16")) end}, fun (V5) -> (0 - V5) end, fun (V6) -> fun (V7) -> (V6 - V7) end end}.
'dn--un--__Impl_Neg_Int'() -> {'Idris.Prelude.Num.MkNeg', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 9223372036854775808) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 9223372036854775808) end end, fun (V4) -> V4 end}, fun (V5) -> ((0 - V5) rem 9223372036854775808) end, fun (V6) -> fun (V7) -> ((V6 - V7) rem 9223372036854775808) end end}.
'dn--un--__Impl_Neg_Double'() -> {'Idris.Prelude.Num.MkNeg', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> ('dn--un--+_Num_Double'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--*_Num_Double'(V2, V3)) end end, fun (V4) -> ('dn--un--fromInteger_Num_Double'(V4)) end}, fun (V5) -> ('erlang':'-'(V5)) end, fun (V6) -> fun (V7) -> (V6 - V7) end end}.
'dn--un--__Impl_Neg_Bits8'() -> {'Idris.Prelude.Num.MkNeg', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 256) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 256) end end, fun (V4) -> case (V4 >= 0) of 'true' -> (V4 rem 256); _ -> ((V4 + 256) rem 256) end end}, fun (V5) -> ((0 - V5) rem 256) end, fun (V6) -> fun (V7) -> ((V6 - V7) rem 256) end end}.
'dn--un--__Impl_Neg_Bits64'() -> {'Idris.Prelude.Num.MkNeg', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 18446744073709551616) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 18446744073709551616) end end, fun (V4) -> case (V4 >= 0) of 'true' -> (V4 rem 18446744073709551616); _ -> ((V4 + 18446744073709551616) rem 18446744073709551616) end end}, fun (V5) -> ((0 - V5) rem 18446744073709551616) end, fun (V6) -> fun (V7) -> ((V6 - V7) rem 18446744073709551616) end end}.
'dn--un--__Impl_Neg_Bits32'() -> {'Idris.Prelude.Num.MkNeg', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 4294967296) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 4294967296) end end, fun (V4) -> case (V4 >= 0) of 'true' -> (V4 rem 4294967296); _ -> ((V4 + 4294967296) rem 4294967296) end end}, fun (V5) -> ((0 - V5) rem 4294967296) end, fun (V6) -> fun (V7) -> ((V6 - V7) rem 4294967296) end end}.
'dn--un--__Impl_Neg_Bits16'() -> {'Idris.Prelude.Num.MkNeg', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 65536) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 65536) end end, fun (V4) -> case (V4 >= 0) of 'true' -> (V4 rem 65536); _ -> ((V4 + 65536) rem 65536) end end}, fun (V5) -> ((0 - V5) rem 65536) end, fun (V6) -> fun (V7) -> ((V6 - V7) rem 65536) end end}.
'dn--un--__Impl_Integral_Integer'() -> {'Idris.Prelude.Num.MkIntegral', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> V4 end}, fun (V5) -> fun (V6) -> ('dn--un--div_Integral_Integer'(V5, V6)) end end, fun (V7) -> fun (V8) -> ('dn--un--mod_Integral_Integer'(V7, V8)) end end}.
'dn--un--__Impl_Integral_Int8'() -> {'Idris.Prelude.Num.MkIntegral', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> ('erlang':'throw'("Invalid cast Integer->Int8")) end}, fun (V5) -> fun (V6) -> ('dn--un--div_Integral_Int8'(V5, V6)) end end, fun (V7) -> fun (V8) -> ('dn--un--mod_Integral_Int8'(V7, V8)) end end}.
'dn--un--__Impl_Integral_Int64'() -> {'Idris.Prelude.Num.MkIntegral', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> ('erlang':'throw'("Invalid cast Integer->Int64")) end}, fun (V5) -> fun (V6) -> ('dn--un--div_Integral_Int64'(V5, V6)) end end, fun (V7) -> fun (V8) -> ('dn--un--mod_Integral_Int64'(V7, V8)) end end}.
'dn--un--__Impl_Integral_Int32'() -> {'Idris.Prelude.Num.MkIntegral', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> ('erlang':'throw'("Invalid cast Integer->Int32")) end}, fun (V5) -> fun (V6) -> ('dn--un--div_Integral_Int32'(V5, V6)) end end, fun (V7) -> fun (V8) -> ('dn--un--mod_Integral_Int32'(V7, V8)) end end}.
'dn--un--__Impl_Integral_Int16'() -> {'Idris.Prelude.Num.MkIntegral', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> ('erlang':'throw'("Invalid cast Integer->Int16")) end}, fun (V5) -> fun (V6) -> ('dn--un--div_Integral_Int16'(V5, V6)) end end, fun (V7) -> fun (V8) -> ('dn--un--mod_Integral_Int16'(V7, V8)) end end}.
'dn--un--__Impl_Integral_Int'() -> {'Idris.Prelude.Num.MkIntegral', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 9223372036854775808) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 9223372036854775808) end end, fun (V4) -> V4 end}, fun (V5) -> fun (V6) -> ('dn--un--div_Integral_Int'(V5, V6)) end end, fun (V7) -> fun (V8) -> ('dn--un--mod_Integral_Int'(V7, V8)) end end}.
'dn--un--__Impl_Integral_Bits8'() -> {'Idris.Prelude.Num.MkIntegral', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 256) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 256) end end, fun (V4) -> case (V4 >= 0) of 'true' -> (V4 rem 256); _ -> ((V4 + 256) rem 256) end end}, fun (V5) -> fun (V6) -> ('dn--un--div_Integral_Bits8'(V5, V6)) end end, fun (V7) -> fun (V8) -> ('dn--un--mod_Integral_Bits8'(V7, V8)) end end}.
'dn--un--__Impl_Integral_Bits64'() -> {'Idris.Prelude.Num.MkIntegral', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 18446744073709551616) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 18446744073709551616) end end, fun (V4) -> case (V4 >= 0) of 'true' -> (V4 rem 18446744073709551616); _ -> ((V4 + 18446744073709551616) rem 18446744073709551616) end end}, fun (V5) -> fun (V6) -> ('dn--un--div_Integral_Bits64'(V5, V6)) end end, fun (V7) -> fun (V8) -> ('dn--un--mod_Integral_Bits64'(V7, V8)) end end}.
'dn--un--__Impl_Integral_Bits32'() -> {'Idris.Prelude.Num.MkIntegral', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 4294967296) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 4294967296) end end, fun (V4) -> case (V4 >= 0) of 'true' -> (V4 rem 4294967296); _ -> ((V4 + 4294967296) rem 4294967296) end end}, fun (V5) -> fun (V6) -> ('dn--un--div_Integral_Bits32'(V5, V6)) end end, fun (V7) -> fun (V8) -> ('dn--un--mod_Integral_Bits32'(V7, V8)) end end}.
'dn--un--__Impl_Integral_Bits16'() -> {'Idris.Prelude.Num.MkIntegral', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 65536) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 65536) end end, fun (V4) -> case (V4 >= 0) of 'true' -> (V4 rem 65536); _ -> ((V4 + 65536) rem 65536) end end}, fun (V5) -> fun (V6) -> ('dn--un--div_Integral_Bits16'(V5, V6)) end end, fun (V7) -> fun (V8) -> ('dn--un--mod_Integral_Bits16'(V7, V8)) end end}.
'dn--un--__Impl_Fractional_Double'() -> {'Idris.Prelude.Num.MkFractional', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> ('dn--un--+_Num_Double'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--*_Num_Double'(V2, V3)) end end, fun (V4) -> ('dn--un--fromInteger_Num_Double'(V4)) end}, fun (V5) -> fun (V6) -> ('dn--un--/_Fractional_Double'(V5, V6)) end end, fun (V7) -> ('dn--un--recip_Fractional_Double'(V7)) end}.
'dn--un--__Impl_Abs_Integer'() -> {'Idris.Prelude.Num.MkAbs', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> V4 end}, fun (V5) -> ('dn--un--abs_Abs_Integer'(V5)) end}.
'dn--un--__Impl_Abs_Int8'() -> {'Idris.Prelude.Num.MkAbs', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> ('erlang':'throw'("Invalid cast Integer->Int8")) end}, fun (V5) -> ('dn--un--abs_Abs_Int8'(V5)) end}.
'dn--un--__Impl_Abs_Int64'() -> {'Idris.Prelude.Num.MkAbs', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> ('erlang':'throw'("Invalid cast Integer->Int64")) end}, fun (V5) -> ('dn--un--abs_Abs_Int64'(V5)) end}.
'dn--un--__Impl_Abs_Int32'() -> {'Idris.Prelude.Num.MkAbs', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> ('erlang':'throw'("Invalid cast Integer->Int32")) end}, fun (V5) -> ('dn--un--abs_Abs_Int32'(V5)) end}.
'dn--un--__Impl_Abs_Int16'() -> {'Idris.Prelude.Num.MkAbs', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> ('erlang':'throw'("Invalid cast Integer->Int16")) end}, fun (V5) -> ('dn--un--abs_Abs_Int16'(V5)) end}.
'dn--un--__Impl_Abs_Int'() -> {'Idris.Prelude.Num.MkAbs', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 9223372036854775808) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 9223372036854775808) end end, fun (V4) -> V4 end}, fun (V5) -> ('dn--un--abs_Abs_Int'(V5)) end}.
'dn--un--__Impl_Abs_Double'() -> {'Idris.Prelude.Num.MkAbs', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> ('dn--un--+_Num_Double'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--*_Num_Double'(V2, V3)) end end, fun (V4) -> ('dn--un--fromInteger_Num_Double'(V4)) end}, fun (V5) -> ('dn--un--abs_Abs_Double'(V5)) end}.
'dn--un--__Impl_Abs_Bits8'() -> {'Idris.Prelude.Num.MkAbs', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 256) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 256) end end, fun (V4) -> case (V4 >= 0) of 'true' -> (V4 rem 256); _ -> ((V4 + 256) rem 256) end end}, fun (V5) -> ('dn--un--abs_Abs_Bits8'(V5)) end}.
'dn--un--__Impl_Abs_Bits64'() -> {'Idris.Prelude.Num.MkAbs', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 18446744073709551616) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 18446744073709551616) end end, fun (V4) -> case (V4 >= 0) of 'true' -> (V4 rem 18446744073709551616); _ -> ((V4 + 18446744073709551616) rem 18446744073709551616) end end}, fun (V5) -> ('dn--un--abs_Abs_Bits64'(V5)) end}.
'dn--un--__Impl_Abs_Bits32'() -> {'Idris.Prelude.Num.MkAbs', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 4294967296) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 4294967296) end end, fun (V4) -> case (V4 >= 0) of 'true' -> (V4 rem 4294967296); _ -> ((V4 + 4294967296) rem 4294967296) end end}, fun (V5) -> ('dn--un--abs_Abs_Bits32'(V5)) end}.
'dn--un--__Impl_Abs_Bits16'() -> {'Idris.Prelude.Num.MkAbs', {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> ((V0 + V1) rem 65536) end end, fun (V2) -> fun (V3) -> ((V2 * V3) rem 65536) end end, fun (V4) -> case (V4 >= 0) of 'true' -> (V4 rem 65536); _ -> ((V4 + 65536) rem 65536) end end}, fun (V5) -> ('dn--un--abs_Abs_Bits16'(V5)) end}.
'dn--un--__Fractional_(Num ty)'(V0) -> case V0 of {'Idris.Prelude.Num.MkFractional', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Abs_(Num ty)'(V0) -> case V0 of {'Idris.Prelude.Num.MkAbs', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--/_Fractional_Double'(V0, V1) -> (V0 / V1).
'dn--un---_Neg_Integer'(V0, V1) -> (V0 - V1).
'dn--un---_Neg_Int8'(V0, V1) -> (V0 - V1).
'dn--un---_Neg_Int64'(V0, V1) -> (V0 - V1).
'dn--un---_Neg_Int32'(V0, V1) -> (V0 - V1).
'dn--un---_Neg_Int16'(V0, V1) -> (V0 - V1).
'dn--un---_Neg_Int'(V0, V1) -> ((V0 - V1) rem 9223372036854775808).
'dn--un---_Neg_Double'(V0, V1) -> (V0 - V1).
'dn--un---_Neg_Bits8'(V0, V1) -> ((V0 - V1) rem 256).
'dn--un---_Neg_Bits64'(V0, V1) -> ((V0 - V1) rem 18446744073709551616).
'dn--un---_Neg_Bits32'(V0, V1) -> ((V0 - V1) rem 4294967296).
'dn--un---_Neg_Bits16'(V0, V1) -> ((V0 - V1) rem 65536).
'dn--un--+_Num_Integer'(V0, V1) -> (V0 + V1).
'dn--un--+_Num_Int8'(V0, V1) -> (V0 + V1).
'dn--un--+_Num_Int64'(V0, V1) -> (V0 + V1).
'dn--un--+_Num_Int32'(V0, V1) -> (V0 + V1).
'dn--un--+_Num_Int16'(V0, V1) -> (V0 + V1).
'dn--un--+_Num_Int'(V0, V1) -> ((V0 + V1) rem 9223372036854775808).
'dn--un--+_Num_Double'(V0, V1) -> (V0 + V1).
'dn--un--+_Num_Bits8'(V0, V1) -> ((V0 + V1) rem 256).
'dn--un--+_Num_Bits64'(V0, V1) -> ((V0 + V1) rem 18446744073709551616).
'dn--un--+_Num_Bits32'(V0, V1) -> ((V0 + V1) rem 4294967296).
'dn--un--+_Num_Bits16'(V0, V1) -> ((V0 + V1) rem 65536).
'dn--un--*_Num_Integer'(V0, V1) -> (V0 * V1).
'dn--un--*_Num_Int8'(V0, V1) -> (V0 * V1).
'dn--un--*_Num_Int64'(V0, V1) -> (V0 * V1).
'dn--un--*_Num_Int32'(V0, V1) -> (V0 * V1).
'dn--un--*_Num_Int16'(V0, V1) -> (V0 * V1).
'dn--un--*_Num_Int'(V0, V1) -> ((V0 * V1) rem 9223372036854775808).
'dn--un--*_Num_Double'(V0, V1) -> (V0 * V1).
'dn--un--*_Num_Bits8'(V0, V1) -> ((V0 * V1) rem 256).
'dn--un--*_Num_Bits64'(V0, V1) -> ((V0 * V1) rem 18446744073709551616).
'dn--un--*_Num_Bits32'(V0, V1) -> ((V0 * V1) rem 4294967296).
'dn--un--*_Num_Bits16'(V0, V1) -> ((V0 * V1) rem 65536).
'un--recip'(V0, V1) -> case V0 of {'Idris.Prelude.Num.MkFractional', E0, E1, E2} -> (fun (V2, V3, V4) -> (V4(V1)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--negate'(V0, V1) -> case V0 of {'Idris.Prelude.Num.MkNeg', E0, E1, E2} -> (fun (V2, V3, V4) -> (V3(V1)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--mod'(V0, V1, V2) -> case V0 of {'Idris.Prelude.Num.MkIntegral', E0, E1, E2} -> (fun (V3, V4, V5) -> ((V5(V1))(V2)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--fromInteger'(V0, V1) -> case V0 of {'Idris.Prelude.Num.MkNum', E0, E1, E2} -> (fun (V2, V3, V4) -> (V4(V1)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--div'(V0, V1, V2) -> case V0 of {'Idris.Prelude.Num.MkIntegral', E0, E1, E2} -> (fun (V3, V4, V5) -> ((V4(V1))(V2)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--defaultInteger'() -> {'Idris.Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> V4 end}.
'un--abs'(V0, V1) -> case V0 of {'Idris.Prelude.Num.MkAbs', E0, E1} -> (fun (V2, V3) -> (V3(V1)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--/'(V0, V1, V2) -> case V0 of {'Idris.Prelude.Num.MkFractional', E0, E1, E2} -> (fun (V3, V4, V5) -> ((V4(V1))(V2)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un---'(V0, V1, V2) -> case V0 of {'Idris.Prelude.Num.MkNeg', E0, E1, E2} -> (fun (V3, V4, V5) -> ((V5(V1))(V2)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--+'(V0, V1, V2) -> case V0 of {'Idris.Prelude.Num.MkNum', E0, E1, E2} -> (fun (V3, V4, V5) -> ((V3(V1))(V2)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--*'(V0, V1, V2) -> case V0 of {'Idris.Prelude.Num.MkNum', E0, E1, E2} -> (fun (V3, V4, V5) -> ((V4(V1))(V2)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
