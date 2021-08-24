-module('Idris.Idris2.Compiler.ES.Ast').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--toMinimal'/1,
  'un--prepend'/2,
  'un--declare'/2
]).
'un--toMinimal'(V0) -> case V0 of {'Idris.Compiler.ES.Ast.EMinimal', E0} -> (fun (V1) -> {'Idris.Prelude.Types.Just', V1} end(E0)); _ -> {'Idris.Prelude.Types.Nothing'} end.
'un--prepend'(V0, V1) -> case V0 of [] -> V1; [E0 | E1] -> (fun (V2, V3) -> {'Idris.Compiler.ES.Ast.Block', {'Idris.Data.List1.:::', V2, V3}, V1} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--declare'(V0, V1) -> case V1 of {'Idris.Compiler.ES.Ast.Assign', E0, E1} -> (fun (V2, V3) -> {'Idris.Compiler.ES.Ast.Const', V0, V3} end(E0, E1)); {'Idris.Compiler.ES.Ast.Block', E2, E3} -> (fun (V4, V5) -> {'Idris.Compiler.ES.Ast.Block', V4, ('un--declare'(V0, V5))} end(E2, E3)); _ -> {'Idris.Compiler.ES.Ast.Declare', V0, V1} end.
