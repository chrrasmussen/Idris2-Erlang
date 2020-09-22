-module('Idris.Idris2.Core.Options.Options').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--session'/1,
  'un--rewritenames'/1,
  'un--printing'/1,
  'un--primnames'/1,
  'un--pairnames'/1,
  'un--extensions'/1,
  'un--elabDirectives'/1,
  'un--dirs'/1,
  'un--additionalCGs'/1
]).
'un--session'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--rewritenames'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V6 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--printing'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V2 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--primnames'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V7 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--pairnames'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V5 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--extensions'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V8 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--elabDirectives'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--dirs'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V1 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--additionalCGs'(V0) -> case V0 of {'Idris.Core.Options.MkOptions', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V9 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
