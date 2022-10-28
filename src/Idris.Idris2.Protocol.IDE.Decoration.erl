-module('Idris.Idris2.Protocol.IDE.Decoration').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--toSExp_SExpable_Decoration'/1,
  'dn--un--show_Show_Decoration'/1,
  'dn--un--showPrec_Show_Decoration'/2,
  'dn--un--fromSExp_FromSExpable_Decoration'/1,
  'dn--un--__Impl_Show_Decoration'/0,
  'dn--un--__Impl_SExpable_Decoration'/1,
  'dn--un--__Impl_FromSExpable_Decoration'/1,
  'dn--un--__Impl_Eq_Decoration'/0,
  'dn--un--==_Eq_Decoration'/2,
  'dn--un--/=_Eq_Decoration'/2
]).
'dn--un--toSExp_SExpable_Decoration'(V0) -> {'Protocol.SExp.SExpList', [{'Protocol.SExp.SymbolAtom', <<"decor"/utf8>>} | [{'Protocol.SExp.SymbolAtom', ('dn--un--show_Show_Decoration'(V0))} | []]]}.
'dn--un--show_Show_Decoration'(V0) -> case V0 of 0 -> <<"comment"/utf8>>; 1 -> <<"type"/utf8>>; 2 -> <<"function"/utf8>>; 3 -> <<"data"/utf8>>; 4 -> <<"keyword"/utf8>>; 5 -> <<"bound"/utf8>>; 6 -> <<"namespace"/utf8>>; 7 -> <<"postulate"/utf8>>; 8 -> <<"module"/utf8>> end.
'dn--un--showPrec_Show_Decoration'(V0, V1) -> ('dn--un--show_Show_Decoration'(V1)).
'dn--un--fromSExp_FromSExpable_Decoration'(V0) -> case V0 of {'Protocol.SExp.SExpList', V1} -> case V1 of [E0 | E1] -> (fun (V2, V3) -> case V2 of {'Protocol.SExp.SymbolAtom', V4} -> case V4 of <<"decor"/utf8>> -> case V3 of [E2 | E3] -> (fun (V5, V6) -> case V5 of {'Protocol.SExp.SymbolAtom', V7} -> case V6 of [] -> case V7 of <<"comment"/utf8>> -> {'Prelude.Types.Just', 0}; <<"type"/utf8>> -> {'Prelude.Types.Just', 1}; <<"function"/utf8>> -> {'Prelude.Types.Just', 2}; <<"data"/utf8>> -> {'Prelude.Types.Just', 3}; <<"keyword"/utf8>> -> {'Prelude.Types.Just', 4}; <<"bound"/utf8>> -> {'Prelude.Types.Just', 5}; <<"namespace"/utf8>> -> {'Prelude.Types.Just', 6}; <<"postulate"/utf8>> -> {'Prelude.Types.Just', 7}; <<"module"/utf8>> -> {'Prelude.Types.Just', 8}; _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end end(E2, E3)); _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end end(E0, E1)); _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end.
'dn--un--__Impl_Show_Decoration'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Decoration'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--show_Show_Decoration'(V2)) end end}.
'dn--un--__Impl_SExpable_Decoration'(V0) -> ('dn--un--toSExp_SExpable_Decoration'(V0)).
'dn--un--__Impl_FromSExpable_Decoration'(V0) -> ('dn--un--fromSExp_FromSExpable_Decoration'(V0)).
'dn--un--__Impl_Eq_Decoration'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Decoration'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Decoration'(V2, V3)) end end}.
'dn--un--==_Eq_Decoration'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> 1; _ -> 0 end; 1 -> case V1 of 1 -> 1; _ -> 0 end; 2 -> case V1 of 2 -> 1; _ -> 0 end; 3 -> case V1 of 3 -> 1; _ -> 0 end; 4 -> case V1 of 4 -> 1; _ -> 0 end; 5 -> case V1 of 5 -> 1; _ -> 0 end; 6 -> case V1 of 6 -> 1; _ -> 0 end; 7 -> case V1 of 7 -> 1; _ -> 0 end; 8 -> case V1 of 8 -> 1; _ -> 0 end; _ -> 0 end.
'dn--un--/=_Eq_Decoration'(V0, V1) -> case ('dn--un--==_Eq_Decoration'(V0, V1)) of 1 -> 0; 0 -> 1 end.
