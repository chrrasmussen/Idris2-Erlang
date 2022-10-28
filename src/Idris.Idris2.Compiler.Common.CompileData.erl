-module('Idris.Idris2.Compiler.Common.CompileData').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.vmcode'/1,
  'un--.namedDefs'/1,
  'un--.mainExpr'/1,
  'un--.lambdaLifted'/1,
  'un--.exported'/1,
  'un--.anf'/1,
  'un--vmcode'/1,
  'un--namedDefs'/1,
  'un--mainExpr'/1,
  'un--lambdaLifted'/1,
  'un--exported'/1,
  'un--anf'/1
]).
'un--.vmcode'(V0) -> case V0 of {'Compiler.Common.MkCompileData', V1, V2, V3, V4, V5, V6} -> V6 end.
'un--.namedDefs'(V0) -> case V0 of {'Compiler.Common.MkCompileData', V1, V2, V3, V4, V5, V6} -> V3 end.
'un--.mainExpr'(V0) -> case V0 of {'Compiler.Common.MkCompileData', V1, V2, V3, V4, V5, V6} -> V1 end.
'un--.lambdaLifted'(V0) -> case V0 of {'Compiler.Common.MkCompileData', V1, V2, V3, V4, V5, V6} -> V4 end.
'un--.exported'(V0) -> case V0 of {'Compiler.Common.MkCompileData', V1, V2, V3, V4, V5, V6} -> V2 end.
'un--.anf'(V0) -> case V0 of {'Compiler.Common.MkCompileData', V1, V2, V3, V4, V5, V6} -> V5 end.
'un--vmcode'(V0) -> case V0 of {'Compiler.Common.MkCompileData', V1, V2, V3, V4, V5, V6} -> V6 end.
'un--namedDefs'(V0) -> case V0 of {'Compiler.Common.MkCompileData', V1, V2, V3, V4, V5, V6} -> V3 end.
'un--mainExpr'(V0) -> case V0 of {'Compiler.Common.MkCompileData', V1, V2, V3, V4, V5, V6} -> V1 end.
'un--lambdaLifted'(V0) -> case V0 of {'Compiler.Common.MkCompileData', V1, V2, V3, V4, V5, V6} -> V4 end.
'un--exported'(V0) -> case V0 of {'Compiler.Common.MkCompileData', V1, V2, V3, V4, V5, V6} -> V2 end.
'un--anf'(V0) -> case V0 of {'Compiler.Common.MkCompileData', V1, V2, V3, V4, V5, V6} -> V5 end.
