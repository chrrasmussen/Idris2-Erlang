-module('Idris.Idris2.Language.Reflection.TT').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--decEq-6334'/5,
  'case--decEq-6322'/5,
  'case--decEq-6310'/5,
  'case--decEq-6298'/5,
  'case--decEq-6286'/4,
  'case--decEq-6274'/5,
  'case--decEq-6262'/5,
  'case--decEq-6231'/5,
  'case--decEq-6219'/5,
  'case--decEq-6207'/5,
  'case--decEq-6195'/4,
  'case--decEq-6183'/5,
  'case--decEq-6171'/5,
  'case--decEq-6159'/5,
  'case--decEq-6121'/5,
  'case--decEq-6109'/5,
  'case--decEq-6097'/4,
  'case--decEq-6085'/5,
  'case--decEq-6073'/5,
  'case--decEq-6061'/5,
  'case--decEq-6049'/5,
  'case--decEq-6018'/5,
  'case--decEq-6006'/4,
  'case--decEq-5994'/5,
  'case--decEq-5982'/5,
  'case--decEq-5970'/5,
  'case--decEq-5958'/5,
  'case--decEq-5946'/5,
  'case--decEq-5915'/4,
  'case--decEq-5903'/5,
  'case--decEq-5891'/4,
  'case--decEq-5879'/4,
  'case--decEq-5867'/4,
  'case--decEq-5855'/4,
  'case--decEq-5843'/4,
  'case--decEq-5819'/4,
  'case--decEq-5807'/5,
  'case--decEq-5795'/5,
  'case--decEq-5783'/5,
  'case--decEq-5771'/5,
  'case--decEq-5759'/5,
  'case--decEq-5747'/4,
  'case--decEq-5117'/2,
  'case--decEq-5105'/2,
  'case--decEq-5093'/2,
  'case--decEq-5069'/3,
  'case--decEq-5057'/2,
  'case--decEq-5045'/3,
  'case--isOp-3566'/2,
  'dn--un--show_Show_Visibility'/1,
  'dn--un--show_Show_UserName'/1,
  'dn--un--show_Show_TotalReq'/1,
  'dn--un--show_Show_PrimType'/1,
  'dn--un--show_Show_Namespace'/1,
  'dn--un--show_Show_Name'/1,
  'dn--un--show_Show_LazyReason'/1,
  'dn--un--show_Show_Constant'/1,
  'dn--un--show_Show_BuiltinType'/1,
  'dn--un--showPrec_Show_Visibility'/2,
  'dn--un--showPrec_Show_UserName'/2,
  'dn--un--showPrec_Show_TotalReq'/2,
  'dn--un--showPrec_Show_PrimType'/2,
  'dn--un--showPrec_Show_Namespace'/2,
  'dn--un--showPrec_Show_Name'/2,
  'dn--un--showPrec_Show_LazyReason'/2,
  'dn--un--showPrec_Show_Constant'/2,
  'dn--un--showPrec_Show_BuiltinType'/2,
  'dn--un--injective_Injective_UN'/3,
  'dn--un--injective_Injective_MkNS'/3,
  'dn--un--injective_Injective_Field'/3,
  'dn--un--injective_Injective_Basic'/3,
  'dn--un--decEq_DecEq_UserName'/2,
  'dn--un--decEq_DecEq_Namespace'/2,
  'dn--un--decEq_DecEq_Name'/2,
  'dn--un--biinjective_Biinjective_WithBlock'/5,
  'dn--un--biinjective_Biinjective_Nested'/5,
  'dn--un--biinjective_Biinjective_NS'/5,
  'dn--un--biinjective_Biinjective_MN'/5,
  'dn--un--biinjective_Biinjective_DN'/5,
  'dn--un--biinjective_Biinjective_CaseBlock'/5,
  'dn--un--__Impl_Show_Visibility'/0,
  'dn--un--__Impl_Show_UserName'/0,
  'dn--un--__Impl_Show_TotalReq'/0,
  'dn--un--__Impl_Show_PrimType'/0,
  'dn--un--__Impl_Show_Namespace'/0,
  'dn--un--__Impl_Show_Name'/0,
  'dn--un--__Impl_Show_LazyReason'/0,
  'dn--un--__Impl_Show_Constant'/0,
  'dn--un--__Impl_Show_BuiltinType'/0,
  'dn--un--__Impl_Injective_UN'/0,
  'dn--un--__Impl_Injective_MkNS'/0,
  'dn--un--__Impl_Injective_Field'/0,
  'dn--un--__Impl_Injective_Basic'/0,
  'dn--un--__Impl_Eq_Visibility'/0,
  'dn--un--__Impl_Eq_UserName'/0,
  'dn--un--__Impl_Eq_TotalReq'/0,
  'dn--un--__Impl_Eq_PrimType'/0,
  'dn--un--__Impl_Eq_Namespace'/0,
  'dn--un--__Impl_Eq_Name'/0,
  'dn--un--__Impl_Eq_LazyReason'/0,
  'dn--un--__Impl_Eq_Count'/0,
  'dn--un--__Impl_Eq_Constant'/0,
  'dn--un--__Impl_Eq_BuiltinType'/0,
  'dn--un--__Impl_DecEq_UserName'/2,
  'dn--un--__Impl_DecEq_Namespace'/2,
  'dn--un--__Impl_DecEq_Name'/2,
  'dn--un--__Impl_Biinjective_WithBlock'/5,
  'dn--un--__Impl_Biinjective_Nested'/5,
  'dn--un--__Impl_Biinjective_NS'/5,
  'dn--un--__Impl_Biinjective_MN'/5,
  'dn--un--__Impl_Biinjective_DN'/5,
  'dn--un--__Impl_Biinjective_CaseBlock'/5,
  'dn--un--==_Eq_Visibility'/2,
  'dn--un--==_Eq_UserName'/2,
  'dn--un--==_Eq_TotalReq'/2,
  'dn--un--==_Eq_PrimType'/2,
  'dn--un--==_Eq_Namespace'/2,
  'dn--un--==_Eq_Name'/2,
  'dn--un--==_Eq_LazyReason'/2,
  'dn--un--==_Eq_Count'/2,
  'dn--un--==_Eq_Constant'/2,
  'dn--un--==_Eq_BuiltinType'/2,
  'dn--un--/=_Eq_Visibility'/2,
  'dn--un--/=_Eq_UserName'/2,
  'dn--un--/=_Eq_TotalReq'/2,
  'dn--un--/=_Eq_PrimType'/2,
  'dn--un--/=_Eq_Namespace'/2,
  'dn--un--/=_Eq_Name'/2,
  'dn--un--/=_Eq_LazyReason'/2,
  'dn--un--/=_Eq_Count'/2,
  'dn--un--/=_Eq_Constant'/2,
  'dn--un--/=_Eq_BuiltinType'/2,
  'un--showTotalReq'/2,
  'un--showSep'/2,
  'un--showPrefix'/2,
  'un--showPiInfo'/4,
  'un--showCount'/2,
  'un--isOp'/1,
  'un--enunciate'/1,
  'un--emptyFC'/0,
  'un--dropNS'/1,
  'un--FilePos'/0
]).
'case--decEq-6334'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-6322'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-6310'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-6298'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-6286'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-6274'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-6262'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-6231'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-6219'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-6207'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-6195'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-6183'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-6171'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-6159'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-6121'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-6109'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-6097'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-6085'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-6073'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-6061'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-6049'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-6018'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-6006'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-5994'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-5982'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-5970'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-5958'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-5946'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-5915'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-5903'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-5891'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-5879'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-5867'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-5855'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-5843'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-5819'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-5807'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-5795'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-5783'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-5771'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-5759'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-5747'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-5117'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-5105'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-5093'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-5069'(V0, V1, V2) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-5057'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--decEq-5045'(V0, V1, V2) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'case--isOp-3566'(V0, V1) -> case V1 of {'Language.Reflection.TT.UN', V2} -> case V2 of {'Language.Reflection.TT.Basic', V3} -> case ('Idris.Idris2.Data.String':'un--strM'(V3)) of {'Data.String.StrCons', V4, V5} -> case ('Idris.Idris2.Prelude.Types':'un--isAlpha'(V4)) of 1 -> 0; 0 -> 1 end; _ -> 0 end; _ -> 0 end; _ -> 0 end.
'dn--un--show_Show_Visibility'(V0) -> case V0 of 0 -> <<"private"/utf8>>; 1 -> <<"export"/utf8>>; 2 -> <<"public export"/utf8>> end.
'dn--un--show_Show_UserName'(V0) -> case V0 of {'Language.Reflection.TT.Basic', V1} -> V1; {'Language.Reflection.TT.Field', V2} -> <<<<"."/utf8>>/binary, V2/binary>>; {'Language.Reflection.TT.Underscore'} -> <<"_"/utf8>> end.
'dn--un--show_Show_TotalReq'(V0) -> case V0 of 0 -> <<"total"/utf8>>; 1 -> <<"covering"/utf8>>; 2 -> <<"partial"/utf8>> end.
'dn--un--show_Show_PrimType'(V0) -> case V0 of 0 -> <<"Int"/utf8>>; 1 -> <<"Integer"/utf8>>; 2 -> <<"Int8"/utf8>>; 3 -> <<"Int16"/utf8>>; 4 -> <<"Int32"/utf8>>; 5 -> <<"Int64"/utf8>>; 6 -> <<"Bits8"/utf8>>; 7 -> <<"Bits16"/utf8>>; 8 -> <<"Bits32"/utf8>>; 9 -> <<"Bits64"/utf8>>; 10 -> <<"String"/utf8>>; 11 -> <<"Char"/utf8>>; 12 -> <<"Double"/utf8>>; 13 -> <<"%World"/utf8>> end.
'dn--un--show_Show_Namespace'(V0) -> begin (V1 = V0), ('un--showSep'(<<"."/utf8>>, ('Idris.Idris2.Prelude.Types.List':'un--reverse'(V1)))) end.
'dn--un--show_Show_Name'(V0) -> ('un--showPrefix'(0, V0)).
'dn--un--show_Show_LazyReason'(V0) -> case V0 of 0 -> <<"Inf"/utf8>>; 1 -> <<"Lazy"/utf8>>; 2 -> <<"Unknown"/utf8>> end.
'dn--un--show_Show_Constant'(V0) -> case V0 of {'Language.Reflection.TT.I', V1} -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(V1)); {'Language.Reflection.TT.BI', V2} -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Integer'(V2)); {'Language.Reflection.TT.I8', V3} -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int8'(V3)); {'Language.Reflection.TT.I16', V4} -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int16'(V4)); {'Language.Reflection.TT.I32', V5} -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int32'(V5)); {'Language.Reflection.TT.I64', V6} -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int64'(V6)); {'Language.Reflection.TT.B8', V7} -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Bits8'(V7)); {'Language.Reflection.TT.B16', V8} -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Bits16'(V8)); {'Language.Reflection.TT.B32', V9} -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Bits32'(V9)); {'Language.Reflection.TT.B64', V10} -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Bits64'(V10)); {'Language.Reflection.TT.Str', V11} -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_String'(V11)); {'Language.Reflection.TT.Ch', V12} -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Char'(V12)); {'Language.Reflection.TT.Db', V13} -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Double'(V13)); {'Language.Reflection.TT.PrT', V14} -> ('dn--un--show_Show_PrimType'(V14)); {'Language.Reflection.TT.WorldVal'} -> <<"%World"/utf8>> end.
'dn--un--show_Show_BuiltinType'(V0) -> case V0 of 0 -> <<"Natural"/utf8>>; 1 -> <<"NaturalToInteger"/utf8>>; 2 -> <<"IntegerToNatural"/utf8>> end.
'dn--un--showPrec_Show_Visibility'(V0, V1) -> ('dn--un--show_Show_Visibility'(V1)).
'dn--un--showPrec_Show_UserName'(V0, V1) -> ('dn--un--show_Show_UserName'(V1)).
'dn--un--showPrec_Show_TotalReq'(V0, V1) -> ('dn--un--show_Show_TotalReq'(V1)).
'dn--un--showPrec_Show_PrimType'(V0, V1) -> ('dn--un--show_Show_PrimType'(V1)).
'dn--un--showPrec_Show_Namespace'(V0, V1) -> ('dn--un--show_Show_Namespace'(V1)).
'dn--un--showPrec_Show_Name'(V0, V1) -> ('dn--un--show_Show_Name'(V1)).
'dn--un--showPrec_Show_LazyReason'(V0, V1) -> ('dn--un--show_Show_LazyReason'(V1)).
'dn--un--showPrec_Show_Constant'(V0, V1) -> ('dn--un--show_Show_Constant'(V1)).
'dn--un--showPrec_Show_BuiltinType'(V0, V1) -> ('dn--un--show_Show_BuiltinType'(V1)).
'dn--un--injective_Injective_UN'(V0, V1, V2) -> {'Builtin.Refl'}.
'dn--un--injective_Injective_MkNS'(V0, V1, V2) -> {'Builtin.Refl'}.
'dn--un--injective_Injective_Field'(V0, V1, V2) -> {'Builtin.Refl'}.
'dn--un--injective_Injective_Basic'(V0, V1, V2) -> {'Builtin.Refl'}.
'dn--un--decEq_DecEq_UserName'(V0, V1) -> case V0 of {'Language.Reflection.TT.Basic', V2} -> case V1 of {'Language.Reflection.TT.Basic', V3} -> ('Idris.Idris2.Decidable.Equality.Core':'un--decEqCong'(((begin (V6 = fun (V4) -> fun (V5) -> ((('Idris.Idris2.Decidable.Equality':'dn--un--decEq_DecEq_String'())(V4))(V5)) end end), fun (V7) -> fun (V8) -> ((V6(V7))(V8)) end end end(V2))(V3)))); {'Language.Reflection.TT.Field', V9} -> {'Prelude.Types.No', fun (V10) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.Underscore'} -> {'Prelude.Types.No', fun (V11) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end} end; {'Language.Reflection.TT.Field', V12} -> case V1 of {'Language.Reflection.TT.Basic', V13} -> {'Prelude.Types.No', fun (V14) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.Field', V15} -> ('Idris.Idris2.Decidable.Equality.Core':'un--decEqCong'(((begin (V18 = fun (V16) -> fun (V17) -> ((('Idris.Idris2.Decidable.Equality':'dn--un--decEq_DecEq_String'())(V16))(V17)) end end), fun (V19) -> fun (V20) -> ((V18(V19))(V20)) end end end(V12))(V15)))); {'Language.Reflection.TT.Underscore'} -> {'Prelude.Types.No', fun (V21) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end} end; {'Language.Reflection.TT.Underscore'} -> case V1 of {'Language.Reflection.TT.Basic', V22} -> {'Prelude.Types.No', fun (V23) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.Field', V24} -> {'Prelude.Types.No', fun (V25) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.Underscore'} -> {'Prelude.Types.Yes', {'Builtin.Refl'}} end end.
'dn--un--decEq_DecEq_Namespace'(V0, V1) -> begin (V2 = V0), begin (V3 = V1), ('Idris.Idris2.Decidable.Equality.Core':'un--decEqCong'(((begin (V8 = fun (V4) -> fun (V5) -> ('Idris.Idris2.Decidable.Equality':'dn--un--decEq_DecEq_(List $a)'(fun (V6) -> fun (V7) -> ((('Idris.Idris2.Decidable.Equality':'dn--un--decEq_DecEq_String'())(V6))(V7)) end end, V4, V5)) end end), fun (V9) -> fun (V10) -> ((V8(V9))(V10)) end end end(V2))(V3)))) end end.
'dn--un--decEq_DecEq_Name'(V0, V1) -> case V0 of {'Language.Reflection.TT.NS', V2, V3} -> case V1 of {'Language.Reflection.TT.NS', V4, V5} -> ('Idris.Idris2.Decidable.Equality.Core':'un--decEqCong2'(('dn--un--decEq_DecEq_Namespace'(V2, V4)), fun () -> ((begin (V8 = fun (V6) -> fun (V7) -> ('dn--un--decEq_DecEq_Name'(V6, V7)) end end), fun (V9) -> fun (V10) -> ((V8(V9))(V10)) end end end(V3))(V5)) end)); {'Language.Reflection.TT.UN', V11} -> {'Prelude.Types.No', fun (V12) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.MN', V13, V14} -> {'Prelude.Types.No', fun (V15) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.DN', V16, V17} -> {'Prelude.Types.No', fun (V18) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.Nested', V19, V20} -> {'Prelude.Types.No', fun (V21) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.CaseBlock', V22, V23} -> {'Prelude.Types.No', fun (V24) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.WithBlock', V25, V26} -> {'Prelude.Types.No', fun (V27) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end} end; {'Language.Reflection.TT.UN', V28} -> case V1 of {'Language.Reflection.TT.NS', V29, V30} -> {'Prelude.Types.No', fun (V31) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.UN', V32} -> ('Idris.Idris2.Decidable.Equality.Core':'un--decEqCong'(('dn--un--decEq_DecEq_UserName'(V28, V32)))); {'Language.Reflection.TT.MN', V33, V34} -> {'Prelude.Types.No', fun (V35) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.DN', V36, V37} -> {'Prelude.Types.No', fun (V38) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.Nested', V39, V40} -> {'Prelude.Types.No', fun (V41) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.CaseBlock', V42, V43} -> {'Prelude.Types.No', fun (V44) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.WithBlock', V45, V46} -> {'Prelude.Types.No', fun (V47) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end} end; {'Language.Reflection.TT.MN', V48, V49} -> case V1 of {'Language.Reflection.TT.NS', V50, V51} -> {'Prelude.Types.No', fun (V52) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.UN', V53} -> {'Prelude.Types.No', fun (V54) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.MN', V55, V56} -> ('Idris.Idris2.Decidable.Equality.Core':'un--decEqCong2'(((begin (V59 = fun (V57) -> fun (V58) -> ((('Idris.Idris2.Decidable.Equality':'dn--un--decEq_DecEq_String'())(V57))(V58)) end end), fun (V60) -> fun (V61) -> ((V59(V60))(V61)) end end end(V48))(V55)), fun () -> ((begin (V64 = fun (V62) -> fun (V63) -> ((('Idris.Idris2.Decidable.Equality':'dn--un--decEq_DecEq_Int'())(V62))(V63)) end end), fun (V65) -> fun (V66) -> ((V64(V65))(V66)) end end end(V49))(V56)) end)); {'Language.Reflection.TT.DN', V67, V68} -> {'Prelude.Types.No', fun (V69) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.Nested', V70, V71} -> {'Prelude.Types.No', fun (V72) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.CaseBlock', V73, V74} -> {'Prelude.Types.No', fun (V75) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.WithBlock', V76, V77} -> {'Prelude.Types.No', fun (V78) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end} end; {'Language.Reflection.TT.DN', V79, V80} -> case V1 of {'Language.Reflection.TT.NS', V81, V82} -> {'Prelude.Types.No', fun (V83) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.UN', V84} -> {'Prelude.Types.No', fun (V85) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.MN', V86, V87} -> {'Prelude.Types.No', fun (V88) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.DN', V89, V90} -> ('Idris.Idris2.Decidable.Equality.Core':'un--decEqCong2'(((begin (V93 = fun (V91) -> fun (V92) -> ((('Idris.Idris2.Decidable.Equality':'dn--un--decEq_DecEq_String'())(V91))(V92)) end end), fun (V94) -> fun (V95) -> ((V93(V94))(V95)) end end end(V79))(V89)), fun () -> ((begin (V98 = fun (V96) -> fun (V97) -> ('dn--un--decEq_DecEq_Name'(V96, V97)) end end), fun (V99) -> fun (V100) -> ((V98(V99))(V100)) end end end(V80))(V90)) end)); {'Language.Reflection.TT.Nested', V101, V102} -> {'Prelude.Types.No', fun (V103) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.CaseBlock', V104, V105} -> {'Prelude.Types.No', fun (V106) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.WithBlock', V107, V108} -> {'Prelude.Types.No', fun (V109) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end} end; {'Language.Reflection.TT.Nested', V110, V111} -> case V1 of {'Language.Reflection.TT.NS', V112, V113} -> {'Prelude.Types.No', fun (V114) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.UN', V115} -> {'Prelude.Types.No', fun (V116) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.MN', V117, V118} -> {'Prelude.Types.No', fun (V119) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.DN', V120, V121} -> {'Prelude.Types.No', fun (V122) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.Nested', V123, V124} -> ('Idris.Idris2.Decidable.Equality.Core':'un--decEqCong2'(((begin (V131 = fun (V125) -> fun (V126) -> ('Idris.Idris2.Decidable.Equality':'dn--un--decEq_DecEq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'({'Builtin.MkPair', fun (V127) -> fun (V128) -> ((('Idris.Idris2.Decidable.Equality':'dn--un--decEq_DecEq_Int'())(V127))(V128)) end end, fun (V129) -> fun (V130) -> ((('Idris.Idris2.Decidable.Equality':'dn--un--decEq_DecEq_Int'())(V129))(V130)) end end}, V125, V126)) end end), fun (V132) -> fun (V133) -> ((V131(V132))(V133)) end end end(V110))(V123)), fun () -> ((begin (V136 = fun (V134) -> fun (V135) -> ('dn--un--decEq_DecEq_Name'(V134, V135)) end end), fun (V137) -> fun (V138) -> ((V136(V137))(V138)) end end end(V111))(V124)) end)); {'Language.Reflection.TT.CaseBlock', V139, V140} -> {'Prelude.Types.No', fun (V141) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.WithBlock', V142, V143} -> {'Prelude.Types.No', fun (V144) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end} end; {'Language.Reflection.TT.CaseBlock', V145, V146} -> case V1 of {'Language.Reflection.TT.NS', V147, V148} -> {'Prelude.Types.No', fun (V149) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.UN', V150} -> {'Prelude.Types.No', fun (V151) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.MN', V152, V153} -> {'Prelude.Types.No', fun (V154) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.DN', V155, V156} -> {'Prelude.Types.No', fun (V157) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.Nested', V158, V159} -> {'Prelude.Types.No', fun (V160) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.CaseBlock', V161, V162} -> ('Idris.Idris2.Decidable.Equality.Core':'un--decEqCong2'(((begin (V165 = fun (V163) -> fun (V164) -> ((('Idris.Idris2.Decidable.Equality':'dn--un--decEq_DecEq_String'())(V163))(V164)) end end), fun (V166) -> fun (V167) -> ((V165(V166))(V167)) end end end(V145))(V161)), fun () -> ((begin (V170 = fun (V168) -> fun (V169) -> ((('Idris.Idris2.Decidable.Equality':'dn--un--decEq_DecEq_Int'())(V168))(V169)) end end), fun (V171) -> fun (V172) -> ((V170(V171))(V172)) end end end(V146))(V162)) end)); {'Language.Reflection.TT.WithBlock', V173, V174} -> {'Prelude.Types.No', fun (V175) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end} end; {'Language.Reflection.TT.WithBlock', V176, V177} -> case V1 of {'Language.Reflection.TT.NS', V178, V179} -> {'Prelude.Types.No', fun (V180) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.UN', V181} -> {'Prelude.Types.No', fun (V182) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.MN', V183, V184} -> {'Prelude.Types.No', fun (V185) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.DN', V186, V187} -> {'Prelude.Types.No', fun (V188) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.Nested', V189, V190} -> {'Prelude.Types.No', fun (V191) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.CaseBlock', V192, V193} -> {'Prelude.Types.No', fun (V194) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})) end}; {'Language.Reflection.TT.WithBlock', V195, V196} -> ('Idris.Idris2.Decidable.Equality.Core':'un--decEqCong2'(((begin (V199 = fun (V197) -> fun (V198) -> ((('Idris.Idris2.Decidable.Equality':'dn--un--decEq_DecEq_String'())(V197))(V198)) end end), fun (V200) -> fun (V201) -> ((V199(V200))(V201)) end end end(V176))(V195)), fun () -> ((begin (V204 = fun (V202) -> fun (V203) -> ((('Idris.Idris2.Decidable.Equality':'dn--un--decEq_DecEq_Int'())(V202))(V203)) end end), fun (V205) -> fun (V206) -> ((V204(V205))(V206)) end end end(V177))(V196)) end)) end end.
'dn--un--biinjective_Biinjective_WithBlock'(V0, V1, V2, V3, V4) -> {'Builtin.MkPair', {'Builtin.Refl'}, {'Builtin.Refl'}}.
'dn--un--biinjective_Biinjective_Nested'(V0, V1, V2, V3, V4) -> {'Builtin.MkPair', {'Builtin.Refl'}, {'Builtin.Refl'}}.
'dn--un--biinjective_Biinjective_NS'(V0, V1, V2, V3, V4) -> {'Builtin.MkPair', {'Builtin.Refl'}, {'Builtin.Refl'}}.
'dn--un--biinjective_Biinjective_MN'(V0, V1, V2, V3, V4) -> {'Builtin.MkPair', {'Builtin.Refl'}, {'Builtin.Refl'}}.
'dn--un--biinjective_Biinjective_DN'(V0, V1, V2, V3, V4) -> {'Builtin.MkPair', {'Builtin.Refl'}, {'Builtin.Refl'}}.
'dn--un--biinjective_Biinjective_CaseBlock'(V0, V1, V2, V3, V4) -> {'Builtin.MkPair', {'Builtin.Refl'}, {'Builtin.Refl'}}.
'dn--un--__Impl_Show_Visibility'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Visibility'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Visibility'(V1, V2)) end end}.
'dn--un--__Impl_Show_UserName'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_UserName'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_UserName'(V1, V2)) end end}.
'dn--un--__Impl_Show_TotalReq'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_TotalReq'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_TotalReq'(V1, V2)) end end}.
'dn--un--__Impl_Show_PrimType'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_PrimType'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_PrimType'(V1, V2)) end end}.
'dn--un--__Impl_Show_Namespace'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Namespace'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Namespace'(V1, V2)) end end}.
'dn--un--__Impl_Show_Name'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Name'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Name'(V1, V2)) end end}.
'dn--un--__Impl_Show_LazyReason'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_LazyReason'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_LazyReason'(V1, V2)) end end}.
'dn--un--__Impl_Show_Constant'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Constant'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Constant'(V1, V2)) end end}.
'dn--un--__Impl_Show_BuiltinType'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_BuiltinType'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_BuiltinType'(V1, V2)) end end}.
'dn--un--__Impl_Injective_UN'() -> {'Control.Function.MkInjective', fun (V0) -> {'Language.Reflection.TT.UN', V0} end, fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--injective_Injective_UN'(V1, V2, V3)) end end end}.
'dn--un--__Impl_Injective_MkNS'() -> {'Control.Function.MkInjective', fun (V0) -> V0 end, fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--injective_Injective_MkNS'(V1, V2, V3)) end end end}.
'dn--un--__Impl_Injective_Field'() -> {'Control.Function.MkInjective', fun (V0) -> {'Language.Reflection.TT.Field', V0} end, fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--injective_Injective_Field'(V1, V2, V3)) end end end}.
'dn--un--__Impl_Injective_Basic'() -> {'Control.Function.MkInjective', fun (V0) -> {'Language.Reflection.TT.Basic', V0} end, fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--injective_Injective_Basic'(V1, V2, V3)) end end end}.
'dn--un--__Impl_Eq_Visibility'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Visibility'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Visibility'(V2, V3)) end end}.
'dn--un--__Impl_Eq_UserName'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_UserName'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_UserName'(V2, V3)) end end}.
'dn--un--__Impl_Eq_TotalReq'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_TotalReq'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_TotalReq'(V2, V3)) end end}.
'dn--un--__Impl_Eq_PrimType'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_PrimType'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_PrimType'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Namespace'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Namespace'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Namespace'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Name'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Name'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Name'(V2, V3)) end end}.
'dn--un--__Impl_Eq_LazyReason'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_LazyReason'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_LazyReason'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Count'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Count'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Count'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Constant'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Constant'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Constant'(V2, V3)) end end}.
'dn--un--__Impl_Eq_BuiltinType'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_BuiltinType'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_BuiltinType'(V2, V3)) end end}.
'dn--un--__Impl_DecEq_UserName'(V0, V1) -> ('dn--un--decEq_DecEq_UserName'(V0, V1)).
'dn--un--__Impl_DecEq_Namespace'(V0, V1) -> ('dn--un--decEq_DecEq_Namespace'(V0, V1)).
'dn--un--__Impl_DecEq_Name'(V0, V1) -> ('dn--un--decEq_DecEq_Name'(V0, V1)).
'dn--un--__Impl_Biinjective_WithBlock'(V0, V1, V2, V3, V4) -> ('dn--un--biinjective_Biinjective_WithBlock'(V0, V1, V2, V3, V4)).
'dn--un--__Impl_Biinjective_Nested'(V0, V1, V2, V3, V4) -> ('dn--un--biinjective_Biinjective_Nested'(V0, V1, V2, V3, V4)).
'dn--un--__Impl_Biinjective_NS'(V0, V1, V2, V3, V4) -> ('dn--un--biinjective_Biinjective_NS'(V0, V1, V2, V3, V4)).
'dn--un--__Impl_Biinjective_MN'(V0, V1, V2, V3, V4) -> ('dn--un--biinjective_Biinjective_MN'(V0, V1, V2, V3, V4)).
'dn--un--__Impl_Biinjective_DN'(V0, V1, V2, V3, V4) -> ('dn--un--biinjective_Biinjective_DN'(V0, V1, V2, V3, V4)).
'dn--un--__Impl_Biinjective_CaseBlock'(V0, V1, V2, V3, V4) -> ('dn--un--biinjective_Biinjective_CaseBlock'(V0, V1, V2, V3, V4)).
'dn--un--==_Eq_Visibility'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> 1; _ -> 0 end; 1 -> case V1 of 1 -> 1; _ -> 0 end; 2 -> case V1 of 2 -> 1; _ -> 0 end; _ -> 0 end.
'dn--un--==_Eq_UserName'(V0, V1) -> case V0 of {'Language.Reflection.TT.Basic', V2} -> case V1 of {'Language.Reflection.TT.Basic', V3} -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V2, V3)); _ -> 0 end; {'Language.Reflection.TT.Field', V4} -> case V1 of {'Language.Reflection.TT.Field', V5} -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V4, V5)); _ -> 0 end; {'Language.Reflection.TT.Underscore'} -> case V1 of {'Language.Reflection.TT.Underscore'} -> 1; _ -> 0 end; _ -> 0 end.
'dn--un--==_Eq_TotalReq'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> 1; _ -> 0 end; 1 -> case V1 of 1 -> 1; _ -> 0 end; 2 -> case V1 of 2 -> 1; _ -> 0 end; _ -> 0 end.
'dn--un--==_Eq_PrimType'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> 1; _ -> 0 end; 1 -> case V1 of 1 -> 1; _ -> 0 end; 2 -> case V1 of 2 -> 1; _ -> 0 end; 3 -> case V1 of 3 -> 1; _ -> 0 end; 4 -> case V1 of 4 -> 1; _ -> 0 end; 5 -> case V1 of 5 -> 1; _ -> 0 end; 6 -> case V1 of 6 -> 1; _ -> 0 end; 7 -> case V1 of 7 -> 1; _ -> 0 end; 8 -> case V1 of 8 -> 1; _ -> 0 end; 9 -> case V1 of 9 -> 1; _ -> 0 end; 10 -> case V1 of 10 -> 1; _ -> 0 end; 11 -> case V1 of 11 -> 1; _ -> 0 end; 12 -> case V1 of 12 -> 1; _ -> 0 end; 13 -> case V1 of 13 -> 1; _ -> 0 end; _ -> 0 end.
'dn--un--==_Eq_Namespace'(V0, V1) -> begin (V2 = V0), begin (V3 = V1), ('Idris.Idris2.Prelude.Types':'dn--un--==_Eq_(List $a)'({'Prelude.EqOrd.MkEq', fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_String'(V6, V7)) end end}, V2, V3)) end end.
'dn--un--==_Eq_Name'(V0, V1) -> case V0 of {'Language.Reflection.TT.NS', V2, V3} -> case V1 of {'Language.Reflection.TT.NS', V4, V5} -> case ('dn--un--==_Eq_Namespace'(V2, V4)) of 1 -> ('dn--un--==_Eq_Name'(V3, V5)); 0 -> 0 end; _ -> 0 end; {'Language.Reflection.TT.UN', V6} -> case V1 of {'Language.Reflection.TT.UN', V7} -> ('dn--un--==_Eq_UserName'(V6, V7)); _ -> 0 end; {'Language.Reflection.TT.MN', V8, V9} -> case V1 of {'Language.Reflection.TT.MN', V10, V11} -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V8, V10)) of 1 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(V9, V11)); 0 -> 0 end; _ -> 0 end; {'Language.Reflection.TT.DN', V12, V13} -> case V1 of {'Language.Reflection.TT.DN', V14, V15} -> ('dn--un--==_Eq_Name'(V13, V15)); _ -> 0 end; {'Language.Reflection.TT.Nested', V16, V17} -> case V1 of {'Language.Reflection.TT.Nested', V18, V19} -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'({'Prelude.EqOrd.MkEq', fun (V20) -> fun (V21) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(V20, V21)) end end, fun (V22) -> fun (V23) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Int'(V22, V23)) end end}, {'Prelude.EqOrd.MkEq', fun (V24) -> fun (V25) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(V24, V25)) end end, fun (V26) -> fun (V27) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Int'(V26, V27)) end end}, V16, V18)) of 1 -> ('dn--un--==_Eq_Name'(V17, V19)); 0 -> 0 end; _ -> 0 end; {'Language.Reflection.TT.CaseBlock', V28, V29} -> case V1 of {'Language.Reflection.TT.CaseBlock', V30, V31} -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V28, V30)) of 1 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(V29, V31)); 0 -> 0 end; _ -> 0 end; {'Language.Reflection.TT.WithBlock', V32, V33} -> case V1 of {'Language.Reflection.TT.WithBlock', V34, V35} -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V32, V34)) of 1 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(V33, V35)); 0 -> 0 end; _ -> 0 end; _ -> 0 end.
'dn--un--==_Eq_LazyReason'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> 1; _ -> 0 end; 1 -> case V1 of 1 -> 1; _ -> 0 end; 2 -> case V1 of 2 -> 1; _ -> 0 end; _ -> 0 end.
'dn--un--==_Eq_Count'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> 1; _ -> 0 end; 1 -> case V1 of 1 -> 1; _ -> 0 end; 2 -> case V1 of 2 -> 1; _ -> 0 end; _ -> 0 end.
'dn--un--==_Eq_Constant'(V0, V1) -> case V0 of {'Language.Reflection.TT.I', V2} -> case V1 of {'Language.Reflection.TT.I', V3} -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(V2, V3)); _ -> 0 end; {'Language.Reflection.TT.BI', V4} -> case V1 of {'Language.Reflection.TT.BI', V5} -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Integer'(V4, V5)); _ -> 0 end; {'Language.Reflection.TT.I8', V6} -> case V1 of {'Language.Reflection.TT.I8', V7} -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int8'(V6, V7)); _ -> 0 end; {'Language.Reflection.TT.I16', V8} -> case V1 of {'Language.Reflection.TT.I16', V9} -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int16'(V8, V9)); _ -> 0 end; {'Language.Reflection.TT.I32', V10} -> case V1 of {'Language.Reflection.TT.I32', V11} -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int32'(V10, V11)); _ -> 0 end; {'Language.Reflection.TT.I64', V12} -> case V1 of {'Language.Reflection.TT.I64', V13} -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int64'(V12, V13)); _ -> 0 end; {'Language.Reflection.TT.B8', V14} -> case V1 of {'Language.Reflection.TT.B8', V15} -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits8'(V14, V15)); _ -> 0 end; {'Language.Reflection.TT.B16', V16} -> case V1 of {'Language.Reflection.TT.B16', V17} -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits16'(V16, V17)); _ -> 0 end; {'Language.Reflection.TT.B32', V18} -> case V1 of {'Language.Reflection.TT.B32', V19} -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits32'(V18, V19)); _ -> 0 end; {'Language.Reflection.TT.B64', V20} -> case V1 of {'Language.Reflection.TT.B64', V21} -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bits64'(V20, V21)); _ -> 0 end; {'Language.Reflection.TT.Str', V22} -> case V1 of {'Language.Reflection.TT.Str', V23} -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V22, V23)); _ -> 0 end; {'Language.Reflection.TT.Ch', V24} -> case V1 of {'Language.Reflection.TT.Ch', V25} -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V24, V25)); _ -> 0 end; {'Language.Reflection.TT.Db', V26} -> case V1 of {'Language.Reflection.TT.Db', V27} -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Double'(V26, V27)); _ -> 0 end; {'Language.Reflection.TT.PrT', V28} -> case V1 of {'Language.Reflection.TT.PrT', V29} -> ('dn--un--==_Eq_PrimType'(V28, V29)); _ -> 0 end; {'Language.Reflection.TT.WorldVal'} -> case V1 of {'Language.Reflection.TT.WorldVal'} -> 1; _ -> 0 end; _ -> 0 end.
'dn--un--==_Eq_BuiltinType'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> 1; _ -> 0 end; 1 -> case V1 of 1 -> 1; _ -> 0 end; 2 -> case V1 of 2 -> 1; _ -> 0 end; _ -> 0 end.
'dn--un--/=_Eq_Visibility'(V0, V1) -> case ('dn--un--==_Eq_Visibility'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_UserName'(V0, V1) -> case ('dn--un--==_Eq_UserName'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_TotalReq'(V0, V1) -> case ('dn--un--==_Eq_TotalReq'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_PrimType'(V0, V1) -> case ('dn--un--==_Eq_PrimType'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_Namespace'(V0, V1) -> case ('dn--un--==_Eq_Namespace'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_Name'(V0, V1) -> case ('dn--un--==_Eq_Name'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_LazyReason'(V0, V1) -> case ('dn--un--==_Eq_LazyReason'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_Count'(V0, V1) -> case ('dn--un--==_Eq_Count'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_Constant'(V0, V1) -> case ('dn--un--==_Eq_Constant'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_BuiltinType'(V0, V1) -> case ('dn--un--==_Eq_BuiltinType'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'un--showTotalReq'(V0, V1) -> case V0 of {'Prelude.Types.Nothing'} -> V1; {'Prelude.Types.Just', V2} -> ('Idris.Idris2.Data.String':'un--unwords'([('dn--un--show_Show_TotalReq'(V2)) | [V1 | []]])) end.
'un--showSep'(V0, V1) -> case V1 of [] -> <<""/utf8>>; [E0 | E1] -> (fun (V2, V3) -> case V3 of [] -> V2; _ -> <<V2/binary, <<V0/binary, ('un--showSep'(V0, V3))/binary>>/binary>> end end(E0, E1)) end.
'un--showPrefix'(V0, V1) -> case V1 of {'Language.Reflection.TT.UN', V2} -> ('Idris.Idris2.Prelude.Show':'un--showParens'(case V0 of 1 -> ('un--isOp'(V1)); 0 -> 0 end, ('dn--un--show_Show_UserName'(V2)))); {'Language.Reflection.TT.NS', V3, V4} -> <<('dn--un--show_Show_Namespace'(V3))/binary, <<<<"."/utf8>>/binary, ('un--showPrefix'(1, V4))/binary>>/binary>>; {'Language.Reflection.TT.MN', V5, V6} -> <<<<"{"/utf8>>/binary, <<V5/binary, <<<<":"/utf8>>/binary, <<('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(V6))/binary, <<"}"/utf8>>/binary>>/binary>>/binary>>/binary>>; {'Language.Reflection.TT.DN', V7, V8} -> V7; {'Language.Reflection.TT.Nested', V9, V10} -> case V9 of {'Builtin.MkPair', V11, V12} -> <<('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(V11))/binary, <<<<":"/utf8>>/binary, <<('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(V12))/binary, <<<<":"/utf8>>/binary, ('un--showPrefix'(0, V10))/binary>>/binary>>/binary>>/binary>> end; {'Language.Reflection.TT.CaseBlock', V13, V14} -> <<<<"case block in "/utf8>>/binary, ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_String'(V13))/binary>>; {'Language.Reflection.TT.WithBlock', V15, V16} -> <<<<"with block in "/utf8>>/binary, ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_String'(V15))/binary>> end.
'un--showPiInfo'(V0, V1, V2, V3) -> case V2 of {'Language.Reflection.TT.ImplicitArg'} -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V4) -> fun (V5) -> <<V4/binary, V5/binary>> end end, <<""/utf8>>}, fun (V6) -> V6 end, [<<"{"/utf8>> | [V3 | [<<"}"/utf8>> | []]]])); {'Language.Reflection.TT.ExplicitArg'} -> case V1 of 1 -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V7) -> fun (V8) -> <<V7/binary, V8/binary>> end end, <<""/utf8>>}, fun (V9) -> V9 end, [(begin (V11 = fun (V10) -> V10 end), fun (V12) -> (V11(V12)) end end(<<"("/utf8>>)) | [(begin (V14 = fun (V13) -> V13 end), fun (V15) -> (V14(V15)) end end(V3)) | [(begin (V17 = fun (V16) -> V16 end), fun (V18) -> (V17(V18)) end end(<<")"/utf8>>)) | []]]])); 0 -> V3 end; {'Language.Reflection.TT.AutoImplicit'} -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V19) -> fun (V20) -> <<V19/binary, V20/binary>> end end, <<""/utf8>>}, fun (V21) -> V21 end, [<<"{auto "/utf8>> | [V3 | [<<"}"/utf8>> | []]]])); {'Language.Reflection.TT.DefImplicit', V22} -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V23) -> fun (V24) -> <<V23/binary, V24/binary>> end end, <<""/utf8>>}, fun (V25) -> V25 end, [<<"{default "/utf8>> | [case V0 of {'Prelude.Show.MkShow', V26, V27} -> ((V27({'Prelude.Show.App'}))(V22)) end | [<<" "/utf8>> | [V3 | [<<"}"/utf8>> | []]]]]])) end.
'un--showCount'(V0, V1) -> case V0 of 0 -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V2) -> fun (V3) -> <<V2/binary, V3/binary>> end end, <<""/utf8>>}, fun (V4) -> V4 end, [<<"0 "/utf8>> | [V1 | []]])); 1 -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V5) -> fun (V6) -> <<V5/binary, V6/binary>> end end, <<""/utf8>>}, fun (V7) -> V7 end, [<<"1 "/utf8>> | [V1 | []]])); 2 -> V1 end.
'un--isOp'(V0) -> ('case--isOp-3566'(V0, ('un--dropNS'(V0)))).
'un--enunciate'(V0) -> case V0 of 0 -> <<"runtime irrelevant"/utf8>>; 1 -> <<"linear"/utf8>>; 2 -> <<"unconstrained"/utf8>> end.
'un--emptyFC'() -> {'Language.Reflection.TT.EmptyFC'}.
'un--dropNS'(V0) -> case V0 of {'Language.Reflection.TT.NS', V1, V2} -> ('un--dropNS'(V2)); _ -> V0 end.
'un--FilePos'() -> {'Builtin.Pair', {'.Int'}, {'.Int'}}.
