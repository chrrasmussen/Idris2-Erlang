-module('Idris.Idris2.TTImp.Elab.Check.EState').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--unambiguousNames'/2,
  'un--toBind'/2,
  'un--subEnv'/2,
  'un--saveHoles'/2,
  'un--outerEnv'/2,
  'un--outer'/2,
  'un--linearUsed'/2,
  'un--lhsPatVars'/2,
  'un--delayDepth'/2,
  'un--defining'/2,
  'un--boundNames'/2,
  'un--bindIfUnsolved'/2,
  'un--allPatVars'/2
]).
'un--unambiguousNames'(V0, V1) -> case V1 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V14 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--toBind'(V0, V1) -> case V1 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V7 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--subEnv'(V0, V1) -> case V1 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V5 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--saveHoles'(V0, V1) -> case V1 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V13 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--outerEnv'(V0, V1) -> case V1 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--outer'(V0, V1) -> case V1 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V2 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--linearUsed'(V0, V1) -> case V1 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V12 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lhsPatVars'(V0, V1) -> case V1 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V9 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--delayDepth'(V0, V1) -> case V1 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V11 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--defining'(V0, V1) -> case V1 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--boundNames'(V0, V1) -> case V1 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V6 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--bindIfUnsolved'(V0, V1) -> case V1 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V8 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--allPatVars'(V0, V1) -> case V1 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V10 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
