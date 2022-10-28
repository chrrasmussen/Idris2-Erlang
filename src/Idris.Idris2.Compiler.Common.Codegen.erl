-module('Idris.Idris2.Compiler.Common.Codegen').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.incExt'/1,
  'un--.incCompileFile'/1,
  'un--.executeExpr'/1,
  'un--.compileLibrary'/1,
  'un--.compileExpr'/1,
  'un--incExt'/1,
  'un--incCompileFile'/1,
  'un--executeExpr'/1,
  'un--compileLibrary'/1,
  'un--compileExpr'/1
]).
'un--.incExt'(V0) -> case V0 of {'Compiler.Common.MkCG', V1, V2, V3, V4, V5} -> V5 end.
'un--.incCompileFile'(V0) -> case V0 of {'Compiler.Common.MkCG', V1, V2, V3, V4, V5} -> V4 end.
'un--.executeExpr'(V0) -> case V0 of {'Compiler.Common.MkCG', V1, V2, V3, V4, V5} -> V2 end.
'un--.compileLibrary'(V0) -> case V0 of {'Compiler.Common.MkCG', V1, V2, V3, V4, V5} -> V3 end.
'un--.compileExpr'(V0) -> case V0 of {'Compiler.Common.MkCG', V1, V2, V3, V4, V5} -> V1 end.
'un--incExt'(V0) -> case V0 of {'Compiler.Common.MkCG', V1, V2, V3, V4, V5} -> V5 end.
'un--incCompileFile'(V0) -> case V0 of {'Compiler.Common.MkCG', V1, V2, V3, V4, V5} -> V4 end.
'un--executeExpr'(V0) -> case V0 of {'Compiler.Common.MkCG', V1, V2, V3, V4, V5} -> V2 end.
'un--compileLibrary'(V0) -> case V0 of {'Compiler.Common.MkCG', V1, V2, V3, V4, V5} -> V3 end.
'un--compileExpr'(V0) -> case V0 of {'Compiler.Common.MkCG', V1, V2, V3, V4, V5} -> V1 end.
