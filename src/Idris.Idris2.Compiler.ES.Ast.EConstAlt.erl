-module('Idris.Idris2.Compiler.ES.Ast.EConstAlt').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--constant'/1,
  'rf--body'/1,
  'un--constant'/1,
  'un--body'/1
]).
'rf--constant'(V0) -> case V0 of {'Idris.Compiler.ES.Ast.MkEConstAlt', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--body'(V0) -> case V0 of {'Idris.Compiler.ES.Ast.MkEConstAlt', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--constant'(V0) -> case V0 of {'Idris.Compiler.ES.Ast.MkEConstAlt', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--body'(V0) -> case V0 of {'Idris.Compiler.ES.Ast.MkEConstAlt', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
