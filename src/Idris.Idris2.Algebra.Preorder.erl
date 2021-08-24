-module('Idris.Idris2.Algebra.Preorder').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--__Top_(Preorder a)'/1,
  'un--topAbs'/2,
  'un--top'/1,
  'un--preorderTrans'/6,
  'un--preorderRefl'/2,
  'un--lub'/3,
  'un--glb'/3,
  'un--<='/3,
  'un--<'/3
]).
'dn--un--__Top_(Preorder a)'(V0) -> case V0 of {'Idris.Algebra.Preorder.dn--un--__mkTop', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--topAbs'(V0, V1) -> case V0 of {'Idris.Algebra.Preorder.dn--un--__mkTop', E0, E1, E2} -> (fun (V2, V3, V4) -> (V4(V1)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--top'(V0) -> case V0 of {'Idris.Algebra.Preorder.dn--un--__mkTop', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--preorderTrans'(V0, V1, V2, V3, V4, V5) -> case V0 of {'Idris.Algebra.Preorder.dn--un--__mkPreorder', E0, E1, E2} -> (fun (V6, V7, V8) -> (((((V8(V1))(V2))(V3))(V4))(V5)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--preorderRefl'(V0, V1) -> case V0 of {'Idris.Algebra.Preorder.dn--un--__mkPreorder', E0, E1, E2} -> (fun (V2, V3, V4) -> (V3(V1)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lub'(V0, V1, V2) -> case case V0 of {'Idris.Algebra.Preorder.dn--un--__mkPreorder', E0, E1, E2} -> (fun (V3, V4, V5) -> ((V3(V1))(V2)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of 1 -> V2; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--glb'(V0, V1, V2) -> case case V0 of {'Idris.Algebra.Preorder.dn--un--__mkPreorder', E0, E1, E2} -> (fun (V3, V4, V5) -> ((V3(V1))(V2)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of 1 -> V1; 0 -> V2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--<='(V0, V1, V2) -> case V0 of {'Idris.Algebra.Preorder.dn--un--__mkPreorder', E0, E1, E2} -> (fun (V3, V4, V5) -> ((V3(V1))(V2)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--<'(V0, V1, V2) -> case case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Idris.Algebra.Preorder.dn--un--__mkPreorder', E2, E3, E4} -> (fun (V3, V4, V5) -> ((V3(V1))(V2)) end(E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of 1 -> case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V6, V7) -> ((V7(V1))(V2)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
