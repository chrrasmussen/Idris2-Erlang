-module('Idris.Idris2.Data.So').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--soOr-530'/4,
  'with--soAnd-480'/4,
  'dn--un--uninhabited_Uninhabited__(So False)'/1,
  'dn--un--__Impl_Uninhabited_(So False)'/1,
  'un--soToNotSoNot'/2,
  'un--soToEq'/2,
  'un--soOr'/3,
  'un--soNotToNotSo'/3,
  'un--soAnd'/3,
  'un--orSo'/3,
  'un--eqToSo'/2,
  'un--choose'/1,
  'un--andSo'/3
]).
'with--soOr-530'(V0, V1, V2, V3) -> case V0 of 0 -> case V1 of {'Idris.Prelude.Types.Left', E0} -> (fun (V4) -> case V4 of {'Idris.Data.So.Oh'} -> (fun () -> {'Idris.Prelude.Types.Left', {'Idris.Data.So.Oh'}} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; 1 -> case V1 of {'Idris.Prelude.Types.Right', E1} -> (fun (V5) -> case V5 of {'Idris.Data.So.Oh'} -> (fun () -> {'Idris.Prelude.Types.Right', V3} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--soAnd-480'(V0, V1, V2, V3) -> case V0 of 0 -> case V1 of {'Idris.Prelude.Types.Left', E0} -> (fun (V4) -> case V4 of {'Idris.Data.So.Oh'} -> (fun () -> {'Idris.Builtin.MkPair', {'Idris.Data.So.Oh'}, V3} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V5) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'('erased', 'erased', fun (V6) -> ('dn--un--uninhabited_Uninhabited__(So False)'(V6)) end, V5)) end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; 1 -> case V1 of {'Idris.Prelude.Types.Right', E2} -> (fun (V7) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'('erased', 'erased', fun (V8) -> ('dn--un--uninhabited_Uninhabited__(So False)'(V8)) end, V3)) end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--uninhabited_Uninhabited__(So False)'(V0) -> ('erlang':'throw'("No clauses")).
'dn--un--__Impl_Uninhabited_(So False)'(V0) -> ('dn--un--uninhabited_Uninhabited__(So False)'(V0)).
'un--soToNotSoNot'(V0, V1) -> case V1 of {'Idris.Data.So.Oh'} -> (fun () -> fun (V2) -> ('dn--un--uninhabited_Uninhabited__(So False)'(V2)) end end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--soToEq'(V0, V1) -> case V1 of {'Idris.Data.So.Oh'} -> (fun () -> {'Idris.Builtin.Refl'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--soOr'(V0, V1, V2) -> ('with--soOr-530'(V1, ('un--choose'(V1)), 'erased', V2)).
'un--soNotToNotSo'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Basics':'un--flip'('erased', 'erased', 'erased', fun (V3) -> ('un--soToNotSoNot'('erased', V3)) end, V1, V2)).
'un--soAnd'(V0, V1, V2) -> ('with--soAnd-480'(V1, ('un--choose'(V1)), 'erased', V2)).
'un--orSo'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Left', E0} -> (fun (V3) -> case V3 of {'Idris.Data.So.Oh'} -> (fun () -> {'Idris.Data.So.Oh'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V4) -> case V4 of {'Idris.Data.So.Oh'} -> (fun () -> {'Idris.Data.So.Oh'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--eqToSo'(V0, V1) -> case V1 of {'Idris.Builtin.Refl'} -> (fun () -> {'Idris.Data.So.Oh'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--choose'(V0) -> case V0 of 0 -> {'Idris.Prelude.Types.Left', {'Idris.Data.So.Oh'}}; 1 -> {'Idris.Prelude.Types.Right', {'Idris.Data.So.Oh'}}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--andSo'(V0, V1, V2) -> case V2 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V3, V4) -> case V3 of {'Idris.Data.So.Oh'} -> (fun () -> case V4 of {'Idris.Data.So.Oh'} -> (fun () -> {'Idris.Data.So.Oh'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
