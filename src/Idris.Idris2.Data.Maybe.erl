-module('Idris.Idris2.Data.Maybe').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--uninhabited_Uninhabited_(IsJust Nothing)'/1,
  'dn--un--injective_Injective_Just'/3,
  'dn--un--__Impl_Uninhabited_(IsJust Nothing)'/1,
  'dn--un--__Impl_Injective_Just'/0,
  'un--toMaybe'/2,
  'un--raiseToMaybe'/3,
  'un--lowerMaybe'/2,
  'un--isNothing'/1,
  'un--isJust'/1,
  'un--isItJust'/1,
  'un--fromMaybe'/2,
  'un--fromJust'/1,
  'un--filter'/2
]).
'dn--un--uninhabited_Uninhabited_(IsJust Nothing)'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--injective_Injective_Just'(V0, V1, V2) -> {'Builtin.Refl'}.
'dn--un--__Impl_Uninhabited_(IsJust Nothing)'(V0) -> ('dn--un--uninhabited_Uninhabited_(IsJust Nothing)'(V0)).
'dn--un--__Impl_Injective_Just'() -> {'Control.Function.MkInjective', fun (V0) -> {'Prelude.Types.Just', V0} end, fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--injective_Injective_Just'(V1, V2, V3)) end end end}.
'un--toMaybe'(V0, V1) -> case V0 of 1 -> {'Prelude.Types.Just', (V1())}; 0 -> {'Prelude.Types.Nothing'} end.
'un--raiseToMaybe'(V0, V1, V2) -> case case V1 of {'Prelude.EqOrd.MkEq', V3, V4} -> ((V3(V2))(case V0 of {'Prelude.Interfaces.MkMonoid', V5, V6} -> V6 end)) end of 1 -> {'Prelude.Types.Nothing'}; 0 -> {'Prelude.Types.Just', V2} end.
'un--lowerMaybe'(V0, V1) -> case V1 of {'Prelude.Types.Nothing'} -> case V0 of {'Prelude.Interfaces.MkMonoid', V2, V3} -> V3 end; {'Prelude.Types.Just', V4} -> V4 end.
'un--isNothing'(V0) -> case V0 of {'Prelude.Types.Nothing'} -> 1; {'Prelude.Types.Just', V1} -> 0 end.
'un--isJust'(V0) -> case V0 of {'Prelude.Types.Nothing'} -> 0; {'Prelude.Types.Just', V1} -> 1 end.
'un--isItJust'(V0) -> case V0 of {'Prelude.Types.Just', V1} -> {'Prelude.Types.Yes', {'Data.Maybe.ItIsJust'}}; {'Prelude.Types.Nothing'} -> {'Prelude.Types.No', fun (V2) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V3) -> ('dn--un--uninhabited_Uninhabited_(IsJust Nothing)'(V3)) end, V2)) end} end.
'un--fromMaybe'(V0, V1) -> case V1 of {'Prelude.Types.Nothing'} -> (V0()); {'Prelude.Types.Just', V2} -> V2 end.
'un--fromJust'(V0) -> case V0 of {'Prelude.Types.Just', V1} -> V1 end.
'un--filter'(V0, V1) -> case V1 of {'Prelude.Types.Nothing'} -> {'Prelude.Types.Nothing'}; {'Prelude.Types.Just', V2} -> ('un--toMaybe'((V0(V2)), fun () -> V2 end)) end.
