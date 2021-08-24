-module('Idris.Idris2.Core.Value.EvalOpts').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--tcInline'/1,
  'rf--strategy'/1,
  'rf--removeAs'/1,
  'rf--reduceLimit'/1,
  'rf--holesOnly'/1,
  'rf--fuel'/1,
  'rf--evalAll'/1,
  'rf--argHolesOnly'/1,
  'un--tcInline'/1,
  'un--strategy'/1,
  'un--removeAs'/1,
  'un--reduceLimit'/1,
  'un--holesOnly'/1,
  'un--fuel'/1,
  'un--evalAll'/1,
  'un--argHolesOnly'/1
]).
'rf--tcInline'(V0) -> case V0 of {'Idris.Core.Value.MkEvalOpts', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8) -> V5 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--strategy'(V0) -> case V0 of {'Idris.Core.Value.MkEvalOpts', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8) -> V8 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--removeAs'(V0) -> case V0 of {'Idris.Core.Value.MkEvalOpts', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--reduceLimit'(V0) -> case V0 of {'Idris.Core.Value.MkEvalOpts', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8) -> V7 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--holesOnly'(V0) -> case V0 of {'Idris.Core.Value.MkEvalOpts', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8) -> V1 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--fuel'(V0) -> case V0 of {'Idris.Core.Value.MkEvalOpts', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8) -> V6 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--evalAll'(V0) -> case V0 of {'Idris.Core.Value.MkEvalOpts', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--argHolesOnly'(V0) -> case V0 of {'Idris.Core.Value.MkEvalOpts', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8) -> V2 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--tcInline'(V0) -> case V0 of {'Idris.Core.Value.MkEvalOpts', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8) -> V5 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--strategy'(V0) -> case V0 of {'Idris.Core.Value.MkEvalOpts', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8) -> V8 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--removeAs'(V0) -> case V0 of {'Idris.Core.Value.MkEvalOpts', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--reduceLimit'(V0) -> case V0 of {'Idris.Core.Value.MkEvalOpts', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8) -> V7 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--holesOnly'(V0) -> case V0 of {'Idris.Core.Value.MkEvalOpts', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8) -> V1 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--fuel'(V0) -> case V0 of {'Idris.Core.Value.MkEvalOpts', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8) -> V6 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--evalAll'(V0) -> case V0 of {'Idris.Core.Value.MkEvalOpts', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--argHolesOnly'(V0) -> case V0 of {'Idris.Core.Value.MkEvalOpts', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8) -> V2 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
