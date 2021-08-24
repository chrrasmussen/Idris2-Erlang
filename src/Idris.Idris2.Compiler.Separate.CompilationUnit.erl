-module('Idris.Idris2.Compiler.Separate.CompilationUnit').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--namespaces'/1,
  'rf--id'/1,
  'rf--dependencies'/1,
  'rf--definitions'/1,
  'un--namespaces'/1,
  'un--id'/1,
  'un--dependencies'/1,
  'un--definitions'/1
]).
'rf--namespaces'(V0) -> case V0 of {'Idris.Compiler.Separate.MkCompilationUnit', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V2 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--id'(V0) -> case V0 of {'Idris.Compiler.Separate.MkCompilationUnit', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V1 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--dependencies'(V0) -> case V0 of {'Idris.Compiler.Separate.MkCompilationUnit', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--definitions'(V0) -> case V0 of {'Idris.Compiler.Separate.MkCompilationUnit', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V4 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--namespaces'(V0) -> case V0 of {'Idris.Compiler.Separate.MkCompilationUnit', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V2 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--id'(V0) -> case V0 of {'Idris.Compiler.Separate.MkCompilationUnit', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V1 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--dependencies'(V0) -> case V0 of {'Idris.Compiler.Separate.MkCompilationUnit', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--definitions'(V0) -> case V0 of {'Idris.Compiler.Separate.MkCompilationUnit', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V4 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
