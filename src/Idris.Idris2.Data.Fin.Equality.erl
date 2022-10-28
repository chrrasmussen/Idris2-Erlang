-module('Idris.Idris2.Data.Fin.Equality').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--uninhabited_Uninhabited_((~~~ FZ) (FS $k))'/1,
  'dn--un--uninhabited_Uninhabited_((~~~ (FS $k)) FZ)'/1,
  'dn--un--__Impl_Uninhabited_((~~~ FZ) (FS $k))'/1,
  'dn--un--__Impl_Uninhabited_((~~~ (FS $k)) FZ)'/1,
  'un--~~~'/2,
  'un--weakenNeutral'/1,
  'un--weakenNNeutral'/1,
  'un--transitive'/2,
  'un--symmetric'/1,
  'un--reflexive'/1,
  'un--homoPointwiseIsEqual'/1,
  'un--hetPointwiseIsTransport'/1,
  'un--finToNatQuotient'/1,
  'un--finToNatEqualityAsPointwise'/3,
  'un--congWeakenN'/1,
  'un--congShift'/2,
  'un--congLast'/1,
  'un--congCoerce'/3,
  'un--coerceEq'/1
]).
'dn--un--uninhabited_Uninhabited_((~~~ FZ) (FS $k))'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--uninhabited_Uninhabited_((~~~ (FS $k)) FZ)'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--__Impl_Uninhabited_((~~~ FZ) (FS $k))'(V0) -> ('dn--un--uninhabited_Uninhabited_((~~~ FZ) (FS $k))'(V0)).
'dn--un--__Impl_Uninhabited_((~~~ (FS $k)) FZ)'(V0) -> ('dn--un--uninhabited_Uninhabited_((~~~ (FS $k)) FZ)'(V0)).
'un--~~~'(V0, V1) -> {'Data.Fin.Equality.Pointwise', 'erased', 'erased', V0, V1}.
'un--weakenNeutral'(V0) -> V0.
'un--weakenNNeutral'(V0) -> V0.
'un--transitive'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> 0; _ -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})) end; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> ('erlang':'throw'({'$idris_error', <<"Nat case not covered"/utf8>>})); _ -> begin (V3 = (V1 - 1)), (('un--transitive'(V2, V3)) + 1) end end end end.
'un--symmetric'(V0) -> V0.
'un--reflexive'(V0) -> V0.
'un--homoPointwiseIsEqual'(V0) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end.
'un--hetPointwiseIsTransport'(V0) -> ('un--homoPointwiseIsEqual'(V0)).
'un--finToNatQuotient'(V0) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end.
'un--finToNatEqualityAsPointwise'(V0, V1, V2) -> case V0 of 0 -> case V1 of 0 -> 0; _ -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V3) -> ('Idris.Idris2.Data.Nat':'dn--un--uninhabited_Uninhabited_(|((Builtin.=== Z) (S $n)),((Builtin.~=~ Z) (S $n))|)'(V3)) end, V2)) end; _ -> begin (V4 = (V0 - 1)), case V1 of 0 -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V5) -> ('Idris.Idris2.Data.Nat':'dn--un--uninhabited_Uninhabited_(|((Builtin.=== (S $n)) Z),((Builtin.~=~ (S $n)) Z)|)'(V5)) end, V2)); _ -> begin (V6 = (V1 - 1)), (('un--finToNatEqualityAsPointwise'(V4, V6, ('Idris.Idris2.Data.Nat':'dn--un--injective_Injective_S'(V4, V6, V2)))) + 1) end end end end.
'un--congWeakenN'(V0) -> V0.
'un--congShift'(V0, V1) -> case V0 of 0 -> V1; _ -> begin (V2 = (V0 - 1)), (('un--congShift'(V2, V1)) + 1) end end.
'un--congLast'(V0) -> V0.
'un--congCoerce'(V0, V1, V2) -> ('un--transitive'(V0, ('un--transitive'(V2, V1)))).
'un--coerceEq'(V0) -> V0.
