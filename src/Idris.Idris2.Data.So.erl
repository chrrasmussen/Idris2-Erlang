-module('Idris.Idris2.Data.So').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--soOr-746'/4,
  'with--soAnd-696'/4,
  'dn--un--uninhabited_Uninhabited_(So False)'/1,
  'dn--un--__Impl_Uninhabited_(So False)'/1,
  'un--soToNotSoNot'/2,
  'un--soToEq'/1,
  'un--soOr'/2,
  'un--soNotToNotSo'/2,
  'un--soAnd'/2,
  'un--orSo'/1,
  'un--eqToSo'/1,
  'un--choose'/1,
  'un--andSo'/1
]).
'with--soOr-746'(V0, V1, V2, V3) -> case V0 of 1 -> case V1 of {'Idris.Prelude.Types.Left', E0} -> (fun (V4) -> case V4 of 0 -> {'Idris.Prelude.Types.Left', 0}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; 0 -> case V1 of {'Idris.Prelude.Types.Right', E1} -> (fun (V5) -> case V5 of 0 -> {'Idris.Prelude.Types.Right', V3}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--soAnd-696'(V0, V1, V2, V3) -> case V0 of 1 -> case V1 of {'Idris.Prelude.Types.Left', E0} -> (fun (V4) -> case V4 of 0 -> {'Idris.Builtin.MkPair', 0, V3}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V5) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V6) -> ('dn--un--uninhabited_Uninhabited_(So False)'(V6)) end, V5)) end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; 0 -> case V1 of {'Idris.Prelude.Types.Right', E2} -> (fun (V7) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V8) -> ('dn--un--uninhabited_Uninhabited_(So False)'(V8)) end, V3)) end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--uninhabited_Uninhabited_(So False)'(V0) -> ('erlang':'throw'("No clauses")).
'dn--un--__Impl_Uninhabited_(So False)'(V0) -> ('dn--un--uninhabited_Uninhabited_(So False)'(V0)).
'un--soToNotSoNot'(V0, V1) -> case V0 of 0 -> ('dn--un--uninhabited_Uninhabited_(So False)'(V1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--soToEq'(V0) -> case V0 of 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--soOr'(V0, V1) -> ('with--soOr-746'(V0, ('un--choose'(V0)), 'erased', V1)).
'un--soNotToNotSo'(V0, V1) -> ('Idris.Idris2.Prelude.Basics':'un--flip'(fun (V2) -> fun (V3) -> ('un--soToNotSoNot'(V2, V3)) end end, V0, V1)).
'un--soAnd'(V0, V1) -> ('with--soAnd-696'(V0, ('un--choose'(V0)), 'erased', V1)).
'un--orSo'(V0) -> case V0 of {'Idris.Prelude.Types.Left', E0} -> (fun (V1) -> case V1 of 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V2) -> case V2 of 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--eqToSo'(V0) -> case V0 of 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--choose'(V0) -> case V0 of 1 -> {'Idris.Prelude.Types.Left', 0}; 0 -> {'Idris.Prelude.Types.Right', 0}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--andSo'(V0) -> case V0 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V1, V2) -> case V1 of 0 -> case V2 of 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
