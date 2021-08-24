-module('Idris.Idris2.Core.AutoSearch.ArgInfo').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--plicit'/1,
  'rf--metaApp'/1,
  'rf--holeID'/1,
  'rf--argType'/1,
  'rf--argRig'/1,
  'un--plicit'/1,
  'un--metaApp'/1,
  'un--holeID'/1,
  'un--argType'/1,
  'un--argRig'/1
]).
'rf--plicit'(V0) -> case V0 of {'Idris.Core.AutoSearch.MkArgInfo', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V3 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--metaApp'(V0) -> case V0 of {'Idris.Core.AutoSearch.MkArgInfo', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V4 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--holeID'(V0) -> case V0 of {'Idris.Core.AutoSearch.MkArgInfo', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V1 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--argType'(V0) -> case V0 of {'Idris.Core.AutoSearch.MkArgInfo', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V5 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--argRig'(V0) -> case V0 of {'Idris.Core.AutoSearch.MkArgInfo', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V2 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--plicit'(V0) -> case V0 of {'Idris.Core.AutoSearch.MkArgInfo', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V3 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--metaApp'(V0) -> case V0 of {'Idris.Core.AutoSearch.MkArgInfo', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V4 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--holeID'(V0) -> case V0 of {'Idris.Core.AutoSearch.MkArgInfo', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V1 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--argType'(V0) -> case V0 of {'Idris.Core.AutoSearch.MkArgInfo', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V5 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--argRig'(V0) -> case V0 of {'Idris.Core.AutoSearch.MkArgInfo', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V2 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
