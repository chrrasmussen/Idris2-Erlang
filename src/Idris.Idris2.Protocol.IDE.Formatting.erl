-module('Idris.Idris2.Protocol.IDE.Formatting').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--toSExp_SExpable_Properties'/1,
  'dn--un--toSExp_SExpable_Formatting'/1,
  'dn--un--show_Show_Formatting'/1,
  'dn--un--showPrec_Show_Formatting'/2,
  'dn--un--fromSExp_FromSExpable_Properties'/1,
  'dn--un--fromSExp_FromSExpable_Formatting'/1,
  'dn--un--__Impl_Show_Formatting'/0,
  'dn--un--__Impl_SExpable_Properties'/1,
  'dn--un--__Impl_SExpable_Formatting'/1,
  'dn--un--__Impl_FromSExpable_Properties'/1,
  'dn--un--__Impl_FromSExpable_Formatting'/1,
  'un--mkFormat'/1,
  'un--mkDecor'/1
]).
'dn--un--toSExp_SExpable_Properties'(V0) -> case V0 of {'Protocol.IDE.Formatting.MkProperties', V1, V2} -> {'Protocol.SExp.SExpList', ('Idris.Idris2.Data.List':'un--catMaybes'([((begin (V8 = fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V6, V7)) end end end end), fun (V9) -> fun (V10) -> ((((V8('erased'))('erased'))(V9))(V10)) end end end(fun (V3) -> ('dn--un--toSExp_SExpable_Formatting'(V3)) end))(V2)) | [((begin (V16 = fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V14, V15)) end end end end), fun (V17) -> fun (V18) -> ((((V16('erased'))('erased'))(V17))(V18)) end end end(fun (V11) -> ('Idris.Idris2.Protocol.IDE.Decoration':'dn--un--toSExp_SExpable_Decoration'(V11)) end))(V1)) | []]]))} end.
'dn--un--toSExp_SExpable_Formatting'(V0) -> {'Protocol.SExp.SExpList', [{'Protocol.SExp.SymbolAtom', <<"text-formatting"/utf8>>} | [{'Protocol.SExp.SymbolAtom', ('dn--un--show_Show_Formatting'(V0))} | []]]}.
'dn--un--show_Show_Formatting'(V0) -> case V0 of 0 -> <<"bold"/utf8>>; 1 -> <<"italic"/utf8>>; 2 -> <<"underline"/utf8>> end.
'dn--un--showPrec_Show_Formatting'(V0, V1) -> ('dn--un--show_Show_Formatting'(V1)).
'dn--un--fromSExp_FromSExpable_Properties'(V0) -> case V0 of {'Protocol.SExp.SExpList', V1} -> case V1 of [] -> {'Prelude.Types.Just', {'Protocol.IDE.Formatting.MkProperties', {'Prelude.Types.Nothing'}, {'Prelude.Types.Nothing'}}}; [E0 | E1] -> (fun (V2, V3) -> case V3 of [] -> case (begin (V5 = fun (V4) -> ('Idris.Idris2.Protocol.IDE.Decoration':'dn--un--fromSExp_FromSExpable_Decoration'(V4)) end), fun (V6) -> (V5(V6)) end end(V2)) of {'Prelude.Types.Nothing'} -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('dn--un--fromSExp_FromSExpable_Formatting'(V2)), fun (V7) -> {'Prelude.Types.Just', ('un--mkFormat'(V7))} end)); {'Prelude.Types.Just', V8} -> {'Prelude.Types.Just', ('un--mkDecor'(V8))} end; [E2 | E3] -> (fun (V9, V10) -> case V10 of [] -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'((begin (V12 = fun (V11) -> ('dn--un--fromSExp_FromSExpable_Formatting'(V11)) end), fun (V13) -> (V12(V13)) end end(V2)), fun (V14) -> begin (V15 = {'Prelude.Types.Just', V14}), ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'((begin (V17 = fun (V16) -> ('Idris.Idris2.Protocol.IDE.Decoration':'dn--un--fromSExp_FromSExpable_Decoration'(V16)) end), fun (V18) -> (V17(V18)) end end(V9)), fun (V19) -> begin (V20 = {'Prelude.Types.Just', V19}), {'Prelude.Types.Just', {'Protocol.IDE.Formatting.MkProperties', V20, V15}} end end)) end end)); _ -> {'Prelude.Types.Nothing'} end end(E2, E3)); _ -> {'Prelude.Types.Nothing'} end end(E0, E1)); _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end.
'dn--un--fromSExp_FromSExpable_Formatting'(V0) -> case V0 of {'Protocol.SExp.SExpList', V1} -> case V1 of [E0 | E1] -> (fun (V2, V3) -> case V2 of {'Protocol.SExp.SymbolAtom', V4} -> case V4 of <<"text-formatting"/utf8>> -> case V3 of [E2 | E3] -> (fun (V5, V6) -> case V5 of {'Protocol.SExp.SymbolAtom', V7} -> case V6 of [] -> case V7 of <<"bold"/utf8>> -> {'Prelude.Types.Just', 0}; <<"italic"/utf8>> -> {'Prelude.Types.Just', 1}; <<"underline"/utf8>> -> {'Prelude.Types.Just', 2}; _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end end(E2, E3)); _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end end(E0, E1)); _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end.
'dn--un--__Impl_Show_Formatting'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Formatting'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Formatting'(V1, V2)) end end}.
'dn--un--__Impl_SExpable_Properties'(V0) -> ('dn--un--toSExp_SExpable_Properties'(V0)).
'dn--un--__Impl_SExpable_Formatting'(V0) -> ('dn--un--toSExp_SExpable_Formatting'(V0)).
'dn--un--__Impl_FromSExpable_Properties'(V0) -> ('dn--un--fromSExp_FromSExpable_Properties'(V0)).
'dn--un--__Impl_FromSExpable_Formatting'(V0) -> ('dn--un--fromSExp_FromSExpable_Formatting'(V0)).
'un--mkFormat'(V0) -> {'Protocol.IDE.Formatting.MkProperties', {'Prelude.Types.Nothing'}, {'Prelude.Types.Just', V0}}.
'un--mkDecor'(V0) -> {'Protocol.IDE.Formatting.MkProperties', {'Prelude.Types.Just', V0}, {'Prelude.Types.Nothing'}}.
