-module('Idris.Idris2').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--prim__add_Int'/2,
  'un--prim__add_Int8'/2,
  'un--prim__add_Int16'/2,
  'un--prim__add_Int32'/2,
  'un--prim__add_Int64'/2,
  'un--prim__add_Integer'/2,
  'un--prim__add_Bits8'/2,
  'un--prim__add_Bits16'/2,
  'un--prim__add_Bits32'/2,
  'un--prim__add_Bits64'/2,
  'un--prim__add_Double'/2,
  'un--prim__sub_Int'/2,
  'un--prim__sub_Int8'/2,
  'un--prim__sub_Int16'/2,
  'un--prim__sub_Int32'/2,
  'un--prim__sub_Int64'/2,
  'un--prim__sub_Integer'/2,
  'un--prim__sub_Bits8'/2,
  'un--prim__sub_Bits16'/2,
  'un--prim__sub_Bits32'/2,
  'un--prim__sub_Bits64'/2,
  'un--prim__sub_Double'/2,
  'un--prim__mul_Int'/2,
  'un--prim__mul_Int8'/2,
  'un--prim__mul_Int16'/2,
  'un--prim__mul_Int32'/2,
  'un--prim__mul_Int64'/2,
  'un--prim__mul_Integer'/2,
  'un--prim__mul_Bits8'/2,
  'un--prim__mul_Bits16'/2,
  'un--prim__mul_Bits32'/2,
  'un--prim__mul_Bits64'/2,
  'un--prim__mul_Double'/2,
  'un--prim__negate_Int'/1,
  'un--prim__negate_Int8'/1,
  'un--prim__negate_Int16'/1,
  'un--prim__negate_Int32'/1,
  'un--prim__negate_Int64'/1,
  'un--prim__negate_Integer'/1,
  'un--prim__negate_Bits8'/1,
  'un--prim__negate_Bits16'/1,
  'un--prim__negate_Bits32'/1,
  'un--prim__negate_Bits64'/1,
  'un--prim__negate_Double'/1,
  'un--prim__div_Int'/2,
  'un--prim__div_Int8'/2,
  'un--prim__div_Int16'/2,
  'un--prim__div_Int32'/2,
  'un--prim__div_Int64'/2,
  'un--prim__div_Integer'/2,
  'un--prim__div_Bits8'/2,
  'un--prim__div_Bits16'/2,
  'un--prim__div_Bits32'/2,
  'un--prim__div_Bits64'/2,
  'un--prim__div_Double'/2,
  'un--prim__mod_Int'/2,
  'un--prim__mod_Int8'/2,
  'un--prim__mod_Int16'/2,
  'un--prim__mod_Int32'/2,
  'un--prim__mod_Int64'/2,
  'un--prim__mod_Integer'/2,
  'un--prim__mod_Bits8'/2,
  'un--prim__mod_Bits16'/2,
  'un--prim__mod_Bits32'/2,
  'un--prim__mod_Bits64'/2,
  'un--prim__shl_Int'/2,
  'un--prim__shl_Int8'/2,
  'un--prim__shl_Int16'/2,
  'un--prim__shl_Int32'/2,
  'un--prim__shl_Int64'/2,
  'un--prim__shl_Integer'/2,
  'un--prim__shl_Bits8'/2,
  'un--prim__shl_Bits16'/2,
  'un--prim__shl_Bits32'/2,
  'un--prim__shl_Bits64'/2,
  'un--prim__shr_Int'/2,
  'un--prim__shr_Int8'/2,
  'un--prim__shr_Int16'/2,
  'un--prim__shr_Int32'/2,
  'un--prim__shr_Int64'/2,
  'un--prim__shr_Integer'/2,
  'un--prim__shr_Bits8'/2,
  'un--prim__shr_Bits16'/2,
  'un--prim__shr_Bits32'/2,
  'un--prim__shr_Bits64'/2,
  'un--prim__and_Int'/2,
  'un--prim__and_Int8'/2,
  'un--prim__and_Int16'/2,
  'un--prim__and_Int32'/2,
  'un--prim__and_Int64'/2,
  'un--prim__and_Integer'/2,
  'un--prim__and_Bits8'/2,
  'un--prim__and_Bits16'/2,
  'un--prim__and_Bits32'/2,
  'un--prim__and_Bits64'/2,
  'un--prim__or_Int'/2,
  'un--prim__or_Int8'/2,
  'un--prim__or_Int16'/2,
  'un--prim__or_Int32'/2,
  'un--prim__or_Int64'/2,
  'un--prim__or_Integer'/2,
  'un--prim__or_Bits8'/2,
  'un--prim__or_Bits16'/2,
  'un--prim__or_Bits32'/2,
  'un--prim__or_Bits64'/2,
  'un--prim__xor_Int'/2,
  'un--prim__xor_Int8'/2,
  'un--prim__xor_Int16'/2,
  'un--prim__xor_Int32'/2,
  'un--prim__xor_Int64'/2,
  'un--prim__xor_Integer'/2,
  'un--prim__xor_Bits8'/2,
  'un--prim__xor_Bits16'/2,
  'un--prim__xor_Bits32'/2,
  'un--prim__xor_Bits64'/2,
  'un--prim__lt_Int'/2,
  'un--prim__lt_Int8'/2,
  'un--prim__lt_Int16'/2,
  'un--prim__lt_Int32'/2,
  'un--prim__lt_Int64'/2,
  'un--prim__lt_Integer'/2,
  'un--prim__lt_Bits8'/2,
  'un--prim__lt_Bits16'/2,
  'un--prim__lt_Bits32'/2,
  'un--prim__lt_Bits64'/2,
  'un--prim__lt_Double'/2,
  'un--prim__lt_String'/2,
  'un--prim__lt_Char'/2,
  'un--prim__lte_Int'/2,
  'un--prim__lte_Int8'/2,
  'un--prim__lte_Int16'/2,
  'un--prim__lte_Int32'/2,
  'un--prim__lte_Int64'/2,
  'un--prim__lte_Integer'/2,
  'un--prim__lte_Bits8'/2,
  'un--prim__lte_Bits16'/2,
  'un--prim__lte_Bits32'/2,
  'un--prim__lte_Bits64'/2,
  'un--prim__lte_Double'/2,
  'un--prim__lte_String'/2,
  'un--prim__lte_Char'/2,
  'un--prim__eq_Int'/2,
  'un--prim__eq_Int8'/2,
  'un--prim__eq_Int16'/2,
  'un--prim__eq_Int32'/2,
  'un--prim__eq_Int64'/2,
  'un--prim__eq_Integer'/2,
  'un--prim__eq_Bits8'/2,
  'un--prim__eq_Bits16'/2,
  'un--prim__eq_Bits32'/2,
  'un--prim__eq_Bits64'/2,
  'un--prim__eq_Double'/2,
  'un--prim__eq_String'/2,
  'un--prim__eq_Char'/2,
  'un--prim__gte_Int'/2,
  'un--prim__gte_Int8'/2,
  'un--prim__gte_Int16'/2,
  'un--prim__gte_Int32'/2,
  'un--prim__gte_Int64'/2,
  'un--prim__gte_Integer'/2,
  'un--prim__gte_Bits8'/2,
  'un--prim__gte_Bits16'/2,
  'un--prim__gte_Bits32'/2,
  'un--prim__gte_Bits64'/2,
  'un--prim__gte_Double'/2,
  'un--prim__gte_String'/2,
  'un--prim__gte_Char'/2,
  'un--prim__gt_Int'/2,
  'un--prim__gt_Int8'/2,
  'un--prim__gt_Int16'/2,
  'un--prim__gt_Int32'/2,
  'un--prim__gt_Int64'/2,
  'un--prim__gt_Integer'/2,
  'un--prim__gt_Bits8'/2,
  'un--prim__gt_Bits16'/2,
  'un--prim__gt_Bits32'/2,
  'un--prim__gt_Bits64'/2,
  'un--prim__gt_Double'/2,
  'un--prim__gt_String'/2,
  'un--prim__gt_Char'/2,
  'un--prim__strLength'/1,
  'un--prim__strHead'/1,
  'un--prim__strTail'/1,
  'un--prim__strIndex'/2,
  'un--prim__strCons'/2,
  'un--prim__strAppend'/2,
  'un--prim__strReverse'/1,
  'un--prim__strSubstr'/3,
  'un--prim__believe_me'/3,
  'un--prim__crash'/2,
  'un--prim__doubleExp'/1,
  'un--prim__doubleLog'/1,
  'un--prim__doublePow'/2,
  'un--prim__doubleSin'/1,
  'un--prim__doubleCos'/1,
  'un--prim__doubleTan'/1,
  'un--prim__doubleASin'/1,
  'un--prim__doubleACos'/1,
  'un--prim__doubleATan'/1,
  'un--prim__doubleSqrt'/1,
  'un--prim__doubleFloor'/1,
  'un--prim__doubleCeiling'/1,
  'un--prim__cast_IntInt8'/1,
  'un--prim__cast_IntInt16'/1,
  'un--prim__cast_IntInt32'/1,
  'un--prim__cast_IntInt64'/1,
  'un--prim__cast_IntInteger'/1,
  'un--prim__cast_IntBits8'/1,
  'un--prim__cast_IntBits16'/1,
  'un--prim__cast_IntBits32'/1,
  'un--prim__cast_IntBits64'/1,
  'un--prim__cast_IntDouble'/1,
  'un--prim__cast_IntString'/1,
  'un--prim__cast_IntChar'/1,
  'un--prim__cast_Int8Int'/1,
  'un--prim__cast_Int8Int16'/1,
  'un--prim__cast_Int8Int32'/1,
  'un--prim__cast_Int8Int64'/1,
  'un--prim__cast_Int8Integer'/1,
  'un--prim__cast_Int8Bits8'/1,
  'un--prim__cast_Int8Bits16'/1,
  'un--prim__cast_Int8Bits32'/1,
  'un--prim__cast_Int8Bits64'/1,
  'un--prim__cast_Int8Double'/1,
  'un--prim__cast_Int8String'/1,
  'un--prim__cast_Int8Char'/1,
  'un--prim__cast_Int16Int'/1,
  'un--prim__cast_Int16Int8'/1,
  'un--prim__cast_Int16Int32'/1,
  'un--prim__cast_Int16Int64'/1,
  'un--prim__cast_Int16Integer'/1,
  'un--prim__cast_Int16Bits8'/1,
  'un--prim__cast_Int16Bits16'/1,
  'un--prim__cast_Int16Bits32'/1,
  'un--prim__cast_Int16Bits64'/1,
  'un--prim__cast_Int16Double'/1,
  'un--prim__cast_Int16String'/1,
  'un--prim__cast_Int16Char'/1,
  'un--prim__cast_Int32Int'/1,
  'un--prim__cast_Int32Int8'/1,
  'un--prim__cast_Int32Int16'/1,
  'un--prim__cast_Int32Int64'/1,
  'un--prim__cast_Int32Integer'/1,
  'un--prim__cast_Int32Bits8'/1,
  'un--prim__cast_Int32Bits16'/1,
  'un--prim__cast_Int32Bits32'/1,
  'un--prim__cast_Int32Bits64'/1,
  'un--prim__cast_Int32Double'/1,
  'un--prim__cast_Int32String'/1,
  'un--prim__cast_Int32Char'/1,
  'un--prim__cast_Int64Int'/1,
  'un--prim__cast_Int64Int8'/1,
  'un--prim__cast_Int64Int16'/1,
  'un--prim__cast_Int64Int32'/1,
  'un--prim__cast_Int64Integer'/1,
  'un--prim__cast_Int64Bits8'/1,
  'un--prim__cast_Int64Bits16'/1,
  'un--prim__cast_Int64Bits32'/1,
  'un--prim__cast_Int64Bits64'/1,
  'un--prim__cast_Int64Double'/1,
  'un--prim__cast_Int64String'/1,
  'un--prim__cast_Int64Char'/1,
  'un--prim__cast_IntegerInt'/1,
  'un--prim__cast_IntegerInt8'/1,
  'un--prim__cast_IntegerInt16'/1,
  'un--prim__cast_IntegerInt32'/1,
  'un--prim__cast_IntegerInt64'/1,
  'un--prim__cast_IntegerBits8'/1,
  'un--prim__cast_IntegerBits16'/1,
  'un--prim__cast_IntegerBits32'/1,
  'un--prim__cast_IntegerBits64'/1,
  'un--prim__cast_IntegerDouble'/1,
  'un--prim__cast_IntegerString'/1,
  'un--prim__cast_IntegerChar'/1,
  'un--prim__cast_Bits8Int'/1,
  'un--prim__cast_Bits8Int8'/1,
  'un--prim__cast_Bits8Int16'/1,
  'un--prim__cast_Bits8Int32'/1,
  'un--prim__cast_Bits8Int64'/1,
  'un--prim__cast_Bits8Integer'/1,
  'un--prim__cast_Bits8Bits16'/1,
  'un--prim__cast_Bits8Bits32'/1,
  'un--prim__cast_Bits8Bits64'/1,
  'un--prim__cast_Bits8Double'/1,
  'un--prim__cast_Bits8String'/1,
  'un--prim__cast_Bits8Char'/1,
  'un--prim__cast_Bits16Int'/1,
  'un--prim__cast_Bits16Int8'/1,
  'un--prim__cast_Bits16Int16'/1,
  'un--prim__cast_Bits16Int32'/1,
  'un--prim__cast_Bits16Int64'/1,
  'un--prim__cast_Bits16Integer'/1,
  'un--prim__cast_Bits16Bits8'/1,
  'un--prim__cast_Bits16Bits32'/1,
  'un--prim__cast_Bits16Bits64'/1,
  'un--prim__cast_Bits16Double'/1,
  'un--prim__cast_Bits16String'/1,
  'un--prim__cast_Bits16Char'/1,
  'un--prim__cast_Bits32Int'/1,
  'un--prim__cast_Bits32Int8'/1,
  'un--prim__cast_Bits32Int16'/1,
  'un--prim__cast_Bits32Int32'/1,
  'un--prim__cast_Bits32Int64'/1,
  'un--prim__cast_Bits32Integer'/1,
  'un--prim__cast_Bits32Bits8'/1,
  'un--prim__cast_Bits32Bits16'/1,
  'un--prim__cast_Bits32Bits64'/1,
  'un--prim__cast_Bits32Double'/1,
  'un--prim__cast_Bits32String'/1,
  'un--prim__cast_Bits32Char'/1,
  'un--prim__cast_Bits64Int'/1,
  'un--prim__cast_Bits64Int8'/1,
  'un--prim__cast_Bits64Int16'/1,
  'un--prim__cast_Bits64Int32'/1,
  'un--prim__cast_Bits64Int64'/1,
  'un--prim__cast_Bits64Integer'/1,
  'un--prim__cast_Bits64Bits8'/1,
  'un--prim__cast_Bits64Bits16'/1,
  'un--prim__cast_Bits64Bits32'/1,
  'un--prim__cast_Bits64Double'/1,
  'un--prim__cast_Bits64String'/1,
  'un--prim__cast_Bits64Char'/1,
  'un--prim__cast_DoubleInt'/1,
  'un--prim__cast_DoubleInt8'/1,
  'un--prim__cast_DoubleInt16'/1,
  'un--prim__cast_DoubleInt32'/1,
  'un--prim__cast_DoubleInt64'/1,
  'un--prim__cast_DoubleInteger'/1,
  'un--prim__cast_DoubleBits8'/1,
  'un--prim__cast_DoubleBits16'/1,
  'un--prim__cast_DoubleBits32'/1,
  'un--prim__cast_DoubleBits64'/1,
  'un--prim__cast_DoubleString'/1,
  'un--prim__cast_StringInt'/1,
  'un--prim__cast_StringInt8'/1,
  'un--prim__cast_StringInt16'/1,
  'un--prim__cast_StringInt32'/1,
  'un--prim__cast_StringInt64'/1,
  'un--prim__cast_StringInteger'/1,
  'un--prim__cast_StringBits8'/1,
  'un--prim__cast_StringBits16'/1,
  'un--prim__cast_StringBits32'/1,
  'un--prim__cast_StringBits64'/1,
  'un--prim__cast_StringDouble'/1,
  'un--prim__cast_CharInt'/1,
  'un--prim__cast_CharInt8'/1,
  'un--prim__cast_CharInt16'/1,
  'un--prim__cast_CharInt32'/1,
  'un--prim__cast_CharInt64'/1,
  'un--prim__cast_CharInteger'/1,
  'un--prim__cast_CharBits8'/1,
  'un--prim__cast_CharBits16'/1,
  'un--prim__cast_CharBits32'/1,
  'un--prim__cast_CharBits64'/1,
  'un--prim__cast_CharString'/1
]).
'un--prim__add_Int'(V0, V1) -> begin (V2 = (V0 + V1)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end.
'un--prim__add_Int8'(V0, V1) -> begin (V2 = (V0 + V1)), case ((V2 band 128) =/= 0) of 'true' -> (V2 bor -128); _ -> (V2 band 127) end end.
'un--prim__add_Int16'(V0, V1) -> begin (V2 = (V0 + V1)), case ((V2 band 32768) =/= 0) of 'true' -> (V2 bor -32768); _ -> (V2 band 32767) end end.
'un--prim__add_Int32'(V0, V1) -> begin (V2 = (V0 + V1)), case ((V2 band 2147483648) =/= 0) of 'true' -> (V2 bor -2147483648); _ -> (V2 band 2147483647) end end.
'un--prim__add_Int64'(V0, V1) -> begin (V2 = (V0 + V1)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end.
'un--prim__add_Integer'(V0, V1) -> (V0 + V1).
'un--prim__add_Bits8'(V0, V1) -> begin (V2 = (V0 + V1)), begin (V3 = 256), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'un--prim__add_Bits16'(V0, V1) -> begin (V2 = (V0 + V1)), begin (V3 = 65536), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'un--prim__add_Bits32'(V0, V1) -> begin (V2 = (V0 + V1)), begin (V3 = 4294967296), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'un--prim__add_Bits64'(V0, V1) -> begin (V2 = (V0 + V1)), begin (V3 = 18446744073709551616), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'un--prim__add_Double'(V0, V1) -> (V0 + V1).
'un--prim__sub_Int'(V0, V1) -> begin (V2 = (V0 - V1)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end.
'un--prim__sub_Int8'(V0, V1) -> begin (V2 = (V0 - V1)), case ((V2 band 128) =/= 0) of 'true' -> (V2 bor -128); _ -> (V2 band 127) end end.
'un--prim__sub_Int16'(V0, V1) -> begin (V2 = (V0 - V1)), case ((V2 band 32768) =/= 0) of 'true' -> (V2 bor -32768); _ -> (V2 band 32767) end end.
'un--prim__sub_Int32'(V0, V1) -> begin (V2 = (V0 - V1)), case ((V2 band 2147483648) =/= 0) of 'true' -> (V2 bor -2147483648); _ -> (V2 band 2147483647) end end.
'un--prim__sub_Int64'(V0, V1) -> begin (V2 = (V0 - V1)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end.
'un--prim__sub_Integer'(V0, V1) -> (V0 - V1).
'un--prim__sub_Bits8'(V0, V1) -> begin (V2 = (V0 - V1)), begin (V3 = 256), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'un--prim__sub_Bits16'(V0, V1) -> begin (V2 = (V0 - V1)), begin (V3 = 65536), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'un--prim__sub_Bits32'(V0, V1) -> begin (V2 = (V0 - V1)), begin (V3 = 4294967296), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'un--prim__sub_Bits64'(V0, V1) -> begin (V2 = (V0 - V1)), begin (V3 = 18446744073709551616), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'un--prim__sub_Double'(V0, V1) -> (V0 - V1).
'un--prim__mul_Int'(V0, V1) -> begin (V2 = (V0 * V1)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end.
'un--prim__mul_Int8'(V0, V1) -> begin (V2 = (V0 * V1)), case ((V2 band 128) =/= 0) of 'true' -> (V2 bor -128); _ -> (V2 band 127) end end.
'un--prim__mul_Int16'(V0, V1) -> begin (V2 = (V0 * V1)), case ((V2 band 32768) =/= 0) of 'true' -> (V2 bor -32768); _ -> (V2 band 32767) end end.
'un--prim__mul_Int32'(V0, V1) -> begin (V2 = (V0 * V1)), case ((V2 band 2147483648) =/= 0) of 'true' -> (V2 bor -2147483648); _ -> (V2 band 2147483647) end end.
'un--prim__mul_Int64'(V0, V1) -> begin (V2 = (V0 * V1)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end.
'un--prim__mul_Integer'(V0, V1) -> (V0 * V1).
'un--prim__mul_Bits8'(V0, V1) -> begin (V2 = (V0 * V1)), begin (V3 = 256), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'un--prim__mul_Bits16'(V0, V1) -> begin (V2 = (V0 * V1)), begin (V3 = 65536), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'un--prim__mul_Bits32'(V0, V1) -> begin (V2 = (V0 * V1)), begin (V3 = 4294967296), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'un--prim__mul_Bits64'(V0, V1) -> begin (V2 = (V0 * V1)), begin (V3 = 18446744073709551616), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'un--prim__mul_Double'(V0, V1) -> (V0 * V1).
'un--prim__negate_Int'(V0) -> ('erlang':'-'(V0)).
'un--prim__negate_Int8'(V0) -> ('erlang':'-'(V0)).
'un--prim__negate_Int16'(V0) -> ('erlang':'-'(V0)).
'un--prim__negate_Int32'(V0) -> ('erlang':'-'(V0)).
'un--prim__negate_Int64'(V0) -> ('erlang':'-'(V0)).
'un--prim__negate_Integer'(V0) -> ('erlang':'-'(V0)).
'un--prim__negate_Bits8'(V0) -> ('erlang':'-'(V0)).
'un--prim__negate_Bits16'(V0) -> ('erlang':'-'(V0)).
'un--prim__negate_Bits32'(V0) -> ('erlang':'-'(V0)).
'un--prim__negate_Bits64'(V0) -> ('erlang':'-'(V0)).
'un--prim__negate_Double'(V0) -> ('erlang':'-'(V0)).
'un--prim__div_Int'(V0, V1) -> begin (V2 = (V0 div V1)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end.
'un--prim__div_Int8'(V0, V1) -> begin (V2 = (V0 div V1)), case ((V2 band 128) =/= 0) of 'true' -> (V2 bor -128); _ -> (V2 band 127) end end.
'un--prim__div_Int16'(V0, V1) -> begin (V2 = (V0 div V1)), case ((V2 band 32768) =/= 0) of 'true' -> (V2 bor -32768); _ -> (V2 band 32767) end end.
'un--prim__div_Int32'(V0, V1) -> begin (V2 = (V0 div V1)), case ((V2 band 2147483648) =/= 0) of 'true' -> (V2 bor -2147483648); _ -> (V2 band 2147483647) end end.
'un--prim__div_Int64'(V0, V1) -> begin (V2 = (V0 div V1)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end.
'un--prim__div_Integer'(V0, V1) -> (V0 div V1).
'un--prim__div_Bits8'(V0, V1) -> begin (V2 = (V0 div V1)), begin (V3 = 256), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'un--prim__div_Bits16'(V0, V1) -> begin (V2 = (V0 div V1)), begin (V3 = 65536), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'un--prim__div_Bits32'(V0, V1) -> begin (V2 = (V0 div V1)), begin (V3 = 4294967296), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'un--prim__div_Bits64'(V0, V1) -> begin (V2 = (V0 div V1)), begin (V3 = 18446744073709551616), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'un--prim__div_Double'(V0, V1) -> (V0 / V1).
'un--prim__mod_Int'(V0, V1) -> (V0 rem V1).
'un--prim__mod_Int8'(V0, V1) -> (V0 rem V1).
'un--prim__mod_Int16'(V0, V1) -> (V0 rem V1).
'un--prim__mod_Int32'(V0, V1) -> (V0 rem V1).
'un--prim__mod_Int64'(V0, V1) -> (V0 rem V1).
'un--prim__mod_Integer'(V0, V1) -> (V0 rem V1).
'un--prim__mod_Bits8'(V0, V1) -> (V0 rem V1).
'un--prim__mod_Bits16'(V0, V1) -> (V0 rem V1).
'un--prim__mod_Bits32'(V0, V1) -> (V0 rem V1).
'un--prim__mod_Bits64'(V0, V1) -> (V0 rem V1).
'un--prim__shl_Int'(V0, V1) -> begin (V2 = (V0 bsl V1)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end.
'un--prim__shl_Int8'(V0, V1) -> begin (V2 = (V0 bsl V1)), case ((V2 band 128) =/= 0) of 'true' -> (V2 bor -128); _ -> (V2 band 127) end end.
'un--prim__shl_Int16'(V0, V1) -> begin (V2 = (V0 bsl V1)), case ((V2 band 32768) =/= 0) of 'true' -> (V2 bor -32768); _ -> (V2 band 32767) end end.
'un--prim__shl_Int32'(V0, V1) -> begin (V2 = (V0 bsl V1)), case ((V2 band 2147483648) =/= 0) of 'true' -> (V2 bor -2147483648); _ -> (V2 band 2147483647) end end.
'un--prim__shl_Int64'(V0, V1) -> begin (V2 = (V0 bsl V1)), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end.
'un--prim__shl_Integer'(V0, V1) -> (V0 bsl V1).
'un--prim__shl_Bits8'(V0, V1) -> begin (V2 = (V0 bsl V1)), begin (V3 = 256), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'un--prim__shl_Bits16'(V0, V1) -> begin (V2 = (V0 bsl V1)), begin (V3 = 65536), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'un--prim__shl_Bits32'(V0, V1) -> begin (V2 = (V0 bsl V1)), begin (V3 = 4294967296), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'un--prim__shl_Bits64'(V0, V1) -> begin (V2 = (V0 bsl V1)), begin (V3 = 18446744073709551616), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end.
'un--prim__shr_Int'(V0, V1) -> (V0 bsr V1).
'un--prim__shr_Int8'(V0, V1) -> (V0 bsr V1).
'un--prim__shr_Int16'(V0, V1) -> (V0 bsr V1).
'un--prim__shr_Int32'(V0, V1) -> (V0 bsr V1).
'un--prim__shr_Int64'(V0, V1) -> (V0 bsr V1).
'un--prim__shr_Integer'(V0, V1) -> (V0 bsr V1).
'un--prim__shr_Bits8'(V0, V1) -> (V0 bsr V1).
'un--prim__shr_Bits16'(V0, V1) -> (V0 bsr V1).
'un--prim__shr_Bits32'(V0, V1) -> (V0 bsr V1).
'un--prim__shr_Bits64'(V0, V1) -> (V0 bsr V1).
'un--prim__and_Int'(V0, V1) -> (V0 band V1).
'un--prim__and_Int8'(V0, V1) -> (V0 band V1).
'un--prim__and_Int16'(V0, V1) -> (V0 band V1).
'un--prim__and_Int32'(V0, V1) -> (V0 band V1).
'un--prim__and_Int64'(V0, V1) -> (V0 band V1).
'un--prim__and_Integer'(V0, V1) -> (V0 band V1).
'un--prim__and_Bits8'(V0, V1) -> (V0 band V1).
'un--prim__and_Bits16'(V0, V1) -> (V0 band V1).
'un--prim__and_Bits32'(V0, V1) -> (V0 band V1).
'un--prim__and_Bits64'(V0, V1) -> (V0 band V1).
'un--prim__or_Int'(V0, V1) -> (V0 bor V1).
'un--prim__or_Int8'(V0, V1) -> (V0 bor V1).
'un--prim__or_Int16'(V0, V1) -> (V0 bor V1).
'un--prim__or_Int32'(V0, V1) -> (V0 bor V1).
'un--prim__or_Int64'(V0, V1) -> (V0 bor V1).
'un--prim__or_Integer'(V0, V1) -> (V0 bor V1).
'un--prim__or_Bits8'(V0, V1) -> (V0 bor V1).
'un--prim__or_Bits16'(V0, V1) -> (V0 bor V1).
'un--prim__or_Bits32'(V0, V1) -> (V0 bor V1).
'un--prim__or_Bits64'(V0, V1) -> (V0 bor V1).
'un--prim__xor_Int'(V0, V1) -> (V0 bxor V1).
'un--prim__xor_Int8'(V0, V1) -> (V0 bxor V1).
'un--prim__xor_Int16'(V0, V1) -> (V0 bxor V1).
'un--prim__xor_Int32'(V0, V1) -> (V0 bxor V1).
'un--prim__xor_Int64'(V0, V1) -> (V0 bxor V1).
'un--prim__xor_Integer'(V0, V1) -> (V0 bxor V1).
'un--prim__xor_Bits8'(V0, V1) -> (V0 bxor V1).
'un--prim__xor_Bits16'(V0, V1) -> (V0 bxor V1).
'un--prim__xor_Bits32'(V0, V1) -> (V0 bxor V1).
'un--prim__xor_Bits64'(V0, V1) -> (V0 bxor V1).
'un--prim__lt_Int'(V0, V1) -> case (V0 < V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lt_Int8'(V0, V1) -> case (V0 < V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lt_Int16'(V0, V1) -> case (V0 < V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lt_Int32'(V0, V1) -> case (V0 < V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lt_Int64'(V0, V1) -> case (V0 < V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lt_Integer'(V0, V1) -> case (V0 < V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lt_Bits8'(V0, V1) -> case (V0 < V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lt_Bits16'(V0, V1) -> case (V0 < V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lt_Bits32'(V0, V1) -> case (V0 < V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lt_Bits64'(V0, V1) -> case (V0 < V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lt_Double'(V0, V1) -> case (V0 < V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lt_String'(V0, V1) -> case (V0 < V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lt_Char'(V0, V1) -> case (V0 < V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lte_Int'(V0, V1) -> case (V0 =< V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lte_Int8'(V0, V1) -> case (V0 =< V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lte_Int16'(V0, V1) -> case (V0 =< V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lte_Int32'(V0, V1) -> case (V0 =< V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lte_Int64'(V0, V1) -> case (V0 =< V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lte_Integer'(V0, V1) -> case (V0 =< V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lte_Bits8'(V0, V1) -> case (V0 =< V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lte_Bits16'(V0, V1) -> case (V0 =< V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lte_Bits32'(V0, V1) -> case (V0 =< V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lte_Bits64'(V0, V1) -> case (V0 =< V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lte_Double'(V0, V1) -> case (V0 =< V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lte_String'(V0, V1) -> case (V0 =< V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lte_Char'(V0, V1) -> case (V0 =< V1) of 'false' -> 0; _ -> 1 end.
'un--prim__eq_Int'(V0, V1) -> case (V0 =:= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__eq_Int8'(V0, V1) -> case (V0 =:= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__eq_Int16'(V0, V1) -> case (V0 =:= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__eq_Int32'(V0, V1) -> case (V0 =:= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__eq_Int64'(V0, V1) -> case (V0 =:= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__eq_Integer'(V0, V1) -> case (V0 =:= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__eq_Bits8'(V0, V1) -> case (V0 =:= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__eq_Bits16'(V0, V1) -> case (V0 =:= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__eq_Bits32'(V0, V1) -> case (V0 =:= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__eq_Bits64'(V0, V1) -> case (V0 =:= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__eq_Double'(V0, V1) -> case (V0 =:= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__eq_String'(V0, V1) -> case (V0 =:= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__eq_Char'(V0, V1) -> case (V0 =:= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gte_Int'(V0, V1) -> case (V0 >= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gte_Int8'(V0, V1) -> case (V0 >= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gte_Int16'(V0, V1) -> case (V0 >= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gte_Int32'(V0, V1) -> case (V0 >= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gte_Int64'(V0, V1) -> case (V0 >= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gte_Integer'(V0, V1) -> case (V0 >= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gte_Bits8'(V0, V1) -> case (V0 >= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gte_Bits16'(V0, V1) -> case (V0 >= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gte_Bits32'(V0, V1) -> case (V0 >= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gte_Bits64'(V0, V1) -> case (V0 >= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gte_Double'(V0, V1) -> case (V0 >= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gte_String'(V0, V1) -> case (V0 >= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gte_Char'(V0, V1) -> case (V0 >= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gt_Int'(V0, V1) -> case (V0 > V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gt_Int8'(V0, V1) -> case (V0 > V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gt_Int16'(V0, V1) -> case (V0 > V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gt_Int32'(V0, V1) -> case (V0 > V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gt_Int64'(V0, V1) -> case (V0 > V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gt_Integer'(V0, V1) -> case (V0 > V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gt_Bits8'(V0, V1) -> case (V0 > V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gt_Bits16'(V0, V1) -> case (V0 > V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gt_Bits32'(V0, V1) -> case (V0 > V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gt_Bits64'(V0, V1) -> case (V0 > V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gt_Double'(V0, V1) -> case (V0 > V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gt_String'(V0, V1) -> case (V0 > V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gt_Char'(V0, V1) -> case (V0 > V1) of 'false' -> 0; _ -> 1 end.
'un--prim__strLength'(V0) -> ('string':'length'(V0)).
'un--prim__strHead'(V0) -> ('erlang':'hd'(('string':'next_grapheme'(V0)))).
'un--prim__strTail'(V0) -> case ('string':'next_grapheme'(V0)) of [E0 | E1] when (erlang:'is_binary'(E1)) -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> <<""/utf8>> end.
'un--prim__strIndex'(V0, V1) -> ('erlang':'hd'(('string':'next_grapheme'(('string':'slice'(V0, V1, 1)))))).
'un--prim__strCons'(V0, V1) -> <<('unicode':'characters_to_binary'([V0 | []]))/binary, V1/binary>>.
'un--prim__strAppend'(V0, V1) -> <<V0/binary, V1/binary>>.
'un--prim__strReverse'(V0) -> ('unicode':'characters_to_binary'(('string':'reverse'(V0)))).
'un--prim__strSubstr'(V0, V1, V2) -> ('string':'slice'(V2, V0, V1)).
'un--prim__believe_me'(V0, V1, V2) -> V2.
'un--prim__crash'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<<<"Crash: "/utf8>>/binary, V1/binary>>})).
'un--prim__doubleExp'(V0) -> ('math':'pow'(2.718281828459045, V0)).
'un--prim__doubleLog'(V0) -> ('math':'log'(V0)).
'un--prim__doublePow'(V0, V1) -> ('math':'pow'(V0, V1)).
'un--prim__doubleSin'(V0) -> ('math':'sin'(V0)).
'un--prim__doubleCos'(V0) -> ('math':'cos'(V0)).
'un--prim__doubleTan'(V0) -> ('math':'tan'(V0)).
'un--prim__doubleASin'(V0) -> ('math':'asin'(V0)).
'un--prim__doubleACos'(V0) -> ('math':'acos'(V0)).
'un--prim__doubleATan'(V0) -> ('math':'atan'(V0)).
'un--prim__doubleSqrt'(V0) -> ('math':'sqrt'(V0)).
'un--prim__doubleFloor'(V0) -> ('erlang':'floor'(V0)).
'un--prim__doubleCeiling'(V0) -> ('erlang':'ceil'(V0)).
'un--prim__cast_IntInt8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'un--prim__cast_IntInt16'(V0) -> begin (V1 = V0), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'un--prim__cast_IntInt32'(V0) -> begin (V1 = V0), case ((V1 band 2147483648) =/= 0) of 'true' -> (V1 bor -2147483648); _ -> (V1 band 2147483647) end end.
'un--prim__cast_IntInt64'(V0) -> V0.
'un--prim__cast_IntInteger'(V0) -> V0.
'un--prim__cast_IntBits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_IntBits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_IntBits32'(V0) -> begin (V1 = V0), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_IntBits64'(V0) -> begin (V1 = V0), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_IntDouble'(V0) -> ('erlang':'float'(V0)).
'un--prim__cast_IntString'(V0) -> ('erlang':'integer_to_binary'(V0)).
'un--prim__cast_IntChar'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'un--prim__cast_Int8Int'(V0) -> V0.
'un--prim__cast_Int8Int16'(V0) -> V0.
'un--prim__cast_Int8Int32'(V0) -> V0.
'un--prim__cast_Int8Int64'(V0) -> V0.
'un--prim__cast_Int8Integer'(V0) -> V0.
'un--prim__cast_Int8Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_Int8Bits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_Int8Bits32'(V0) -> begin (V1 = V0), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_Int8Bits64'(V0) -> begin (V1 = V0), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_Int8Double'(V0) -> ('erlang':'float'(V0)).
'un--prim__cast_Int8String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'un--prim__cast_Int8Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'un--prim__cast_Int16Int'(V0) -> V0.
'un--prim__cast_Int16Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'un--prim__cast_Int16Int32'(V0) -> V0.
'un--prim__cast_Int16Int64'(V0) -> V0.
'un--prim__cast_Int16Integer'(V0) -> V0.
'un--prim__cast_Int16Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_Int16Bits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_Int16Bits32'(V0) -> begin (V1 = V0), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_Int16Bits64'(V0) -> begin (V1 = V0), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_Int16Double'(V0) -> ('erlang':'float'(V0)).
'un--prim__cast_Int16String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'un--prim__cast_Int16Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'un--prim__cast_Int32Int'(V0) -> V0.
'un--prim__cast_Int32Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'un--prim__cast_Int32Int16'(V0) -> begin (V1 = V0), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'un--prim__cast_Int32Int64'(V0) -> V0.
'un--prim__cast_Int32Integer'(V0) -> V0.
'un--prim__cast_Int32Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_Int32Bits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_Int32Bits32'(V0) -> begin (V1 = V0), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_Int32Bits64'(V0) -> begin (V1 = V0), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_Int32Double'(V0) -> ('erlang':'float'(V0)).
'un--prim__cast_Int32String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'un--prim__cast_Int32Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'un--prim__cast_Int64Int'(V0) -> V0.
'un--prim__cast_Int64Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'un--prim__cast_Int64Int16'(V0) -> begin (V1 = V0), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'un--prim__cast_Int64Int32'(V0) -> begin (V1 = V0), case ((V1 band 2147483648) =/= 0) of 'true' -> (V1 bor -2147483648); _ -> (V1 band 2147483647) end end.
'un--prim__cast_Int64Integer'(V0) -> V0.
'un--prim__cast_Int64Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_Int64Bits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_Int64Bits32'(V0) -> begin (V1 = V0), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_Int64Bits64'(V0) -> begin (V1 = V0), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_Int64Double'(V0) -> ('erlang':'float'(V0)).
'un--prim__cast_Int64String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'un--prim__cast_Int64Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'un--prim__cast_IntegerInt'(V0) -> begin (V1 = V0), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'un--prim__cast_IntegerInt8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'un--prim__cast_IntegerInt16'(V0) -> begin (V1 = V0), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'un--prim__cast_IntegerInt32'(V0) -> begin (V1 = V0), case ((V1 band 2147483648) =/= 0) of 'true' -> (V1 bor -2147483648); _ -> (V1 band 2147483647) end end.
'un--prim__cast_IntegerInt64'(V0) -> begin (V1 = V0), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'un--prim__cast_IntegerBits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_IntegerBits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_IntegerBits32'(V0) -> begin (V1 = V0), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_IntegerBits64'(V0) -> begin (V1 = V0), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_IntegerDouble'(V0) -> ('erlang':'float'(V0)).
'un--prim__cast_IntegerString'(V0) -> ('erlang':'integer_to_binary'(V0)).
'un--prim__cast_IntegerChar'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'un--prim__cast_Bits8Int'(V0) -> V0.
'un--prim__cast_Bits8Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'un--prim__cast_Bits8Int16'(V0) -> V0.
'un--prim__cast_Bits8Int32'(V0) -> V0.
'un--prim__cast_Bits8Int64'(V0) -> V0.
'un--prim__cast_Bits8Integer'(V0) -> V0.
'un--prim__cast_Bits8Bits16'(V0) -> V0.
'un--prim__cast_Bits8Bits32'(V0) -> V0.
'un--prim__cast_Bits8Bits64'(V0) -> V0.
'un--prim__cast_Bits8Double'(V0) -> ('erlang':'float'(V0)).
'un--prim__cast_Bits8String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'un--prim__cast_Bits8Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'un--prim__cast_Bits16Int'(V0) -> V0.
'un--prim__cast_Bits16Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'un--prim__cast_Bits16Int16'(V0) -> begin (V1 = V0), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'un--prim__cast_Bits16Int32'(V0) -> V0.
'un--prim__cast_Bits16Int64'(V0) -> V0.
'un--prim__cast_Bits16Integer'(V0) -> V0.
'un--prim__cast_Bits16Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_Bits16Bits32'(V0) -> V0.
'un--prim__cast_Bits16Bits64'(V0) -> V0.
'un--prim__cast_Bits16Double'(V0) -> ('erlang':'float'(V0)).
'un--prim__cast_Bits16String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'un--prim__cast_Bits16Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'un--prim__cast_Bits32Int'(V0) -> V0.
'un--prim__cast_Bits32Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'un--prim__cast_Bits32Int16'(V0) -> begin (V1 = V0), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'un--prim__cast_Bits32Int32'(V0) -> begin (V1 = V0), case ((V1 band 2147483648) =/= 0) of 'true' -> (V1 bor -2147483648); _ -> (V1 band 2147483647) end end.
'un--prim__cast_Bits32Int64'(V0) -> V0.
'un--prim__cast_Bits32Integer'(V0) -> V0.
'un--prim__cast_Bits32Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_Bits32Bits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_Bits32Bits64'(V0) -> V0.
'un--prim__cast_Bits32Double'(V0) -> ('erlang':'float'(V0)).
'un--prim__cast_Bits32String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'un--prim__cast_Bits32Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'un--prim__cast_Bits64Int'(V0) -> begin (V1 = V0), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'un--prim__cast_Bits64Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'un--prim__cast_Bits64Int16'(V0) -> begin (V1 = V0), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'un--prim__cast_Bits64Int32'(V0) -> begin (V1 = V0), case ((V1 band 2147483648) =/= 0) of 'true' -> (V1 bor -2147483648); _ -> (V1 band 2147483647) end end.
'un--prim__cast_Bits64Int64'(V0) -> begin (V1 = V0), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'un--prim__cast_Bits64Integer'(V0) -> V0.
'un--prim__cast_Bits64Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_Bits64Bits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_Bits64Bits32'(V0) -> begin (V1 = V0), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_Bits64Double'(V0) -> ('erlang':'float'(V0)).
'un--prim__cast_Bits64String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'un--prim__cast_Bits64Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'un--prim__cast_DoubleInt'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'un--prim__cast_DoubleInt8'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'un--prim__cast_DoubleInt16'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'un--prim__cast_DoubleInt32'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), case ((V1 band 2147483648) =/= 0) of 'true' -> (V1 bor -2147483648); _ -> (V1 band 2147483647) end end.
'un--prim__cast_DoubleInt64'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'un--prim__cast_DoubleInteger'(V0) -> ('erlang':'trunc'(V0)).
'un--prim__cast_DoubleBits8'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_DoubleBits16'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_DoubleBits32'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_DoubleBits64'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'un--prim__cast_DoubleString'(V0) -> ('erlang':'float_to_binary'(V0, [{'decimals', 10} | ['compact' | []]])).
'un--prim__cast_StringInt'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), case ((V3 band 9223372036854775808) =/= 0) of 'true' -> (V3 bor -9223372036854775808); _ -> (V3 band 9223372036854775807) end end.
'un--prim__cast_StringInt8'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), case ((V3 band 128) =/= 0) of 'true' -> (V3 bor -128); _ -> (V3 band 127) end end.
'un--prim__cast_StringInt16'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), case ((V3 band 32768) =/= 0) of 'true' -> (V3 bor -32768); _ -> (V3 band 32767) end end.
'un--prim__cast_StringInt32'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), case ((V3 band 2147483648) =/= 0) of 'true' -> (V3 bor -2147483648); _ -> (V3 band 2147483647) end end.
'un--prim__cast_StringInt64'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), case ((V3 band 9223372036854775808) =/= 0) of 'true' -> (V3 bor -9223372036854775808); _ -> (V3 band 9223372036854775807) end end.
'un--prim__cast_StringInteger'(V0) -> case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end.
'un--prim__cast_StringBits8'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), begin (V4 = 256), begin (V5 = (V3 rem V4)), case ((V5 * V4) < 0) of 'true' -> (V5 + V4); _ -> V5 end end end end.
'un--prim__cast_StringBits16'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), begin (V4 = 65536), begin (V5 = (V3 rem V4)), case ((V5 * V4) < 0) of 'true' -> (V5 + V4); _ -> V5 end end end end.
'un--prim__cast_StringBits32'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), begin (V4 = 4294967296), begin (V5 = (V3 rem V4)), case ((V5 * V4) < 0) of 'true' -> (V5 + V4); _ -> V5 end end end end.
'un--prim__cast_StringBits64'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), begin (V4 = 18446744073709551616), begin (V5 = (V3 rem V4)), case ((V5 * V4) < 0) of 'true' -> (V5 + V4); _ -> V5 end end end end.
'un--prim__cast_StringDouble'(V0) -> case ('string':'to_float'(V0)) of {'error', 'no_float'} -> (fun (V1, V2) -> ('erlang':'float'(case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V5, V6) -> case ('string':'is_empty'(V6)) of 'true' -> V5; _ -> 0 end end(E0, E1)); _ -> 0 end)) end('error', 'no_float')); {E2, E3} when (erlang:'is_float'(E2)) -> (fun (V3, V4) -> case ('string':'is_empty'(V4)) of 'true' -> V3; _ -> 0.0 end end(E2, E3)); _ -> 0.0 end.
'un--prim__cast_CharInt'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'un--prim__cast_CharInt8'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'un--prim__cast_CharInt16'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'un--prim__cast_CharInt32'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'un--prim__cast_CharInt64'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'un--prim__cast_CharInteger'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'un--prim__cast_CharBits8'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'un--prim__cast_CharBits16'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'un--prim__cast_CharBits32'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'un--prim__cast_CharBits64'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'un--prim__cast_CharString'(V0) -> ('unicode':'characters_to_binary'([V0 | []])).
