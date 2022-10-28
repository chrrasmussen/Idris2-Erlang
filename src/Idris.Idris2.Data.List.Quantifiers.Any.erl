-module('Idris.Idris2.Data.List.Quantifiers.Any').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--any-3824'/6,
  'case--case block in with block in any-3915'/6,
  'case--with block in any-3861'/5,
  'dn--un--uninhabited_Uninhabited_((Any $p) Nil)'/1,
  'dn--un--uninhabited_Uninhabited_((Any $p) ((:: $x) $xs))'/3,
  'dn--un--__Impl_Uninhabited_((Any $p) Nil)'/1,
  'dn--un--__Impl_Uninhabited_((Any $p) ((:: $x) $xs))'/3,
  'un--toExists'/1,
  'un--mapProperty'/2,
  'un--any'/2
]).
'with--any-3824'(V0, V1, V2, V3, V4, V5) -> case V4 of {'Prelude.Types.Yes', V6} -> {'Prelude.Types.Yes', {'Data.List.Quantifiers.Any.Here', V6}}; {'Prelude.Types.No', V7} -> case ('un--any'(V3, V5)) of {'Prelude.Types.Yes', V8} -> {'Prelude.Types.Yes', {'Data.List.Quantifiers.Any.There', V8}}; {'Prelude.Types.No', V9} -> {'Prelude.Types.No', fun (V10) -> case V10 of {'Data.List.Quantifiers.Any.Here', V11} -> (V7(V11)); {'Data.List.Quantifiers.Any.There', V12} -> (V9(V12)) end end} end end.
'case--case block in with block in any-3915'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Data.List.Quantifiers.Any.Here', V6} -> (V1(V6)); {'Data.List.Quantifiers.Any.There', V7} -> (V4(V7)) end.
'case--with block in any-3861'(V0, V1, V2, V3, V4) -> case V4 of {'Prelude.Types.Yes', V5} -> {'Prelude.Types.Yes', {'Data.List.Quantifiers.Any.There', V5}}; {'Prelude.Types.No', V6} -> {'Prelude.Types.No', fun (V7) -> case V7 of {'Data.List.Quantifiers.Any.Here', V8} -> (V1(V8)); {'Data.List.Quantifiers.Any.There', V9} -> (V6(V9)) end end} end.
'dn--un--uninhabited_Uninhabited_((Any $p) Nil)'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--uninhabited_Uninhabited_((Any $p) ((:: $x) $xs))'(V0, V1, V2) -> case V2 of {'Data.List.Quantifiers.Any.Here', V3} -> (begin (V4 = V0), fun (V5) -> (V4(V5)) end end(V3)); {'Data.List.Quantifiers.Any.There', V6} -> (begin (V7 = V1), fun (V8) -> (V7(V8)) end end(V6)) end.
'dn--un--__Impl_Uninhabited_((Any $p) Nil)'(V0) -> ('dn--un--uninhabited_Uninhabited_((Any $p) Nil)'(V0)).
'dn--un--__Impl_Uninhabited_((Any $p) ((:: $x) $xs))'(V0, V1, V2) -> ('dn--un--uninhabited_Uninhabited_((Any $p) ((:: $x) $xs))'(V0, V1, V2)).
'un--toExists'(V0) -> case V0 of {'Data.List.Quantifiers.Any.Here', V1} -> V1; {'Data.List.Quantifiers.Any.There', V2} -> ('un--toExists'(V2)) end.
'un--mapProperty'(V0, V1) -> case V1 of {'Data.List.Quantifiers.Any.Here', V2} -> {'Data.List.Quantifiers.Any.Here', ((V0('erased'))(V2))}; {'Data.List.Quantifiers.Any.There', V3} -> {'Data.List.Quantifiers.Any.There', ('un--mapProperty'(fun (V4) -> (V0('erased')) end, V3))} end.
'un--any'(V0, V1) -> case V1 of [] -> {'Prelude.Types.No', fun (V2) -> ('dn--un--uninhabited_Uninhabited_((Any $p) Nil)'(V2)) end}; [E0 | E1] -> (fun (V3, V4) -> ('with--any-3824'('erased', 'erased', V3, V0, (V0(V3)), V4)) end(E0, E1)) end.
