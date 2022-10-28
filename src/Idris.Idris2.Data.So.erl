-module('Idris.Idris2.Data.So').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--soOr-1381'/4,
  'with--soAnd-1325'/4,
  'dn--un--uninhabited_Uninhabited_(So False)'/1,
  'dn--un--__Impl_Uninhabited_(So False)'/1,
  'un--soToNotSoNot'/1,
  'un--soToEq'/1,
  'un--soOr'/2,
  'un--soNotToNotSo'/2,
  'un--soAnd'/2,
  'un--orSo'/1,
  'un--eqToSo'/1,
  'un--decSo'/1,
  'un--choose'/1,
  'un--andSo'/1
]).
'with--soOr-1381'(V0, V1, V2, V3) -> case V0 of 1 -> case V1 of {'Prelude.Types.Left', V4} -> {'Prelude.Types.Left', {'Data.So.Oh'}} end; 0 -> case V1 of {'Prelude.Types.Right', V5} -> {'Prelude.Types.Right', V3} end end.
'with--soAnd-1325'(V0, V1, V2, V3) -> case V0 of 1 -> case V1 of {'Prelude.Types.Left', V4} -> {'Builtin.MkPair', {'Data.So.Oh'}, V3}; {'Prelude.Types.Right', V5} -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V6) -> ('dn--un--uninhabited_Uninhabited_(So False)'(V6)) end, V5)) end; 0 -> case V1 of {'Prelude.Types.Right', V7} -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V8) -> ('dn--un--uninhabited_Uninhabited_(So False)'(V8)) end, V3)) end end.
'dn--un--uninhabited_Uninhabited_(So False)'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--__Impl_Uninhabited_(So False)'(V0) -> ('dn--un--uninhabited_Uninhabited_(So False)'(V0)).
'un--soToNotSoNot'(V0) -> begin (V2 = fun (V1) -> ('dn--un--uninhabited_Uninhabited_(So False)'(V1)) end), fun (V3) -> (V2(V3)) end end.
'un--soToEq'(V0) -> {'Builtin.Refl'}.
'un--soOr'(V0, V1) -> ('with--soOr-1381'(V0, ('un--choose'(V0)), 'erased', V1)).
'un--soNotToNotSo'(V0, V1) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(fun (V2) -> ('un--soToNotSoNot'(V2)) end, V0, V1)).
'un--soAnd'(V0, V1) -> ('with--soAnd-1325'(V0, ('un--choose'(V0)), 'erased', V1)).
'un--orSo'(V0) -> case V0 of {'Prelude.Types.Left', V1} -> {'Data.So.Oh'}; {'Prelude.Types.Right', V2} -> {'Data.So.Oh'} end.
'un--eqToSo'(V0) -> {'Data.So.Oh'}.
'un--decSo'(V0) -> case V0 of 1 -> {'Prelude.Types.Yes', {'Data.So.Oh'}}; 0 -> {'Prelude.Types.No', fun (V1) -> ('dn--un--uninhabited_Uninhabited_(So False)'(V1)) end} end.
'un--choose'(V0) -> case V0 of 1 -> {'Prelude.Types.Left', {'Data.So.Oh'}}; 0 -> {'Prelude.Types.Right', {'Data.So.Oh'}} end.
'un--andSo'(V0) -> case V0 of {'Builtin.MkPair', V1, V2} -> {'Data.So.Oh'} end.
