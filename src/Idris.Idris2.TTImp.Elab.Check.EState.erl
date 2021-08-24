-module('Idris.Idris2.TTImp.Elab.Check.EState').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--unambiguousNames'/1,
  'rf--toBind'/1,
  'rf--subEnv'/1,
  'rf--saveHoles'/1,
  'rf--polyMetavars'/1,
  'rf--outerEnv'/1,
  'rf--outer'/1,
  'rf--linearUsed'/1,
  'rf--lhsPatVars'/1,
  'rf--delayDepth'/1,
  'rf--defining'/1,
  'rf--boundNames'/1,
  'rf--bindIfUnsolved'/1,
  'rf--allPatVars'/1,
  'un--unambiguousNames'/1,
  'un--toBind'/1,
  'un--subEnv'/1,
  'un--saveHoles'/1,
  'un--polyMetavars'/1,
  'un--outerEnv'/1,
  'un--outer'/1,
  'un--linearUsed'/1,
  'un--lhsPatVars'/1,
  'un--delayDepth'/1,
  'un--defining'/1,
  'un--boundNames'/1,
  'un--bindIfUnsolved'/1,
  'un--allPatVars'/1
]).
'rf--unambiguousNames'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V14 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--toBind'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V6 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--subEnv'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--saveHoles'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V13 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--polyMetavars'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V10 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--outerEnv'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--outer'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V1 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--linearUsed'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V12 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--lhsPatVars'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V8 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--delayDepth'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V11 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--defining'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V2 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--boundNames'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V5 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--bindIfUnsolved'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V7 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--allPatVars'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V9 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--unambiguousNames'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V14 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--toBind'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V6 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--subEnv'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--saveHoles'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V13 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--polyMetavars'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V10 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--outerEnv'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--outer'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V1 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--linearUsed'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V12 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lhsPatVars'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V8 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--delayDepth'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V11 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--defining'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V2 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--boundNames'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V5 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--bindIfUnsolved'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V7 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--allPatVars'(V0) -> case V0 of {'Idris.TTImp.Elab.Check.MkEState', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V9 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
