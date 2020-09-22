-module('Idris.Idris2.Idris.Syntax.SyntaxInfo').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--usingImpl'/1,
  'un--startExpr'/1,
  'un--saveIFaces'/1,
  'un--saveDocstrings'/1,
  'un--prefixes'/1,
  'un--infixes'/1,
  'un--ifaces'/1,
  'un--docstrings'/1,
  'un--bracketholes'/1
]).
'un--usingImpl'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V8 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--startExpr'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V9 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--saveIFaces'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--saveDocstrings'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V6 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--prefixes'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V2 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--infixes'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V1 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--ifaces'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--docstrings'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V5 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--bracketholes'(V0) -> case V0 of {'Idris.Idris.Syntax.MkSyntax', E0, E1, E2, E3, E4, E5, E6, E7, E8} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9) -> V7 end(E0, E1, E2, E3, E4, E5, E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
