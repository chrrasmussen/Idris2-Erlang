-module('Idris.Idris2.Core.Metadata.Metadata').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--tydecls'/1,
  'un--names'/1,
  'un--lhsApps'/1,
  'un--holeLHS'/1,
  'un--currentLHS'/1
]).
'un--tydecls'(V0) -> case V0 of {'Idris.Core.Metadata.MkMetadata', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V3 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--names'(V0) -> case V0 of {'Idris.Core.Metadata.MkMetadata', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V2 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lhsApps'(V0) -> case V0 of {'Idris.Core.Metadata.MkMetadata', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V1 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--holeLHS'(V0) -> case V0 of {'Idris.Core.Metadata.MkMetadata', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V5 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--currentLHS'(V0) -> case V0 of {'Idris.Core.Metadata.MkMetadata', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V4 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
