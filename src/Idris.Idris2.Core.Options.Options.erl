-module('Idris.Idris2.Core.Options.Options').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--session'/1,
  'rf--rewritenames'/1,
  'rf--printing'/1,
  'rf--primnames'/1,
  'rf--pairnames'/1,
  'rf--hashFn'/1,
  'rf--extensions'/1,
  'rf--elabDirectives'/1,
  'rf--dirs'/1,
  'rf--additionalCGs'/1,
  'un--session'/1,
  'un--rewritenames'/1,
  'un--printing'/1,
  'un--primnames'/1,
  'un--pairnames'/1,
  'un--hashFn'/1,
  'un--extensions'/1,
  'un--elabDirectives'/1,
  'un--dirs'/1,
  'un--additionalCGs'/1
]).
'rf--session'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--rewritenames'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V6 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--printing'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V2 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--primnames'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V7 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--pairnames'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V5 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--hashFn'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V10 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--extensions'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V8 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--elabDirectives'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--dirs'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V1 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--additionalCGs'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V9 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--session'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--rewritenames'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V6 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--printing'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V2 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--primnames'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V7 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--pairnames'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V5 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--hashFn'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V10 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--extensions'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V8 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--elabDirectives'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--dirs'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V1 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--additionalCGs'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V9 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
