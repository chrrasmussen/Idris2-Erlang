-module('Idris.Idris2.Algebra.Preorder').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--glb-405'/5,
  'case--lub-366'/5,
  'dn--un--__Top_(Preorder a)'/2,
  'un--topAbs'/3,
  'un--top'/2,
  'un--preorderTrans'/5,
  'un--preorderRefl'/3,
  'un--lub'/4,
  'un--glb'/4,
  'un--<='/2,
  'un--<'/4
]).
'case--glb-405'(V0, V1, V2, V3, V4) -> case V4 of 0 -> V3; 1 -> V2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--lub-366'(V0, V1, V2, V3, V4) -> case V4 of 0 -> V2; 1 -> V3; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Top_(Preorder a)'(V0, V1) -> case V1 of {'Idris.Algebra.Preorder.dn--un--__mkTop', E0, E1, E2} -> (fun (V2, V3, V4) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--topAbs'(V0, V1, V2) -> case V2 of {'Idris.Algebra.Preorder.dn--un--__mkTop', E0, E1, E2} -> (fun (V3, V4, V5) -> (V5(V1)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--top'(V0, V1) -> case V1 of {'Idris.Algebra.Preorder.dn--un--__mkTop', E0, E1, E2} -> (fun (V2, V3, V4) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--preorderTrans'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Algebra.Preorder.dn--un--__mkPreorder', E0, E1, E2} -> (fun (V5, V6, V7) -> fun (V8) -> fun (V9) -> (((((V7(V1))(V2))(V3))(V8))(V9)) end end end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--preorderRefl'(V0, V1, V2) -> case V2 of {'Idris.Algebra.Preorder.dn--un--__mkPreorder', E0, E1, E2} -> (fun (V3, V4, V5) -> (V4(V1)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lub'(V0, V1, V2, V3) -> ('case--lub-366'('erased', V1, V3, V2, case V1 of {'Idris.Algebra.Preorder.dn--un--__mkPreorder', E0, E1, E2} -> (fun (V4, V5, V6) -> ((V4(V2))(V3)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)).
'un--glb'(V0, V1, V2, V3) -> ('case--glb-405'('erased', V1, V3, V2, case V1 of {'Idris.Algebra.Preorder.dn--un--__mkPreorder', E0, E1, E2} -> (fun (V4, V5, V6) -> ((V4(V2))(V3)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)).
'un--<='(V0, V1) -> case V1 of {'Idris.Algebra.Preorder.dn--un--__mkPreorder', E0, E1, E2} -> (fun (V2, V3, V4) -> fun (V5) -> fun (V6) -> ((V2(V5))(V6)) end end end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--<'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.Basics':'un--&&'(case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V1)) of {'Idris.Algebra.Preorder.dn--un--__mkPreorder', E0, E1, E2} -> (fun (V4, V5, V6) -> ((V4(V2))(V3)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, fun () -> case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)) of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E3, E4} -> (fun (V7, V8) -> ((V8(V2))(V3)) end(E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end)).
