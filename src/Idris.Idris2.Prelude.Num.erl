-module('Idris.Idris2.Prelude.Num').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--abs-8269'/2,
  'case--mod-8154'/3,
  'case--div-8133'/3,
  'case--abs-8080'/2,
  'case--mod-7963'/3,
  'case--div-7942'/3,
  'case--abs-7889'/2,
  'case--mod-7772'/3,
  'case--div-7751'/3,
  'case--abs-7698'/2,
  'case--mod-7581'/3,
  'case--div-7560'/3,
  'case--abs-7507'/2,
  'case--mod-7390'/3,
  'case--div-7369'/3,
  'case--abs-7316'/2,
  'case--mod-7199'/3,
  'case--div-7178'/3,
  'case--abs-7125'/2,
  'case--mod-7008'/3,
  'case--div-6987'/3,
  'case--abs-6934'/2,
  'case--mod-6817'/3,
  'case--div-6796'/3,
  'case--abs-6743'/2,
  'case--mod-6626'/3,
  'case--div-6605'/3,
  'case--abs-6552'/2,
  'case--mod-6433'/3,
  'case--div-6412'/3,
  'case--abs-6359'/2,
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
  'un--subtract'/3,
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
'case--abs-8269'(V0, V1) -> case V1 of 1 -> ('erlang':'-'(V0)); 0 -> V0 end.
'case--mod-8154'(V0, V1, V2) -> case V2 of 0 -> (V1 rem V0); _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:355:3--357:43"/utf8>>)) end.
'case--div-8133'(V0, V1, V2) -> case V2 of 0 -> begin (V3 = (V1 div V0)), begin (V4 = 18446744073709551616), begin (V5 = (V3 rem V4)), case ((V5 * V4) < 0) of 'true' -> (V5 + V4); _ -> V5 end end end end; _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:352:3--354:43"/utf8>>)) end.
'case--abs-8080'(V0, V1) -> case V1 of 1 -> begin (V2 = (0 - V0)), begin (V3 = 18446744073709551616), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end; 0 -> V0 end.
'case--mod-7963'(V0, V1, V2) -> case V2 of 0 -> (V1 rem V0); _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:327:3--329:43"/utf8>>)) end.
'case--div-7942'(V0, V1, V2) -> case V2 of 0 -> begin (V3 = (V1 div V0)), begin (V4 = 4294967296), begin (V5 = (V3 rem V4)), case ((V5 * V4) < 0) of 'true' -> (V5 + V4); _ -> V5 end end end end; _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:324:3--326:43"/utf8>>)) end.
'case--abs-7889'(V0, V1) -> case V1 of 1 -> begin (V2 = (0 - V0)), begin (V3 = 4294967296), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end; 0 -> V0 end.
'case--mod-7772'(V0, V1, V2) -> case V2 of 0 -> (V1 rem V0); _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:299:3--301:43"/utf8>>)) end.
'case--div-7751'(V0, V1, V2) -> case V2 of 0 -> begin (V3 = (V1 div V0)), begin (V4 = 65536), begin (V5 = (V3 rem V4)), case ((V5 * V4) < 0) of 'true' -> (V5 + V4); _ -> V5 end end end end; _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:296:3--298:43"/utf8>>)) end.
'case--abs-7698'(V0, V1) -> case V1 of 1 -> begin (V2 = (0 - V0)), begin (V3 = 65536), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end; 0 -> V0 end.
'case--mod-7581'(V0, V1, V2) -> case V2 of 0 -> (V1 rem V0); _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:271:3--273:42"/utf8>>)) end.
'case--div-7560'(V0, V1, V2) -> case V2 of 0 -> begin (V3 = (V1 div V0)), begin (V4 = 256), begin (V5 = (V3 rem V4)), case ((V5 * V4) < 0) of 'true' -> (V5 + V4); _ -> V5 end end end end; _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:268:3--270:42"/utf8>>)) end.
'case--abs-7507'(V0, V1) -> case V1 of 1 -> begin (V2 = (0 - V0)), begin (V3 = 256), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end; 0 -> V0 end.
'case--mod-7390'(V0, V1, V2) -> case V2 of 0 -> (V1 rem V0); _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:243:3--245:42"/utf8>>)) end.
'case--div-7369'(V0, V1, V2) -> case V2 of 0 -> begin (V3 = (V1 div V0)), case ((V3 band 9223372036854775808) =/= 0) of 'true' -> (V3 bor -9223372036854775808); _ -> (V3 band 9223372036854775807) end end; _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:240:3--242:42"/utf8>>)) end.
'case--abs-7316'(V0, V1) -> case V1 of 1 -> begin (V2 = (0 - V0)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end; 0 -> V0 end.
'case--mod-7199'(V0, V1, V2) -> case V2 of 0 -> (V1 rem V0); _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:215:3--217:42"/utf8>>)) end.
'case--div-7178'(V0, V1, V2) -> case V2 of 0 -> begin (V3 = (V1 div V0)), case ((V3 band 2147483648) =/= 0) of 'true' -> (V3 bor -2147483648); _ -> (V3 band 2147483647) end end; _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:212:3--214:42"/utf8>>)) end.
'case--abs-7125'(V0, V1) -> case V1 of 1 -> begin (V2 = (0 - V0)), case ((V2 band 2147483648) =/= 0) of 'true' -> (V2 bor -2147483648); _ -> (V2 band 2147483647) end end; 0 -> V0 end.
'case--mod-7008'(V0, V1, V2) -> case V2 of 0 -> (V1 rem V0); _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:187:3--189:42"/utf8>>)) end.
'case--div-6987'(V0, V1, V2) -> case V2 of 0 -> begin (V3 = (V1 div V0)), case ((V3 band 32768) =/= 0) of 'true' -> (V3 bor -32768); _ -> (V3 band 32767) end end; _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:184:3--186:42"/utf8>>)) end.
'case--abs-6934'(V0, V1) -> case V1 of 1 -> begin (V2 = (0 - V0)), case ((V2 band 32768) =/= 0) of 'true' -> (V2 bor -32768); _ -> (V2 band 32767) end end; 0 -> V0 end.
'case--mod-6817'(V0, V1, V2) -> case V2 of 0 -> (V1 rem V0); _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:159:3--161:41"/utf8>>)) end.
'case--div-6796'(V0, V1, V2) -> case V2 of 0 -> begin (V3 = (V1 div V0)), case ((V3 band 128) =/= 0) of 'true' -> (V3 bor -128); _ -> (V3 band 127) end end; _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:156:3--158:41"/utf8>>)) end.
'case--abs-6743'(V0, V1) -> case V1 of 1 -> begin (V2 = (0 - V0)), case ((V2 band 128) =/= 0) of 'true' -> (V2 bor -128); _ -> (V2 band 127) end end; 0 -> V0 end.
'case--mod-6626'(V0, V1, V2) -> case V2 of 0 -> (V1 rem V0); _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:131:3--133:40"/utf8>>)) end.
'case--div-6605'(V0, V1, V2) -> case V2 of 0 -> begin (V3 = (V1 div V0)), case ((V3 band 9223372036854775808) =/= 0) of 'true' -> (V3 bor -9223372036854775808); _ -> (V3 band 9223372036854775807) end end; _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:128:3--130:40"/utf8>>)) end.
'case--abs-6552'(V0, V1) -> case V1 of 1 -> begin (V2 = (0 - V0)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end; 0 -> V0 end.
'case--mod-6433'(V0, V1, V2) -> case V2 of 0 -> (V1 rem V0); _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:94:3--96:44"/utf8>>)) end.
'case--div-6412'(V0, V1, V2) -> case V2 of 0 -> (V1 div V0); _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:91:3--93:44"/utf8>>)) end.
'case--abs-6359'(V0, V1) -> case V1 of 1 -> (0 - V0); 0 -> V0 end.
'dn--un--recip_Fractional_Double'(V0) -> (1.0 / V0).
'dn--un--negate_Neg_Integer'(V0) -> (0 - V0).
'dn--un--negate_Neg_Int8'(V0) -> begin (V1 = (0 - V0)), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'dn--un--negate_Neg_Int64'(V0) -> begin (V1 = (0 - V0)), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'dn--un--negate_Neg_Int32'(V0) -> begin (V1 = (0 - V0)), case ((V1 band 2147483648) =/= 0) of 'true' -> (V1 bor -2147483648); _ -> (V1 band 2147483647) end end.
'dn--un--negate_Neg_Int16'(V0) -> begin (V1 = (0 - V0)), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'dn--un--negate_Neg_Int'(V0) -> begin (V1 = (0 - V0)), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'dn--un--negate_Neg_Double'(V0) -> ('erlang':'-'(V0)).
'dn--un--negate_Neg_Bits8'(V0) -> begin (V1 = (0 - V0)), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--negate_Neg_Bits64'(V0) -> begin (V1 = (0 - V0)), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--negate_Neg_Bits32'(V0) -> begin (V1 = (0 - V0)), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--negate_Neg_Bits16'(V0) -> begin (V1 = (0 - V0)), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--mod_Integral_Integer'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Integer'(V1, 0)) of 0 -> (V0 rem V1); _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:94:3--96:44"/utf8>>)) end.
'dn--un--mod_Integral_Int8'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int8'(V1, 0)) of 0 -> (V0 rem V1); _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:159:3--161:41"/utf8>>)) end.
'dn--un--mod_Integral_Int64'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int64'(V1, 0)) of 0 -> (V0 rem V1); _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:243:3--245:42"/utf8>>)) end.
'dn--un--mod_Integral_Int32'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int32'(V1, 0)) of 0 -> (V0 rem V1); _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:215:3--217:42"/utf8>>)) end.
'dn--un--mod_Integral_Int16'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int16'(V1, 0)) of 0 -> (V0 rem V1); _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:187:3--189:42"/utf8>>)) end.
'dn--un--mod_Integral_Int'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(V1, begin (V2 = 0), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end)) of 0 -> (V0 rem V1); _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:131:3--133:40"/utf8>>)) end.
'dn--un--mod_Integral_Bits8'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits8'(V1, 0)) of 0 -> (V0 rem V1); _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:271:3--273:42"/utf8>>)) end.
'dn--un--mod_Integral_Bits64'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits64'(V1, 0)) of 0 -> (V0 rem V1); _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:355:3--357:43"/utf8>>)) end.
'dn--un--mod_Integral_Bits32'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits32'(V1, 0)) of 0 -> (V0 rem V1); _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:327:3--329:43"/utf8>>)) end.
'dn--un--mod_Integral_Bits16'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits16'(V1, 0)) of 0 -> (V0 rem V1); _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in mod at Prelude.Num:299:3--301:43"/utf8>>)) end.
'dn--un--fromInteger_Num_Integer'(V0) -> V0.
'dn--un--fromInteger_Num_Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'dn--un--fromInteger_Num_Int64'(V0) -> begin (V1 = V0), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'dn--un--fromInteger_Num_Int32'(V0) -> begin (V1 = V0), case ((V1 band 2147483648) =/= 0) of 'true' -> (V1 bor -2147483648); _ -> (V1 band 2147483647) end end.
'dn--un--fromInteger_Num_Int16'(V0) -> begin (V1 = V0), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'dn--un--fromInteger_Num_Int'(V0) -> begin (V1 = V0), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'dn--un--fromInteger_Num_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--fromInteger_Num_Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--fromInteger_Num_Bits64'(V0) -> begin (V1 = V0), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--fromInteger_Num_Bits32'(V0) -> begin (V1 = V0), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--fromInteger_Num_Bits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--div_Integral_Integer'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Integer'(V1, 0)) of 0 -> (V0 div V1); _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:91:3--93:44"/utf8>>)) end.
'dn--un--div_Integral_Int8'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int8'(V1, 0)) of 0 -> begin (V2 = (V0 div V1)), case ((V2 band 128) =/= 0) of 'true' -> (V2 bor -128); _ -> (V2 band 127) end end; _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:156:3--158:41"/utf8>>)) end.
'dn--un--div_Integral_Int64'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int64'(V1, 0)) of 0 -> begin (V2 = (V0 div V1)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end; _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:240:3--242:42"/utf8>>)) end.
'dn--un--div_Integral_Int32'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int32'(V1, 0)) of 0 -> begin (V2 = (V0 div V1)), case ((V2 band 2147483648) =/= 0) of 'true' -> (V2 bor -2147483648); _ -> (V2 band 2147483647) end end; _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:212:3--214:42"/utf8>>)) end.
'dn--un--div_Integral_Int16'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int16'(V1, 0)) of 0 -> begin (V2 = (V0 div V1)), case ((V2 band 32768) =/= 0) of 'true' -> (V2 bor -32768); _ -> (V2 band 32767) end end; _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:184:3--186:42"/utf8>>)) end.
'dn--un--div_Integral_Int'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(V1, begin (V2 = 0), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end)) of 0 -> begin (V3 = (V0 div V1)), case ((V3 band 9223372036854775808) =/= 0) of 'true' -> (V3 bor -9223372036854775808); _ -> (V3 band 9223372036854775807) end end; _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:128:3--130:40"/utf8>>)) end.
'dn--un--div_Integral_Bits8'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits8'(V1, 0)) of 0 -> begin (V2 = (V0 div V1)), begin (V3 = 256), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end; _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:268:3--270:42"/utf8>>)) end.
'dn--un--div_Integral_Bits64'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits64'(V1, 0)) of 0 -> begin (V2 = (V0 div V1)), begin (V3 = 18446744073709551616), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end; _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:352:3--354:43"/utf8>>)) end.
'dn--un--div_Integral_Bits32'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits32'(V1, 0)) of 0 -> begin (V2 = (V0 div V1)), begin (V3 = 4294967296), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end; _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:324:3--326:43"/utf8>>)) end.
'dn--un--div_Integral_Bits16'(V0, V1) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits16'(V1, 0)) of 0 -> begin (V2 = (V0 div V1)), begin (V3 = 65536), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end; _ -> (('Idris.Idris2.Builtin':'un--idris_crash'('erased'))(<<"Unhandled input for Prelude.Num.case block in div at Prelude.Num:296:3--298:43"/utf8>>)) end.
'dn--un--abs_Abs_Integer'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Integer'(V0, 0)) of 1 -> (0 - V0); 0 -> V0 end.
'dn--un--abs_Abs_Int8'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Int8'(V0, 0)) of 1 -> begin (V1 = (0 - V0)), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end; 0 -> V0 end.
'dn--un--abs_Abs_Int64'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Int64'(V0, 0)) of 1 -> begin (V1 = (0 - V0)), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end; 0 -> V0 end.
'dn--un--abs_Abs_Int32'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Int32'(V0, 0)) of 1 -> begin (V1 = (0 - V0)), case ((V1 band 2147483648) =/= 0) of 'true' -> (V1 bor -2147483648); _ -> (V1 band 2147483647) end end; 0 -> V0 end.
'dn--un--abs_Abs_Int16'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Int16'(V0, 0)) of 1 -> begin (V1 = (0 - V0)), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end; 0 -> V0 end.
'dn--un--abs_Abs_Int'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Int'(V0, begin (V1 = 0), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end)) of 1 -> begin (V2 = (0 - V0)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end; 0 -> V0 end.
'dn--un--abs_Abs_Double'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Double'(V0, ('erlang':'float'(0)))) of 1 -> ('erlang':'-'(V0)); 0 -> V0 end.
'dn--un--abs_Abs_Bits8'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Bits8'(V0, 0)) of 1 -> begin (V1 = (0 - V0)), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end; 0 -> V0 end.
'dn--un--abs_Abs_Bits64'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Bits64'(V0, 0)) of 1 -> begin (V1 = (0 - V0)), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end; 0 -> V0 end.
'dn--un--abs_Abs_Bits32'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Bits32'(V0, 0)) of 1 -> begin (V1 = (0 - V0)), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end; 0 -> V0 end.
'dn--un--abs_Abs_Bits16'(V0) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Bits16'(V0, 0)) of 1 -> begin (V1 = (0 - V0)), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end; 0 -> V0 end.
'dn--un--__Neg_(Num ty)'(V0) -> case V0 of {'Prelude.Num.MkNeg', V1, V2, V3} -> V1 end.
'dn--un--__Integral_(Num ty)'(V0) -> case V0 of {'Prelude.Num.MkIntegral', V1, V2, V3} -> V1 end.
'dn--un--__Impl_Num_Integer'() -> {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> V4 end}.
'dn--un--__Impl_Num_Int8'() -> {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), case ((V2 band 128) =/= 0) of 'true' -> (V2 bor -128); _ -> (V2 band 127) end end end end, fun (V3) -> fun (V4) -> begin (V5 = (V3 * V4)), case ((V5 band 128) =/= 0) of 'true' -> (V5 bor -128); _ -> (V5 band 127) end end end end, fun (V6) -> begin (V7 = V6), case ((V7 band 128) =/= 0) of 'true' -> (V7 bor -128); _ -> (V7 band 127) end end end}.
'dn--un--__Impl_Num_Int64'() -> {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end end end, fun (V3) -> fun (V4) -> begin (V5 = (V3 * V4)), case ((V5 band 9223372036854775808) =/= 0) of 'true' -> (V5 bor -9223372036854775808); _ -> (V5 band 9223372036854775807) end end end end, fun (V6) -> begin (V7 = V6), case ((V7 band 9223372036854775808) =/= 0) of 'true' -> (V7 bor -9223372036854775808); _ -> (V7 band 9223372036854775807) end end end}.
'dn--un--__Impl_Num_Int32'() -> {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), case ((V2 band 2147483648) =/= 0) of 'true' -> (V2 bor -2147483648); _ -> (V2 band 2147483647) end end end end, fun (V3) -> fun (V4) -> begin (V5 = (V3 * V4)), case ((V5 band 2147483648) =/= 0) of 'true' -> (V5 bor -2147483648); _ -> (V5 band 2147483647) end end end end, fun (V6) -> begin (V7 = V6), case ((V7 band 2147483648) =/= 0) of 'true' -> (V7 bor -2147483648); _ -> (V7 band 2147483647) end end end}.
'dn--un--__Impl_Num_Int16'() -> {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), case ((V2 band 32768) =/= 0) of 'true' -> (V2 bor -32768); _ -> (V2 band 32767) end end end end, fun (V3) -> fun (V4) -> begin (V5 = (V3 * V4)), case ((V5 band 32768) =/= 0) of 'true' -> (V5 bor -32768); _ -> (V5 band 32767) end end end end, fun (V6) -> begin (V7 = V6), case ((V7 band 32768) =/= 0) of 'true' -> (V7 bor -32768); _ -> (V7 band 32767) end end end}.
'dn--un--__Impl_Num_Int'() -> {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end end end, fun (V3) -> fun (V4) -> begin (V5 = (V3 * V4)), case ((V5 band 9223372036854775808) =/= 0) of 'true' -> (V5 bor -9223372036854775808); _ -> (V5 band 9223372036854775807) end end end end, fun (V6) -> begin (V7 = V6), case ((V7 band 9223372036854775808) =/= 0) of 'true' -> (V7 bor -9223372036854775808); _ -> (V7 band 9223372036854775807) end end end}.
'dn--un--__Impl_Num_Double'() -> {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> ('erlang':'float'(V4)) end}.
'dn--un--__Impl_Num_Bits8'() -> {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), begin (V3 = 256), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end end end, fun (V5) -> fun (V6) -> begin (V7 = (V5 * V6)), begin (V8 = 256), begin (V9 = (V7 rem V8)), case ((V9 * V8) < 0) of 'true' -> (V9 + V8); _ -> V9 end end end end end end, fun (V10) -> begin (V11 = V10), begin (V12 = 256), begin (V13 = (V11 rem V12)), case ((V13 * V12) < 0) of 'true' -> (V13 + V12); _ -> V13 end end end end end}.
'dn--un--__Impl_Num_Bits64'() -> {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), begin (V3 = 18446744073709551616), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end end end, fun (V5) -> fun (V6) -> begin (V7 = (V5 * V6)), begin (V8 = 18446744073709551616), begin (V9 = (V7 rem V8)), case ((V9 * V8) < 0) of 'true' -> (V9 + V8); _ -> V9 end end end end end end, fun (V10) -> begin (V11 = V10), begin (V12 = 18446744073709551616), begin (V13 = (V11 rem V12)), case ((V13 * V12) < 0) of 'true' -> (V13 + V12); _ -> V13 end end end end end}.
'dn--un--__Impl_Num_Bits32'() -> {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), begin (V3 = 4294967296), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end end end, fun (V5) -> fun (V6) -> begin (V7 = (V5 * V6)), begin (V8 = 4294967296), begin (V9 = (V7 rem V8)), case ((V9 * V8) < 0) of 'true' -> (V9 + V8); _ -> V9 end end end end end end, fun (V10) -> begin (V11 = V10), begin (V12 = 4294967296), begin (V13 = (V11 rem V12)), case ((V13 * V12) < 0) of 'true' -> (V13 + V12); _ -> V13 end end end end end}.
'dn--un--__Impl_Num_Bits16'() -> {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), begin (V3 = 65536), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end end end, fun (V5) -> fun (V6) -> begin (V7 = (V5 * V6)), begin (V8 = 65536), begin (V9 = (V7 rem V8)), case ((V9 * V8) < 0) of 'true' -> (V9 + V8); _ -> V9 end end end end end end, fun (V10) -> begin (V11 = V10), begin (V12 = 65536), begin (V13 = (V11 rem V12)), case ((V13 * V12) < 0) of 'true' -> (V13 + V12); _ -> V13 end end end end end}.
'dn--un--__Impl_Neg_Integer'() -> {'Prelude.Num.MkNeg', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> V4 end}, fun (V5) -> (0 - V5) end, fun (V6) -> fun (V7) -> (V6 - V7) end end}.
'dn--un--__Impl_Neg_Int8'() -> {'Prelude.Num.MkNeg', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), case ((V2 band 128) =/= 0) of 'true' -> (V2 bor -128); _ -> (V2 band 127) end end end end, fun (V3) -> fun (V4) -> begin (V5 = (V3 * V4)), case ((V5 band 128) =/= 0) of 'true' -> (V5 bor -128); _ -> (V5 band 127) end end end end, fun (V6) -> begin (V7 = V6), case ((V7 band 128) =/= 0) of 'true' -> (V7 bor -128); _ -> (V7 band 127) end end end}, fun (V8) -> begin (V9 = (0 - V8)), case ((V9 band 128) =/= 0) of 'true' -> (V9 bor -128); _ -> (V9 band 127) end end end, fun (V10) -> fun (V11) -> begin (V12 = (V10 - V11)), case ((V12 band 128) =/= 0) of 'true' -> (V12 bor -128); _ -> (V12 band 127) end end end end}.
'dn--un--__Impl_Neg_Int64'() -> {'Prelude.Num.MkNeg', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end end end, fun (V3) -> fun (V4) -> begin (V5 = (V3 * V4)), case ((V5 band 9223372036854775808) =/= 0) of 'true' -> (V5 bor -9223372036854775808); _ -> (V5 band 9223372036854775807) end end end end, fun (V6) -> begin (V7 = V6), case ((V7 band 9223372036854775808) =/= 0) of 'true' -> (V7 bor -9223372036854775808); _ -> (V7 band 9223372036854775807) end end end}, fun (V8) -> begin (V9 = (0 - V8)), case ((V9 band 9223372036854775808) =/= 0) of 'true' -> (V9 bor -9223372036854775808); _ -> (V9 band 9223372036854775807) end end end, fun (V10) -> fun (V11) -> begin (V12 = (V10 - V11)), case ((V12 band 9223372036854775808) =/= 0) of 'true' -> (V12 bor -9223372036854775808); _ -> (V12 band 9223372036854775807) end end end end}.
'dn--un--__Impl_Neg_Int32'() -> {'Prelude.Num.MkNeg', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), case ((V2 band 2147483648) =/= 0) of 'true' -> (V2 bor -2147483648); _ -> (V2 band 2147483647) end end end end, fun (V3) -> fun (V4) -> begin (V5 = (V3 * V4)), case ((V5 band 2147483648) =/= 0) of 'true' -> (V5 bor -2147483648); _ -> (V5 band 2147483647) end end end end, fun (V6) -> begin (V7 = V6), case ((V7 band 2147483648) =/= 0) of 'true' -> (V7 bor -2147483648); _ -> (V7 band 2147483647) end end end}, fun (V8) -> begin (V9 = (0 - V8)), case ((V9 band 2147483648) =/= 0) of 'true' -> (V9 bor -2147483648); _ -> (V9 band 2147483647) end end end, fun (V10) -> fun (V11) -> begin (V12 = (V10 - V11)), case ((V12 band 2147483648) =/= 0) of 'true' -> (V12 bor -2147483648); _ -> (V12 band 2147483647) end end end end}.
'dn--un--__Impl_Neg_Int16'() -> {'Prelude.Num.MkNeg', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), case ((V2 band 32768) =/= 0) of 'true' -> (V2 bor -32768); _ -> (V2 band 32767) end end end end, fun (V3) -> fun (V4) -> begin (V5 = (V3 * V4)), case ((V5 band 32768) =/= 0) of 'true' -> (V5 bor -32768); _ -> (V5 band 32767) end end end end, fun (V6) -> begin (V7 = V6), case ((V7 band 32768) =/= 0) of 'true' -> (V7 bor -32768); _ -> (V7 band 32767) end end end}, fun (V8) -> begin (V9 = (0 - V8)), case ((V9 band 32768) =/= 0) of 'true' -> (V9 bor -32768); _ -> (V9 band 32767) end end end, fun (V10) -> fun (V11) -> begin (V12 = (V10 - V11)), case ((V12 band 32768) =/= 0) of 'true' -> (V12 bor -32768); _ -> (V12 band 32767) end end end end}.
'dn--un--__Impl_Neg_Int'() -> {'Prelude.Num.MkNeg', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end end end, fun (V3) -> fun (V4) -> begin (V5 = (V3 * V4)), case ((V5 band 9223372036854775808) =/= 0) of 'true' -> (V5 bor -9223372036854775808); _ -> (V5 band 9223372036854775807) end end end end, fun (V6) -> begin (V7 = V6), case ((V7 band 9223372036854775808) =/= 0) of 'true' -> (V7 bor -9223372036854775808); _ -> (V7 band 9223372036854775807) end end end}, fun (V8) -> begin (V9 = (0 - V8)), case ((V9 band 9223372036854775808) =/= 0) of 'true' -> (V9 bor -9223372036854775808); _ -> (V9 band 9223372036854775807) end end end, fun (V10) -> fun (V11) -> begin (V12 = (V10 - V11)), case ((V12 band 9223372036854775808) =/= 0) of 'true' -> (V12 bor -9223372036854775808); _ -> (V12 band 9223372036854775807) end end end end}.
'dn--un--__Impl_Neg_Double'() -> {'Prelude.Num.MkNeg', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> ('erlang':'float'(V4)) end}, fun (V5) -> ('erlang':'-'(V5)) end, fun (V6) -> fun (V7) -> (V6 - V7) end end}.
'dn--un--__Impl_Neg_Bits8'() -> {'Prelude.Num.MkNeg', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), begin (V3 = 256), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end end end, fun (V5) -> fun (V6) -> begin (V7 = (V5 * V6)), begin (V8 = 256), begin (V9 = (V7 rem V8)), case ((V9 * V8) < 0) of 'true' -> (V9 + V8); _ -> V9 end end end end end end, fun (V10) -> begin (V11 = V10), begin (V12 = 256), begin (V13 = (V11 rem V12)), case ((V13 * V12) < 0) of 'true' -> (V13 + V12); _ -> V13 end end end end end}, fun (V14) -> begin (V15 = (0 - V14)), begin (V16 = 256), begin (V17 = (V15 rem V16)), case ((V17 * V16) < 0) of 'true' -> (V17 + V16); _ -> V17 end end end end end, fun (V18) -> fun (V19) -> begin (V20 = (V18 - V19)), begin (V21 = 256), begin (V22 = (V20 rem V21)), case ((V22 * V21) < 0) of 'true' -> (V22 + V21); _ -> V22 end end end end end end}.
'dn--un--__Impl_Neg_Bits64'() -> {'Prelude.Num.MkNeg', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), begin (V3 = 18446744073709551616), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end end end, fun (V5) -> fun (V6) -> begin (V7 = (V5 * V6)), begin (V8 = 18446744073709551616), begin (V9 = (V7 rem V8)), case ((V9 * V8) < 0) of 'true' -> (V9 + V8); _ -> V9 end end end end end end, fun (V10) -> begin (V11 = V10), begin (V12 = 18446744073709551616), begin (V13 = (V11 rem V12)), case ((V13 * V12) < 0) of 'true' -> (V13 + V12); _ -> V13 end end end end end}, fun (V14) -> begin (V15 = (0 - V14)), begin (V16 = 18446744073709551616), begin (V17 = (V15 rem V16)), case ((V17 * V16) < 0) of 'true' -> (V17 + V16); _ -> V17 end end end end end, fun (V18) -> fun (V19) -> begin (V20 = (V18 - V19)), begin (V21 = 18446744073709551616), begin (V22 = (V20 rem V21)), case ((V22 * V21) < 0) of 'true' -> (V22 + V21); _ -> V22 end end end end end end}.
'dn--un--__Impl_Neg_Bits32'() -> {'Prelude.Num.MkNeg', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), begin (V3 = 4294967296), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end end end, fun (V5) -> fun (V6) -> begin (V7 = (V5 * V6)), begin (V8 = 4294967296), begin (V9 = (V7 rem V8)), case ((V9 * V8) < 0) of 'true' -> (V9 + V8); _ -> V9 end end end end end end, fun (V10) -> begin (V11 = V10), begin (V12 = 4294967296), begin (V13 = (V11 rem V12)), case ((V13 * V12) < 0) of 'true' -> (V13 + V12); _ -> V13 end end end end end}, fun (V14) -> begin (V15 = (0 - V14)), begin (V16 = 4294967296), begin (V17 = (V15 rem V16)), case ((V17 * V16) < 0) of 'true' -> (V17 + V16); _ -> V17 end end end end end, fun (V18) -> fun (V19) -> begin (V20 = (V18 - V19)), begin (V21 = 4294967296), begin (V22 = (V20 rem V21)), case ((V22 * V21) < 0) of 'true' -> (V22 + V21); _ -> V22 end end end end end end}.
'dn--un--__Impl_Neg_Bits16'() -> {'Prelude.Num.MkNeg', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), begin (V3 = 65536), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end end end, fun (V5) -> fun (V6) -> begin (V7 = (V5 * V6)), begin (V8 = 65536), begin (V9 = (V7 rem V8)), case ((V9 * V8) < 0) of 'true' -> (V9 + V8); _ -> V9 end end end end end end, fun (V10) -> begin (V11 = V10), begin (V12 = 65536), begin (V13 = (V11 rem V12)), case ((V13 * V12) < 0) of 'true' -> (V13 + V12); _ -> V13 end end end end end}, fun (V14) -> begin (V15 = (0 - V14)), begin (V16 = 65536), begin (V17 = (V15 rem V16)), case ((V17 * V16) < 0) of 'true' -> (V17 + V16); _ -> V17 end end end end end, fun (V18) -> fun (V19) -> begin (V20 = (V18 - V19)), begin (V21 = 65536), begin (V22 = (V20 rem V21)), case ((V22 * V21) < 0) of 'true' -> (V22 + V21); _ -> V22 end end end end end end}.
'dn--un--__Impl_Integral_Integer'() -> {'Prelude.Num.MkIntegral', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> V4 end}, fun (V5) -> fun (V6) -> ('dn--un--div_Integral_Integer'(V5, V6)) end end, fun (V7) -> fun (V8) -> ('dn--un--mod_Integral_Integer'(V7, V8)) end end}.
'dn--un--__Impl_Integral_Int8'() -> {'Prelude.Num.MkIntegral', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), case ((V2 band 128) =/= 0) of 'true' -> (V2 bor -128); _ -> (V2 band 127) end end end end, fun (V3) -> fun (V4) -> begin (V5 = (V3 * V4)), case ((V5 band 128) =/= 0) of 'true' -> (V5 bor -128); _ -> (V5 band 127) end end end end, fun (V6) -> begin (V7 = V6), case ((V7 band 128) =/= 0) of 'true' -> (V7 bor -128); _ -> (V7 band 127) end end end}, fun (V8) -> fun (V9) -> ('dn--un--div_Integral_Int8'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--mod_Integral_Int8'(V10, V11)) end end}.
'dn--un--__Impl_Integral_Int64'() -> {'Prelude.Num.MkIntegral', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end end end, fun (V3) -> fun (V4) -> begin (V5 = (V3 * V4)), case ((V5 band 9223372036854775808) =/= 0) of 'true' -> (V5 bor -9223372036854775808); _ -> (V5 band 9223372036854775807) end end end end, fun (V6) -> begin (V7 = V6), case ((V7 band 9223372036854775808) =/= 0) of 'true' -> (V7 bor -9223372036854775808); _ -> (V7 band 9223372036854775807) end end end}, fun (V8) -> fun (V9) -> ('dn--un--div_Integral_Int64'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--mod_Integral_Int64'(V10, V11)) end end}.
'dn--un--__Impl_Integral_Int32'() -> {'Prelude.Num.MkIntegral', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), case ((V2 band 2147483648) =/= 0) of 'true' -> (V2 bor -2147483648); _ -> (V2 band 2147483647) end end end end, fun (V3) -> fun (V4) -> begin (V5 = (V3 * V4)), case ((V5 band 2147483648) =/= 0) of 'true' -> (V5 bor -2147483648); _ -> (V5 band 2147483647) end end end end, fun (V6) -> begin (V7 = V6), case ((V7 band 2147483648) =/= 0) of 'true' -> (V7 bor -2147483648); _ -> (V7 band 2147483647) end end end}, fun (V8) -> fun (V9) -> ('dn--un--div_Integral_Int32'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--mod_Integral_Int32'(V10, V11)) end end}.
'dn--un--__Impl_Integral_Int16'() -> {'Prelude.Num.MkIntegral', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), case ((V2 band 32768) =/= 0) of 'true' -> (V2 bor -32768); _ -> (V2 band 32767) end end end end, fun (V3) -> fun (V4) -> begin (V5 = (V3 * V4)), case ((V5 band 32768) =/= 0) of 'true' -> (V5 bor -32768); _ -> (V5 band 32767) end end end end, fun (V6) -> begin (V7 = V6), case ((V7 band 32768) =/= 0) of 'true' -> (V7 bor -32768); _ -> (V7 band 32767) end end end}, fun (V8) -> fun (V9) -> ('dn--un--div_Integral_Int16'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--mod_Integral_Int16'(V10, V11)) end end}.
'dn--un--__Impl_Integral_Int'() -> {'Prelude.Num.MkIntegral', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end end end, fun (V3) -> fun (V4) -> begin (V5 = (V3 * V4)), case ((V5 band 9223372036854775808) =/= 0) of 'true' -> (V5 bor -9223372036854775808); _ -> (V5 band 9223372036854775807) end end end end, fun (V6) -> begin (V7 = V6), case ((V7 band 9223372036854775808) =/= 0) of 'true' -> (V7 bor -9223372036854775808); _ -> (V7 band 9223372036854775807) end end end}, fun (V8) -> fun (V9) -> ('dn--un--div_Integral_Int'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--mod_Integral_Int'(V10, V11)) end end}.
'dn--un--__Impl_Integral_Bits8'() -> {'Prelude.Num.MkIntegral', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), begin (V3 = 256), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end end end, fun (V5) -> fun (V6) -> begin (V7 = (V5 * V6)), begin (V8 = 256), begin (V9 = (V7 rem V8)), case ((V9 * V8) < 0) of 'true' -> (V9 + V8); _ -> V9 end end end end end end, fun (V10) -> begin (V11 = V10), begin (V12 = 256), begin (V13 = (V11 rem V12)), case ((V13 * V12) < 0) of 'true' -> (V13 + V12); _ -> V13 end end end end end}, fun (V14) -> fun (V15) -> ('dn--un--div_Integral_Bits8'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--mod_Integral_Bits8'(V16, V17)) end end}.
'dn--un--__Impl_Integral_Bits64'() -> {'Prelude.Num.MkIntegral', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), begin (V3 = 18446744073709551616), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end end end, fun (V5) -> fun (V6) -> begin (V7 = (V5 * V6)), begin (V8 = 18446744073709551616), begin (V9 = (V7 rem V8)), case ((V9 * V8) < 0) of 'true' -> (V9 + V8); _ -> V9 end end end end end end, fun (V10) -> begin (V11 = V10), begin (V12 = 18446744073709551616), begin (V13 = (V11 rem V12)), case ((V13 * V12) < 0) of 'true' -> (V13 + V12); _ -> V13 end end end end end}, fun (V14) -> fun (V15) -> ('dn--un--div_Integral_Bits64'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--mod_Integral_Bits64'(V16, V17)) end end}.
'dn--un--__Impl_Integral_Bits32'() -> {'Prelude.Num.MkIntegral', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), begin (V3 = 4294967296), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end end end, fun (V5) -> fun (V6) -> begin (V7 = (V5 * V6)), begin (V8 = 4294967296), begin (V9 = (V7 rem V8)), case ((V9 * V8) < 0) of 'true' -> (V9 + V8); _ -> V9 end end end end end end, fun (V10) -> begin (V11 = V10), begin (V12 = 4294967296), begin (V13 = (V11 rem V12)), case ((V13 * V12) < 0) of 'true' -> (V13 + V12); _ -> V13 end end end end end}, fun (V14) -> fun (V15) -> ('dn--un--div_Integral_Bits32'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--mod_Integral_Bits32'(V16, V17)) end end}.
'dn--un--__Impl_Integral_Bits16'() -> {'Prelude.Num.MkIntegral', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), begin (V3 = 65536), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end end end, fun (V5) -> fun (V6) -> begin (V7 = (V5 * V6)), begin (V8 = 65536), begin (V9 = (V7 rem V8)), case ((V9 * V8) < 0) of 'true' -> (V9 + V8); _ -> V9 end end end end end end, fun (V10) -> begin (V11 = V10), begin (V12 = 65536), begin (V13 = (V11 rem V12)), case ((V13 * V12) < 0) of 'true' -> (V13 + V12); _ -> V13 end end end end end}, fun (V14) -> fun (V15) -> ('dn--un--div_Integral_Bits16'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--mod_Integral_Bits16'(V16, V17)) end end}.
'dn--un--__Impl_Fractional_Double'() -> {'Prelude.Num.MkFractional', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> ('erlang':'float'(V4)) end}, fun (V5) -> fun (V6) -> (V5 / V6) end end, fun (V7) -> ('dn--un--recip_Fractional_Double'(V7)) end}.
'dn--un--__Impl_Abs_Integer'() -> {'Prelude.Num.MkAbs', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> V4 end}, fun (V5) -> ('dn--un--abs_Abs_Integer'(V5)) end}.
'dn--un--__Impl_Abs_Int8'() -> {'Prelude.Num.MkAbs', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), case ((V2 band 128) =/= 0) of 'true' -> (V2 bor -128); _ -> (V2 band 127) end end end end, fun (V3) -> fun (V4) -> begin (V5 = (V3 * V4)), case ((V5 band 128) =/= 0) of 'true' -> (V5 bor -128); _ -> (V5 band 127) end end end end, fun (V6) -> begin (V7 = V6), case ((V7 band 128) =/= 0) of 'true' -> (V7 bor -128); _ -> (V7 band 127) end end end}, fun (V8) -> ('dn--un--abs_Abs_Int8'(V8)) end}.
'dn--un--__Impl_Abs_Int64'() -> {'Prelude.Num.MkAbs', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end end end, fun (V3) -> fun (V4) -> begin (V5 = (V3 * V4)), case ((V5 band 9223372036854775808) =/= 0) of 'true' -> (V5 bor -9223372036854775808); _ -> (V5 band 9223372036854775807) end end end end, fun (V6) -> begin (V7 = V6), case ((V7 band 9223372036854775808) =/= 0) of 'true' -> (V7 bor -9223372036854775808); _ -> (V7 band 9223372036854775807) end end end}, fun (V8) -> ('dn--un--abs_Abs_Int64'(V8)) end}.
'dn--un--__Impl_Abs_Int32'() -> {'Prelude.Num.MkAbs', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), case ((V2 band 2147483648) =/= 0) of 'true' -> (V2 bor -2147483648); _ -> (V2 band 2147483647) end end end end, fun (V3) -> fun (V4) -> begin (V5 = (V3 * V4)), case ((V5 band 2147483648) =/= 0) of 'true' -> (V5 bor -2147483648); _ -> (V5 band 2147483647) end end end end, fun (V6) -> begin (V7 = V6), case ((V7 band 2147483648) =/= 0) of 'true' -> (V7 bor -2147483648); _ -> (V7 band 2147483647) end end end}, fun (V8) -> ('dn--un--abs_Abs_Int32'(V8)) end}.
'dn--un--__Impl_Abs_Int16'() -> {'Prelude.Num.MkAbs', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), case ((V2 band 32768) =/= 0) of 'true' -> (V2 bor -32768); _ -> (V2 band 32767) end end end end, fun (V3) -> fun (V4) -> begin (V5 = (V3 * V4)), case ((V5 band 32768) =/= 0) of 'true' -> (V5 bor -32768); _ -> (V5 band 32767) end end end end, fun (V6) -> begin (V7 = V6), case ((V7 band 32768) =/= 0) of 'true' -> (V7 bor -32768); _ -> (V7 band 32767) end end end}, fun (V8) -> ('dn--un--abs_Abs_Int16'(V8)) end}.
'dn--un--__Impl_Abs_Int'() -> {'Prelude.Num.MkAbs', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end end end, fun (V3) -> fun (V4) -> begin (V5 = (V3 * V4)), case ((V5 band 9223372036854775808) =/= 0) of 'true' -> (V5 bor -9223372036854775808); _ -> (V5 band 9223372036854775807) end end end end, fun (V6) -> begin (V7 = V6), case ((V7 band 9223372036854775808) =/= 0) of 'true' -> (V7 bor -9223372036854775808); _ -> (V7 band 9223372036854775807) end end end}, fun (V8) -> ('dn--un--abs_Abs_Int'(V8)) end}.
'dn--un--__Impl_Abs_Double'() -> {'Prelude.Num.MkAbs', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> ('erlang':'float'(V4)) end}, fun (V5) -> ('dn--un--abs_Abs_Double'(V5)) end}.
'dn--un--__Impl_Abs_Bits8'() -> {'Prelude.Num.MkAbs', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), begin (V3 = 256), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end end end, fun (V5) -> fun (V6) -> begin (V7 = (V5 * V6)), begin (V8 = 256), begin (V9 = (V7 rem V8)), case ((V9 * V8) < 0) of 'true' -> (V9 + V8); _ -> V9 end end end end end end, fun (V10) -> begin (V11 = V10), begin (V12 = 256), begin (V13 = (V11 rem V12)), case ((V13 * V12) < 0) of 'true' -> (V13 + V12); _ -> V13 end end end end end}, fun (V14) -> ('dn--un--abs_Abs_Bits8'(V14)) end}.
'dn--un--__Impl_Abs_Bits64'() -> {'Prelude.Num.MkAbs', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), begin (V3 = 18446744073709551616), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end end end, fun (V5) -> fun (V6) -> begin (V7 = (V5 * V6)), begin (V8 = 18446744073709551616), begin (V9 = (V7 rem V8)), case ((V9 * V8) < 0) of 'true' -> (V9 + V8); _ -> V9 end end end end end end, fun (V10) -> begin (V11 = V10), begin (V12 = 18446744073709551616), begin (V13 = (V11 rem V12)), case ((V13 * V12) < 0) of 'true' -> (V13 + V12); _ -> V13 end end end end end}, fun (V14) -> ('dn--un--abs_Abs_Bits64'(V14)) end}.
'dn--un--__Impl_Abs_Bits32'() -> {'Prelude.Num.MkAbs', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), begin (V3 = 4294967296), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end end end, fun (V5) -> fun (V6) -> begin (V7 = (V5 * V6)), begin (V8 = 4294967296), begin (V9 = (V7 rem V8)), case ((V9 * V8) < 0) of 'true' -> (V9 + V8); _ -> V9 end end end end end end, fun (V10) -> begin (V11 = V10), begin (V12 = 4294967296), begin (V13 = (V11 rem V12)), case ((V13 * V12) < 0) of 'true' -> (V13 + V12); _ -> V13 end end end end end}, fun (V14) -> ('dn--un--abs_Abs_Bits32'(V14)) end}.
'dn--un--__Impl_Abs_Bits16'() -> {'Prelude.Num.MkAbs', {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> begin (V2 = (V0 + V1)), begin (V3 = 65536), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end end end, fun (V5) -> fun (V6) -> begin (V7 = (V5 * V6)), begin (V8 = 65536), begin (V9 = (V7 rem V8)), case ((V9 * V8) < 0) of 'true' -> (V9 + V8); _ -> V9 end end end end end end, fun (V10) -> begin (V11 = V10), begin (V12 = 65536), begin (V13 = (V11 rem V12)), case ((V13 * V12) < 0) of 'true' -> (V13 + V12); _ -> V13 end end end end end}, fun (V14) -> ('dn--un--abs_Abs_Bits16'(V14)) end}.
'dn--un--__Fractional_(Num ty)'(V0) -> case V0 of {'Prelude.Num.MkFractional', V1, V2, V3} -> V1 end.
'dn--un--__Abs_(Num ty)'(V0) -> case V0 of {'Prelude.Num.MkAbs', V1, V2} -> V1 end.
'dn--un--/_Fractional_Double'(V0, V1) -> (V0 / V1).
'dn--un---_Neg_Integer'(V0, V1) -> (V0 - V1).
'dn--un---_Neg_Int8'(V0, V1) -> begin (V2 = (V0 - V1)), case ((V2 band 128) =/= 0) of 'true' -> (V2 bor -128); _ -> (V2 band 127) end end.
'dn--un---_Neg_Int64'(V0, V1) -> begin (V2 = (V0 - V1)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end.
'dn--un---_Neg_Int32'(V0, V1) -> begin (V2 = (V0 - V1)), case ((V2 band 2147483648) =/= 0) of 'true' -> (V2 bor -2147483648); _ -> (V2 band 2147483647) end end.
'dn--un---_Neg_Int16'(V0, V1) -> begin (V2 = (V0 - V1)), case ((V2 band 32768) =/= 0) of 'true' -> (V2 bor -32768); _ -> (V2 band 32767) end end.
'dn--un---_Neg_Int'(V0, V1) -> begin (V2 = (V0 - V1)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end.
'dn--un---_Neg_Double'(V0, V1) -> (V0 - V1).
'dn--un---_Neg_Bits8'(V0, V1) -> begin (V2 = (V0 - V1)), begin (V3 = 256), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'dn--un---_Neg_Bits64'(V0, V1) -> begin (V2 = (V0 - V1)), begin (V3 = 18446744073709551616), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'dn--un---_Neg_Bits32'(V0, V1) -> begin (V2 = (V0 - V1)), begin (V3 = 4294967296), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'dn--un---_Neg_Bits16'(V0, V1) -> begin (V2 = (V0 - V1)), begin (V3 = 65536), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'dn--un--+_Num_Integer'(V0, V1) -> (V0 + V1).
'dn--un--+_Num_Int8'(V0, V1) -> begin (V2 = (V0 + V1)), case ((V2 band 128) =/= 0) of 'true' -> (V2 bor -128); _ -> (V2 band 127) end end.
'dn--un--+_Num_Int64'(V0, V1) -> begin (V2 = (V0 + V1)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end.
'dn--un--+_Num_Int32'(V0, V1) -> begin (V2 = (V0 + V1)), case ((V2 band 2147483648) =/= 0) of 'true' -> (V2 bor -2147483648); _ -> (V2 band 2147483647) end end.
'dn--un--+_Num_Int16'(V0, V1) -> begin (V2 = (V0 + V1)), case ((V2 band 32768) =/= 0) of 'true' -> (V2 bor -32768); _ -> (V2 band 32767) end end.
'dn--un--+_Num_Int'(V0, V1) -> begin (V2 = (V0 + V1)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end.
'dn--un--+_Num_Double'(V0, V1) -> (V0 + V1).
'dn--un--+_Num_Bits8'(V0, V1) -> begin (V2 = (V0 + V1)), begin (V3 = 256), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'dn--un--+_Num_Bits64'(V0, V1) -> begin (V2 = (V0 + V1)), begin (V3 = 18446744073709551616), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'dn--un--+_Num_Bits32'(V0, V1) -> begin (V2 = (V0 + V1)), begin (V3 = 4294967296), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'dn--un--+_Num_Bits16'(V0, V1) -> begin (V2 = (V0 + V1)), begin (V3 = 65536), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'dn--un--*_Num_Integer'(V0, V1) -> (V0 * V1).
'dn--un--*_Num_Int8'(V0, V1) -> begin (V2 = (V0 * V1)), case ((V2 band 128) =/= 0) of 'true' -> (V2 bor -128); _ -> (V2 band 127) end end.
'dn--un--*_Num_Int64'(V0, V1) -> begin (V2 = (V0 * V1)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end.
'dn--un--*_Num_Int32'(V0, V1) -> begin (V2 = (V0 * V1)), case ((V2 band 2147483648) =/= 0) of 'true' -> (V2 bor -2147483648); _ -> (V2 band 2147483647) end end.
'dn--un--*_Num_Int16'(V0, V1) -> begin (V2 = (V0 * V1)), case ((V2 band 32768) =/= 0) of 'true' -> (V2 bor -32768); _ -> (V2 band 32767) end end.
'dn--un--*_Num_Int'(V0, V1) -> begin (V2 = (V0 * V1)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end.
'dn--un--*_Num_Double'(V0, V1) -> (V0 * V1).
'dn--un--*_Num_Bits8'(V0, V1) -> begin (V2 = (V0 * V1)), begin (V3 = 256), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'dn--un--*_Num_Bits64'(V0, V1) -> begin (V2 = (V0 * V1)), begin (V3 = 18446744073709551616), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'dn--un--*_Num_Bits32'(V0, V1) -> begin (V2 = (V0 * V1)), begin (V3 = 4294967296), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'dn--un--*_Num_Bits16'(V0, V1) -> begin (V2 = (V0 * V1)), begin (V3 = 65536), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'un--subtract'(V0, V1, V2) -> case V0 of {'Prelude.Num.MkNeg', V3, V4, V5} -> ((V5(V1))(V2)) end.
'un--recip'(V0, V1) -> case V0 of {'Prelude.Num.MkFractional', V2, V3, V4} -> (V4(V1)) end.
'un--negate'(V0, V1) -> case V0 of {'Prelude.Num.MkNeg', V2, V3, V4} -> (V3(V1)) end.
'un--mod'(V0, V1, V2) -> case V0 of {'Prelude.Num.MkIntegral', V3, V4, V5} -> ((V5(V1))(V2)) end.
'un--fromInteger'(V0, V1) -> case V0 of {'Prelude.Num.MkNum', V2, V3, V4} -> (V4(V1)) end.
'un--div'(V0, V1, V2) -> case V0 of {'Prelude.Num.MkIntegral', V3, V4, V5} -> ((V4(V1))(V2)) end.
'un--defaultInteger'() -> {'Prelude.Num.MkNum', fun (V0) -> fun (V1) -> (V0 + V1) end end, fun (V2) -> fun (V3) -> (V2 * V3) end end, fun (V4) -> V4 end}.
'un--abs'(V0, V1) -> case V0 of {'Prelude.Num.MkAbs', V2, V3} -> (V3(V1)) end.
'un--/'(V0, V1, V2) -> case V0 of {'Prelude.Num.MkFractional', V3, V4, V5} -> ((V4(V1))(V2)) end.
'un---'(V0, V1, V2) -> case V0 of {'Prelude.Num.MkNeg', V3, V4, V5} -> ((V5(V1))(V2)) end.
'un--+'(V0, V1, V2) -> case V0 of {'Prelude.Num.MkNum', V3, V4, V5} -> ((V3(V1))(V2)) end.
'un--*'(V0, V1, V2) -> case V0 of {'Prelude.Num.MkNum', V3, V4, V5} -> ((V4(V1))(V2)) end.
