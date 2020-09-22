-module('Idris.Idris2.Data.Maybe').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--raiseToMaybe-403'/4,
  'dn--un--uninhabited_Uninhabited__(IsJust Nothing)'/3,
  'dn--un--__Impl_Uninhabited_(IsJust Nothing)'/2,
  'un--toMaybe'/3,
  'un--raiseToMaybe'/3,
  'un--lowerMaybe'/3,
  'un--justInjective'/4,
  'un--isNothing'/2,
  'un--isJust'/2,
  'un--isItJust'/2,
  'un--fromMaybe'/3,
  'un--fromJust'/3
]).
'case--raiseToMaybe-403'(V0, V1, V2, V3) -> case V3 of 0 -> {'Idris.Prelude.Types.Nothing'}; 1 -> {'Idris.Prelude.Types.Just', V2}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--uninhabited_Uninhabited__(IsJust Nothing)'(V0, V1, V2) -> ('erlang':'throw'("No clauses")).
'dn--un--__Impl_Uninhabited_(IsJust Nothing)'(V0, V1) -> ('dn--un--uninhabited_Uninhabited__(IsJust Nothing)'('erased', 'erased', V1)).
'un--toMaybe'(V0, V1, V2) -> case V1 of 0 -> {'Idris.Prelude.Types.Just', (V2())}; 1 -> {'Idris.Prelude.Types.Nothing'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--raiseToMaybe'(V0, V1, V2) -> ('case--raiseToMaybe-403'('erased', V1, V2, case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)) of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E0, E1} -> (fun (V3, V4) -> ((V3(V2))(case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V1)) of {'Idris.Prelude.Interfaces.dn--un--__mkMonoid', E2, E3} -> (fun (V5, V6) -> V6 end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)).
'un--lowerMaybe'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> case V1 of {'Idris.Prelude.Interfaces.dn--un--__mkMonoid', E0, E1} -> (fun (V3, V4) -> V4 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); {'Idris.Prelude.Types.Just', E2} -> (fun (V5) -> V5 end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--justInjective'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.Refl'} -> (fun () -> {'Idris.Builtin.Refl'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--isNothing'(V0, V1) -> case V1 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> 0 end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V2) -> 1 end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--isJust'(V0, V1) -> case V1 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> 1 end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V2) -> 0 end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--isItJust'(V0, V1) -> case V1 of {'Idris.Prelude.Types.Just', E0} -> (fun (V2) -> {'Idris.Prelude.Types.Yes', {'Idris.Data.Maybe.ItIsJust'}} end(E0)); {'Idris.Prelude.Types.Nothing'} -> (fun () -> {'Idris.Prelude.Types.No', fun (V3) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'('erased', 'erased', fun (V4) -> ('dn--un--uninhabited_Uninhabited__(IsJust Nothing)'('erased', 'erased', V4)) end, V3)) end} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--fromMaybe'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> (V1()) end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V3) -> V3 end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--fromJust'(V0, V1, V2) -> case V1 of {'Idris.Prelude.Types.Just', E0} -> (fun (V3) -> V3 end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
