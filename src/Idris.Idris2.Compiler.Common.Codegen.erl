-module('Idris.Idris2.Compiler.Common.Codegen').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--incExt'/1,
  'rf--incCompileFile'/1,
  'rf--executeExpr'/1,
  'rf--compileLibrary'/1,
  'rf--compileExpr'/1,
  'un--incExt'/1,
  'un--incCompileFile'/1,
  'un--executeExpr'/1,
  'un--compileLibrary'/1,
  'un--compileExpr'/1
]).
'rf--incExt'(V0) -> case V0 of {'Idris.Compiler.Common.MkCG', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V5 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--incCompileFile'(V0) -> case V0 of {'Idris.Compiler.Common.MkCG', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V4 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--executeExpr'(V0) -> case V0 of {'Idris.Compiler.Common.MkCG', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V2 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--compileLibrary'(V0) -> case V0 of {'Idris.Compiler.Common.MkCG', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V3 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--compileExpr'(V0) -> case V0 of {'Idris.Compiler.Common.MkCG', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V1 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--incExt'(V0) -> case V0 of {'Idris.Compiler.Common.MkCG', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V5 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--incCompileFile'(V0) -> case V0 of {'Idris.Compiler.Common.MkCG', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V4 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--executeExpr'(V0) -> case V0 of {'Idris.Compiler.Common.MkCG', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V2 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--compileLibrary'(V0) -> case V0 of {'Idris.Compiler.Common.MkCG', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V3 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--compileExpr'(V0) -> case V0 of {'Idris.Compiler.Common.MkCG', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V1 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
