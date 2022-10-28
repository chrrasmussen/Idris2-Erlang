-module('Idris.Idris2.Compiler.Separate.CompilationUnit').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.namespaces'/1,
  'un--.id'/1,
  'un--.dependencies'/1,
  'un--.definitions'/1,
  'un--namespaces'/1,
  'un--id'/1,
  'un--dependencies'/1,
  'un--definitions'/1
]).
'un--.namespaces'(V0) -> case V0 of {'Compiler.Separate.MkCompilationUnit', V1, V2, V3, V4} -> V2 end.
'un--.id'(V0) -> case V0 of {'Compiler.Separate.MkCompilationUnit', V1, V2, V3, V4} -> V1 end.
'un--.dependencies'(V0) -> case V0 of {'Compiler.Separate.MkCompilationUnit', V1, V2, V3, V4} -> V3 end.
'un--.definitions'(V0) -> case V0 of {'Compiler.Separate.MkCompilationUnit', V1, V2, V3, V4} -> V4 end.
'un--namespaces'(V0) -> case V0 of {'Compiler.Separate.MkCompilationUnit', V1, V2, V3, V4} -> V2 end.
'un--id'(V0) -> case V0 of {'Compiler.Separate.MkCompilationUnit', V1, V2, V3, V4} -> V1 end.
'un--dependencies'(V0) -> case V0 of {'Compiler.Separate.MkCompilationUnit', V1, V2, V3, V4} -> V3 end.
'un--definitions'(V0) -> case V0 of {'Compiler.Separate.MkCompilationUnit', V1, V2, V3, V4} -> V4 end.
