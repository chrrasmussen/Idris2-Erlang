-module('Idris.Idris2.Compiler.ES.State.ESSt').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--refs'/1,
  'rf--ref'/1,
  'rf--preamble'/1,
  'rf--mode'/1,
  'rf--locals'/1,
  'rf--loc'/1,
  'rf--isFun'/1,
  'rf--isArg'/1,
  'rf--ccTypes'/1,
  'un--refs'/1,
  'un--ref'/1,
  'un--preamble'/1,
  'un--mode'/1,
  'un--locals'/1,
  'un--loc'/1,
  'un--isFun'/1,
  'un--isArg'/1,
  'un--ccTypes'/1
]).
'rf--refs'(V0) -> case V0 of {'Idris.Compiler.ES.State.MkESSt', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V7 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--ref'(V0) -> case V0 of {'Idris.Compiler.ES.State.MkESSt', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V5 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--preamble'(V0) -> case V0 of {'Idris.Compiler.ES.State.MkESSt', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V8 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--mode'(V0) -> case V0 of {'Idris.Compiler.ES.State.MkESSt', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V1 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--locals'(V0) -> case V0 of {'Idris.Compiler.ES.State.MkESSt', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V6 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--loc'(V0) -> case V0 of {'Idris.Compiler.ES.State.MkESSt', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--isFun'(V0) -> case V0 of {'Idris.Compiler.ES.State.MkESSt', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--isArg'(V0) -> case V0 of {'Idris.Compiler.ES.State.MkESSt', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V2 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--ccTypes'(V0) -> case V0 of {'Idris.Compiler.ES.State.MkESSt', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V9 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--refs'(V0) -> case V0 of {'Idris.Compiler.ES.State.MkESSt', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V7 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--ref'(V0) -> case V0 of {'Idris.Compiler.ES.State.MkESSt', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V5 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--preamble'(V0) -> case V0 of {'Idris.Compiler.ES.State.MkESSt', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V8 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--mode'(V0) -> case V0 of {'Idris.Compiler.ES.State.MkESSt', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V1 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--locals'(V0) -> case V0 of {'Idris.Compiler.ES.State.MkESSt', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V6 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--loc'(V0) -> case V0 of {'Idris.Compiler.ES.State.MkESSt', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--isFun'(V0) -> case V0 of {'Idris.Compiler.ES.State.MkESSt', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--isArg'(V0) -> case V0 of {'Idris.Compiler.ES.State.MkESSt', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V2 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--ccTypes'(V0) -> case V0 of {'Idris.Compiler.ES.State.MkESSt', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V9 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
