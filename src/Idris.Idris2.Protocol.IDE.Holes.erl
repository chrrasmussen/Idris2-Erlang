-module('Idris.Idris2.Protocol.IDE.Holes').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--toSExp_SExpable_HolePremise'/1,
  'dn--un--toSExp_SExpable_HoleData'/1,
  'dn--un--fromSExp_FromSExpable_HolePremise'/1,
  'dn--un--fromSExp_FromSExpable_HoleData'/1,
  'dn--un--__Impl_SExpable_HolePremise'/1,
  'dn--un--__Impl_SExpable_HoleData'/1,
  'dn--un--__Impl_FromSExpable_HolePremise'/1,
  'dn--un--__Impl_FromSExpable_HoleData'/1
]).
'dn--un--toSExp_SExpable_HolePremise'(V0) -> {'Protocol.SExp.SExpList', [{'Protocol.SExp.StringAtom', case V0 of {'Protocol.IDE.Holes.MkHolePremise', V1, V2} -> V1 end} | [{'Protocol.SExp.StringAtom', case V0 of {'Protocol.IDE.Holes.MkHolePremise', V3, V4} -> V4 end} | [{'Protocol.SExp.SExpList', []} | []]]]}.
'dn--un--toSExp_SExpable_HoleData'(V0) -> {'Protocol.SExp.SExpList', [{'Protocol.SExp.StringAtom', ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_String'(case V0 of {'Protocol.IDE.Holes.MkHoleData', V1, V2, V3} -> V1 end))} | [(begin (V9 = fun (V7) -> ('Idris.Idris2.Protocol.SExp':'dn--un--toSExp_SExpable_(List $a)'(fun (V8) -> ('dn--un--toSExp_SExpable_HolePremise'(V8)) end, V7)) end), fun (V10) -> (V9(V10)) end end(case V0 of {'Protocol.IDE.Holes.MkHoleData', V4, V5, V6} -> V6 end)) | [{'Protocol.SExp.SExpList', [('Idris.Idris2.Protocol.SExp':'dn--un--toSExp_SExpable_String'(case V0 of {'Protocol.IDE.Holes.MkHoleData', V11, V12, V13} -> V12 end)) | [{'Protocol.SExp.SExpList', []} | []]]} | []]]]}.
'dn--un--fromSExp_FromSExpable_HolePremise'(V0) -> case V0 of {'Protocol.SExp.SExpList', V1} -> case V1 of [E0 | E1] -> (fun (V2, V3) -> case V2 of {'Protocol.SExp.StringAtom', V4} -> case V3 of [E2 | E3] -> (fun (V5, V6) -> case V5 of {'Protocol.SExp.StringAtom', V7} -> case V6 of [E4 | E5] -> (fun (V8, V9) -> case V8 of {'Protocol.SExp.SExpList', V10} -> case V10 of [] -> case V9 of [] -> {'Prelude.Types.Just', {'Protocol.IDE.Holes.MkHolePremise', V4, V7}}; _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end end(E4, E5)); _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end end(E2, E3)); _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end end(E0, E1)); _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end.
'dn--un--fromSExp_FromSExpable_HoleData'(V0) -> case V0 of {'Protocol.SExp.SExpList', V1} -> case V1 of [E0 | E1] -> (fun (V2, V3) -> case V2 of {'Protocol.SExp.StringAtom', V4} -> case V3 of [E2 | E3] -> (fun (V5, V6) -> case V6 of [E4 | E5] -> (fun (V7, V8) -> case V7 of {'Protocol.SExp.SExpList', V9} -> case V9 of [E6 | E7] -> (fun (V10, V11) -> case V11 of [E8 | E9] -> (fun (V12, V13) -> case V12 of {'Protocol.SExp.SExpList', V14} -> case V14 of [] -> case V13 of [] -> case V8 of [] -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('Idris.Idris2.Protocol.SExp':'dn--un--fromSExp_FromSExpable_String'(V10)), fun (V15) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'((begin (V18 = fun (V16) -> ('Idris.Idris2.Protocol.SExp':'dn--un--fromSExp_FromSExpable_(List $a)'(fun (V17) -> ('dn--un--fromSExp_FromSExpable_HolePremise'(V17)) end, V16)) end), fun (V19) -> (V18(V19)) end end(V5)), fun (V20) -> {'Prelude.Types.Just', {'Protocol.IDE.Holes.MkHoleData', V4, V15, V20}} end)) end)); _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end end(E8, E9)); _ -> {'Prelude.Types.Nothing'} end end(E6, E7)); _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end end(E4, E5)); _ -> {'Prelude.Types.Nothing'} end end(E2, E3)); _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end end(E0, E1)); _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end.
'dn--un--__Impl_SExpable_HolePremise'(V0) -> ('dn--un--toSExp_SExpable_HolePremise'(V0)).
'dn--un--__Impl_SExpable_HoleData'(V0) -> ('dn--un--toSExp_SExpable_HoleData'(V0)).
'dn--un--__Impl_FromSExpable_HolePremise'(V0) -> ('dn--un--fromSExp_FromSExpable_HolePremise'(V0)).
'dn--un--__Impl_FromSExpable_HoleData'(V0) -> ('dn--un--fromSExp_FromSExpable_HoleData'(V0)).
