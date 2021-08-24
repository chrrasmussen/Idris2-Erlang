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
  'un--cast'/2
]).
'dn--un--cast_Cast_String_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(('dn--un--cast_Cast_String_Integer'(V0)))).
'dn--un--cast_Cast_String_Integer'(V0) -> case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end.
'dn--un--cast_Cast_String_Int8'(V0) -> ('erlang':'throw'("Invalid cast String->Int8")).
'dn--un--cast_Cast_String_Int64'(V0) -> ('erlang':'throw'("Invalid cast String->Int64")).
'dn--un--cast_Cast_String_Int32'(V0) -> ('erlang':'throw'("Invalid cast String->Int32")).
'dn--un--cast_Cast_String_Int16'(V0) -> ('erlang':'throw'("Invalid cast String->Int16")).
'dn--un--cast_Cast_String_Int'(V0) -> case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V1, V2) -> case ('string':'is_empty'(V2)) of 'true' -> V1; _ -> 0 end end(E0, E1)); _ -> 0 end.
'dn--un--cast_Cast_String_Double'(V0) -> case ('string':'to_float'(V0)) of {'error', 'no_float'} -> (fun (V1, V2) -> ('erlang':'float'(case ('string':'to_integer'(V0)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V5, V6) -> case ('string':'is_empty'(V6)) of 'true' -> V5; _ -> 0 end end(E0, E1)); _ -> 0 end)) end('error', 'no_float')); {E2, E3} when (erlang:'is_float'(E2)) -> (fun (V3, V4) -> case ('string':'is_empty'(V4)) of 'true' -> V3; _ -> 0.0 end end(E2, E3)); _ -> 0.0 end.
'dn--un--cast_Cast_String_Bits8'(V0) -> ('erlang':'throw'("Invalid cast String->Bits8")).
'dn--un--cast_Cast_String_Bits64'(V0) -> ('erlang':'throw'("Invalid cast String->Bits64")).
'dn--un--cast_Cast_String_Bits32'(V0) -> ('erlang':'throw'("Invalid cast String->Bits32")).
'dn--un--cast_Cast_String_Bits16'(V0) -> ('erlang':'throw'("Invalid cast String->Bits16")).
'dn--un--cast_Cast_Nat_String'(V0) -> ('dn--un--cast_Cast_Integer_String'(V0)).
'dn--un--cast_Cast_Nat_Integer'(V0) -> V0.
'dn--un--cast_Cast_Nat_Int8'(V0) -> ('dn--un--cast_Cast_Integer_Int8'(V0)).
'dn--un--cast_Cast_Nat_Int64'(V0) -> ('dn--un--cast_Cast_Integer_Int64'(V0)).
'dn--un--cast_Cast_Nat_Int32'(V0) -> ('dn--un--cast_Cast_Integer_Int32'(V0)).
'dn--un--cast_Cast_Nat_Int16'(V0) -> ('dn--un--cast_Cast_Integer_Int16'(V0)).
'dn--un--cast_Cast_Nat_Int'(V0) -> V0.
'dn--un--cast_Cast_Nat_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--cast_Cast_Nat_Char'(V0) -> ('dn--un--cast_Cast_Integer_Char'(V0)).
'dn--un--cast_Cast_Nat_Bits8'(V0) -> ('dn--un--cast_Cast_Integer_Bits8'(V0)).
'dn--un--cast_Cast_Nat_Bits64'(V0) -> ('dn--un--cast_Cast_Integer_Bits64'(V0)).
'dn--un--cast_Cast_Nat_Bits32'(V0) -> ('dn--un--cast_Cast_Integer_Bits32'(V0)).
'dn--un--cast_Cast_Nat_Bits16'(V0) -> ('dn--un--cast_Cast_Integer_Bits16'(V0)).
'dn--un--cast_Cast_Integer_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--cast_Cast_Integer_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V0)).
'dn--un--cast_Cast_Integer_Int8'(V0) -> ('erlang':'throw'("Invalid cast Integer->Int8")).
'dn--un--cast_Cast_Integer_Int64'(V0) -> ('erlang':'throw'("Invalid cast Integer->Int64")).
'dn--un--cast_Cast_Integer_Int32'(V0) -> ('erlang':'throw'("Invalid cast Integer->Int32")).
'dn--un--cast_Cast_Integer_Int16'(V0) -> ('erlang':'throw'("Invalid cast Integer->Int16")).
'dn--un--cast_Cast_Integer_Int'(V0) -> V0.
'dn--un--cast_Cast_Integer_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--cast_Cast_Integer_Char'(V0) -> ('erlang':'throw'("Invalid cast Integer->Char")).
'dn--un--cast_Cast_Integer_Bits8'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 256); _ -> ((V0 + 256) rem 256) end.
'dn--un--cast_Cast_Integer_Bits64'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 18446744073709551616); _ -> ((V0 + 18446744073709551616) rem 18446744073709551616) end.
'dn--un--cast_Cast_Integer_Bits32'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 4294967296); _ -> ((V0 + 4294967296) rem 4294967296) end.
'dn--un--cast_Cast_Integer_Bits16'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 65536); _ -> ((V0 + 65536) rem 65536) end.
'dn--un--cast_Cast_Int_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--cast_Cast_Int_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(('dn--un--cast_Cast_Int_Integer'(V0)))).
'dn--un--cast_Cast_Int_Integer'(V0) -> V0.
'dn--un--cast_Cast_Int_Int8'(V0) -> ('erlang':'throw'("Invalid cast Int->Int8")).
'dn--un--cast_Cast_Int_Int64'(V0) -> ('erlang':'throw'("Invalid cast Int->Int64")).
'dn--un--cast_Cast_Int_Int32'(V0) -> ('erlang':'throw'("Invalid cast Int->Int32")).
'dn--un--cast_Cast_Int_Int16'(V0) -> ('erlang':'throw'("Invalid cast Int->Int16")).
'dn--un--cast_Cast_Int_Double'(V0) -> ('erlang':'float'(V0)).
'dn--un--cast_Cast_Int_Char'(V0) -> case V0 of E0 when (((erlang:'is_integer'(E0)) andalso (E0 >= 0)) andalso (E0 =< 1114111)) -> E0; _ -> 65533 end.
'dn--un--cast_Cast_Int_Bits8'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 256); _ -> ((V0 + 256) rem 256) end.
'dn--un--cast_Cast_Int_Bits64'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 18446744073709551616); _ -> ((V0 + 18446744073709551616) rem 18446744073709551616) end.
'dn--un--cast_Cast_Int_Bits32'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 4294967296); _ -> ((V0 + 4294967296) rem 4294967296) end.
'dn--un--cast_Cast_Int_Bits16'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 65536); _ -> ((V0 + 65536) rem 65536) end.
'dn--un--cast_Cast_Int8_String'(V0) -> ('erlang':'throw'("Invalid cast Int8->String")).
'dn--un--cast_Cast_Int8_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(('dn--un--cast_Cast_Int8_Integer'(V0)))).
'dn--un--cast_Cast_Int8_Integer'(V0) -> ('erlang':'throw'("Invalid cast Int8->Integer")).
'dn--un--cast_Cast_Int8_Int64'(V0) -> ('erlang':'throw'("Invalid cast Int8->Int64")).
'dn--un--cast_Cast_Int8_Int32'(V0) -> ('erlang':'throw'("Invalid cast Int8->Int32")).
'dn--un--cast_Cast_Int8_Int16'(V0) -> ('erlang':'throw'("Invalid cast Int8->Int16")).
'dn--un--cast_Cast_Int8_Int'(V0) -> ('erlang':'throw'("Invalid cast Int8->Int")).
'dn--un--cast_Cast_Int8_Double'(V0) -> ('erlang':'throw'("Invalid cast Int8->Double")).
'dn--un--cast_Cast_Int8_Char'(V0) -> ('erlang':'throw'("Invalid cast Int8->Char")).
'dn--un--cast_Cast_Int8_Bits8'(V0) -> ('erlang':'throw'("Invalid cast Int8->Bits8")).
'dn--un--cast_Cast_Int8_Bits64'(V0) -> ('erlang':'throw'("Invalid cast Int8->Bits64")).
'dn--un--cast_Cast_Int8_Bits32'(V0) -> ('erlang':'throw'("Invalid cast Int8->Bits32")).
'dn--un--cast_Cast_Int8_Bits16'(V0) -> ('erlang':'throw'("Invalid cast Int8->Bits16")).
'dn--un--cast_Cast_Int64_String'(V0) -> ('erlang':'throw'("Invalid cast Int64->String")).
'dn--un--cast_Cast_Int64_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(('dn--un--cast_Cast_Int64_Integer'(V0)))).
'dn--un--cast_Cast_Int64_Integer'(V0) -> ('erlang':'throw'("Invalid cast Int64->Integer")).
'dn--un--cast_Cast_Int64_Int8'(V0) -> ('erlang':'throw'("Invalid cast Int64->Int8")).
'dn--un--cast_Cast_Int64_Int32'(V0) -> ('erlang':'throw'("Invalid cast Int64->Int32")).
'dn--un--cast_Cast_Int64_Int16'(V0) -> ('erlang':'throw'("Invalid cast Int64->Int16")).
'dn--un--cast_Cast_Int64_Int'(V0) -> ('erlang':'throw'("Invalid cast Int64->Int")).
'dn--un--cast_Cast_Int64_Double'(V0) -> ('erlang':'throw'("Invalid cast Int64->Double")).
'dn--un--cast_Cast_Int64_Char'(V0) -> ('erlang':'throw'("Invalid cast Int64->Char")).
'dn--un--cast_Cast_Int64_Bits8'(V0) -> ('erlang':'throw'("Invalid cast Int64->Bits8")).
'dn--un--cast_Cast_Int64_Bits64'(V0) -> ('erlang':'throw'("Invalid cast Int64->Bits64")).
'dn--un--cast_Cast_Int64_Bits32'(V0) -> ('erlang':'throw'("Invalid cast Int64->Bits32")).
'dn--un--cast_Cast_Int64_Bits16'(V0) -> ('erlang':'throw'("Invalid cast Int64->Bits16")).
'dn--un--cast_Cast_Int32_String'(V0) -> ('erlang':'throw'("Invalid cast Int32->String")).
'dn--un--cast_Cast_Int32_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(('dn--un--cast_Cast_Int32_Integer'(V0)))).
'dn--un--cast_Cast_Int32_Integer'(V0) -> ('erlang':'throw'("Invalid cast Int32->Integer")).
'dn--un--cast_Cast_Int32_Int8'(V0) -> ('erlang':'throw'("Invalid cast Int32->Int8")).
'dn--un--cast_Cast_Int32_Int64'(V0) -> ('erlang':'throw'("Invalid cast Int32->Int64")).
'dn--un--cast_Cast_Int32_Int16'(V0) -> ('erlang':'throw'("Invalid cast Int32->Int16")).
'dn--un--cast_Cast_Int32_Int'(V0) -> ('erlang':'throw'("Invalid cast Int32->Int")).
'dn--un--cast_Cast_Int32_Double'(V0) -> ('erlang':'throw'("Invalid cast Int32->Double")).
'dn--un--cast_Cast_Int32_Char'(V0) -> ('erlang':'throw'("Invalid cast Int32->Char")).
'dn--un--cast_Cast_Int32_Bits8'(V0) -> ('erlang':'throw'("Invalid cast Int32->Bits8")).
'dn--un--cast_Cast_Int32_Bits64'(V0) -> ('erlang':'throw'("Invalid cast Int32->Bits64")).
'dn--un--cast_Cast_Int32_Bits32'(V0) -> ('erlang':'throw'("Invalid cast Int32->Bits32")).
'dn--un--cast_Cast_Int32_Bits16'(V0) -> ('erlang':'throw'("Invalid cast Int32->Bits16")).
'dn--un--cast_Cast_Int16_String'(V0) -> ('erlang':'throw'("Invalid cast Int16->String")).
'dn--un--cast_Cast_Int16_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(('dn--un--cast_Cast_Int16_Integer'(V0)))).
'dn--un--cast_Cast_Int16_Integer'(V0) -> ('erlang':'throw'("Invalid cast Int16->Integer")).
'dn--un--cast_Cast_Int16_Int8'(V0) -> ('erlang':'throw'("Invalid cast Int16->Int8")).
'dn--un--cast_Cast_Int16_Int64'(V0) -> ('erlang':'throw'("Invalid cast Int16->Int64")).
'dn--un--cast_Cast_Int16_Int32'(V0) -> ('erlang':'throw'("Invalid cast Int16->Int32")).
'dn--un--cast_Cast_Int16_Int'(V0) -> ('erlang':'throw'("Invalid cast Int16->Int")).
'dn--un--cast_Cast_Int16_Double'(V0) -> ('erlang':'throw'("Invalid cast Int16->Double")).
'dn--un--cast_Cast_Int16_Char'(V0) -> ('erlang':'throw'("Invalid cast Int16->Char")).
'dn--un--cast_Cast_Int16_Bits8'(V0) -> ('erlang':'throw'("Invalid cast Int16->Bits8")).
'dn--un--cast_Cast_Int16_Bits64'(V0) -> ('erlang':'throw'("Invalid cast Int16->Bits64")).
'dn--un--cast_Cast_Int16_Bits32'(V0) -> ('erlang':'throw'("Invalid cast Int16->Bits32")).
'dn--un--cast_Cast_Int16_Bits16'(V0) -> ('erlang':'throw'("Invalid cast Int16->Bits16")).
'dn--un--cast_Cast_Double_String'(V0) -> ('erlang':'float_to_binary'(V0, [{'decimals', 10} | ['compact' | []]])).
'dn--un--cast_Cast_Double_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(('dn--un--cast_Cast_Double_Integer'(V0)))).
'dn--un--cast_Cast_Double_Integer'(V0) -> ('erlang':'trunc'(V0)).
'dn--un--cast_Cast_Double_Int8'(V0) -> ('erlang':'throw'("Invalid cast Double->Int8")).
'dn--un--cast_Cast_Double_Int64'(V0) -> ('erlang':'throw'("Invalid cast Double->Int64")).
'dn--un--cast_Cast_Double_Int32'(V0) -> ('erlang':'throw'("Invalid cast Double->Int32")).
'dn--un--cast_Cast_Double_Int16'(V0) -> ('erlang':'throw'("Invalid cast Double->Int16")).
'dn--un--cast_Cast_Double_Int'(V0) -> ('erlang':'trunc'(V0)).
'dn--un--cast_Cast_Double_Bits8'(V0) -> ('erlang':'throw'("Invalid cast Double->Bits8")).
'dn--un--cast_Cast_Double_Bits64'(V0) -> ('erlang':'throw'("Invalid cast Double->Bits64")).
'dn--un--cast_Cast_Double_Bits32'(V0) -> ('erlang':'throw'("Invalid cast Double->Bits32")).
'dn--un--cast_Cast_Double_Bits16'(V0) -> ('erlang':'throw'("Invalid cast Double->Bits16")).
'dn--un--cast_Cast_Char_String'(V0) -> ('unicode':'characters_to_binary'([V0 | []])).
'dn--un--cast_Cast_Char_Nat'(V0) -> ('Idris.Idris2.Builtin':'un--believe_me'(('dn--un--cast_Cast_Char_Integer'(V0)))).
'dn--un--cast_Cast_Char_Integer'(V0) -> case V0 of E0 when (((erlang:'is_integer'(E0)) andalso (E0 >= 0)) andalso (E0 =< 1114111)) -> E0; _ -> 65533 end.
'dn--un--cast_Cast_Char_Int8'(V0) -> ('erlang':'throw'("Invalid cast Char->Int8")).
'dn--un--cast_Cast_Char_Int64'(V0) -> ('erlang':'throw'("Invalid cast Char->Int64")).
'dn--un--cast_Cast_Char_Int32'(V0) -> ('erlang':'throw'("Invalid cast Char->Int32")).
'dn--un--cast_Cast_Char_Int16'(V0) -> ('erlang':'throw'("Invalid cast Char->Int16")).
'dn--un--cast_Cast_Char_Int'(V0) -> case V0 of E0 when (((erlang:'is_integer'(E0)) andalso (E0 >= 0)) andalso (E0 =< 1114111)) -> E0; _ -> 65533 end.
'dn--un--cast_Cast_Char_Bits8'(V0) -> ('erlang':'throw'("Invalid cast Char->Bits8")).
'dn--un--cast_Cast_Char_Bits64'(V0) -> ('erlang':'throw'("Invalid cast Char->Bits64")).
'dn--un--cast_Cast_Char_Bits32'(V0) -> ('erlang':'throw'("Invalid cast Char->Bits32")).
'dn--un--cast_Cast_Char_Bits16'(V0) -> ('erlang':'throw'("Invalid cast Char->Bits16")).
'dn--un--cast_Cast_Bits8_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--cast_Cast_Bits8_Nat'(V0) -> ('Idris.Idris2.Builtin':'un--believe_me'(('dn--un--cast_Cast_Bits8_Integer'(V0)))).
'dn--un--cast_Cast_Bits8_Integer'(V0) -> V0.
'dn--un--cast_Cast_Bits8_Int8'(V0) -> ('erlang':'throw'("Invalid cast Bits8->Int8")).
'dn--un--cast_Cast_Bits8_Int64'(V0) -> ('erlang':'throw'("Invalid cast Bits8->Int64")).
'dn--un--cast_Cast_Bits8_Int32'(V0) -> ('erlang':'throw'("Invalid cast Bits8->Int32")).
'dn--un--cast_Cast_Bits8_Int16'(V0) -> ('erlang':'throw'("Invalid cast Bits8->Int16")).
'dn--un--cast_Cast_Bits8_Int'(V0) -> V0.
'dn--un--cast_Cast_Bits8_Double'(V0) -> ('erlang':'throw'("Invalid cast Bits8->Double")).
'dn--un--cast_Cast_Bits8_Char'(V0) -> ('erlang':'throw'("Invalid cast Bits8->Char")).
'dn--un--cast_Cast_Bits8_Bits64'(V0) -> V0.
'dn--un--cast_Cast_Bits8_Bits32'(V0) -> V0.
'dn--un--cast_Cast_Bits8_Bits16'(V0) -> V0.
'dn--un--cast_Cast_Bits64_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--cast_Cast_Bits64_Nat'(V0) -> ('Idris.Idris2.Builtin':'un--believe_me'(('dn--un--cast_Cast_Bits64_Integer'(V0)))).
'dn--un--cast_Cast_Bits64_Integer'(V0) -> V0.
'dn--un--cast_Cast_Bits64_Int8'(V0) -> ('erlang':'throw'("Invalid cast Bits64->Int8")).
'dn--un--cast_Cast_Bits64_Int64'(V0) -> ('erlang':'throw'("Invalid cast Bits64->Int64")).
'dn--un--cast_Cast_Bits64_Int32'(V0) -> ('erlang':'throw'("Invalid cast Bits64->Int32")).
'dn--un--cast_Cast_Bits64_Int16'(V0) -> ('erlang':'throw'("Invalid cast Bits64->Int16")).
'dn--un--cast_Cast_Bits64_Int'(V0) -> V0.
'dn--un--cast_Cast_Bits64_Double'(V0) -> ('erlang':'throw'("Invalid cast Bits64->Double")).
'dn--un--cast_Cast_Bits64_Char'(V0) -> ('erlang':'throw'("Invalid cast Bits64->Char")).
'dn--un--cast_Cast_Bits64_Bits8'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 256); _ -> ((V0 + 256) rem 256) end.
'dn--un--cast_Cast_Bits64_Bits32'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 4294967296); _ -> ((V0 + 4294967296) rem 4294967296) end.
'dn--un--cast_Cast_Bits64_Bits16'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 65536); _ -> ((V0 + 65536) rem 65536) end.
'dn--un--cast_Cast_Bits32_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--cast_Cast_Bits32_Nat'(V0) -> ('Idris.Idris2.Builtin':'un--believe_me'(('dn--un--cast_Cast_Bits32_Integer'(V0)))).
'dn--un--cast_Cast_Bits32_Integer'(V0) -> V0.
'dn--un--cast_Cast_Bits32_Int8'(V0) -> ('erlang':'throw'("Invalid cast Bits32->Int8")).
'dn--un--cast_Cast_Bits32_Int64'(V0) -> ('erlang':'throw'("Invalid cast Bits32->Int64")).
'dn--un--cast_Cast_Bits32_Int32'(V0) -> ('erlang':'throw'("Invalid cast Bits32->Int32")).
'dn--un--cast_Cast_Bits32_Int16'(V0) -> ('erlang':'throw'("Invalid cast Bits32->Int16")).
'dn--un--cast_Cast_Bits32_Int'(V0) -> V0.
'dn--un--cast_Cast_Bits32_Double'(V0) -> ('erlang':'throw'("Invalid cast Bits32->Double")).
'dn--un--cast_Cast_Bits32_Char'(V0) -> ('erlang':'throw'("Invalid cast Bits32->Char")).
'dn--un--cast_Cast_Bits32_Bits8'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 256); _ -> ((V0 + 256) rem 256) end.
'dn--un--cast_Cast_Bits32_Bits64'(V0) -> V0.
'dn--un--cast_Cast_Bits32_Bits16'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 65536); _ -> ((V0 + 65536) rem 65536) end.
'dn--un--cast_Cast_Bits16_String'(V0) -> ('erlang':'integer_to_binary'(V0)).
'dn--un--cast_Cast_Bits16_Nat'(V0) -> ('Idris.Idris2.Builtin':'un--believe_me'(('dn--un--cast_Cast_Bits16_Integer'(V0)))).
'dn--un--cast_Cast_Bits16_Integer'(V0) -> V0.
'dn--un--cast_Cast_Bits16_Int8'(V0) -> ('erlang':'throw'("Invalid cast Bits16->Int8")).
'dn--un--cast_Cast_Bits16_Int64'(V0) -> ('erlang':'throw'("Invalid cast Bits16->Int64")).
'dn--un--cast_Cast_Bits16_Int32'(V0) -> ('erlang':'throw'("Invalid cast Bits16->Int32")).
'dn--un--cast_Cast_Bits16_Int16'(V0) -> ('erlang':'throw'("Invalid cast Bits16->Int16")).
'dn--un--cast_Cast_Bits16_Int'(V0) -> V0.
'dn--un--cast_Cast_Bits16_Double'(V0) -> ('erlang':'throw'("Invalid cast Bits16->Double")).
'dn--un--cast_Cast_Bits16_Char'(V0) -> ('erlang':'throw'("Invalid cast Bits16->Char")).
'dn--un--cast_Cast_Bits16_Bits8'(V0) -> case (V0 >= 0) of 'true' -> (V0 rem 256); _ -> ((V0 + 256) rem 256) end.
'dn--un--cast_Cast_Bits16_Bits64'(V0) -> V0.
'dn--un--cast_Cast_Bits16_Bits32'(V0) -> V0.
'dn--un--cast_Cast_$a_$a'(V0) -> V0.
'dn--un--__Impl_Cast_String_Nat'(V0) -> ('dn--un--cast_Cast_String_Nat'(V0)).
'dn--un--__Impl_Cast_String_Integer'(V0) -> ('dn--un--cast_Cast_String_Integer'(V0)).
'dn--un--__Impl_Cast_String_Int8'(V0) -> ('dn--un--cast_Cast_String_Int8'(V0)).
'dn--un--__Impl_Cast_String_Int64'(V0) -> ('dn--un--cast_Cast_String_Int64'(V0)).
'dn--un--__Impl_Cast_String_Int32'(V0) -> ('dn--un--cast_Cast_String_Int32'(V0)).
'dn--un--__Impl_Cast_String_Int16'(V0) -> ('dn--un--cast_Cast_String_Int16'(V0)).
'dn--un--__Impl_Cast_String_Int'(V0) -> ('dn--un--cast_Cast_String_Int'(V0)).
'dn--un--__Impl_Cast_String_Double'(V0) -> ('dn--un--cast_Cast_String_Double'(V0)).
'dn--un--__Impl_Cast_String_Bits8'(V0) -> ('dn--un--cast_Cast_String_Bits8'(V0)).
'dn--un--__Impl_Cast_String_Bits64'(V0) -> ('dn--un--cast_Cast_String_Bits64'(V0)).
'dn--un--__Impl_Cast_String_Bits32'(V0) -> ('dn--un--cast_Cast_String_Bits32'(V0)).
'dn--un--__Impl_Cast_String_Bits16'(V0) -> ('dn--un--cast_Cast_String_Bits16'(V0)).
'dn--un--__Impl_Cast_Nat_String'(V0) -> ('dn--un--cast_Cast_Nat_String'(V0)).
'dn--un--__Impl_Cast_Nat_Integer'(V0) -> ('dn--un--cast_Cast_Nat_Integer'(V0)).
'dn--un--__Impl_Cast_Nat_Int8'(V0) -> ('dn--un--cast_Cast_Nat_Int8'(V0)).
'dn--un--__Impl_Cast_Nat_Int64'(V0) -> ('dn--un--cast_Cast_Nat_Int64'(V0)).
'dn--un--__Impl_Cast_Nat_Int32'(V0) -> ('dn--un--cast_Cast_Nat_Int32'(V0)).
'dn--un--__Impl_Cast_Nat_Int16'(V0) -> ('dn--un--cast_Cast_Nat_Int16'(V0)).
'dn--un--__Impl_Cast_Nat_Int'(V0) -> ('dn--un--cast_Cast_Nat_Int'(V0)).
'dn--un--__Impl_Cast_Nat_Double'(V0) -> ('dn--un--cast_Cast_Nat_Double'(V0)).
'dn--un--__Impl_Cast_Nat_Char'(V0) -> ('dn--un--cast_Cast_Nat_Char'(V0)).
'dn--un--__Impl_Cast_Nat_Bits8'(V0) -> ('dn--un--cast_Cast_Nat_Bits8'(V0)).
'dn--un--__Impl_Cast_Nat_Bits64'(V0) -> ('dn--un--cast_Cast_Nat_Bits64'(V0)).
'dn--un--__Impl_Cast_Nat_Bits32'(V0) -> ('dn--un--cast_Cast_Nat_Bits32'(V0)).
'dn--un--__Impl_Cast_Nat_Bits16'(V0) -> ('dn--un--cast_Cast_Nat_Bits16'(V0)).
'dn--un--__Impl_Cast_Integer_String'(V0) -> ('dn--un--cast_Cast_Integer_String'(V0)).
'dn--un--__Impl_Cast_Integer_Nat'(V0) -> ('dn--un--cast_Cast_Integer_Nat'(V0)).
'dn--un--__Impl_Cast_Integer_Int8'(V0) -> ('dn--un--cast_Cast_Integer_Int8'(V0)).
'dn--un--__Impl_Cast_Integer_Int64'(V0) -> ('dn--un--cast_Cast_Integer_Int64'(V0)).
'dn--un--__Impl_Cast_Integer_Int32'(V0) -> ('dn--un--cast_Cast_Integer_Int32'(V0)).
'dn--un--__Impl_Cast_Integer_Int16'(V0) -> ('dn--un--cast_Cast_Integer_Int16'(V0)).
'dn--un--__Impl_Cast_Integer_Int'(V0) -> ('dn--un--cast_Cast_Integer_Int'(V0)).
'dn--un--__Impl_Cast_Integer_Double'(V0) -> ('dn--un--cast_Cast_Integer_Double'(V0)).
'dn--un--__Impl_Cast_Integer_Char'(V0) -> ('dn--un--cast_Cast_Integer_Char'(V0)).
'dn--un--__Impl_Cast_Integer_Bits8'(V0) -> ('dn--un--cast_Cast_Integer_Bits8'(V0)).
'dn--un--__Impl_Cast_Integer_Bits64'(V0) -> ('dn--un--cast_Cast_Integer_Bits64'(V0)).
'dn--un--__Impl_Cast_Integer_Bits32'(V0) -> ('dn--un--cast_Cast_Integer_Bits32'(V0)).
'dn--un--__Impl_Cast_Integer_Bits16'(V0) -> ('dn--un--cast_Cast_Integer_Bits16'(V0)).
'dn--un--__Impl_Cast_Int_String'(V0) -> ('dn--un--cast_Cast_Int_String'(V0)).
'dn--un--__Impl_Cast_Int_Nat'(V0) -> ('dn--un--cast_Cast_Int_Nat'(V0)).
'dn--un--__Impl_Cast_Int_Integer'(V0) -> ('dn--un--cast_Cast_Int_Integer'(V0)).
'dn--un--__Impl_Cast_Int_Int8'(V0) -> ('dn--un--cast_Cast_Int_Int8'(V0)).
'dn--un--__Impl_Cast_Int_Int64'(V0) -> ('dn--un--cast_Cast_Int_Int64'(V0)).
'dn--un--__Impl_Cast_Int_Int32'(V0) -> ('dn--un--cast_Cast_Int_Int32'(V0)).
'dn--un--__Impl_Cast_Int_Int16'(V0) -> ('dn--un--cast_Cast_Int_Int16'(V0)).
'dn--un--__Impl_Cast_Int_Double'(V0) -> ('dn--un--cast_Cast_Int_Double'(V0)).
'dn--un--__Impl_Cast_Int_Char'(V0) -> ('dn--un--cast_Cast_Int_Char'(V0)).
'dn--un--__Impl_Cast_Int_Bits8'(V0) -> ('dn--un--cast_Cast_Int_Bits8'(V0)).
'dn--un--__Impl_Cast_Int_Bits64'(V0) -> ('dn--un--cast_Cast_Int_Bits64'(V0)).
'dn--un--__Impl_Cast_Int_Bits32'(V0) -> ('dn--un--cast_Cast_Int_Bits32'(V0)).
'dn--un--__Impl_Cast_Int_Bits16'(V0) -> ('dn--un--cast_Cast_Int_Bits16'(V0)).
'dn--un--__Impl_Cast_Int8_String'(V0) -> ('dn--un--cast_Cast_Int8_String'(V0)).
'dn--un--__Impl_Cast_Int8_Nat'(V0) -> ('dn--un--cast_Cast_Int8_Nat'(V0)).
'dn--un--__Impl_Cast_Int8_Integer'(V0) -> ('dn--un--cast_Cast_Int8_Integer'(V0)).
'dn--un--__Impl_Cast_Int8_Int64'(V0) -> ('dn--un--cast_Cast_Int8_Int64'(V0)).
'dn--un--__Impl_Cast_Int8_Int32'(V0) -> ('dn--un--cast_Cast_Int8_Int32'(V0)).
'dn--un--__Impl_Cast_Int8_Int16'(V0) -> ('dn--un--cast_Cast_Int8_Int16'(V0)).
'dn--un--__Impl_Cast_Int8_Int'(V0) -> ('dn--un--cast_Cast_Int8_Int'(V0)).
'dn--un--__Impl_Cast_Int8_Double'(V0) -> ('dn--un--cast_Cast_Int8_Double'(V0)).
'dn--un--__Impl_Cast_Int8_Char'(V0) -> ('dn--un--cast_Cast_Int8_Char'(V0)).
'dn--un--__Impl_Cast_Int8_Bits8'(V0) -> ('dn--un--cast_Cast_Int8_Bits8'(V0)).
'dn--un--__Impl_Cast_Int8_Bits64'(V0) -> ('dn--un--cast_Cast_Int8_Bits64'(V0)).
'dn--un--__Impl_Cast_Int8_Bits32'(V0) -> ('dn--un--cast_Cast_Int8_Bits32'(V0)).
'dn--un--__Impl_Cast_Int8_Bits16'(V0) -> ('dn--un--cast_Cast_Int8_Bits16'(V0)).
'dn--un--__Impl_Cast_Int64_String'(V0) -> ('dn--un--cast_Cast_Int64_String'(V0)).
'dn--un--__Impl_Cast_Int64_Nat'(V0) -> ('dn--un--cast_Cast_Int64_Nat'(V0)).
'dn--un--__Impl_Cast_Int64_Integer'(V0) -> ('dn--un--cast_Cast_Int64_Integer'(V0)).
'dn--un--__Impl_Cast_Int64_Int8'(V0) -> ('dn--un--cast_Cast_Int64_Int8'(V0)).
'dn--un--__Impl_Cast_Int64_Int32'(V0) -> ('dn--un--cast_Cast_Int64_Int32'(V0)).
'dn--un--__Impl_Cast_Int64_Int16'(V0) -> ('dn--un--cast_Cast_Int64_Int16'(V0)).
'dn--un--__Impl_Cast_Int64_Int'(V0) -> ('dn--un--cast_Cast_Int64_Int'(V0)).
'dn--un--__Impl_Cast_Int64_Double'(V0) -> ('dn--un--cast_Cast_Int64_Double'(V0)).
'dn--un--__Impl_Cast_Int64_Char'(V0) -> ('dn--un--cast_Cast_Int64_Char'(V0)).
'dn--un--__Impl_Cast_Int64_Bits8'(V0) -> ('dn--un--cast_Cast_Int64_Bits8'(V0)).
'dn--un--__Impl_Cast_Int64_Bits64'(V0) -> ('dn--un--cast_Cast_Int64_Bits64'(V0)).
'dn--un--__Impl_Cast_Int64_Bits32'(V0) -> ('dn--un--cast_Cast_Int64_Bits32'(V0)).
'dn--un--__Impl_Cast_Int64_Bits16'(V0) -> ('dn--un--cast_Cast_Int64_Bits16'(V0)).
'dn--un--__Impl_Cast_Int32_String'(V0) -> ('dn--un--cast_Cast_Int32_String'(V0)).
'dn--un--__Impl_Cast_Int32_Nat'(V0) -> ('dn--un--cast_Cast_Int32_Nat'(V0)).
'dn--un--__Impl_Cast_Int32_Integer'(V0) -> ('dn--un--cast_Cast_Int32_Integer'(V0)).
'dn--un--__Impl_Cast_Int32_Int8'(V0) -> ('dn--un--cast_Cast_Int32_Int8'(V0)).
'dn--un--__Impl_Cast_Int32_Int64'(V0) -> ('dn--un--cast_Cast_Int32_Int64'(V0)).
'dn--un--__Impl_Cast_Int32_Int16'(V0) -> ('dn--un--cast_Cast_Int32_Int16'(V0)).
'dn--un--__Impl_Cast_Int32_Int'(V0) -> ('dn--un--cast_Cast_Int32_Int'(V0)).
'dn--un--__Impl_Cast_Int32_Double'(V0) -> ('dn--un--cast_Cast_Int32_Double'(V0)).
'dn--un--__Impl_Cast_Int32_Char'(V0) -> ('dn--un--cast_Cast_Int32_Char'(V0)).
'dn--un--__Impl_Cast_Int32_Bits8'(V0) -> ('dn--un--cast_Cast_Int32_Bits8'(V0)).
'dn--un--__Impl_Cast_Int32_Bits64'(V0) -> ('dn--un--cast_Cast_Int32_Bits64'(V0)).
'dn--un--__Impl_Cast_Int32_Bits32'(V0) -> ('dn--un--cast_Cast_Int32_Bits32'(V0)).
'dn--un--__Impl_Cast_Int32_Bits16'(V0) -> ('dn--un--cast_Cast_Int32_Bits16'(V0)).
'dn--un--__Impl_Cast_Int16_String'(V0) -> ('dn--un--cast_Cast_Int16_String'(V0)).
'dn--un--__Impl_Cast_Int16_Nat'(V0) -> ('dn--un--cast_Cast_Int16_Nat'(V0)).
'dn--un--__Impl_Cast_Int16_Integer'(V0) -> ('dn--un--cast_Cast_Int16_Integer'(V0)).
'dn--un--__Impl_Cast_Int16_Int8'(V0) -> ('dn--un--cast_Cast_Int16_Int8'(V0)).
'dn--un--__Impl_Cast_Int16_Int64'(V0) -> ('dn--un--cast_Cast_Int16_Int64'(V0)).
'dn--un--__Impl_Cast_Int16_Int32'(V0) -> ('dn--un--cast_Cast_Int16_Int32'(V0)).
'dn--un--__Impl_Cast_Int16_Int'(V0) -> ('dn--un--cast_Cast_Int16_Int'(V0)).
'dn--un--__Impl_Cast_Int16_Double'(V0) -> ('dn--un--cast_Cast_Int16_Double'(V0)).
'dn--un--__Impl_Cast_Int16_Char'(V0) -> ('dn--un--cast_Cast_Int16_Char'(V0)).
'dn--un--__Impl_Cast_Int16_Bits8'(V0) -> ('dn--un--cast_Cast_Int16_Bits8'(V0)).
'dn--un--__Impl_Cast_Int16_Bits64'(V0) -> ('dn--un--cast_Cast_Int16_Bits64'(V0)).
'dn--un--__Impl_Cast_Int16_Bits32'(V0) -> ('dn--un--cast_Cast_Int16_Bits32'(V0)).
'dn--un--__Impl_Cast_Int16_Bits16'(V0) -> ('dn--un--cast_Cast_Int16_Bits16'(V0)).
'dn--un--__Impl_Cast_Double_String'(V0) -> ('dn--un--cast_Cast_Double_String'(V0)).
'dn--un--__Impl_Cast_Double_Nat'(V0) -> ('dn--un--cast_Cast_Double_Nat'(V0)).
'dn--un--__Impl_Cast_Double_Integer'(V0) -> ('dn--un--cast_Cast_Double_Integer'(V0)).
'dn--un--__Impl_Cast_Double_Int8'(V0) -> ('dn--un--cast_Cast_Double_Int8'(V0)).
'dn--un--__Impl_Cast_Double_Int64'(V0) -> ('dn--un--cast_Cast_Double_Int64'(V0)).
'dn--un--__Impl_Cast_Double_Int32'(V0) -> ('dn--un--cast_Cast_Double_Int32'(V0)).
'dn--un--__Impl_Cast_Double_Int16'(V0) -> ('dn--un--cast_Cast_Double_Int16'(V0)).
'dn--un--__Impl_Cast_Double_Int'(V0) -> ('dn--un--cast_Cast_Double_Int'(V0)).
'dn--un--__Impl_Cast_Double_Bits8'(V0) -> ('dn--un--cast_Cast_Double_Bits8'(V0)).
'dn--un--__Impl_Cast_Double_Bits64'(V0) -> ('dn--un--cast_Cast_Double_Bits64'(V0)).
'dn--un--__Impl_Cast_Double_Bits32'(V0) -> ('dn--un--cast_Cast_Double_Bits32'(V0)).
'dn--un--__Impl_Cast_Double_Bits16'(V0) -> ('dn--un--cast_Cast_Double_Bits16'(V0)).
'dn--un--__Impl_Cast_Char_String'(V0) -> ('dn--un--cast_Cast_Char_String'(V0)).
'dn--un--__Impl_Cast_Char_Nat'(V0) -> ('dn--un--cast_Cast_Char_Nat'(V0)).
'dn--un--__Impl_Cast_Char_Integer'(V0) -> ('dn--un--cast_Cast_Char_Integer'(V0)).
'dn--un--__Impl_Cast_Char_Int8'(V0) -> ('dn--un--cast_Cast_Char_Int8'(V0)).
'dn--un--__Impl_Cast_Char_Int64'(V0) -> ('dn--un--cast_Cast_Char_Int64'(V0)).
'dn--un--__Impl_Cast_Char_Int32'(V0) -> ('dn--un--cast_Cast_Char_Int32'(V0)).
'dn--un--__Impl_Cast_Char_Int16'(V0) -> ('dn--un--cast_Cast_Char_Int16'(V0)).
'dn--un--__Impl_Cast_Char_Int'(V0) -> ('dn--un--cast_Cast_Char_Int'(V0)).
'dn--un--__Impl_Cast_Char_Bits8'(V0) -> ('dn--un--cast_Cast_Char_Bits8'(V0)).
'dn--un--__Impl_Cast_Char_Bits64'(V0) -> ('dn--un--cast_Cast_Char_Bits64'(V0)).
'dn--un--__Impl_Cast_Char_Bits32'(V0) -> ('dn--un--cast_Cast_Char_Bits32'(V0)).
'dn--un--__Impl_Cast_Char_Bits16'(V0) -> ('dn--un--cast_Cast_Char_Bits16'(V0)).
'dn--un--__Impl_Cast_Bits8_String'(V0) -> ('dn--un--cast_Cast_Bits8_String'(V0)).
'dn--un--__Impl_Cast_Bits8_Nat'(V0) -> ('dn--un--cast_Cast_Bits8_Nat'(V0)).
'dn--un--__Impl_Cast_Bits8_Integer'(V0) -> ('dn--un--cast_Cast_Bits8_Integer'(V0)).
'dn--un--__Impl_Cast_Bits8_Int8'(V0) -> ('dn--un--cast_Cast_Bits8_Int8'(V0)).
'dn--un--__Impl_Cast_Bits8_Int64'(V0) -> ('dn--un--cast_Cast_Bits8_Int64'(V0)).
'dn--un--__Impl_Cast_Bits8_Int32'(V0) -> ('dn--un--cast_Cast_Bits8_Int32'(V0)).
'dn--un--__Impl_Cast_Bits8_Int16'(V0) -> ('dn--un--cast_Cast_Bits8_Int16'(V0)).
'dn--un--__Impl_Cast_Bits8_Int'(V0) -> ('dn--un--cast_Cast_Bits8_Int'(V0)).
'dn--un--__Impl_Cast_Bits8_Double'(V0) -> ('dn--un--cast_Cast_Bits8_Double'(V0)).
'dn--un--__Impl_Cast_Bits8_Char'(V0) -> ('dn--un--cast_Cast_Bits8_Char'(V0)).
'dn--un--__Impl_Cast_Bits8_Bits64'(V0) -> ('dn--un--cast_Cast_Bits8_Bits64'(V0)).
'dn--un--__Impl_Cast_Bits8_Bits32'(V0) -> ('dn--un--cast_Cast_Bits8_Bits32'(V0)).
'dn--un--__Impl_Cast_Bits8_Bits16'(V0) -> ('dn--un--cast_Cast_Bits8_Bits16'(V0)).
'dn--un--__Impl_Cast_Bits64_String'(V0) -> ('dn--un--cast_Cast_Bits64_String'(V0)).
'dn--un--__Impl_Cast_Bits64_Nat'(V0) -> ('dn--un--cast_Cast_Bits64_Nat'(V0)).
'dn--un--__Impl_Cast_Bits64_Integer'(V0) -> ('dn--un--cast_Cast_Bits64_Integer'(V0)).
'dn--un--__Impl_Cast_Bits64_Int8'(V0) -> ('dn--un--cast_Cast_Bits64_Int8'(V0)).
'dn--un--__Impl_Cast_Bits64_Int64'(V0) -> ('dn--un--cast_Cast_Bits64_Int64'(V0)).
'dn--un--__Impl_Cast_Bits64_Int32'(V0) -> ('dn--un--cast_Cast_Bits64_Int32'(V0)).
'dn--un--__Impl_Cast_Bits64_Int16'(V0) -> ('dn--un--cast_Cast_Bits64_Int16'(V0)).
'dn--un--__Impl_Cast_Bits64_Int'(V0) -> ('dn--un--cast_Cast_Bits64_Int'(V0)).
'dn--un--__Impl_Cast_Bits64_Double'(V0) -> ('dn--un--cast_Cast_Bits64_Double'(V0)).
'dn--un--__Impl_Cast_Bits64_Char'(V0) -> ('dn--un--cast_Cast_Bits64_Char'(V0)).
'dn--un--__Impl_Cast_Bits64_Bits8'(V0) -> ('dn--un--cast_Cast_Bits64_Bits8'(V0)).
'dn--un--__Impl_Cast_Bits64_Bits32'(V0) -> ('dn--un--cast_Cast_Bits64_Bits32'(V0)).
'dn--un--__Impl_Cast_Bits64_Bits16'(V0) -> ('dn--un--cast_Cast_Bits64_Bits16'(V0)).
'dn--un--__Impl_Cast_Bits32_String'(V0) -> ('dn--un--cast_Cast_Bits32_String'(V0)).
'dn--un--__Impl_Cast_Bits32_Nat'(V0) -> ('dn--un--cast_Cast_Bits32_Nat'(V0)).
'dn--un--__Impl_Cast_Bits32_Integer'(V0) -> ('dn--un--cast_Cast_Bits32_Integer'(V0)).
'dn--un--__Impl_Cast_Bits32_Int8'(V0) -> ('dn--un--cast_Cast_Bits32_Int8'(V0)).
'dn--un--__Impl_Cast_Bits32_Int64'(V0) -> ('dn--un--cast_Cast_Bits32_Int64'(V0)).
'dn--un--__Impl_Cast_Bits32_Int32'(V0) -> ('dn--un--cast_Cast_Bits32_Int32'(V0)).
'dn--un--__Impl_Cast_Bits32_Int16'(V0) -> ('dn--un--cast_Cast_Bits32_Int16'(V0)).
'dn--un--__Impl_Cast_Bits32_Int'(V0) -> ('dn--un--cast_Cast_Bits32_Int'(V0)).
'dn--un--__Impl_Cast_Bits32_Double'(V0) -> ('dn--un--cast_Cast_Bits32_Double'(V0)).
'dn--un--__Impl_Cast_Bits32_Char'(V0) -> ('dn--un--cast_Cast_Bits32_Char'(V0)).
'dn--un--__Impl_Cast_Bits32_Bits8'(V0) -> ('dn--un--cast_Cast_Bits32_Bits8'(V0)).
'dn--un--__Impl_Cast_Bits32_Bits64'(V0) -> ('dn--un--cast_Cast_Bits32_Bits64'(V0)).
'dn--un--__Impl_Cast_Bits32_Bits16'(V0) -> ('dn--un--cast_Cast_Bits32_Bits16'(V0)).
'dn--un--__Impl_Cast_Bits16_String'(V0) -> ('dn--un--cast_Cast_Bits16_String'(V0)).
'dn--un--__Impl_Cast_Bits16_Nat'(V0) -> ('dn--un--cast_Cast_Bits16_Nat'(V0)).
'dn--un--__Impl_Cast_Bits16_Integer'(V0) -> ('dn--un--cast_Cast_Bits16_Integer'(V0)).
'dn--un--__Impl_Cast_Bits16_Int8'(V0) -> ('dn--un--cast_Cast_Bits16_Int8'(V0)).
'dn--un--__Impl_Cast_Bits16_Int64'(V0) -> ('dn--un--cast_Cast_Bits16_Int64'(V0)).
'dn--un--__Impl_Cast_Bits16_Int32'(V0) -> ('dn--un--cast_Cast_Bits16_Int32'(V0)).
'dn--un--__Impl_Cast_Bits16_Int16'(V0) -> ('dn--un--cast_Cast_Bits16_Int16'(V0)).
'dn--un--__Impl_Cast_Bits16_Int'(V0) -> ('dn--un--cast_Cast_Bits16_Int'(V0)).
'dn--un--__Impl_Cast_Bits16_Double'(V0) -> ('dn--un--cast_Cast_Bits16_Double'(V0)).
'dn--un--__Impl_Cast_Bits16_Char'(V0) -> ('dn--un--cast_Cast_Bits16_Char'(V0)).
'dn--un--__Impl_Cast_Bits16_Bits8'(V0) -> ('dn--un--cast_Cast_Bits16_Bits8'(V0)).
'dn--un--__Impl_Cast_Bits16_Bits64'(V0) -> ('dn--un--cast_Cast_Bits16_Bits64'(V0)).
'dn--un--__Impl_Cast_Bits16_Bits32'(V0) -> ('dn--un--cast_Cast_Bits16_Bits32'(V0)).
'dn--un--__Impl_Cast_$a_$a'(V0) -> ('dn--un--cast_Cast_$a_$a'(V0)).
'un--cast'(V0, V1) -> (V0(V1)).
