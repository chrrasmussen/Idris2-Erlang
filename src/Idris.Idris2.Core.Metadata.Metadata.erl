-module('Idris.Idris2.Core.Metadata.Metadata').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--tydecls'/1,
  'rf--sourceIdent'/1,
  'rf--semanticHighlighting'/1,
  'rf--semanticDefaults'/1,
  'rf--semanticAliases'/1,
  'rf--names'/1,
  'rf--nameLocMap'/1,
  'rf--lhsApps'/1,
  'rf--holeLHS'/1,
  'rf--currentLHS'/1,
  'un--tydecls'/1,
  'un--sourceIdent'/1,
  'un--semanticHighlighting'/1,
  'un--semanticDefaults'/1,
  'un--semanticAliases'/1,
  'un--names'/1,
  'un--nameLocMap'/1,
  'un--lhsApps'/1,
  'un--holeLHS'/1,
  'un--currentLHS'/1
]).
'rf--tydecls'(V0) -> case V0 of {'Idris.Core.Metadata.MkMetadata', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--sourceIdent'(V0) -> case V0 of {'Idris.Core.Metadata.MkMetadata', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V7 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--semanticHighlighting'(V0) -> case V0 of {'Idris.Core.Metadata.MkMetadata', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V8 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--semanticDefaults'(V0) -> case V0 of {'Idris.Core.Metadata.MkMetadata', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V10 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--semanticAliases'(V0) -> case V0 of {'Idris.Core.Metadata.MkMetadata', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V9 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--names'(V0) -> case V0 of {'Idris.Core.Metadata.MkMetadata', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V2 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--nameLocMap'(V0) -> case V0 of {'Idris.Core.Metadata.MkMetadata', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V6 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--lhsApps'(V0) -> case V0 of {'Idris.Core.Metadata.MkMetadata', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V1 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--holeLHS'(V0) -> case V0 of {'Idris.Core.Metadata.MkMetadata', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V5 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--currentLHS'(V0) -> case V0 of {'Idris.Core.Metadata.MkMetadata', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--tydecls'(V0) -> case V0 of {'Idris.Core.Metadata.MkMetadata', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--sourceIdent'(V0) -> case V0 of {'Idris.Core.Metadata.MkMetadata', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V7 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--semanticHighlighting'(V0) -> case V0 of {'Idris.Core.Metadata.MkMetadata', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V8 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--semanticDefaults'(V0) -> case V0 of {'Idris.Core.Metadata.MkMetadata', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V10 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--semanticAliases'(V0) -> case V0 of {'Idris.Core.Metadata.MkMetadata', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V9 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--names'(V0) -> case V0 of {'Idris.Core.Metadata.MkMetadata', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V2 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--nameLocMap'(V0) -> case V0 of {'Idris.Core.Metadata.MkMetadata', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V6 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lhsApps'(V0) -> case V0 of {'Idris.Core.Metadata.MkMetadata', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V1 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--holeLHS'(V0) -> case V0 of {'Idris.Core.Metadata.MkMetadata', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V5 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--currentLHS'(V0) -> case V0 of {'Idris.Core.Metadata.MkMetadata', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
