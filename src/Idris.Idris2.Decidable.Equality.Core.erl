-module('Idris.Idris2.Decidable.Equality.Core').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--decEqContraIsNo-492'/6,
  'with--decEqSelfIsYes-433'/4,
  'un--negEqSym'/2,
  'un--decEqSelfIsYes'/2,
  'un--decEqContraIsNo'/4,
  'un--decEq'/3
]).
'with--decEqContraIsNo-492'(V0, V1, V2, V3, V4, V5) -> case V4 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V6) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V7) -> ('Idris.Idris2.Prelude.Uninhabited':'dn--un--uninhabited_Uninhabited_Void'(V7)) end, (V5(V6)))) end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V8) -> {'Idris.Builtin.DPair.MkDPair', V8, 0} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--decEqSelfIsYes-433'(V0, V1, V2, V3) -> case V3 of {'Idris.Prelude.Types.Yes', E0} -> (fun (V4) -> case V4 of 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.No', E1} -> (fun (V5) -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V6) -> ('Idris.Idris2.Prelude.Uninhabited':'dn--un--uninhabited_Uninhabited_Void'(V6)) end, (V5(0)))) end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--negEqSym'(V0, V1) -> (V0(0)).
'un--decEqSelfIsYes'(V0, V1) -> ('with--decEqSelfIsYes-433'('erased', V0, V1, ((V0(V1))(V1)))).
'un--decEqContraIsNo'(V0, V1, V2, V3) -> ('with--decEqContraIsNo-492'('erased', V0, V2, V1, ((V0(V1))(V2)), V3)).
'un--decEq'(V0, V1, V2) -> ((V0(V1))(V2)).
