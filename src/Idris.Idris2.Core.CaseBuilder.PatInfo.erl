-module('Idris.Idris2.Core.CaseBuilder.PatInfo').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--pat'/3,
  'un--argType'/3
]).
'un--pat'(V0, V1, V2) -> case V2 of {'Idris.Core.CaseBuilder.MkInfo', E0, E1, E2, E3} -> (fun (V3, V4, V5, V6) -> V5 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--argType'(V0, V1, V2) -> case V2 of {'Idris.Core.CaseBuilder.MkInfo', E0, E1, E2, E3} -> (fun (V3, V4, V5, V6) -> V6 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
