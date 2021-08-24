-module('Idris.Idris2.Compiler.ES.Ast.EConAlt').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--tag'/1,
  'rf--conInfo'/1,
  'rf--body'/1,
  'un--tag'/1,
  'un--conInfo'/1,
  'un--body'/1
]).
'rf--tag'(V0) -> case V0 of {'Idris.Compiler.ES.Ast.MkEConAlt', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--conInfo'(V0) -> case V0 of {'Idris.Compiler.ES.Ast.MkEConAlt', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--body'(V0) -> case V0 of {'Idris.Compiler.ES.Ast.MkEConAlt', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--tag'(V0) -> case V0 of {'Idris.Compiler.ES.Ast.MkEConAlt', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--conInfo'(V0) -> case V0 of {'Idris.Compiler.ES.Ast.MkEConAlt', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--body'(V0) -> case V0 of {'Idris.Compiler.ES.Ast.MkEConAlt', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
