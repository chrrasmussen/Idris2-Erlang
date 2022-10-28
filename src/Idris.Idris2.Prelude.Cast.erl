-module('Idris.Idris2.Prelude.Cast').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--cast_Cast_String_Nat'/1,
  'dn--un--cast_Cast_String_Integer'/1,
  'dn--un--cast_Cast_String_Int8'/1,
  'dn--un--cast_Cast_String_Int64'/1,
  'dn--un--cast_Cast_String_Int32'/1,
  'dn--un--cast_Cast_String_Int16'/1,
  'dn--un--cast_Cast_String_Int'/1,
  'dn--un--cast_Cast_String_Double'/1,
  'dn--un--cast_Cast_String_Bits8'/1,
  'dn--un--cast_Cast_String_Bits64'/1,
  'dn--un--cast_Cast_String_Bits32'/1,
  'dn--un--cast_Cast_String_Bits16'/1,
  'dn--un--cast_Cast_Nat_String'/1,
  'dn--un--cast_Cast_Nat_Integer'/1,
  'dn--un--cast_Cast_Nat_Int8'/1,
  'dn--un--cast_Cast_Nat_Int64'/1,
  'dn--un--cast_Cast_Nat_Int32'/1,
  'dn--un--cast_Cast_Nat_Int16'/1,
  'dn--un--cast_Cast_Nat_Int'/1,
  'dn--un--cast_Cast_Nat_Double'/1,
  'dn--un--cast_Cast_Nat_Char'/1,
  'dn--un--cast_Cast_Nat_Bits8'/1,
  'dn--un--cast_Cast_Nat_Bits64'/1,
  'dn--un--cast_Cast_Nat_Bits32'/1,
  'dn--un--cast_Cast_Nat_Bits16'/1,
  'dn--un--cast_Cast_Integer_String'/1,
  'dn--un--cast_Cast_Integer_Nat'/1,
  'dn--un--cast_Cast_Integer_Int8'/1,
  'dn--un--cast_Cast_Integer_Int64'/1,
  'dn--un--cast_Cast_Integer_Int32'/1,
  'dn--un--cast_Cast_Integer_Int16'/1,
  'dn--un--cast_Cast_Integer_Int'/1,
  'dn--un--cast_Cast_Integer_Double'/1,
  'dn--un--cast_Cast_Integer_Char'/1,
  'dn--un--cast_Cast_Integer_Bits8'/1,
  'dn--un--cast_Cast_Integer_Bits64'/1,
  'dn--un--cast_Cast_Integer_Bits32'/1,
  'dn--un--cast_Cast_Integer_Bits16'/1,
  'dn--un--cast_Cast_Int_String'/1,
  'dn--un--cast_Cast_Int_Nat'/1,
  'dn--un--cast_Cast_Int_Integer'/1,
  'dn--un--cast_Cast_Int_Int8'/1,
  'dn--un--cast_Cast_Int_Int64'/1,
  'dn--un--cast_Cast_Int_Int32'/1,
  'dn--un--cast_Cast_Int_Int16'/1,
  'dn--un--cast_Cast_Int_Double'/1,
  'dn--un--cast_Cast_Int_Char'/1,
  'dn--un--cast_Cast_Int_Bits8'/1,
  'dn--un--cast_Cast_Int_Bits64'/1,
  'dn--un--cast_Cast_Int_Bits32'/1,
  'dn--un--cast_Cast_Int_Bits16'/1,
  'dn--un--cast_Cast_Int8_String'/1,
  'dn--un--cast_Cast_Int8_Nat'/1,
  'dn--un--cast_Cast_Int8_Integer'/1,
  'dn--un--cast_Cast_Int8_Int64'/1,
  'dn--un--cast_Cast_Int8_Int32'/1,
  'dn--un--cast_Cast_Int8_Int16'/1,
  'dn--un--cast_Cast_Int8_Int'/1,
  'dn--un--cast_Cast_Int8_Double'/1,
  'dn--un--cast_Cast_Int8_Char'/1,
  'dn--un--cast_Cast_Int8_Bits8'/1,
  'dn--un--cast_Cast_Int8_Bits64'/1,
  'dn--un--cast_Cast_Int8_Bits32'/1,
  'dn--un--cast_Cast_Int8_Bits16'/1,
  'dn--un--cast_Cast_Int64_String'/1,
  'dn--un--cast_Cast_Int64_Nat'/1,
  'dn--un--cast_Cast_Int64_Integer'/1,
  'dn--un--cast_Cast_Int64_Int8'/1,
  'dn--un--cast_Cast_Int64_Int32'/1,
  'dn--un--cast_Cast_Int64_Int16'/1,
  'dn--un--cast_Cast_Int64_Int'/1,
  'dn--un--cast_Cast_Int64_Double'/1,
  'dn--un--cast_Cast_Int64_Char'/1,
  'dn--un--cast_Cast_Int64_Bits8'/1,
  'dn--un--cast_Cast_Int64_Bits64'/1,
  'dn--un--cast_Cast_Int64_Bits32'/1,
  'dn--un--cast_Cast_Int64_Bits16'/1,
  'dn--un--cast_Cast_Int32_String'/1,
  'dn--un--cast_Cast_Int32_Nat'/1,
  'dn--un--cast_Cast_Int32_Integer'/1,
  'dn--un--cast_Cast_Int32_Int8'/1,
  'dn--un--cast_Cast_Int32_Int64'/1,
  'dn--un--cast_Cast_Int32_Int16'/1,
  'dn--un--cast_Cast_Int32_Int'/1,
  'dn--un--cast_Cast_Int32_Double'/1,
  'dn--un--cast_Cast_Int32_Char'/1,
  'dn--un--cast_Cast_Int32_Bits8'/1,
  'dn--un--cast_Cast_Int32_Bits64'/1,
  'dn--un--cast_Cast_Int32_Bits32'/1,
  'dn--un--cast_Cast_Int32_Bits16'/1,
  'dn--un--cast_Cast_Int16_String'/1,
  'dn--un--cast_Cast_Int16_Nat'/1,
  'dn--un--cast_Cast_Int16_Integer'/1,
  'dn--un--cast_Cast_Int16_Int8'/1,
  'dn--un--cast_Cast_Int16_Int64'/1,
  'dn--un--cast_Cast_Int16_Int32'/1,
  'dn--un--cast_Cast_Int16_Int'/1,
  'dn--un--cast_Cast_Int16_Double'/1,
  'dn--un--cast_Cast_Int16_Char'/1,
  'dn--un--cast_Cast_Int16_Bits8'/1,
  'dn--un--cast_Cast_Int16_Bits64'/1,
  'dn--un--cast_Cast_Int16_Bits32'/1,
  'dn--un--cast_Cast_Int16_Bits16'/1,
  'dn--un--cast_Cast_Double_String'/1,
  'dn--un--cast_Cast_Double_Nat'/1,
  'dn--un--cast_Cast_Double_Integer'/1,
  'dn--un--cast_Cast_Double_Int8'/1,
  'dn--un--cast_Cast_Double_Int64'/1,
  'dn--un--cast_Cast_Double_Int32'/1,
  'dn--un--cast_Cast_Double_Int16'/1,
  'dn--un--cast_Cast_Double_Int'/1,
  'dn--un--cast_Cast_Double_Bits8'/1,
  'dn--un--cast_Cast_Double_Bits64'/1,
  'dn--un--cast_Cast_Double_Bits32'/1,
  'dn--un--cast_Cast_Double_Bits16'/1,
  'dn--un--cast_Cast_Char_String'/1,
  'dn--un--cast_Cast_Char_Nat'/1,
  'dn--un--cast_Cast_Char_Integer'/1,
  'dn--un--cast_Cast_Char_Int8'/1,
  'dn--un--cast_Cast_Char_Int64'/1,
  'dn--un--cast_Cast_Char_Int32'/1,
  'dn--un--cast_Cast_Char_Int16'/1,
  'dn--un--cast_Cast_Char_Int'/1,
  'dn--un--cast_Cast_Char_Bits8'/1,
  'dn--un--cast_Cast_Char_Bits64'/1,
  'dn--un--cast_Cast_Char_Bits32'/1,
  'dn--un--cast_Cast_Char_Bits16'/1,
  'dn--un--cast_Cast_Bits8_String'/1,
  'dn--un--cast_Cast_Bits8_Nat'/1,
  'dn--un--cast_Cast_Bits8_Integer'/1,
  'dn--un--cast_Cast_Bits8_Int8'/1,
  'dn--un--cast_Cast_Bits8_Int64'/1,
  'dn--un--cast_Cast_Bits8_Int32'/1,
  'dn--un--cast_Cast_Bits8_Int16'/1,
  'dn--un--cast_Cast_Bits8_Int'/1,
  'dn--un--cast_Cast_Bits8_Double'/1,
  'dn--un--cast_Cast_Bits8_Char'/1,
  'dn--un--cast_Cast_Bits8_Bits64'/1,
  'dn--un--cast_Cast_Bits8_Bits32'/1,
  'dn--un--cast_Cast_Bits8_Bits16'/1,
  'dn--un--cast_Cast_Bits64_String'/1,
  'dn--un--cast_Cast_Bits64_Nat'/1,
  'dn--un--cast_Cast_Bits64_Integer'/1,
  'dn--un--cast_Cast_Bits64_Int8'/1,
  'dn--un--cast_Cast_Bits64_Int64'/1,
  'dn--un--cast_Cast_Bits64_Int32'/1,
  'dn--un--cast_Cast_Bits64_Int16'/1,
  'dn--un--cast_Cast_Bits64_Int'/1,
  'dn--un--cast_Cast_Bits64_Double'/1,
  'dn--un--cast_Cast_Bits64_Char'/1,
  'dn--un--cast_Cast_Bits64_Bits8'/1,
  'dn--un--cast_Cast_Bits64_Bits32'/1,
  'dn--un--cast_Cast_Bits64_Bits16'/1,
  'dn--un--cast_Cast_Bits32_String'/1,
  'dn--un--cast_Cast_Bits32_Nat'/1,
  'dn--un--cast_Cast_Bits32_Integer'/1,
  'dn--un--cast_Cast_Bits32_Int8'/1,
  'dn--un--cast_Cast_Bits32_Int64'/1,
  'dn--un--cast_Cast_Bits32_Int32'/1,
  'dn--un--cast_Cast_Bits32_Int16'/1,
  'dn--un--cast_Cast_Bits32_Int'/1,
  'dn--un--cast_Cast_Bits32_Double'/1,
  'dn--un--cast_Cast_Bits32_Char'/1,
  'dn--un--cast_Cast_Bits32_Bits8'/1,
  'dn--un--cast_Cast_Bits32_Bits64'/1,
  'dn--un--cast_Cast_Bits32_Bits16'/1,
  'dn--un--cast_Cast_Bits16_String'/1,
  'dn--un--cast_Cast_Bits16_Nat'/1,
  'dn--un--cast_Cast_Bits16_Integer'/1,
  'dn--un--cast_Cast_Bits16_Int8'/1,
  'dn--un--cast_Cast_Bits16_Int64'/1,
  'dn--un--cast_Cast_Bits16_Int32'/1,
  'dn--un--cast_Cast_Bits16_Int16'/1,
  'dn--un--cast_Cast_Bits16_Int'/1,
  'dn--un--cast_Cast_Bits16_Double'/1,
  'dn--un--cast_Cast_Bits16_Char'/1,
  'dn--un--cast_Cast_Bits16_Bits8'/1,
  'dn--un--cast_Cast_Bits16_Bits64'/1,
  'dn--un--cast_Cast_Bits16_Bits32'/1,
  'dn--un--cast_Cast_$a_$a'/1,
  'dn--un--__Impl_Cast_String_Nat'/1,
  'dn--un--__Impl_Cast_String_Integer'/1,
  'dn--un--__Impl_Cast_String_Int8'/1,
  'dn--un--__Impl_Cast_String_Int64'/1,
  'dn--un--__Impl_Cast_String_Int32'/1,
  'dn--un--__Impl_Cast_String_Int16'/1,
  'dn--un--__Impl_Cast_String_Int'/1,
  'dn--un--__Impl_Cast_String_Double'/1,
  'dn--un--__Impl_Cast_String_Bits8'/1,
  'dn--un--__Impl_Cast_String_Bits64'/1,
  'dn--un--__Impl_Cast_String_Bits32'/1,
  'dn--un--__Impl_Cast_String_Bits16'/1,
  'dn--un--__Impl_Cast_Nat_String'/1,
  'dn--un--__Impl_Cast_Nat_Integer'/1,
  'dn--un--__Impl_Cast_Nat_Int8'/1,
  'dn--un--__Impl_Cast_Nat_Int64'/1,
  'dn--un--__Impl_Cast_Nat_Int32'/1,
  'dn--un--__Impl_Cast_Nat_Int16'/1,
  'dn--un--__Impl_Cast_Nat_Int'/1,
  'dn--un--__Impl_Cast_Nat_Double'/1,
  'dn--un--__Impl_Cast_Nat_Char'/1,
  'dn--un--__Impl_Cast_Nat_Bits8'/1,
  'dn--un--__Impl_Cast_Nat_Bits64'/1,
  'dn--un--__Impl_Cast_Nat_Bits32'/1,
  'dn--un--__Impl_Cast_Nat_Bits16'/1,
  'dn--un--__Impl_Cast_Integer_String'/1,
  'dn--un--__Impl_Cast_Integer_Nat'/1,
  'dn--un--__Impl_Cast_Integer_Int8'/1,
  'dn--un--__Impl_Cast_Integer_Int64'/1,
  'dn--un--__Impl_Cast_Integer_Int32'/1,
  'dn--un--__Impl_Cast_Integer_Int16'/1,
  'dn--un--__Impl_Cast_Integer_Int'/1,
  'dn--un--__Impl_Cast_Integer_Double'/1,
  'dn--un--__Impl_Cast_Integer_Char'/1,
  'dn--un--__Impl_Cast_Integer_Bits8'/1,
  'dn--un--__Impl_Cast_Integer_Bits64'/1,
  'dn--un--__Impl_Cast_Integer_Bits32'/1,
  'dn--un--__Impl_Cast_Integer_Bits16'/1,
  'dn--un--__Impl_Cast_Int_String'/1,
  'dn--un--__Impl_Cast_Int_Nat'/1,
  'dn--un--__Impl_Cast_Int_Integer'/1,
  'dn--un--__Impl_Cast_Int_Int8'/1,
  'dn--un--__Impl_Cast_Int_Int64'/1,
  'dn--un--__Impl_Cast_Int_Int32'/1,
  'dn--un--__Impl_Cast_Int_Int16'/1,
  'dn--un--__Impl_Cast_Int_Double'/1,
  'dn--un--__Impl_Cast_Int_Char'/1,
  'dn--un--__Impl_Cast_Int_Bits8'/1,
  'dn--un--__Impl_Cast_Int_Bits64'/1,
  'dn--un--__Impl_Cast_Int_Bits32'/1,
  'dn--un--__Impl_Cast_Int_Bits16'/1,
  'dn--un--__Impl_Cast_Int8_String'/1,
  'dn--un--__Impl_Cast_Int8_Nat'/1,
  'dn--un--__Impl_Cast_Int8_Integer'/1,
  'dn--un--__Impl_Cast_Int8_Int64'/1,
  'dn--un--__Impl_Cast_Int8_Int32'/1,
  'dn--un--__Impl_Cast_Int8_Int16'/1,
  'dn--un--__Impl_Cast_Int8_Int'/1,
  'dn--un--__Impl_Cast_Int8_Double'/1,
  'dn--un--__Impl_Cast_Int8_Char'/1,
  'dn--un--__Impl_Cast_Int8_Bits8'/1,
  'dn--un--__Impl_Cast_Int8_Bits64'/1,
  'dn--un--__Impl_Cast_Int8_Bits32'/1,
  'dn--un--__Impl_Cast_Int8_Bits16'/1,
  'dn--un--__Impl_Cast_Int64_String'/1,
  'dn--un--__Impl_Cast_Int64_Nat'/1,
  'dn--un--__Impl_Cast_Int64_Integer'/1,
  'dn--un--__Impl_Cast_Int64_Int8'/1,
  'dn--un--__Impl_Cast_Int64_Int32'/1,
  'dn--un--__Impl_Cast_Int64_Int16'/1,
  'dn--un--__Impl_Cast_Int64_Int'/1,
  'dn--un--__Impl_Cast_Int64_Double'/1,
  'dn--un--__Impl_Cast_Int64_Char'/1,
  'dn--un--__Impl_Cast_Int64_Bits8'/1,
  'dn--un--__Impl_Cast_Int64_Bits64'/1,
  'dn--un--__Impl_Cast_Int64_Bits32'/1,
  'dn--un--__Impl_Cast_Int64_Bits16'/1,
  'dn--un--__Impl_Cast_Int32_String'/1,
  'dn--un--__Impl_Cast_Int32_Nat'/1,
  'dn--un--__Impl_Cast_Int32_Integer'/1,
  'dn--un--__Impl_Cast_Int32_Int8'/1,
  'dn--un--__Impl_Cast_Int32_Int64'/1,
  'dn--un--__Impl_Cast_Int32_Int16'/1,
  'dn--un--__Impl_Cast_Int32_Int'/1,
  'dn--un--__Impl_Cast_Int32_Double'/1,
  'dn--un--__Impl_Cast_Int32_Char'/1,
  'dn--un--__Impl_Cast_Int32_Bits8'/1,
  'dn--un--__Impl_Cast_Int32_Bits64'/1,
  'dn--un--__Impl_Cast_Int32_Bits32'/1,
  'dn--un--__Impl_Cast_Int32_Bits16'/1,
  'dn--un--__Impl_Cast_Int16_String'/1,
  'dn--un--__Impl_Cast_Int16_Nat'/1,
  'dn--un--__Impl_Cast_Int16_Integer'/1,
  'dn--un--__Impl_Cast_Int16_Int8'/1,
  'dn--un--__Impl_Cast_Int16_Int64'/1,
  'dn--un--__Impl_Cast_Int16_Int32'/1,
  'dn--un--__Impl_Cast_Int16_Int'/1,
  'dn--un--__Impl_Cast_Int16_Double'/1,
  'dn--un--__Impl_Cast_Int16_Char'/1,
  'dn--un--__Impl_Cast_Int16_Bits8'/1,
  'dn--un--__Impl_Cast_Int16_Bits64'/1,
  'dn--un--__Impl_Cast_Int16_Bits32'/1,
  'dn--un--__Impl_Cast_Int16_Bits16'/1,
  'dn--un--__Impl_Cast_Double_String'/1,
  'dn--un--__Impl_Cast_Double_Nat'/1,
  'dn--un--__Impl_Cast_Double_Integer'/1,
  'dn--un--__Impl_Cast_Double_Int8'/1,
  'dn--un--__Impl_Cast_Double_Int64'/1,
  'dn--un--__Impl_Cast_Double_Int32'/1,
  'dn--un--__Impl_Cast_Double_Int16'/1,
  'dn--un--__Impl_Cast_Double_Int'/1,
  'dn--un--__Impl_Cast_Double_Bits8'/1,
  'dn--un--__Impl_Cast_Double_Bits64'/1,
  'dn--un--__Impl_Cast_Double_Bits32'/1,
  'dn--un--__Impl_Cast_Double_Bits16'/1,
  'dn--un--__Impl_Cast_Char_String'/1,
  'dn--un--__Impl_Cast_Char_Nat'/1,
  'dn--un--__Impl_Cast_Char_Integer'/1,
  'dn--un--__Impl_Cast_Char_Int8'/1,
  'dn--un--__Impl_Cast_Char_Int64'/1,
  'dn--un--__Impl_Cast_Char_Int32'/1,
  'dn--un--__Impl_Cast_Char_Int16'/1,
  'dn--un--__Impl_Cast_Char_Int'/1,
  'dn--un--__Impl_Cast_Char_Bits8'/1,
  'dn--un--__Impl_Cast_Char_Bits64'/1,
  'dn--un--__Impl_Cast_Char_Bits32'/1,
  'dn--un--__Impl_Cast_Char_Bits16'/1,
  'dn--un--__Impl_Cast_Bits8_String'/1,
  'dn--un--__Impl_Cast_Bits8_Nat'/1,
  'dn--un--__Impl_Cast_Bits8_Integer'/1,
  'dn--un--__Impl_Cast_Bits8_Int8'/1,
  'dn--un--__Impl_Cast_Bits8_Int64'/1,
  'dn--un--__Impl_Cast_Bits8_Int32'/1,
  'dn--un--__Impl_Cast_Bits8_Int16'/1,
  'dn--un--__Impl_Cast_Bits8_Int'/1,
  'dn--un--__Impl_Cast_Bits8_Double'/1,
  'dn--un--__Impl_Cast_Bits8_Char'/1,
  'dn--un--__Impl_Cast_Bits8_Bits64'/1,
  'dn--un--__Impl_Cast_Bits8_Bits32'/1,
  'dn--un--__Impl_Cast_Bits8_Bits16'/1,
  'dn--un--__Impl_Cast_Bits64_String'/1,
  'dn--un--__Impl_Cast_Bits64_Nat'/1,
  'dn--un--__Impl_Cast_Bits64_Integer'/1,
  'dn--un--__Impl_Cast_Bits64_Int8'/1,
  'dn--un--__Impl_Cast_Bits64_Int64'/1,
  'dn--un--__Impl_Cast_Bits64_Int32'/1,
  'dn--un--__Impl_Cast_Bits64_Int16'/1,
  'dn--un--__Impl_Cast_Bits64_Int'/1,
  'dn--un--__Impl_Cast_Bits64_Double'/1,
  'dn--un--__Impl_Cast_Bits64_Char'/1,
  'dn--un--__Impl_Cast_Bits64_Bits8'/1,
  'dn--un--__Impl_Cast_Bits64_Bits32'/1,
  'dn--un--__Impl_Cast_Bits64_Bits16'/1,
  'dn--un--__Impl_Cast_Bits32_String'/1,
  'dn--un--__Impl_Cast_Bits32_Nat'/1,
  'dn--un--__Impl_Cast_Bits32_Integer'/1,
  'dn--un--__Impl_Cast_Bits32_Int8'/1,
  'dn--un--__Impl_Cast_Bits32_Int64'/1,
  'dn--un--__Impl_Cast_Bits32_Int32'/1,
  'dn--un--__Impl_Cast_Bits32_Int16'/1,
  'dn--un--__Impl_Cast_Bits32_Int'/1,
  'dn--un--__Impl_Cast_Bits32_Double'/1,
  'dn--un--__Impl_Cast_Bits32_Char'/1,
  'dn--un--__Impl_Cast_Bits32_Bits8'/1,
  'dn--un--__Impl_Cast_Bits32_Bits64'/1,
  'dn--un--__Impl_Cast_Bits32_Bits16'/1,
  'dn--un--__Impl_Cast_Bits16_String'/1,
  'dn--un--__Impl_Cast_Bits16_Nat'/1,
  'dn--un--__Impl_Cast_Bits16_Integer'/1,
  'dn--un--__Impl_Cast_Bits16_Int8'/1,
  'dn--un--__Impl_Cast_Bits16_Int64'/1,
  'dn--un--__Impl_Cast_Bits16_Int32'/1,
  'dn--un--__Impl_Cast_Bits16_Int16'/1,
  'dn--un--__Impl_Cast_Bits16_Int'/1,
  'dn--un--__Impl_Cast_Bits16_Double'/1,
  'dn--un--__Impl_Cast_Bits16_Char'/1,
  'dn--un--__Impl_Cast_Bits16_Bits8'/1,
  'dn--un--__Impl_Cast_Bits16_Bits64'/1,
  'dn--un--__Impl_Cast_Bits16_Bits32'/1,
  'dn--un--__Impl_Cast_$a_$a'/1,
  'un--cast'/1
]).
'dn--un--cast_Cast_String_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end)).
'dn--un--cast_Cast_String_Integer'(V0) -> case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end.
'dn--un--cast_Cast_String_Int8'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), case ((V3 band 128) =/= 0) of 'true' -> (V3 bor -128); _ -> (V3 band 127) end end.
'dn--un--cast_Cast_String_Int64'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), case ((V3 band 9223372036854775808) =/= 0) of 'true' -> (V3 bor -9223372036854775808); _ -> (V3 band 9223372036854775807) end end.
'dn--un--cast_Cast_String_Int32'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), case ((V3 band 2147483648) =/= 0) of 'true' -> (V3 bor -2147483648); _ -> (V3 band 2147483647) end end.
'dn--un--cast_Cast_String_Int16'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), case ((V3 band 32768) =/= 0) of 'true' -> (V3 bor -32768); _ -> (V3 band 32767) end end.
'dn--un--cast_Cast_String_Int'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), case ((V3 band 9223372036854775808) =/= 0) of 'true' -> (V3 bor -9223372036854775808); _ -> (V3 band 9223372036854775807) end end.
'dn--un--cast_Cast_String_Double'(V0) -> case ('string':'to_float'(V0)) of {'error', 'no_float'} -> (fun (V1, V2) -> ('erlang':'float'(case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V5, V6) -> case ('string':'is_empty'(V6)) of 'true' -> V5; _ -> 0 end end(E0, E1)); _ -> 0 end)) end('error', 'no_float')); {E2, E3} when (erlang:'is_float'(E2)) -> (fun (V3, V4) -> case ('string':'is_empty'(V4)) of 'true' -> V3; _ -> 0.0 end end(E2, E3)); _ -> 0.0 end.
'dn--un--cast_Cast_String_Bits8'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), begin (V4 = 256), begin (V5 = (V3 rem V4)), case ((V5 * V4) < 0) of 'true' -> (V5 + V4); _ -> V5 end end end end.
'dn--un--cast_Cast_String_Bits64'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), begin (V4 = 18446744073709551616), begin (V5 = (V3 rem V4)), case ((V5 * V4) < 0) of 'true' -> (V5 + V4); _ -> V5 end end end end.
'dn--un--cast_Cast_String_Bits32'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), begin (V4 = 4294967296), begin (V5 = (V3 rem V4)), case ((V5 * V4) < 0) of 'true' -> (V5 + V4); _ -> V5 end end end end.
'dn--un--cast_Cast_String_Bits16'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), begin (V4 = 65536), begin (V5 = (V3 rem V4)), case ((V5 * V4) < 0) of 'true' -> (V5 + V4); _ -> V5 end end end end.
'dn--un--cast_Cast_Nat_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--cast_Cast_Nat_Integer'(V0) -> V0.
'dn--un--cast_Cast_Nat_Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'dn--un--cast_Cast_Nat_Int64'(V0) -> begin (V1 = V0), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'dn--un--cast_Cast_Nat_Int32'(V0) -> begin (V1 = V0), case ((V1 band 2147483648) =/= 0) of 'true' -> (V1 bor -2147483648); _ -> (V1 band 2147483647) end end.
'dn--un--cast_Cast_Nat_Int16'(V0) -> begin (V1 = V0), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'dn--un--cast_Cast_Nat_Int'(V0) -> begin (V1 = V0), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'dn--un--cast_Cast_Nat_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--cast_Cast_Nat_Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--cast_Cast_Nat_Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Nat_Bits64'(V0) -> begin (V1 = V0), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Nat_Bits32'(V0) -> begin (V1 = V0), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Nat_Bits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Integer_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--cast_Cast_Integer_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V0)).
'dn--un--cast_Cast_Integer_Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'dn--un--cast_Cast_Integer_Int64'(V0) -> begin (V1 = V0), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'dn--un--cast_Cast_Integer_Int32'(V0) -> begin (V1 = V0), case ((V1 band 2147483648) =/= 0) of 'true' -> (V1 bor -2147483648); _ -> (V1 band 2147483647) end end.
'dn--un--cast_Cast_Integer_Int16'(V0) -> begin (V1 = V0), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'dn--un--cast_Cast_Integer_Int'(V0) -> begin (V1 = V0), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'dn--un--cast_Cast_Integer_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--cast_Cast_Integer_Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--cast_Cast_Integer_Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Integer_Bits64'(V0) -> begin (V1 = V0), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Integer_Bits32'(V0) -> begin (V1 = V0), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Integer_Bits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Int_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--cast_Cast_Int_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V0)).
'dn--un--cast_Cast_Int_Integer'(V0) -> V0.
'dn--un--cast_Cast_Int_Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'dn--un--cast_Cast_Int_Int64'(V0) -> V0.
'dn--un--cast_Cast_Int_Int32'(V0) -> begin (V1 = V0), case ((V1 band 2147483648) =/= 0) of 'true' -> (V1 bor -2147483648); _ -> (V1 band 2147483647) end end.
'dn--un--cast_Cast_Int_Int16'(V0) -> begin (V1 = V0), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'dn--un--cast_Cast_Int_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--cast_Cast_Int_Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--cast_Cast_Int_Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Int_Bits64'(V0) -> begin (V1 = V0), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Int_Bits32'(V0) -> begin (V1 = V0), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Int_Bits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Int8_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--cast_Cast_Int8_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V0)).
'dn--un--cast_Cast_Int8_Integer'(V0) -> V0.
'dn--un--cast_Cast_Int8_Int64'(V0) -> V0.
'dn--un--cast_Cast_Int8_Int32'(V0) -> V0.
'dn--un--cast_Cast_Int8_Int16'(V0) -> V0.
'dn--un--cast_Cast_Int8_Int'(V0) -> V0.
'dn--un--cast_Cast_Int8_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--cast_Cast_Int8_Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--cast_Cast_Int8_Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Int8_Bits64'(V0) -> begin (V1 = V0), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Int8_Bits32'(V0) -> begin (V1 = V0), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Int8_Bits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Int64_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--cast_Cast_Int64_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V0)).
'dn--un--cast_Cast_Int64_Integer'(V0) -> V0.
'dn--un--cast_Cast_Int64_Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'dn--un--cast_Cast_Int64_Int32'(V0) -> begin (V1 = V0), case ((V1 band 2147483648) =/= 0) of 'true' -> (V1 bor -2147483648); _ -> (V1 band 2147483647) end end.
'dn--un--cast_Cast_Int64_Int16'(V0) -> begin (V1 = V0), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'dn--un--cast_Cast_Int64_Int'(V0) -> V0.
'dn--un--cast_Cast_Int64_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--cast_Cast_Int64_Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--cast_Cast_Int64_Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Int64_Bits64'(V0) -> begin (V1 = V0), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Int64_Bits32'(V0) -> begin (V1 = V0), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Int64_Bits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Int32_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--cast_Cast_Int32_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V0)).
'dn--un--cast_Cast_Int32_Integer'(V0) -> V0.
'dn--un--cast_Cast_Int32_Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'dn--un--cast_Cast_Int32_Int64'(V0) -> V0.
'dn--un--cast_Cast_Int32_Int16'(V0) -> begin (V1 = V0), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'dn--un--cast_Cast_Int32_Int'(V0) -> V0.
'dn--un--cast_Cast_Int32_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--cast_Cast_Int32_Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--cast_Cast_Int32_Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Int32_Bits64'(V0) -> begin (V1 = V0), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Int32_Bits32'(V0) -> begin (V1 = V0), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Int32_Bits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Int16_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--cast_Cast_Int16_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V0)).
'dn--un--cast_Cast_Int16_Integer'(V0) -> V0.
'dn--un--cast_Cast_Int16_Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'dn--un--cast_Cast_Int16_Int64'(V0) -> V0.
'dn--un--cast_Cast_Int16_Int32'(V0) -> V0.
'dn--un--cast_Cast_Int16_Int'(V0) -> V0.
'dn--un--cast_Cast_Int16_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--cast_Cast_Int16_Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--cast_Cast_Int16_Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Int16_Bits64'(V0) -> begin (V1 = V0), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Int16_Bits32'(V0) -> begin (V1 = V0), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Int16_Bits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Double_String'(V0) -> ('erlang':'float_to_binary'(V0, [{'decimals', 10} | ['compact' | []]])).
'dn--un--cast_Cast_Double_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(('erlang':'trunc'(V0)))).
'dn--un--cast_Cast_Double_Integer'(V0) -> ('erlang':'trunc'(V0)).
'dn--un--cast_Cast_Double_Int8'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'dn--un--cast_Cast_Double_Int64'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'dn--un--cast_Cast_Double_Int32'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), case ((V1 band 2147483648) =/= 0) of 'true' -> (V1 bor -2147483648); _ -> (V1 band 2147483647) end end.
'dn--un--cast_Cast_Double_Int16'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'dn--un--cast_Cast_Double_Int'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'dn--un--cast_Cast_Double_Bits8'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Double_Bits64'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Double_Bits32'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Double_Bits16'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Char_String'(V0) -> ('unicode':'characters_to_binary'([V0 | []])).
'dn--un--cast_Cast_Char_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end)).
'dn--un--cast_Cast_Char_Integer'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--cast_Cast_Char_Int8'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--cast_Cast_Char_Int64'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--cast_Cast_Char_Int32'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--cast_Cast_Char_Int16'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--cast_Cast_Char_Int'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--cast_Cast_Char_Bits8'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--cast_Cast_Char_Bits64'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--cast_Cast_Char_Bits32'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--cast_Cast_Char_Bits16'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--cast_Cast_Bits8_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--cast_Cast_Bits8_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V0)).
'dn--un--cast_Cast_Bits8_Integer'(V0) -> V0.
'dn--un--cast_Cast_Bits8_Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'dn--un--cast_Cast_Bits8_Int64'(V0) -> V0.
'dn--un--cast_Cast_Bits8_Int32'(V0) -> V0.
'dn--un--cast_Cast_Bits8_Int16'(V0) -> V0.
'dn--un--cast_Cast_Bits8_Int'(V0) -> V0.
'dn--un--cast_Cast_Bits8_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--cast_Cast_Bits8_Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--cast_Cast_Bits8_Bits64'(V0) -> V0.
'dn--un--cast_Cast_Bits8_Bits32'(V0) -> V0.
'dn--un--cast_Cast_Bits8_Bits16'(V0) -> V0.
'dn--un--cast_Cast_Bits64_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--cast_Cast_Bits64_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V0)).
'dn--un--cast_Cast_Bits64_Integer'(V0) -> V0.
'dn--un--cast_Cast_Bits64_Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'dn--un--cast_Cast_Bits64_Int64'(V0) -> begin (V1 = V0), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'dn--un--cast_Cast_Bits64_Int32'(V0) -> begin (V1 = V0), case ((V1 band 2147483648) =/= 0) of 'true' -> (V1 bor -2147483648); _ -> (V1 band 2147483647) end end.
'dn--un--cast_Cast_Bits64_Int16'(V0) -> begin (V1 = V0), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'dn--un--cast_Cast_Bits64_Int'(V0) -> begin (V1 = V0), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'dn--un--cast_Cast_Bits64_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--cast_Cast_Bits64_Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--cast_Cast_Bits64_Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Bits64_Bits32'(V0) -> begin (V1 = V0), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Bits64_Bits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Bits32_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--cast_Cast_Bits32_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V0)).
'dn--un--cast_Cast_Bits32_Integer'(V0) -> V0.
'dn--un--cast_Cast_Bits32_Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'dn--un--cast_Cast_Bits32_Int64'(V0) -> V0.
'dn--un--cast_Cast_Bits32_Int32'(V0) -> begin (V1 = V0), case ((V1 band 2147483648) =/= 0) of 'true' -> (V1 bor -2147483648); _ -> (V1 band 2147483647) end end.
'dn--un--cast_Cast_Bits32_Int16'(V0) -> begin (V1 = V0), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'dn--un--cast_Cast_Bits32_Int'(V0) -> V0.
'dn--un--cast_Cast_Bits32_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--cast_Cast_Bits32_Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--cast_Cast_Bits32_Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Bits32_Bits64'(V0) -> V0.
'dn--un--cast_Cast_Bits32_Bits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Bits16_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--cast_Cast_Bits16_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V0)).
'dn--un--cast_Cast_Bits16_Integer'(V0) -> V0.
'dn--un--cast_Cast_Bits16_Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'dn--un--cast_Cast_Bits16_Int64'(V0) -> V0.
'dn--un--cast_Cast_Bits16_Int32'(V0) -> V0.
'dn--un--cast_Cast_Bits16_Int16'(V0) -> begin (V1 = V0), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'dn--un--cast_Cast_Bits16_Int'(V0) -> V0.
'dn--un--cast_Cast_Bits16_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--cast_Cast_Bits16_Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--cast_Cast_Bits16_Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--cast_Cast_Bits16_Bits64'(V0) -> V0.
'dn--un--cast_Cast_Bits16_Bits32'(V0) -> V0.
'dn--un--cast_Cast_$a_$a'(V0) -> V0.
'dn--un--__Impl_Cast_String_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end)).
'dn--un--__Impl_Cast_String_Integer'(V0) -> case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end.
'dn--un--__Impl_Cast_String_Int8'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), case ((V3 band 128) =/= 0) of 'true' -> (V3 bor -128); _ -> (V3 band 127) end end.
'dn--un--__Impl_Cast_String_Int64'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), case ((V3 band 9223372036854775808) =/= 0) of 'true' -> (V3 bor -9223372036854775808); _ -> (V3 band 9223372036854775807) end end.
'dn--un--__Impl_Cast_String_Int32'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), case ((V3 band 2147483648) =/= 0) of 'true' -> (V3 bor -2147483648); _ -> (V3 band 2147483647) end end.
'dn--un--__Impl_Cast_String_Int16'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), case ((V3 band 32768) =/= 0) of 'true' -> (V3 bor -32768); _ -> (V3 band 32767) end end.
'dn--un--__Impl_Cast_String_Int'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), case ((V3 band 9223372036854775808) =/= 0) of 'true' -> (V3 bor -9223372036854775808); _ -> (V3 band 9223372036854775807) end end.
'dn--un--__Impl_Cast_String_Double'(V0) -> case ('string':'to_float'(V0)) of {'error', 'no_float'} -> (fun (V1, V2) -> ('erlang':'float'(case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V5, V6) -> case ('string':'is_empty'(V6)) of 'true' -> V5; _ -> 0 end end(E0, E1)); _ -> 0 end)) end('error', 'no_float')); {E2, E3} when (erlang:'is_float'(E2)) -> (fun (V3, V4) -> case ('string':'is_empty'(V4)) of 'true' -> V3; _ -> 0.0 end end(E2, E3)); _ -> 0.0 end.
'dn--un--__Impl_Cast_String_Bits8'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), begin (V4 = 256), begin (V5 = (V3 rem V4)), case ((V5 * V4) < 0) of 'true' -> (V5 + V4); _ -> V5 end end end end.
'dn--un--__Impl_Cast_String_Bits64'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), begin (V4 = 18446744073709551616), begin (V5 = (V3 rem V4)), case ((V5 * V4) < 0) of 'true' -> (V5 + V4); _ -> V5 end end end end.
'dn--un--__Impl_Cast_String_Bits32'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), begin (V4 = 4294967296), begin (V5 = (V3 rem V4)), case ((V5 * V4) < 0) of 'true' -> (V5 + V4); _ -> V5 end end end end.
'dn--un--__Impl_Cast_String_Bits16'(V0) -> begin (V3 = case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end), begin (V4 = 65536), begin (V5 = (V3 rem V4)), case ((V5 * V4) < 0) of 'true' -> (V5 + V4); _ -> V5 end end end end.
'dn--un--__Impl_Cast_Nat_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--__Impl_Cast_Nat_Integer'(V0) -> V0.
'dn--un--__Impl_Cast_Nat_Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'dn--un--__Impl_Cast_Nat_Int64'(V0) -> begin (V1 = V0), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'dn--un--__Impl_Cast_Nat_Int32'(V0) -> begin (V1 = V0), case ((V1 band 2147483648) =/= 0) of 'true' -> (V1 bor -2147483648); _ -> (V1 band 2147483647) end end.
'dn--un--__Impl_Cast_Nat_Int16'(V0) -> begin (V1 = V0), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'dn--un--__Impl_Cast_Nat_Int'(V0) -> begin (V1 = V0), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'dn--un--__Impl_Cast_Nat_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--__Impl_Cast_Nat_Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--__Impl_Cast_Nat_Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Nat_Bits64'(V0) -> begin (V1 = V0), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Nat_Bits32'(V0) -> begin (V1 = V0), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Nat_Bits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Integer_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--__Impl_Cast_Integer_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V0)).
'dn--un--__Impl_Cast_Integer_Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'dn--un--__Impl_Cast_Integer_Int64'(V0) -> begin (V1 = V0), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'dn--un--__Impl_Cast_Integer_Int32'(V0) -> begin (V1 = V0), case ((V1 band 2147483648) =/= 0) of 'true' -> (V1 bor -2147483648); _ -> (V1 band 2147483647) end end.
'dn--un--__Impl_Cast_Integer_Int16'(V0) -> begin (V1 = V0), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'dn--un--__Impl_Cast_Integer_Int'(V0) -> begin (V1 = V0), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'dn--un--__Impl_Cast_Integer_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--__Impl_Cast_Integer_Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--__Impl_Cast_Integer_Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Integer_Bits64'(V0) -> begin (V1 = V0), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Integer_Bits32'(V0) -> begin (V1 = V0), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Integer_Bits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Int_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--__Impl_Cast_Int_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V0)).
'dn--un--__Impl_Cast_Int_Integer'(V0) -> V0.
'dn--un--__Impl_Cast_Int_Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'dn--un--__Impl_Cast_Int_Int64'(V0) -> V0.
'dn--un--__Impl_Cast_Int_Int32'(V0) -> begin (V1 = V0), case ((V1 band 2147483648) =/= 0) of 'true' -> (V1 bor -2147483648); _ -> (V1 band 2147483647) end end.
'dn--un--__Impl_Cast_Int_Int16'(V0) -> begin (V1 = V0), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'dn--un--__Impl_Cast_Int_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--__Impl_Cast_Int_Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--__Impl_Cast_Int_Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Int_Bits64'(V0) -> begin (V1 = V0), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Int_Bits32'(V0) -> begin (V1 = V0), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Int_Bits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Int8_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--__Impl_Cast_Int8_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V0)).
'dn--un--__Impl_Cast_Int8_Integer'(V0) -> V0.
'dn--un--__Impl_Cast_Int8_Int64'(V0) -> V0.
'dn--un--__Impl_Cast_Int8_Int32'(V0) -> V0.
'dn--un--__Impl_Cast_Int8_Int16'(V0) -> V0.
'dn--un--__Impl_Cast_Int8_Int'(V0) -> V0.
'dn--un--__Impl_Cast_Int8_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--__Impl_Cast_Int8_Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--__Impl_Cast_Int8_Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Int8_Bits64'(V0) -> begin (V1 = V0), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Int8_Bits32'(V0) -> begin (V1 = V0), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Int8_Bits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Int64_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--__Impl_Cast_Int64_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V0)).
'dn--un--__Impl_Cast_Int64_Integer'(V0) -> V0.
'dn--un--__Impl_Cast_Int64_Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'dn--un--__Impl_Cast_Int64_Int32'(V0) -> begin (V1 = V0), case ((V1 band 2147483648) =/= 0) of 'true' -> (V1 bor -2147483648); _ -> (V1 band 2147483647) end end.
'dn--un--__Impl_Cast_Int64_Int16'(V0) -> begin (V1 = V0), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'dn--un--__Impl_Cast_Int64_Int'(V0) -> V0.
'dn--un--__Impl_Cast_Int64_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--__Impl_Cast_Int64_Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--__Impl_Cast_Int64_Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Int64_Bits64'(V0) -> begin (V1 = V0), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Int64_Bits32'(V0) -> begin (V1 = V0), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Int64_Bits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Int32_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--__Impl_Cast_Int32_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V0)).
'dn--un--__Impl_Cast_Int32_Integer'(V0) -> V0.
'dn--un--__Impl_Cast_Int32_Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'dn--un--__Impl_Cast_Int32_Int64'(V0) -> V0.
'dn--un--__Impl_Cast_Int32_Int16'(V0) -> begin (V1 = V0), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'dn--un--__Impl_Cast_Int32_Int'(V0) -> V0.
'dn--un--__Impl_Cast_Int32_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--__Impl_Cast_Int32_Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--__Impl_Cast_Int32_Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Int32_Bits64'(V0) -> begin (V1 = V0), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Int32_Bits32'(V0) -> begin (V1 = V0), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Int32_Bits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Int16_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--__Impl_Cast_Int16_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V0)).
'dn--un--__Impl_Cast_Int16_Integer'(V0) -> V0.
'dn--un--__Impl_Cast_Int16_Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'dn--un--__Impl_Cast_Int16_Int64'(V0) -> V0.
'dn--un--__Impl_Cast_Int16_Int32'(V0) -> V0.
'dn--un--__Impl_Cast_Int16_Int'(V0) -> V0.
'dn--un--__Impl_Cast_Int16_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--__Impl_Cast_Int16_Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--__Impl_Cast_Int16_Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Int16_Bits64'(V0) -> begin (V1 = V0), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Int16_Bits32'(V0) -> begin (V1 = V0), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Int16_Bits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Double_String'(V0) -> ('erlang':'float_to_binary'(V0, [{'decimals', 10} | ['compact' | []]])).
'dn--un--__Impl_Cast_Double_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(('erlang':'trunc'(V0)))).
'dn--un--__Impl_Cast_Double_Integer'(V0) -> ('erlang':'trunc'(V0)).
'dn--un--__Impl_Cast_Double_Int8'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'dn--un--__Impl_Cast_Double_Int64'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'dn--un--__Impl_Cast_Double_Int32'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), case ((V1 band 2147483648) =/= 0) of 'true' -> (V1 bor -2147483648); _ -> (V1 band 2147483647) end end.
'dn--un--__Impl_Cast_Double_Int16'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'dn--un--__Impl_Cast_Double_Int'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'dn--un--__Impl_Cast_Double_Bits8'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Double_Bits64'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), begin (V2 = 18446744073709551616), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Double_Bits32'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Double_Bits16'(V0) -> begin (V1 = ('erlang':'trunc'(V0))), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Char_String'(V0) -> ('unicode':'characters_to_binary'([V0 | []])).
'dn--un--__Impl_Cast_Char_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end)).
'dn--un--__Impl_Cast_Char_Integer'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--__Impl_Cast_Char_Int8'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--__Impl_Cast_Char_Int64'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--__Impl_Cast_Char_Int32'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--__Impl_Cast_Char_Int16'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--__Impl_Cast_Char_Int'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--__Impl_Cast_Char_Bits8'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--__Impl_Cast_Char_Bits64'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--__Impl_Cast_Char_Bits32'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--__Impl_Cast_Char_Bits16'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--__Impl_Cast_Bits8_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--__Impl_Cast_Bits8_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V0)).
'dn--un--__Impl_Cast_Bits8_Integer'(V0) -> V0.
'dn--un--__Impl_Cast_Bits8_Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'dn--un--__Impl_Cast_Bits8_Int64'(V0) -> V0.
'dn--un--__Impl_Cast_Bits8_Int32'(V0) -> V0.
'dn--un--__Impl_Cast_Bits8_Int16'(V0) -> V0.
'dn--un--__Impl_Cast_Bits8_Int'(V0) -> V0.
'dn--un--__Impl_Cast_Bits8_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--__Impl_Cast_Bits8_Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--__Impl_Cast_Bits8_Bits64'(V0) -> V0.
'dn--un--__Impl_Cast_Bits8_Bits32'(V0) -> V0.
'dn--un--__Impl_Cast_Bits8_Bits16'(V0) -> V0.
'dn--un--__Impl_Cast_Bits64_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--__Impl_Cast_Bits64_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V0)).
'dn--un--__Impl_Cast_Bits64_Integer'(V0) -> V0.
'dn--un--__Impl_Cast_Bits64_Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'dn--un--__Impl_Cast_Bits64_Int64'(V0) -> begin (V1 = V0), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'dn--un--__Impl_Cast_Bits64_Int32'(V0) -> begin (V1 = V0), case ((V1 band 2147483648) =/= 0) of 'true' -> (V1 bor -2147483648); _ -> (V1 band 2147483647) end end.
'dn--un--__Impl_Cast_Bits64_Int16'(V0) -> begin (V1 = V0), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'dn--un--__Impl_Cast_Bits64_Int'(V0) -> begin (V1 = V0), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end.
'dn--un--__Impl_Cast_Bits64_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--__Impl_Cast_Bits64_Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--__Impl_Cast_Bits64_Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Bits64_Bits32'(V0) -> begin (V1 = V0), begin (V2 = 4294967296), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Bits64_Bits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Bits32_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--__Impl_Cast_Bits32_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V0)).
'dn--un--__Impl_Cast_Bits32_Integer'(V0) -> V0.
'dn--un--__Impl_Cast_Bits32_Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'dn--un--__Impl_Cast_Bits32_Int64'(V0) -> V0.
'dn--un--__Impl_Cast_Bits32_Int32'(V0) -> begin (V1 = V0), case ((V1 band 2147483648) =/= 0) of 'true' -> (V1 bor -2147483648); _ -> (V1 band 2147483647) end end.
'dn--un--__Impl_Cast_Bits32_Int16'(V0) -> begin (V1 = V0), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'dn--un--__Impl_Cast_Bits32_Int'(V0) -> V0.
'dn--un--__Impl_Cast_Bits32_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--__Impl_Cast_Bits32_Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--__Impl_Cast_Bits32_Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Bits32_Bits64'(V0) -> V0.
'dn--un--__Impl_Cast_Bits32_Bits16'(V0) -> begin (V1 = V0), begin (V2 = 65536), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Bits16_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--__Impl_Cast_Bits16_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V0)).
'dn--un--__Impl_Cast_Bits16_Integer'(V0) -> V0.
'dn--un--__Impl_Cast_Bits16_Int8'(V0) -> begin (V1 = V0), case ((V1 band 128) =/= 0) of 'true' -> (V1 bor -128); _ -> (V1 band 127) end end.
'dn--un--__Impl_Cast_Bits16_Int64'(V0) -> V0.
'dn--un--__Impl_Cast_Bits16_Int32'(V0) -> V0.
'dn--un--__Impl_Cast_Bits16_Int16'(V0) -> begin (V1 = V0), case ((V1 band 32768) =/= 0) of 'true' -> (V1 bor -32768); _ -> (V1 band 32767) end end.
'dn--un--__Impl_Cast_Bits16_Int'(V0) -> V0.
'dn--un--__Impl_Cast_Bits16_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--__Impl_Cast_Bits16_Char'(V0) -> case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end.
'dn--un--__Impl_Cast_Bits16_Bits8'(V0) -> begin (V1 = V0), begin (V2 = 256), begin (V3 = (V1 rem V2)), case ((V3 * V2) < 0) of 'true' -> (V3 + V2); _ -> V3 end end end end.
'dn--un--__Impl_Cast_Bits16_Bits64'(V0) -> V0.
'dn--un--__Impl_Cast_Bits16_Bits32'(V0) -> V0.
'dn--un--__Impl_Cast_$a_$a'(V0) -> V0.
'un--cast'(V0) -> begin (V1 = V0), fun (V2) -> (V1(V2)) end end.
