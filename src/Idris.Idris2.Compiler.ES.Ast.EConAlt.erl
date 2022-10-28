-module('Idris.Idris2.Compiler.ES.Ast.EConAlt').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.tag'/1,
  'un--.conInfo'/1,
  'un--.body'/1,
  'un--tag'/1,
  'un--conInfo'/1,
  'un--body'/1
]).
'un--.tag'(V0) -> case V0 of {'Compiler.ES.Ast.MkEConAlt', V1, V2, V3} -> V1 end.
'un--.conInfo'(V0) -> case V0 of {'Compiler.ES.Ast.MkEConAlt', V1, V2, V3} -> V2 end.
'un--.body'(V0) -> case V0 of {'Compiler.ES.Ast.MkEConAlt', V1, V2, V3} -> V3 end.
'un--tag'(V0) -> case V0 of {'Compiler.ES.Ast.MkEConAlt', V1, V2, V3} -> V1 end.
'un--conInfo'(V0) -> case V0 of {'Compiler.ES.Ast.MkEConAlt', V1, V2, V3} -> V2 end.
'un--body'(V0) -> case V0 of {'Compiler.ES.Ast.MkEConAlt', V1, V2, V3} -> V3 end.
