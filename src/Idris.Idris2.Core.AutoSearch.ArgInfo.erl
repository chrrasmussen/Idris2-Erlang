-module('Idris.Idris2.Core.AutoSearch.ArgInfo').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--plicit'/2,
  'un--metaApp'/2,
  'un--holeID'/2,
  'un--argType'/2,
  'un--argRig'/2
]).
'un--plicit'(V0, V1) -> case V1 of {'Idris.Core.AutoSearch.MkArgInfo', E0, E1, E2, E3, E4} -> (fun (V2, V3, V4, V5, V6) -> V4 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--metaApp'(V0, V1) -> case V1 of {'Idris.Core.AutoSearch.MkArgInfo', E0, E1, E2, E3, E4} -> (fun (V2, V3, V4, V5, V6) -> V5 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--holeID'(V0, V1) -> case V1 of {'Idris.Core.AutoSearch.MkArgInfo', E0, E1, E2, E3, E4} -> (fun (V2, V3, V4, V5, V6) -> V2 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--argType'(V0, V1) -> case V1 of {'Idris.Core.AutoSearch.MkArgInfo', E0, E1, E2, E3, E4} -> (fun (V2, V3, V4, V5, V6) -> V6 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--argRig'(V0, V1) -> case V1 of {'Idris.Core.AutoSearch.MkArgInfo', E0, E1, E2, E3, E4} -> (fun (V2, V3, V4, V5, V6) -> V3 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
