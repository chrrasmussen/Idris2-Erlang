-module('Idris.Idris2.Compiler.Separate.CompilationUnitInfo').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.namespaceMap'/1,
  'un--.compilationUnits'/1,
  'un--.byId'/1,
  'un--namespaceMap'/1,
  'un--compilationUnits'/1,
  'un--byId'/1
]).
'un--.namespaceMap'(V0) -> case V0 of {'Compiler.Separate.MkCompilationUnitInfo', V1, V2, V3} -> V3 end.
'un--.compilationUnits'(V0) -> case V0 of {'Compiler.Separate.MkCompilationUnitInfo', V1, V2, V3} -> V1 end.
'un--.byId'(V0) -> case V0 of {'Compiler.Separate.MkCompilationUnitInfo', V1, V2, V3} -> V2 end.
'un--namespaceMap'(V0) -> case V0 of {'Compiler.Separate.MkCompilationUnitInfo', V1, V2, V3} -> V3 end.
'un--compilationUnits'(V0) -> case V0 of {'Compiler.Separate.MkCompilationUnitInfo', V1, V2, V3} -> V1 end.
'un--byId'(V0) -> case V0 of {'Compiler.Separate.MkCompilationUnitInfo', V1, V2, V3} -> V2 end.
