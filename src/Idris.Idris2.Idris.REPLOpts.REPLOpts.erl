-module('Idris.Idris2.Idris.REPLOpts.REPLOpts').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--source'/1,
  'un--showTypes'/1,
  'un--psResult'/1,
  'un--mainfile'/1,
  'un--literateStyle'/1,
  'un--idemode'/1,
  'un--gdResult'/1,
  'un--extraCodegens'/1,
  'un--evalMode'/1,
  'un--errorLine'/1,
  'un--editor'/1,
  'un--currentElabSource'/1,
  'un--consoleWidth'/1,
  'un--color'/1
]).
'un--source'(V0) -> case V0 of {'Idris.Idris.REPLOpts.MkREPLOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V5 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--showTypes'(V0) -> case V0 of {'Idris.Idris.REPLOpts.MkREPLOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V1 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--psResult'(V0) -> case V0 of {'Idris.Idris.REPLOpts.MkREPLOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V10 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--mainfile'(V0) -> case V0 of {'Idris.Idris.REPLOpts.MkREPLOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--literateStyle'(V0) -> case V0 of {'Idris.Idris.REPLOpts.MkREPLOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--idemode'(V0) -> case V0 of {'Idris.Idris.REPLOpts.MkREPLOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V8 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--gdResult'(V0) -> case V0 of {'Idris.Idris.REPLOpts.MkREPLOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V11 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--extraCodegens'(V0) -> case V0 of {'Idris.Idris.REPLOpts.MkREPLOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V12 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--evalMode'(V0) -> case V0 of {'Idris.Idris.REPLOpts.MkREPLOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V2 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--errorLine'(V0) -> case V0 of {'Idris.Idris.REPLOpts.MkREPLOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V7 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--editor'(V0) -> case V0 of {'Idris.Idris.REPLOpts.MkREPLOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V6 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--currentElabSource'(V0) -> case V0 of {'Idris.Idris.REPLOpts.MkREPLOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V9 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--consoleWidth'(V0) -> case V0 of {'Idris.Idris.REPLOpts.MkREPLOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V13 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--color'(V0) -> case V0 of {'Idris.Idris.REPLOpts.MkREPLOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14) -> V14 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
