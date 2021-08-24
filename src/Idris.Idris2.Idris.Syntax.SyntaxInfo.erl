-module('Idris.Idris2.Idris.Syntax.SyntaxInfo').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--usingImpl'/1,
  'rf--startExpr'/1,
  'rf--saveMod'/1,
  'rf--saveIFaces'/1,
  'rf--saveDocstrings'/1,
  'rf--prefixes'/1,
  'rf--modDocstrings'/1,
  'rf--infixes'/1,
  'rf--ifaces'/1,
  'rf--defDocstrings'/1,
  'rf--bracketholes'/1,
  'un--usingImpl'/1,
  'un--startExpr'/1,
  'un--saveMod'/1,
  'un--saveIFaces'/1,
  'un--saveDocstrings'/1,
  'un--prefixes'/1,
  'un--modDocstrings'/1,
  'un--infixes'/1,
  'un--ifaces'/1,
  'un--defDocstrings'/1,
  'un--bracketholes'/1
]).
'rf--usingImpl'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> V10 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--startExpr'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> V11 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--saveMod'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--saveIFaces'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> V5 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--saveDocstrings'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> V7 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--prefixes'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> V2 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--modDocstrings'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--infixes'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> V1 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--ifaces'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> V6 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--defDocstrings'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> V8 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--bracketholes'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> V9 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--usingImpl'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> V10 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--startExpr'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> V11 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--saveMod'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--saveIFaces'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> V5 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--saveDocstrings'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> V7 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--prefixes'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> V2 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--modDocstrings'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--infixes'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> V1 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--ifaces'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> V6 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--defDocstrings'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> V8 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--bracketholes'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> V9 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
