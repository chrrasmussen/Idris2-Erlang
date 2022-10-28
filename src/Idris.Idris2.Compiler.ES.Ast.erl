-module('Idris.Idris2.Compiler.ES.Ast').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--toMinimal'/1,
  'un--prepend'/2,
  'un--declare'/2
]).
'un--toMinimal'(V0) -> case V0 of {'Compiler.ES.Ast.EMinimal', V1} -> {'Prelude.Types.Just', V1}; _ -> {'Prelude.Types.Nothing'} end.
'un--prepend'(V0, V1) -> case V0 of [] -> V1; [E0 | E1] -> (fun (V2, V3) -> {'Compiler.ES.Ast.Block', {'Data.List1.:::', V2, V3}, V1} end(E0, E1)) end.
'un--declare'(V0, V1) -> case V1 of {'Compiler.ES.Ast.Assign', V2, V3} -> {'Compiler.ES.Ast.Const', V0, V3}; {'Compiler.ES.Ast.Block', V4, V5} -> {'Compiler.ES.Ast.Block', V4, ('un--declare'(V0, V5))}; _ -> {'Compiler.ES.Ast.Declare', V0, V1} end.
