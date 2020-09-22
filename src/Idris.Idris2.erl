-module('Idris.Idris2').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--prim__add_Int'/2,
  'un--prim__add_Integer'/2,
  'un--prim__add_Bits8'/2,
  'un--prim__add_Bits16'/2,
  'un--prim__add_Bits32'/2,
  'un--prim__add_Bits64'/2,
  'un--prim__add_Char'/2,
  'un--prim__add_Double'/2,
  'un--prim__sub_Int'/2,
  'un--prim__sub_Integer'/2,
  'un--prim__sub_Char'/2,
  'un--prim__sub_Double'/2,
  'un--prim__mul_Int'/2,
  'un--prim__mul_Integer'/2,
  'un--prim__mul_Bits8'/2,
  'un--prim__mul_Bits16'/2,
  'un--prim__mul_Bits32'/2,
  'un--prim__mul_Bits64'/2,
  'un--prim__mul_Double'/2,
  'un--prim__div_Int'/2,
  'un--prim__div_Integer'/2,
  'un--prim__div_Bits8'/2,
  'un--prim__div_Bits16'/2,
  'un--prim__div_Bits32'/2,
  'un--prim__div_Bits64'/2,
  'un--prim__div_Double'/2,
  'un--prim__mod_Int'/2,
  'un--prim__mod_Integer'/2,
  'un--prim__mod_Bits8'/2,
  'un--prim__mod_Bits16'/2,
  'un--prim__mod_Bits32'/2,
  'un--prim__mod_Bits64'/2,
  'un--prim__negate_Int'/1,
  'un--prim__negate_Integer'/1,
  'un--prim__negate_Double'/1,
  'un--prim__shl_Int'/2,
  'un--prim__shl_Integer'/2,
  'un--prim__shl_Bits8'/2,
  'un--prim__shl_Bits16'/2,
  'un--prim__shl_Bits32'/2,
  'un--prim__shl_Bits64'/2,
  'un--prim__shr_Int'/2,
  'un--prim__shr_Integer'/2,
  'un--prim__shr_Bits8'/2,
  'un--prim__shr_Bits16'/2,
  'un--prim__shr_Bits32'/2,
  'un--prim__shr_Bits64'/2,
  'un--prim__and_Int'/2,
  'un--prim__and_Integer'/2,
  'un--prim__and_Bits8'/2,
  'un--prim__and_Bits16'/2,
  'un--prim__and_Bits32'/2,
  'un--prim__and_Bits64'/2,
  'un--prim__or_Int'/2,
  'un--prim__or_Integer'/2,
  'un--prim__or_Bits8'/2,
  'un--prim__or_Bits16'/2,
  'un--prim__or_Bits32'/2,
  'un--prim__or_Bits64'/2,
  'un--prim__xor_Int'/2,
  'un--prim__xor_Bits8'/2,
  'un--prim__xor_Bits16'/2,
  'un--prim__xor_Bits32'/2,
  'un--prim__lt_Int'/2,
  'un--prim__lt_Integer'/2,
  'un--prim__lt_Char'/2,
  'un--prim__lt_Double'/2,
  'un--prim__lt_String'/2,
  'un--prim__lt_Bits8'/2,
  'un--prim__lt_Bits16'/2,
  'un--prim__lt_Bits32'/2,
  'un--prim__lt_Bits64'/2,
  'un--prim__lte_Int'/2,
  'un--prim__lte_Integer'/2,
  'un--prim__lte_Char'/2,
  'un--prim__lte_Double'/2,
  'un--prim__lte_String'/2,
  'un--prim__lte_Bits8'/2,
  'un--prim__lte_Bits16'/2,
  'un--prim__lte_Bits32'/2,
  'un--prim__lte_Bits64'/2,
  'un--prim__eq_Int'/2,
  'un--prim__eq_Integer'/2,
  'un--prim__eq_Char'/2,
  'un--prim__eq_Double'/2,
  'un--prim__eq_String'/2,
  'un--prim__eq_Bits8'/2,
  'un--prim__eq_Bits16'/2,
  'un--prim__eq_Bits32'/2,
  'un--prim__eq_Bits64'/2,
  'un--prim__gte_Int'/2,
  'un--prim__gte_Integer'/2,
  'un--prim__gte_Char'/2,
  'un--prim__gte_Double'/2,
  'un--prim__gte_String'/2,
  'un--prim__gte_Bits8'/2,
  'un--prim__gte_Bits16'/2,
  'un--prim__gte_Bits32'/2,
  'un--prim__gte_Bits64'/2,
  'un--prim__gt_Int'/2,
  'un--prim__gt_Integer'/2,
  'un--prim__gt_Char'/2,
  'un--prim__gt_Double'/2,
  'un--prim__gt_String'/2,
  'un--prim__gt_Bits8'/2,
  'un--prim__gt_Bits16'/2,
  'un--prim__gt_Bits32'/2,
  'un--prim__gt_Bits64'/2,
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
  'un--prim__doubleSin'/1,
  'un--prim__doubleCos'/1,
  'un--prim__doubleTan'/1,
  'un--prim__doubleASin'/1,
  'un--prim__doubleACos'/1,
  'un--prim__doubleATan'/1,
  'un--prim__doubleSqrt'/1,
  'un--prim__doubleFloor'/1,
  'un--prim__doubleCeiling'/1,
  'un--prim__cast_IntString'/1,
  'un--prim__cast_IntegerString'/1,
  'un--prim__cast_Bits8String'/1,
  'un--prim__cast_Bits16String'/1,
  'un--prim__cast_Bits32String'/1,
  'un--prim__cast_Bits64String'/1,
  'un--prim__cast_CharString'/1,
  'un--prim__cast_DoubleString'/1,
  'un--prim__cast_StringInteger'/1,
  'un--prim__cast_IntInteger'/1,
  'un--prim__cast_Bits8Integer'/1,
  'un--prim__cast_Bits16Integer'/1,
  'un--prim__cast_Bits32Integer'/1,
  'un--prim__cast_Bits64Integer'/1,
  'un--prim__cast_CharInteger'/1,
  'un--prim__cast_DoubleInteger'/1,
  'un--prim__cast_StringInt'/1,
  'un--prim__cast_IntegerInt'/1,
  'un--prim__cast_Bits8Int'/1,
  'un--prim__cast_Bits16Int'/1,
  'un--prim__cast_Bits32Int'/1,
  'un--prim__cast_Bits64Int'/1,
  'un--prim__cast_CharInt'/1,
  'un--prim__cast_DoubleInt'/1,
  'un--prim__cast_StringDouble'/1,
  'un--prim__cast_IntDouble'/1,
  'un--prim__cast_IntegerDouble'/1,
  'un--prim__cast_StringChar'/1,
  'un--prim__cast_IntChar'/1,
  'un--prim__cast_IntBits8'/1,
  'un--prim__cast_IntegerBits8'/1,
  'un--prim__cast_Bits16Bits8'/1,
  'un--prim__cast_Bits32Bits8'/1,
  'un--prim__cast_Bits64Bits8'/1,
  'un--prim__cast_IntBits16'/1,
  'un--prim__cast_IntegerBits16'/1,
  'un--prim__cast_Bits8Bits16'/1,
  'un--prim__cast_Bits32Bits16'/1,
  'un--prim__cast_Bits64Bits16'/1,
  'un--prim__cast_IntBits32'/1,
  'un--prim__cast_IntegerBits32'/1,
  'un--prim__cast_Bits8Bits32'/1,
  'un--prim__cast_Bits16Bits32'/1,
  'un--prim__cast_Bits64Bits32'/1,
  'un--prim__cast_IntBits64'/1,
  'un--prim__cast_IntegerBits64'/1,
  'un--prim__cast_Bits8Bits64'/1,
  'un--prim__cast_Bits16Bits64'/1,
  'un--prim__cast_Bits32Bits64'/1
]).
'un--prim__add_Int'(V0, V1) -> ((V0 + V1) rem 9223372036854775808).
'un--prim__add_Integer'(V0, V1) -> (V0 + V1).
'un--prim__add_Bits8'(V0, V1) -> ((V0 + V1) rem 256).
'un--prim__add_Bits16'(V0, V1) -> ((V0 + V1) rem 65536).
'un--prim__add_Bits32'(V0, V1) -> ((V0 + V1) rem 4294967296).
'un--prim__add_Bits64'(V0, V1) -> ((V0 + V1) rem 18446744073709551616).
'un--prim__add_Char'(V0, V1) -> (V0 + V1).
'un--prim__add_Double'(V0, V1) -> (V0 + V1).
'un--prim__sub_Int'(V0, V1) -> ((V0 - V1) rem 9223372036854775808).
'un--prim__sub_Integer'(V0, V1) -> (V0 - V1).
'un--prim__sub_Char'(V0, V1) -> (V0 - V1).
'un--prim__sub_Double'(V0, V1) -> (V0 - V1).
'un--prim__mul_Int'(V0, V1) -> ((V0 * V1) rem 9223372036854775808).
'un--prim__mul_Integer'(V0, V1) -> (V0 * V1).
'un--prim__mul_Bits8'(V0, V1) -> ((V0 * V1) rem 256).
'un--prim__mul_Bits16'(V0, V1) -> ((V0 * V1) rem 65536).
'un--prim__mul_Bits32'(V0, V1) -> ((V0 * V1) rem 4294967296).
'un--prim__mul_Bits64'(V0, V1) -> ((V0 * V1) rem 18446744073709551616).
'un--prim__mul_Double'(V0, V1) -> (V0 * V1).
'un--prim__div_Int'(V0, V1) -> ((V0 div V1) rem 9223372036854775808).
'un--prim__div_Integer'(V0, V1) -> (V0 div V1).
'un--prim__div_Bits8'(V0, V1) -> ((V0 div V1) rem 256).
'un--prim__div_Bits16'(V0, V1) -> ((V0 div V1) rem 65536).
'un--prim__div_Bits32'(V0, V1) -> ((V0 div V1) rem 4294967296).
'un--prim__div_Bits64'(V0, V1) -> ((V0 div V1) rem 18446744073709551616).
'un--prim__div_Double'(V0, V1) -> (V0 / V1).
'un--prim__mod_Int'(V0, V1) -> (V0 rem V1).
'un--prim__mod_Integer'(V0, V1) -> (V0 rem V1).
'un--prim__mod_Bits8'(V0, V1) -> (V0 rem V1).
'un--prim__mod_Bits16'(V0, V1) -> (V0 rem V1).
'un--prim__mod_Bits32'(V0, V1) -> (V0 rem V1).
'un--prim__mod_Bits64'(V0, V1) -> (V0 rem V1).
'un--prim__negate_Int'(V0) -> ('erlang':'-'(V0)).
'un--prim__negate_Integer'(V0) -> ('erlang':'-'(V0)).
'un--prim__negate_Double'(V0) -> ('erlang':'-'(V0)).
'un--prim__shl_Int'(V0, V1) -> ((V0 bsl V1) rem 9223372036854775808).
'un--prim__shl_Integer'(V0, V1) -> (V0 bsl V1).
'un--prim__shl_Bits8'(V0, V1) -> ((V0 bsl V1) rem 256).
'un--prim__shl_Bits16'(V0, V1) -> ((V0 bsl V1) rem 65536).
'un--prim__shl_Bits32'(V0, V1) -> ((V0 bsl V1) rem 4294967296).
'un--prim__shl_Bits64'(V0, V1) -> ((V0 bsl V1) rem 18446744073709551616).
'un--prim__shr_Int'(V0, V1) -> (V0 bsr V1).
'un--prim__shr_Integer'(V0, V1) -> (V0 bsr V1).
'un--prim__shr_Bits8'(V0, V1) -> (V0 bsr V1).
'un--prim__shr_Bits16'(V0, V1) -> (V0 bsr V1).
'un--prim__shr_Bits32'(V0, V1) -> (V0 bsr V1).
'un--prim__shr_Bits64'(V0, V1) -> (V0 bsr V1).
'un--prim__and_Int'(V0, V1) -> (V0 band V1).
'un--prim__and_Integer'(V0, V1) -> (V0 band V1).
'un--prim__and_Bits8'(V0, V1) -> (V0 band V1).
'un--prim__and_Bits16'(V0, V1) -> (V0 band V1).
'un--prim__and_Bits32'(V0, V1) -> (V0 band V1).
'un--prim__and_Bits64'(V0, V1) -> (V0 band V1).
'un--prim__or_Int'(V0, V1) -> (V0 bor V1).
'un--prim__or_Integer'(V0, V1) -> (V0 bor V1).
'un--prim__or_Bits8'(V0, V1) -> (V0 bor V1).
'un--prim__or_Bits16'(V0, V1) -> (V0 bor V1).
'un--prim__or_Bits32'(V0, V1) -> (V0 bor V1).
'un--prim__or_Bits64'(V0, V1) -> (V0 bor V1).
'un--prim__xor_Int'(V0, V1) -> (V0 bxor V1).
'un--prim__xor_Bits8'(V0, V1) -> (V0 bxor V1).
'un--prim__xor_Bits16'(V0, V1) -> (V0 bxor V1).
'un--prim__xor_Bits32'(V0, V1) -> (V0 bxor V1).
'un--prim__lt_Int'(V0, V1) -> case (V0 < V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lt_Integer'(V0, V1) -> case (V0 < V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lt_Char'(V0, V1) -> case (V0 < V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lt_Double'(V0, V1) -> case (V0 < V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lt_String'(V0, V1) -> case (V0 < V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lt_Bits8'(V0, V1) -> case (V0 < V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lt_Bits16'(V0, V1) -> case (V0 < V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lt_Bits32'(V0, V1) -> case (V0 < V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lt_Bits64'(V0, V1) -> case (V0 < V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lte_Int'(V0, V1) -> case (V0 =< V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lte_Integer'(V0, V1) -> case (V0 =< V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lte_Char'(V0, V1) -> case (V0 =< V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lte_Double'(V0, V1) -> case (V0 =< V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lte_String'(V0, V1) -> case (V0 =< V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lte_Bits8'(V0, V1) -> case (V0 =< V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lte_Bits16'(V0, V1) -> case (V0 =< V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lte_Bits32'(V0, V1) -> case (V0 =< V1) of 'false' -> 0; _ -> 1 end.
'un--prim__lte_Bits64'(V0, V1) -> case (V0 =< V1) of 'false' -> 0; _ -> 1 end.
'un--prim__eq_Int'(V0, V1) -> case (V0 =:= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__eq_Integer'(V0, V1) -> case (V0 =:= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__eq_Char'(V0, V1) -> case (V0 =:= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__eq_Double'(V0, V1) -> case (V0 =:= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__eq_String'(V0, V1) -> case (V0 =:= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__eq_Bits8'(V0, V1) -> case (V0 =:= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__eq_Bits16'(V0, V1) -> case (V0 =:= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__eq_Bits32'(V0, V1) -> case (V0 =:= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__eq_Bits64'(V0, V1) -> case (V0 =:= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gte_Int'(V0, V1) -> case (V0 >= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gte_Integer'(V0, V1) -> case (V0 >= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gte_Char'(V0, V1) -> case (V0 >= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gte_Double'(V0, V1) -> case (V0 >= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gte_String'(V0, V1) -> case (V0 >= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gte_Bits8'(V0, V1) -> case (V0 >= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gte_Bits16'(V0, V1) -> case (V0 >= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gte_Bits32'(V0, V1) -> case (V0 >= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gte_Bits64'(V0, V1) -> case (V0 >= V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gt_Int'(V0, V1) -> case (V0 > V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gt_Integer'(V0, V1) -> case (V0 > V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gt_Char'(V0, V1) -> case (V0 > V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gt_Double'(V0, V1) -> case (V0 > V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gt_String'(V0, V1) -> case (V0 > V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gt_Bits8'(V0, V1) -> case (V0 > V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gt_Bits16'(V0, V1) -> case (V0 > V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gt_Bits32'(V0, V1) -> case (V0 > V1) of 'false' -> 0; _ -> 1 end.
'un--prim__gt_Bits64'(V0, V1) -> case (V0 > V1) of 'false' -> 0; _ -> 1 end.
'un--prim__strLength'(V0) -> ('string':'length'(V0)).
'un--prim__strHead'(V0) -> ('erlang':'hd'(('string':'next_grapheme'(V0)))).
'un--prim__strTail'(V0) -> case ('string':'next_grapheme'(V0)) of [E0 | E1] when (erlang:'is_binary'(E1)) -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> <<""/utf8>> end.
'un--prim__strIndex'(V0, V1) -> ('erlang':'hd'(('string':'next_grapheme'(('string':'slice'(V0, V1, 1)))))).
'un--prim__strCons'(V0, V1) -> (fun (Bin1, Bin2) -> <<Bin1/binary, Bin2/binary>> end(('unicode':'characters_to_binary'([V0 | []])), V1)).
'un--prim__strAppend'(V0, V1) -> (fun (Bin1, Bin2) -> <<Bin1/binary, Bin2/binary>> end(V0, V1)).
'un--prim__strReverse'(V0) -> ('unicode':'characters_to_binary'(('string':'reverse'(V0)))).
'un--prim__strSubstr'(V0, V1, V2) -> ('string':'slice'(V2, V0, V1)).
'un--prim__believe_me'(V0, V1, V2) -> V2.
'un--prim__crash'(V0, V1) -> ('erlang':'throw'((fun (Bin1, Bin2) -> <<Bin1/binary, Bin2/binary>> end(<<"Crash: "/utf8>>, V1)))).
'un--prim__doubleExp'(V0) -> ('math':'pow'(2.718281828459045, V0)).
'un--prim__doubleLog'(V0) -> ('math':'log'(V0)).
'un--prim__doubleSin'(V0) -> ('math':'sin'(V0)).
'un--prim__doubleCos'(V0) -> ('math':'cos'(V0)).
'un--prim__doubleTan'(V0) -> ('math':'tan'(V0)).
'un--prim__doubleASin'(V0) -> ('math':'asin'(V0)).
'un--prim__doubleACos'(V0) -> ('math':'acos'(V0)).
'un--prim__doubleATan'(V0) -> ('math':'atan'(V0)).
'un--prim__doubleSqrt'(V0) -> ('math':'sqrt'(V0)).
'un--prim__doubleFloor'(V0) -> ('erlang':'floor'(V0)).
'un--prim__doubleCeiling'(V0) -> ('erlang':'ceil'(V0)).
'un--prim__cast_IntString'(V0) -> ('erlang':'integer_to_binary'(V0)).
'un--prim__cast_IntegerString'(V0) -> ('erlang':'integer_to_binary'(V0)).
'un--prim__cast_Bits8String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'un--prim__cast_Bits16String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'un--prim__cast_Bits32String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'un--prim__cast_Bits64String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'un--prim__cast_CharString'(V0) -> ('unicode':'characters_to_binary'([V0 | []])).
'un--prim__cast_DoubleString'(V0) -> ('erlang':'float_to_binary'(V0, [{'decimals', 10} | ['compact' | []]])).
'un--prim__cast_StringInteger'(V0) -> case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end.
'un--prim__cast_IntInteger'(V0) -> V0.
'un--prim__cast_Bits8Integer'(V0) -> V0.
'un--prim__cast_Bits16Integer'(V0) -> V0.
'un--prim__cast_Bits32Integer'(V0) -> V0.
'un--prim__cast_Bits64Integer'(V0) -> V0.
'un--prim__cast_CharInteger'(V0) -> case V0 of E0 when (((erlang:'is_integer'(E0)) andalso (E0 >= 0)) andalso (E0 =< 1114111)) -> E0; _ -> 65533 end.
'un--prim__cast_DoubleInteger'(V0) -> ('erlang':'trunc'(V0)).
'un--prim__cast_StringInt'(V0) -> case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end.
'un--prim__cast_IntegerInt'(V0) -> V0.
'un--prim__cast_Bits8Int'(V0) -> V0.
'un--prim__cast_Bits16Int'(V0) -> V0.
'un--prim__cast_Bits32Int'(V0) -> V0.
'un--prim__cast_Bits64Int'(V0) -> ('erlang':'throw'("Invalid cast Bits64->Int")).
'un--prim__cast_CharInt'(V0) -> case V0 of E0 when (((erlang:'is_integer'(E0)) andalso (E0 >= 0)) andalso (E0 =< 1114111)) -> E0; _ -> 65533 end.
'un--prim__cast_DoubleInt'(V0) -> ('erlang':'trunc'(V0)).
'un--prim__cast_StringDouble'(V0) -> case ('string':'to_float'(V0)) of {'error', 'no_float'} -> (fun (V1, V2) -> ('erlang':'float'(case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V5, V6) -> case ('string':'is_empty'(V6)) of 'true' -> V5; _ -> 0 end end(E0, E1)); _ -> 0 end)) end('error', 'no_float')); {E2, E3} when (erlang:'is_float'(E2)) -> (fun (V3, V4) -> case ('string':'is_empty'(V4)) of 'true' -> V3; _ -> 0.0 end end(E2, E3)); _ -> 0.0 end.
'un--prim__cast_IntDouble'(V0) -> ('erlang':'float'(V0)).
'un--prim__cast_IntegerDouble'(V0) -> ('erlang':'float'(V0)).
'un--prim__cast_StringChar'(V0) -> ('erlang':'throw'("Invalid cast String->Char")).
'un--prim__cast_IntChar'(V0) -> case V0 of E0 when (((erlang:'is_integer'(E0)) andalso (E0 >= 0)) andalso (E0 =< 1114111)) -> E0; _ -> 65533 end.
'un--prim__cast_IntBits8'(V0) -> ('erlang':'throw'("Invalid cast Int->Bits8")).
'un--prim__cast_IntegerBits8'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 256); _ -> ((V0 + 256) rem 256) end.
'un--prim__cast_Bits16Bits8'(V0) -> ('erlang':'throw'("Invalid cast Bits16->Bits8")).
'un--prim__cast_Bits32Bits8'(V0) -> ('erlang':'throw'("Invalid cast Bits32->Bits8")).
'un--prim__cast_Bits64Bits8'(V0) -> ('erlang':'throw'("Invalid cast Bits64->Bits8")).
'un--prim__cast_IntBits16'(V0) -> ('erlang':'throw'("Invalid cast Int->Bits16")).
'un--prim__cast_IntegerBits16'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 65536); _ -> ((V0 + 65536) rem 65536) end.
'un--prim__cast_Bits8Bits16'(V0) -> ('erlang':'throw'("Invalid cast Bits8->Bits16")).
'un--prim__cast_Bits32Bits16'(V0) -> ('erlang':'throw'("Invalid cast Bits32->Bits16")).
'un--prim__cast_Bits64Bits16'(V0) -> ('erlang':'throw'("Invalid cast Bits64->Bits16")).
'un--prim__cast_IntBits32'(V0) -> ('erlang':'throw'("Invalid cast Int->Bits32")).
'un--prim__cast_IntegerBits32'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 4294967296); _ -> ((V0 + 4294967296) rem 4294967296) end.
'un--prim__cast_Bits8Bits32'(V0) -> ('erlang':'throw'("Invalid cast Bits8->Bits32")).
'un--prim__cast_Bits16Bits32'(V0) -> ('erlang':'throw'("Invalid cast Bits16->Bits32")).
'un--prim__cast_Bits64Bits32'(V0) -> ('erlang':'throw'("Invalid cast Bits64->Bits32")).
'un--prim__cast_IntBits64'(V0) -> ('erlang':'throw'("Invalid cast Int->Bits64")).
'un--prim__cast_IntegerBits64'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 18446744073709551616); _ -> ((V0 + 18446744073709551616) rem 18446744073709551616) end.
'un--prim__cast_Bits8Bits64'(V0) -> ('erlang':'throw'("Invalid cast Bits8->Bits64")).
'un--prim__cast_Bits16Bits64'(V0) -> ('erlang':'throw'("Invalid cast Bits16->Bits64")).
'un--prim__cast_Bits32Bits64'(V0) -> ('erlang':'throw'("Invalid cast Bits32->Bits64")).
