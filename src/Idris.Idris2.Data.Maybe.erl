-module('Idris.Idris2.Data.Maybe').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--uninhabited_Uninhabited_(IsJust Nothing)'/1,
  'dn--un--__Impl_Uninhabited_(IsJust Nothing)'/1,
  'un--toMaybe'/2,
  'un--raiseToMaybe'/2,
  'un--lowerMaybe'/2,
  'un--justInjective'/1,
  'un--isNothing'/1,
  'un--isJust'/1,
  'un--isItJust'/1,
  'un--fromMaybe'/2,
  'un--fromJust'/1,
  'un--filter'/2
]).
'dn--un--uninhabited_Uninhabited_(IsJust Nothing)'(V0) -> ('erlang':'throw'("No clauses")).
'dn--un--__Impl_Uninhabited_(IsJust Nothing)'(V0) -> ('dn--un--uninhabited_Uninhabited_(IsJust Nothing)'(V0)).
'un--toMaybe'(V0, V1) -> case V0 of 1 -> {'Idris.Prelude.Types.Just', (V1())}; 0 -> {'Idris.Prelude.Types.Nothing'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--raiseToMaybe'(V0, V1) -> case case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V2, V3) -> ((V2(V1))(case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Idris.Prelude.Interfaces.MkMonoid', E2, E3} -> (fun (V4, V5) -> V5 end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of 1 -> {'Idris.Prelude.Types.Nothing'}; 0 -> {'Idris.Prelude.Types.Just', V1}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lowerMaybe'(V0, V1) -> case V1 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> case V0 of {'Idris.Prelude.Interfaces.MkMonoid', E0, E1} -> (fun (V2, V3) -> V3 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); {'Idris.Prelude.Types.Just', E2} -> (fun (V4) -> V4 end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--justInjective'(V0) -> case V0 of 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--isNothing'(V0) -> case V0 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> 1 end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V1) -> 0 end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--isJust'(V0) -> case V0 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> 0 end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V1) -> 1 end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--isItJust'(V0) -> case V0 of {'Idris.Prelude.Types.Just', E0} -> (fun (V1) -> {'Idris.Prelude.Types.Yes', 0} end(E0)); {'Idris.Prelude.Types.Nothing'} -> (fun () -> {'Idris.Prelude.Types.No', fun (V2) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V3) -> ('dn--un--uninhabited_Uninhabited_(IsJust Nothing)'(V3)) end, V2)) end} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--fromMaybe'(V0, V1) -> case V1 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> (V0()) end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V2) -> V2 end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--fromJust'(V0) -> case V0 of {'Idris.Prelude.Types.Just', E0} -> (fun (V1) -> V1 end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--filter'(V0, V1) -> case V1 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> {'Idris.Prelude.Types.Nothing'} end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V2) -> ('un--toMaybe'((V0(V2)), fun () -> V2 end)) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
