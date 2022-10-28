-module('Idris.Idris2.Libraries.Data.Primitives').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--decEq-3188'/4,
  'nested--2560-3134--in--un--primitiveNotEq'/4,
  'nested--2560-3133--in--un--primitiveEq'/3,
  'dn--un--decEq_DecEq_TempI8Int8'/0,
  'dn--un--decEq_DecEq_TempI64Int64'/0,
  'dn--un--decEq_DecEq_TempI32Int32'/0,
  'dn--un--decEq_DecEq_TempI16Int16'/0,
  'dn--un--decEq_DecEq_TempB8Bits8'/0,
  'dn--un--decEq_DecEq_TempB64Bits64'/0,
  'dn--un--decEq_DecEq_TempB32Bits32'/0,
  'dn--un--decEq_DecEq_TempB16Bits16'/0,
  'dn--un--decEq_DecEq_FromEq$a'/3,
  'un--TempI8'/2,
  'un--TempI64'/2,
  'un--TempI32'/2,
  'un--TempI16'/2,
  'un--TempB8'/2,
  'un--TempB64'/2,
  'un--TempB32'/2,
  'un--TempB16'/2,
  'un--FromEq'/3
]).
'case--decEq-3188'(V0, V1, V2, V3) -> case V3 of 1 -> {'Prelude.Types.Yes', ('nested--2560-3133--in--un--primitiveEq'(V0, V1, V2))}; 0 -> {'Prelude.Types.No', fun (V4) -> ('nested--2560-3134--in--un--primitiveNotEq'(V0, V1, V2, V4)) end} end.
'nested--2560-3134--in--un--primitiveNotEq'(V0, V1, V2, V3) -> {'Builtin.MkUnit'}.
'nested--2560-3133--in--un--primitiveEq'(V0, V1, V2) -> {'Builtin.Refl'}.
'dn--un--decEq_DecEq_TempI8Int8'() -> begin (V6 = fun (V0) -> fun (V1) -> ('dn--un--decEq_DecEq_FromEq$a'({'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int8'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Int8'(V4, V5)) end end}, V0, V1)) end end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end.
'dn--un--decEq_DecEq_TempI64Int64'() -> begin (V6 = fun (V0) -> fun (V1) -> ('dn--un--decEq_DecEq_FromEq$a'({'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int64'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Int64'(V4, V5)) end end}, V0, V1)) end end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end.
'dn--un--decEq_DecEq_TempI32Int32'() -> begin (V6 = fun (V0) -> fun (V1) -> ('dn--un--decEq_DecEq_FromEq$a'({'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int32'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Int32'(V4, V5)) end end}, V0, V1)) end end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end.
'dn--un--decEq_DecEq_TempI16Int16'() -> begin (V6 = fun (V0) -> fun (V1) -> ('dn--un--decEq_DecEq_FromEq$a'({'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int16'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Int16'(V4, V5)) end end}, V0, V1)) end end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end.
'dn--un--decEq_DecEq_TempB8Bits8'() -> begin (V6 = fun (V0) -> fun (V1) -> ('dn--un--decEq_DecEq_FromEq$a'({'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits8'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Bits8'(V4, V5)) end end}, V0, V1)) end end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end.
'dn--un--decEq_DecEq_TempB64Bits64'() -> begin (V6 = fun (V0) -> fun (V1) -> ('dn--un--decEq_DecEq_FromEq$a'({'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits64'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Bits64'(V4, V5)) end end}, V0, V1)) end end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end.
'dn--un--decEq_DecEq_TempB32Bits32'() -> begin (V6 = fun (V0) -> fun (V1) -> ('dn--un--decEq_DecEq_FromEq$a'({'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits32'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Bits32'(V4, V5)) end end}, V0, V1)) end end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end.
'dn--un--decEq_DecEq_TempB16Bits16'() -> begin (V6 = fun (V0) -> fun (V1) -> ('dn--un--decEq_DecEq_FromEq$a'({'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits16'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Bits16'(V4, V5)) end end}, V0, V1)) end end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end.
'dn--un--decEq_DecEq_FromEq$a'(V0, V1, V2) -> case case V0 of {'Prelude.EqOrd.MkEq', V3, V4} -> ((V3(V1))(V2)) end of 1 -> {'Prelude.Types.Yes', ('nested--2560-3133--in--un--primitiveEq'(V0, V1, V2))}; 0 -> {'Prelude.Types.No', fun (V5) -> ('nested--2560-3134--in--un--primitiveNotEq'(V0, V1, V2, V5)) end} end.
'un--TempI8'(V0, V1) -> ((('dn--un--decEq_DecEq_TempI8Int8'())(V0))(V1)).
'un--TempI64'(V0, V1) -> ((('dn--un--decEq_DecEq_TempI64Int64'())(V0))(V1)).
'un--TempI32'(V0, V1) -> ((('dn--un--decEq_DecEq_TempI32Int32'())(V0))(V1)).
'un--TempI16'(V0, V1) -> ((('dn--un--decEq_DecEq_TempI16Int16'())(V0))(V1)).
'un--TempB8'(V0, V1) -> ((('dn--un--decEq_DecEq_TempB8Bits8'())(V0))(V1)).
'un--TempB64'(V0, V1) -> ((('dn--un--decEq_DecEq_TempB64Bits64'())(V0))(V1)).
'un--TempB32'(V0, V1) -> ((('dn--un--decEq_DecEq_TempB32Bits32'())(V0))(V1)).
'un--TempB16'(V0, V1) -> ((('dn--un--decEq_DecEq_TempB16Bits16'())(V0))(V1)).
'un--FromEq'(V0, V1, V2) -> ('dn--un--decEq_DecEq_FromEq$a'(V0, V1, V2)).
