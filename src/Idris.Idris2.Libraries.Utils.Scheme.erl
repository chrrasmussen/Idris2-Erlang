-module('Idris.Idris2.Libraries.Utils.Scheme').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--3066-1348--in--un--toString'/2,
  'nested--3066-1347--in--un--showSep'/3,
  'nested--3073-1598--in--un--showDef'/4,
  'nested--3073-1542--in--un--showDef'/5,
  'nested--3073-1597--in--un--showAlt'/4,
  'nested--3073-1541--in--un--showAlt'/5,
  'nested--3402-1672--in--un--readVector'/4,
  'dn--un--toScheme_Scheme_String'/1,
  'dn--un--toScheme_Scheme_Integer'/1,
  'dn--un--toScheme_Scheme_Int8'/1,
  'dn--un--toScheme_Scheme_Int64'/1,
  'dn--un--toScheme_Scheme_Int32'/1,
  'dn--un--toScheme_Scheme_Int16'/1,
  'dn--un--toScheme_Scheme_Int'/1,
  'dn--un--toScheme_Scheme_Double'/1,
  'dn--un--toScheme_Scheme_Char'/1,
  'dn--un--toScheme_Scheme_Bool'/1,
  'dn--un--toScheme_Scheme_Bits8'/1,
  'dn--un--toScheme_Scheme_Bits64'/1,
  'dn--un--toScheme_Scheme_Bits32'/1,
  'dn--un--toScheme_Scheme_Bits16'/1,
  'dn--un--toScheme_Scheme_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/2,
  'dn--un--toScheme_Scheme_(Maybe $a)'/2,
  'dn--un--toScheme_Scheme_(List $a)'/2,
  'dn--un--fromScheme_Scheme_String'/1,
  'dn--un--fromScheme_Scheme_Integer'/1,
  'dn--un--fromScheme_Scheme_Int8'/1,
  'dn--un--fromScheme_Scheme_Int64'/1,
  'dn--un--fromScheme_Scheme_Int32'/1,
  'dn--un--fromScheme_Scheme_Int16'/1,
  'dn--un--fromScheme_Scheme_Int'/1,
  'dn--un--fromScheme_Scheme_Double'/1,
  'dn--un--fromScheme_Scheme_Char'/1,
  'dn--un--fromScheme_Scheme_Bool'/1,
  'dn--un--fromScheme_Scheme_Bits8'/1,
  'dn--un--fromScheme_Scheme_Bits64'/1,
  'dn--un--fromScheme_Scheme_Bits32'/1,
  'dn--un--fromScheme_Scheme_Bits16'/1,
  'dn--un--fromScheme_Scheme_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/2,
  'dn--un--fromScheme_Scheme_(Maybe $a)'/2,
  'dn--un--fromScheme_Scheme_(List $a)'/2,
  'dn--un--__Impl_Scheme_String'/0,
  'dn--un--__Impl_Scheme_Integer'/0,
  'dn--un--__Impl_Scheme_Int8'/0,
  'dn--un--__Impl_Scheme_Int64'/0,
  'dn--un--__Impl_Scheme_Int32'/0,
  'dn--un--__Impl_Scheme_Int16'/0,
  'dn--un--__Impl_Scheme_Int'/0,
  'dn--un--__Impl_Scheme_Double'/0,
  'dn--un--__Impl_Scheme_Char'/0,
  'dn--un--__Impl_Scheme_Bool'/0,
  'dn--un--__Impl_Scheme_Bits8'/0,
  'dn--un--__Impl_Scheme_Bits64'/0,
  'dn--un--__Impl_Scheme_Bits32'/0,
  'dn--un--__Impl_Scheme_Bits16'/0,
  'dn--un--__Impl_Scheme_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/1,
  'dn--un--__Impl_Scheme_(Maybe $a)'/1,
  'dn--un--__Impl_Scheme_(List $a)'/1,
  'un--unsafeVectorToList'/1,
  'un--unsafeVectorRef'/2,
  'un--unsafeVectorLength'/1,
  'un--unsafeUnbox'/1,
  'un--unsafeSnd'/1,
  'un--unsafeReadSymbol'/1,
  'un--unsafeGetString'/1,
  'un--unsafeGetInteger'/1,
  'un--unsafeGetFloat'/1,
  'un--unsafeGetChar'/1,
  'un--unsafeFst'/1,
  'un--unsafeForce'/1,
  'un--unsafeApply'/2,
  'un--toScheme'/2,
  'un--prim_isVector'/1,
  'un--prim_isSymbol'/1,
  'un--prim_isString'/1,
  'un--prim_isProcedure'/1,
  'un--prim_isPair'/1,
  'un--prim_isNumber'/1,
  'un--prim_isNil'/1,
  'un--prim_isInteger'/1,
  'un--prim_isFloat'/1,
  'un--prim_isChar'/1,
  'un--prim_isBox'/1,
  'un--prim__evalScheme'/1,
  'un--prim__evalResult'/1,
  'un--prim__evalOkay'/1,
  'un--prim__debugScheme'/2,
  'un--makeSymbol'/1,
  'un--isVector'/1,
  'un--isSymbol'/1,
  'un--isString'/1,
  'un--isProcedure'/1,
  'un--isPair'/1,
  'un--isNumber'/1,
  'un--isNil'/1,
  'un--isInteger'/1,
  'un--isFloat'/1,
  'un--isChar'/1,
  'un--isBox'/1,
  'un--fromScheme'/2,
  'un--evalSchemeStr'/1,
  'un--evalSchemeObj'/1,
  'un--evalScheme'/2,
  'un--decodeObj'/1,
  'un--decode'/2,
  'un--debugScheme'/2
]).
'nested--3066-1348--in--un--toString'(V0, V1) -> case V1 of {'Libraries.Utils.Scheme.Null'} -> <<"\x{27}()"/utf8>>; {'Libraries.Utils.Scheme.Cons', V2, V3} -> <<<<"(cons "/utf8>>/binary, <<('nested--3066-1348--in--un--toString'(V0, V2))/binary, <<<<" "/utf8>>/binary, <<('nested--3066-1348--in--un--toString'(V0, V3))/binary, <<")"/utf8>>/binary>>/binary>>/binary>>/binary>>; {'Libraries.Utils.Scheme.IntegerVal', V4} -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Integer'(V4)); {'Libraries.Utils.Scheme.FloatVal', V5} -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Double'(V5)); {'Libraries.Utils.Scheme.StringVal', V6} -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_String'(V6)); {'Libraries.Utils.Scheme.CharVal', V7} -> case case ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord_Int'(case V7 of E2 when ((erlang:'is_integer'(E2)) andalso (((E2 >= 0) andalso (E2 =< 55295)) orelse ((E2 >= 57344) andalso (E2 =< 1114111)))) -> E2; _ -> 65533 end, begin (V8 = 32), case ((V8 band 9223372036854775808) =/= 0) of 'true' -> (V8 bor -9223372036854775808); _ -> (V8 band 9223372036854775807) end end)) of 1 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Int'(case V7 of E1 when ((erlang:'is_integer'(E1)) andalso (((E1 >= 0) andalso (E1 =< 55295)) orelse ((E1 >= 57344) andalso (E1 =< 1114111)))) -> E1; _ -> 65533 end, begin (V9 = 127), case ((V9 band 9223372036854775808) =/= 0) of 'true' -> (V9 bor -9223372036854775808); _ -> (V9 band 9223372036854775807) end end)); 0 -> 0 end of 1 -> <<<<"#\x{5c}"/utf8>>/binary, ('unicode':'characters_to_binary'([V7 | []]))/binary>>; 0 -> <<<<"(integer->char "/utf8>>/binary, <<('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(case V7 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end))/binary, <<")"/utf8>>/binary>>/binary>> end; {'Libraries.Utils.Scheme.Symbol', V10} -> <<<<"\x{27}"/utf8>>/binary, V10/binary>>; {'Libraries.Utils.Scheme.Vector', V11, V12} -> <<<<"(vector "/utf8>>/binary, <<('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Integer'(V11))/binary, <<<<" "/utf8>>/binary, <<('nested--3066-1347--in--un--showSep'(V0, <<" "/utf8>>, ((begin (V18 = fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V16, V17)) end end end end), fun (V19) -> fun (V20) -> ((((V18('erased'))('erased'))(V19))(V20)) end end end(fun (V13) -> ('nested--3066-1348--in--un--toString'(V0, V13)) end))(V12))))/binary, <<")"/utf8>>/binary>>/binary>>/binary>>/binary>>; {'Libraries.Utils.Scheme.Box', V21} -> <<<<"(box "/utf8>>/binary, <<('nested--3066-1348--in--un--toString'(V0, V21))/binary, <<")"/utf8>>/binary>>/binary>>; {'Libraries.Utils.Scheme.Define', V22, V23} -> <<<<"(define ("/utf8>>/binary, <<V22/binary, <<<<") "/utf8>>/binary, <<('nested--3066-1348--in--un--toString'(V0, V23))/binary, <<")"/utf8>>/binary>>/binary>>/binary>>/binary>>; {'Libraries.Utils.Scheme.Var', V24} -> V24; {'Libraries.Utils.Scheme.Lambda', V25, V26} -> <<<<"(lambda ("/utf8>>/binary, <<('nested--3066-1347--in--un--showSep'(V0, <<" "/utf8>>, V25))/binary, <<<<") "/utf8>>/binary, <<('nested--3066-1348--in--un--toString'(V0, V26))/binary, <<")"/utf8>>/binary>>/binary>>/binary>>/binary>>; {'Libraries.Utils.Scheme.Let', V27, V28, V29} -> <<<<"(let (("/utf8>>/binary, <<V27/binary, <<<<" "/utf8>>/binary, <<('nested--3066-1348--in--un--toString'(V0, V28))/binary, <<<<")) "/utf8>>/binary, <<('nested--3066-1348--in--un--toString'(V0, V29))/binary, <<")"/utf8>>/binary>>/binary>>/binary>>/binary>>/binary>>/binary>>; {'Libraries.Utils.Scheme.If', V30, V31, V32} -> <<<<"(if "/utf8>>/binary, <<('nested--3066-1348--in--un--toString'(V0, V30))/binary, <<<<" "/utf8>>/binary, <<('nested--3066-1348--in--un--toString'(V0, V31))/binary, <<<<" "/utf8>>/binary, <<('nested--3066-1348--in--un--toString'(V0, V32))/binary, <<")"/utf8>>/binary>>/binary>>/binary>>/binary>>/binary>>/binary>>; {'Libraries.Utils.Scheme.Case', V33, V34, V35} -> <<<<"(case "/utf8>>/binary, <<('nested--3066-1348--in--un--toString'(V0, V33))/binary, <<<<" "/utf8>>/binary, <<('nested--3066-1347--in--un--showSep'(V0, <<" "/utf8>>, ((begin (V41 = fun (V37) -> fun (V38) -> fun (V39) -> fun (V40) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V39, V40)) end end end end), fun (V42) -> fun (V43) -> ((((V41('erased'))('erased'))(V42))(V43)) end end end(fun (V36) -> ('nested--3073-1541--in--un--showAlt'(V0, V35, V34, V33, V36)) end))(V34))))/binary, <<('nested--3073-1542--in--un--showDef'(V0, V35, V34, V33, V35))/binary, <<")"/utf8>>/binary>>/binary>>/binary>>/binary>>/binary>>; {'Libraries.Utils.Scheme.Cond', V44, V45} -> <<<<"(cond "/utf8>>/binary, <<('nested--3066-1347--in--un--showSep'(V0, <<" "/utf8>>, ((begin (V51 = fun (V47) -> fun (V48) -> fun (V49) -> fun (V50) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V49, V50)) end end end end), fun (V52) -> fun (V53) -> ((((V51('erased'))('erased'))(V52))(V53)) end end end(fun (V46) -> ('nested--3073-1597--in--un--showAlt'(V0, V45, V44, V46)) end))(V44))))/binary, <<('nested--3073-1598--in--un--showDef'(V0, V45, V44, V45))/binary, <<")"/utf8>>/binary>>/binary>>/binary>>; {'Libraries.Utils.Scheme.Apply', V54, V55} -> <<<<"("/utf8>>/binary, <<('nested--3066-1348--in--un--toString'(V0, V54))/binary, <<<<" "/utf8>>/binary, <<('nested--3066-1347--in--un--showSep'(V0, <<" "/utf8>>, ((begin (V61 = fun (V57) -> fun (V58) -> fun (V59) -> fun (V60) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V59, V60)) end end end end), fun (V62) -> fun (V63) -> ((((V61('erased'))('erased'))(V62))(V63)) end end end(fun (V56) -> ('nested--3066-1348--in--un--toString'(V0, V56)) end))(V55))))/binary, <<")"/utf8>>/binary>>/binary>>/binary>>/binary>> end.
'nested--3066-1347--in--un--showSep'(V0, V1, V2) -> case V2 of [] -> <<""/utf8>>; [E0 | E1] -> (fun (V3, V4) -> case V4 of [] -> V3; _ -> <<V3/binary, <<V1/binary, ('nested--3066-1347--in--un--showSep'(V0, V1, V4))/binary>>/binary>> end end(E0, E1)) end.
'nested--3073-1598--in--un--showDef'(V0, V1, V2, V3) -> case V3 of {'Prelude.Types.Nothing'} -> <<""/utf8>>; {'Prelude.Types.Just', V4} -> <<<<" (else "/utf8>>/binary, <<('nested--3066-1348--in--un--toString'(V0, V4))/binary, <<")"/utf8>>/binary>>/binary>> end.
'nested--3073-1542--in--un--showDef'(V0, V1, V2, V3, V4) -> case V4 of {'Prelude.Types.Nothing'} -> <<""/utf8>>; {'Prelude.Types.Just', V5} -> <<<<" (else "/utf8>>/binary, <<('nested--3066-1348--in--un--toString'(V0, V5))/binary, <<")"/utf8>>/binary>>/binary>> end.
'nested--3073-1597--in--un--showAlt'(V0, V1, V2, V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> <<<<"("/utf8>>/binary, <<('nested--3066-1348--in--un--toString'(V0, V4))/binary, <<<<" "/utf8>>/binary, <<('nested--3066-1348--in--un--toString'(V0, V5))/binary, <<")"/utf8>>/binary>>/binary>>/binary>>/binary>> end.
'nested--3073-1541--in--un--showAlt'(V0, V1, V2, V3, V4) -> case V4 of {'Builtin.MkPair', V5, V6} -> <<<<"(("/utf8>>/binary, <<('nested--3066-1348--in--un--toString'(V0, V5))/binary, <<<<") "/utf8>>/binary, <<('nested--3066-1348--in--un--toString'(V0, V6))/binary, <<")"/utf8>>/binary>>/binary>>/binary>>/binary>> end.
'nested--3402-1672--in--un--readVector'(V0, V1, V2, V3) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Integer'(V1, V2)) of 1 -> []; 0 -> [('un--decodeObj'(('un--unsafeVectorRef'(V3, V2)))) | ('nested--3402-1672--in--un--readVector'(V0, V1, (V2 + 1), V3))] end.
'dn--un--toScheme_Scheme_String'(V0) -> {'Libraries.Utils.Scheme.StringVal', V0}.
'dn--un--toScheme_Scheme_Integer'(V0) -> {'Libraries.Utils.Scheme.IntegerVal', V0}.
'dn--un--toScheme_Scheme_Int8'(V0) -> {'Libraries.Utils.Scheme.IntegerVal', V0}.
'dn--un--toScheme_Scheme_Int64'(V0) -> {'Libraries.Utils.Scheme.IntegerVal', V0}.
'dn--un--toScheme_Scheme_Int32'(V0) -> {'Libraries.Utils.Scheme.IntegerVal', V0}.
'dn--un--toScheme_Scheme_Int16'(V0) -> {'Libraries.Utils.Scheme.IntegerVal', V0}.
'dn--un--toScheme_Scheme_Int'(V0) -> {'Libraries.Utils.Scheme.IntegerVal', V0}.
'dn--un--toScheme_Scheme_Double'(V0) -> {'Libraries.Utils.Scheme.FloatVal', V0}.
'dn--un--toScheme_Scheme_Char'(V0) -> {'Libraries.Utils.Scheme.CharVal', V0}.
'dn--un--toScheme_Scheme_Bool'(V0) -> case V0 of 0 -> {'Libraries.Utils.Scheme.IntegerVal', 0}; 1 -> {'Libraries.Utils.Scheme.IntegerVal', 1} end.
'dn--un--toScheme_Scheme_Bits8'(V0) -> {'Libraries.Utils.Scheme.IntegerVal', V0}.
'dn--un--toScheme_Scheme_Bits64'(V0) -> {'Libraries.Utils.Scheme.IntegerVal', V0}.
'dn--un--toScheme_Scheme_Bits32'(V0) -> {'Libraries.Utils.Scheme.IntegerVal', V0}.
'dn--un--toScheme_Scheme_Bits16'(V0) -> {'Libraries.Utils.Scheme.IntegerVal', V0}.
'dn--un--toScheme_Scheme_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1) -> case V1 of {'Builtin.MkPair', V2, V3} -> {'Libraries.Utils.Scheme.Cons', case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Libraries.Utils.Scheme.dn--un--__mkScheme', V4, V5} -> (V4(V2)) end, case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Libraries.Utils.Scheme.dn--un--__mkScheme', V6, V7} -> (V6(V3)) end} end.
'dn--un--toScheme_Scheme_(Maybe $a)'(V0, V1) -> case V1 of {'Prelude.Types.Nothing'} -> {'Libraries.Utils.Scheme.Null'}; {'Prelude.Types.Just', V2} -> {'Libraries.Utils.Scheme.Box', case V0 of {'Libraries.Utils.Scheme.dn--un--__mkScheme', V3, V4} -> (V3(V2)) end} end.
'dn--un--toScheme_Scheme_(List $a)'(V0, V1) -> case V1 of [] -> {'Libraries.Utils.Scheme.Null'}; [E0 | E1] -> (fun (V2, V3) -> {'Libraries.Utils.Scheme.Cons', case V0 of {'Libraries.Utils.Scheme.dn--un--__mkScheme', V4, V5} -> (V4(V2)) end, ('dn--un--toScheme_Scheme_(List $a)'(V0, V3))} end(E0, E1)) end.
'dn--un--fromScheme_Scheme_String'(V0) -> case V0 of {'Libraries.Utils.Scheme.StringVal', V1} -> {'Prelude.Types.Just', V1}; _ -> {'Prelude.Types.Nothing'} end.
'dn--un--fromScheme_Scheme_Integer'(V0) -> case V0 of {'Libraries.Utils.Scheme.IntegerVal', V1} -> {'Prelude.Types.Just', V1}; _ -> {'Prelude.Types.Nothing'} end.
'dn--un--fromScheme_Scheme_Int8'(V0) -> case V0 of {'Libraries.Utils.Scheme.IntegerVal', V1} -> {'Prelude.Types.Just', begin (V2 = V1), case ((V2 band 128) =/= 0) of 'true' -> (V2 bor -128); _ -> (V2 band 127) end end}; _ -> {'Prelude.Types.Nothing'} end.
'dn--un--fromScheme_Scheme_Int64'(V0) -> case V0 of {'Libraries.Utils.Scheme.IntegerVal', V1} -> {'Prelude.Types.Just', begin (V2 = V1), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end}; _ -> {'Prelude.Types.Nothing'} end.
'dn--un--fromScheme_Scheme_Int32'(V0) -> case V0 of {'Libraries.Utils.Scheme.IntegerVal', V1} -> {'Prelude.Types.Just', begin (V2 = V1), case ((V2 band 2147483648) =/= 0) of 'true' -> (V2 bor -2147483648); _ -> (V2 band 2147483647) end end}; _ -> {'Prelude.Types.Nothing'} end.
'dn--un--fromScheme_Scheme_Int16'(V0) -> case V0 of {'Libraries.Utils.Scheme.IntegerVal', V1} -> {'Prelude.Types.Just', begin (V2 = V1), case ((V2 band 32768) =/= 0) of 'true' -> (V2 bor -32768); _ -> (V2 band 32767) end end}; _ -> {'Prelude.Types.Nothing'} end.
'dn--un--fromScheme_Scheme_Int'(V0) -> case V0 of {'Libraries.Utils.Scheme.IntegerVal', V1} -> {'Prelude.Types.Just', begin (V2 = V1), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end}; _ -> {'Prelude.Types.Nothing'} end.
'dn--un--fromScheme_Scheme_Double'(V0) -> case V0 of {'Libraries.Utils.Scheme.FloatVal', V1} -> {'Prelude.Types.Just', V1}; _ -> {'Prelude.Types.Nothing'} end.
'dn--un--fromScheme_Scheme_Char'(V0) -> case V0 of {'Libraries.Utils.Scheme.CharVal', V1} -> {'Prelude.Types.Just', V1}; _ -> {'Prelude.Types.Nothing'} end.
'dn--un--fromScheme_Scheme_Bool'(V0) -> case V0 of {'Libraries.Utils.Scheme.IntegerVal', V1} -> case V1 of 0 -> {'Prelude.Types.Just', 0}; 1 -> {'Prelude.Types.Just', 1}; _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end.
'dn--un--fromScheme_Scheme_Bits8'(V0) -> case V0 of {'Libraries.Utils.Scheme.IntegerVal', V1} -> {'Prelude.Types.Just', begin (V2 = V1), begin (V3 = 256), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end}; _ -> {'Prelude.Types.Nothing'} end.
'dn--un--fromScheme_Scheme_Bits64'(V0) -> case V0 of {'Libraries.Utils.Scheme.IntegerVal', V1} -> {'Prelude.Types.Just', begin (V2 = V1), begin (V3 = 18446744073709551616), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end}; _ -> {'Prelude.Types.Nothing'} end.
'dn--un--fromScheme_Scheme_Bits32'(V0) -> case V0 of {'Libraries.Utils.Scheme.IntegerVal', V1} -> {'Prelude.Types.Just', begin (V2 = V1), begin (V3 = 4294967296), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end}; _ -> {'Prelude.Types.Nothing'} end.
'dn--un--fromScheme_Scheme_Bits16'(V0) -> case V0 of {'Libraries.Utils.Scheme.IntegerVal', V1} -> {'Prelude.Types.Just', begin (V2 = V1), begin (V3 = 65536), begin (V4 = (V2 rem V3)), case ((V4 * V3) < 0) of 'true' -> (V4 + V3); _ -> V4 end end end end}; _ -> {'Prelude.Types.Nothing'} end.
'dn--un--fromScheme_Scheme_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1) -> case V1 of {'Libraries.Utils.Scheme.Cons', V2, V3} -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Libraries.Utils.Scheme.dn--un--__mkScheme', V4, V5} -> (V5(V2)) end, fun (V6) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Libraries.Utils.Scheme.dn--un--__mkScheme', V7, V8} -> (V8(V3)) end, fun (V9) -> {'Prelude.Types.Just', {'Builtin.MkPair', V6, V9}} end)) end)); _ -> {'Prelude.Types.Nothing'} end.
'dn--un--fromScheme_Scheme_(Maybe $a)'(V0, V1) -> case V1 of {'Libraries.Utils.Scheme.Null'} -> {'Prelude.Types.Just', {'Prelude.Types.Nothing'}}; {'Libraries.Utils.Scheme.Box', V2} -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(case V0 of {'Libraries.Utils.Scheme.dn--un--__mkScheme', V3, V4} -> (V4(V2)) end, fun (V5) -> {'Prelude.Types.Just', {'Prelude.Types.Just', V5}} end)); _ -> {'Prelude.Types.Nothing'} end.
'dn--un--fromScheme_Scheme_(List $a)'(V0, V1) -> case V1 of {'Libraries.Utils.Scheme.Null'} -> {'Prelude.Types.Just', []}; {'Libraries.Utils.Scheme.Cons', V2, V3} -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(case V0 of {'Libraries.Utils.Scheme.dn--un--__mkScheme', V4, V5} -> (V5(V2)) end, fun (V6) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('dn--un--fromScheme_Scheme_(List $a)'(V0, V3)), fun (V7) -> {'Prelude.Types.Just', [V6 | V7]} end)) end)); _ -> {'Prelude.Types.Nothing'} end.
'dn--un--__Impl_Scheme_String'() -> {'Libraries.Utils.Scheme.dn--un--__mkScheme', fun (V0) -> ('dn--un--toScheme_Scheme_String'(V0)) end, fun (V1) -> ('dn--un--fromScheme_Scheme_String'(V1)) end}.
'dn--un--__Impl_Scheme_Integer'() -> {'Libraries.Utils.Scheme.dn--un--__mkScheme', fun (V0) -> ('dn--un--toScheme_Scheme_Integer'(V0)) end, fun (V1) -> ('dn--un--fromScheme_Scheme_Integer'(V1)) end}.
'dn--un--__Impl_Scheme_Int8'() -> {'Libraries.Utils.Scheme.dn--un--__mkScheme', fun (V0) -> ('dn--un--toScheme_Scheme_Int8'(V0)) end, fun (V1) -> ('dn--un--fromScheme_Scheme_Int8'(V1)) end}.
'dn--un--__Impl_Scheme_Int64'() -> {'Libraries.Utils.Scheme.dn--un--__mkScheme', fun (V0) -> ('dn--un--toScheme_Scheme_Int64'(V0)) end, fun (V1) -> ('dn--un--fromScheme_Scheme_Int64'(V1)) end}.
'dn--un--__Impl_Scheme_Int32'() -> {'Libraries.Utils.Scheme.dn--un--__mkScheme', fun (V0) -> ('dn--un--toScheme_Scheme_Int32'(V0)) end, fun (V1) -> ('dn--un--fromScheme_Scheme_Int32'(V1)) end}.
'dn--un--__Impl_Scheme_Int16'() -> {'Libraries.Utils.Scheme.dn--un--__mkScheme', fun (V0) -> ('dn--un--toScheme_Scheme_Int16'(V0)) end, fun (V1) -> ('dn--un--fromScheme_Scheme_Int16'(V1)) end}.
'dn--un--__Impl_Scheme_Int'() -> {'Libraries.Utils.Scheme.dn--un--__mkScheme', fun (V0) -> ('dn--un--toScheme_Scheme_Int'(V0)) end, fun (V1) -> ('dn--un--fromScheme_Scheme_Int'(V1)) end}.
'dn--un--__Impl_Scheme_Double'() -> {'Libraries.Utils.Scheme.dn--un--__mkScheme', fun (V0) -> ('dn--un--toScheme_Scheme_Double'(V0)) end, fun (V1) -> ('dn--un--fromScheme_Scheme_Double'(V1)) end}.
'dn--un--__Impl_Scheme_Char'() -> {'Libraries.Utils.Scheme.dn--un--__mkScheme', fun (V0) -> ('dn--un--toScheme_Scheme_Char'(V0)) end, fun (V1) -> ('dn--un--fromScheme_Scheme_Char'(V1)) end}.
'dn--un--__Impl_Scheme_Bool'() -> {'Libraries.Utils.Scheme.dn--un--__mkScheme', fun (V0) -> ('dn--un--toScheme_Scheme_Bool'(V0)) end, fun (V1) -> ('dn--un--fromScheme_Scheme_Bool'(V1)) end}.
'dn--un--__Impl_Scheme_Bits8'() -> {'Libraries.Utils.Scheme.dn--un--__mkScheme', fun (V0) -> ('dn--un--toScheme_Scheme_Bits8'(V0)) end, fun (V1) -> ('dn--un--fromScheme_Scheme_Bits8'(V1)) end}.
'dn--un--__Impl_Scheme_Bits64'() -> {'Libraries.Utils.Scheme.dn--un--__mkScheme', fun (V0) -> ('dn--un--toScheme_Scheme_Bits64'(V0)) end, fun (V1) -> ('dn--un--fromScheme_Scheme_Bits64'(V1)) end}.
'dn--un--__Impl_Scheme_Bits32'() -> {'Libraries.Utils.Scheme.dn--un--__mkScheme', fun (V0) -> ('dn--un--toScheme_Scheme_Bits32'(V0)) end, fun (V1) -> ('dn--un--fromScheme_Scheme_Bits32'(V1)) end}.
'dn--un--__Impl_Scheme_Bits16'() -> {'Libraries.Utils.Scheme.dn--un--__mkScheme', fun (V0) -> ('dn--un--toScheme_Scheme_Bits16'(V0)) end, fun (V1) -> ('dn--un--fromScheme_Scheme_Bits16'(V1)) end}.
'dn--un--__Impl_Scheme_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0) -> {'Libraries.Utils.Scheme.dn--un--__mkScheme', fun (V1) -> ('dn--un--toScheme_Scheme_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1)) end, fun (V2) -> ('dn--un--fromScheme_Scheme_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V2)) end}.
'dn--un--__Impl_Scheme_(Maybe $a)'(V0) -> {'Libraries.Utils.Scheme.dn--un--__mkScheme', fun (V1) -> ('dn--un--toScheme_Scheme_(Maybe $a)'(V0, V1)) end, fun (V2) -> ('dn--un--fromScheme_Scheme_(Maybe $a)'(V0, V2)) end}.
'dn--un--__Impl_Scheme_(List $a)'(V0) -> {'Libraries.Utils.Scheme.dn--un--__mkScheme', fun (V1) -> ('dn--un--toScheme_Scheme_(List $a)'(V0, V1)) end, fun (V2) -> ('dn--un--fromScheme_Scheme_(List $a)'(V0, V2)) end}.
'un--unsafeVectorToList'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.unsafeVectorToList"/utf8>>})).
'un--unsafeVectorRef'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.unsafeVectorRef"/utf8>>})).
'un--unsafeVectorLength'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.unsafeVectorLength"/utf8>>})).
'un--unsafeUnbox'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.unsafeUnbox"/utf8>>})).
'un--unsafeSnd'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.unsafeSnd"/utf8>>})).
'un--unsafeReadSymbol'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.unsafeReadSymbol"/utf8>>})).
'un--unsafeGetString'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.unsafeGetString"/utf8>>})).
'un--unsafeGetInteger'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.unsafeGetInteger"/utf8>>})).
'un--unsafeGetFloat'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.unsafeGetFloat"/utf8>>})).
'un--unsafeGetChar'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.unsafeGetChar"/utf8>>})).
'un--unsafeFst'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.unsafeFst"/utf8>>})).
'un--unsafeForce'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.unsafeForce"/utf8>>})).
'un--unsafeApply'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.unsafeApply"/utf8>>})).
'un--toScheme'(V0, V1) -> case V0 of {'Libraries.Utils.Scheme.dn--un--__mkScheme', V2, V3} -> (V2(V1)) end.
'un--prim_isVector'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.prim_isVector"/utf8>>})).
'un--prim_isSymbol'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.prim_isSymbol"/utf8>>})).
'un--prim_isString'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.prim_isString"/utf8>>})).
'un--prim_isProcedure'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.prim_isProcedure"/utf8>>})).
'un--prim_isPair'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.prim_isPair"/utf8>>})).
'un--prim_isNumber'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.prim_isNumber"/utf8>>})).
'un--prim_isNil'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.prim_isNil"/utf8>>})).
'un--prim_isInteger'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.prim_isInteger"/utf8>>})).
'un--prim_isFloat'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.prim_isFloat"/utf8>>})).
'un--prim_isChar'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.prim_isChar"/utf8>>})).
'un--prim_isBox'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.prim_isBox"/utf8>>})).
'un--prim__evalScheme'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.prim__evalScheme"/utf8>>})).
'un--prim__evalResult'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.prim__evalResult"/utf8>>})).
'un--prim__evalOkay'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.prim__evalOkay"/utf8>>})).
'un--prim__debugScheme'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.prim__debugScheme"/utf8>>})).
'un--makeSymbol'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Libraries.Utils.Scheme.makeSymbol"/utf8>>})).
'un--isVector'(V0) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(('un--prim_isVector'(V0)), begin (V1 = 1), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end)).
'un--isSymbol'(V0) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(('un--prim_isSymbol'(V0)), begin (V1 = 1), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end)).
'un--isString'(V0) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(('un--prim_isString'(V0)), begin (V1 = 1), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end)).
'un--isProcedure'(V0) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(('un--prim_isProcedure'(V0)), begin (V1 = 1), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end)).
'un--isPair'(V0) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(('un--prim_isPair'(V0)), begin (V1 = 1), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end)).
'un--isNumber'(V0) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(('un--prim_isNumber'(V0)), begin (V1 = 1), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end)).
'un--isNil'(V0) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(('un--prim_isNil'(V0)), begin (V1 = 1), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end)).
'un--isInteger'(V0) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(('un--prim_isInteger'(V0)), begin (V1 = 1), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end)).
'un--isFloat'(V0) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(('un--prim_isFloat'(V0)), begin (V1 = 1), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end)).
'un--isChar'(V0) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(('un--prim_isChar'(V0)), begin (V1 = 1), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end)).
'un--isBox'(V0) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(('un--prim_isBox'(V0)), begin (V1 = 1), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end)).
'un--fromScheme'(V0, V1) -> case V0 of {'Libraries.Utils.Scheme.dn--un--__mkScheme', V2, V3} -> (V3(V1)) end.
'un--evalSchemeStr'(V0) -> begin (V1 = ('un--prim__evalScheme'(V0))), fun (V2) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(('un--prim__evalOkay'(V1)), begin (V3 = 1), case ((V3 band 9223372036854775808) =/= 0) of 'true' -> (V3 bor -9223372036854775808); _ -> (V3 band 9223372036854775807) end end)) of 1 -> {'Prelude.Types.Just', ('un--prim__evalResult'(V1))}; 0 -> {'Prelude.Types.Nothing'} end end end.
'un--evalSchemeObj'(V0) -> begin (V1 = ('nested--3066-1348--in--un--toString'(V0, V0))), ('un--evalSchemeStr'(V1)) end.
'un--evalScheme'(V0, V1) -> ('un--evalSchemeObj'(case V0 of {'Libraries.Utils.Scheme.dn--un--__mkScheme', V2, V3} -> (V2(V1)) end)).
'un--decodeObj'(V0) -> case ('un--isInteger'(V0)) of 1 -> {'Libraries.Utils.Scheme.IntegerVal', ('un--unsafeGetInteger'(V0))}; 0 -> case ('un--isVector'(V0)) of 1 -> {'Libraries.Utils.Scheme.Vector', ('un--unsafeGetInteger'(('un--unsafeVectorRef'(V0, 0)))), ('nested--3402-1672--in--un--readVector'(V0, ('un--unsafeVectorLength'(V0)), 1, V0))}; 0 -> case ('un--isPair'(V0)) of 1 -> {'Libraries.Utils.Scheme.Cons', ('un--decodeObj'(('un--unsafeFst'(V0)))), ('un--decodeObj'(('un--unsafeSnd'(V0))))}; 0 -> case ('un--isFloat'(V0)) of 1 -> {'Libraries.Utils.Scheme.FloatVal', ('un--unsafeGetFloat'(V0))}; 0 -> case ('un--isString'(V0)) of 1 -> {'Libraries.Utils.Scheme.StringVal', ('un--unsafeGetString'(V0))}; 0 -> case ('un--isChar'(V0)) of 1 -> {'Libraries.Utils.Scheme.CharVal', ('un--unsafeGetChar'(V0))}; 0 -> case ('un--isSymbol'(V0)) of 1 -> {'Libraries.Utils.Scheme.Symbol', ('un--unsafeReadSymbol'(V0))}; 0 -> case ('un--isProcedure'(V0)) of 1 -> {'Libraries.Utils.Scheme.Procedure', V0}; 0 -> case ('un--isBox'(V0)) of 1 -> {'Libraries.Utils.Scheme.Box', ('un--decodeObj'(('un--unsafeUnbox'(V0))))}; 0 -> {'Libraries.Utils.Scheme.Null'} end end end end end end end end end.
'un--decode'(V0, V1) -> case V0 of {'Libraries.Utils.Scheme.dn--un--__mkScheme', V2, V3} -> (V3(('un--decodeObj'(V1)))) end.
'un--debugScheme'(V0, V1) -> ('un--prim__debugScheme'(V0, V1)).
