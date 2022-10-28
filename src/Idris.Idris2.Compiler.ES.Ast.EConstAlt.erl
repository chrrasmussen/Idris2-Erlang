-module('Idris.Idris2.Compiler.ES.Ast.EConstAlt').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.constant'/1,
  'un--.body'/1,
  'un--constant'/1,
  'un--body'/1
]).
'un--.constant'(V0) -> case V0 of {'Compiler.ES.Ast.MkEConstAlt', V1, V2} -> V1 end.
'un--.body'(V0) -> case V0 of {'Compiler.ES.Ast.MkEConstAlt', V1, V2} -> V2 end.
'un--constant'(V0) -> case V0 of {'Compiler.ES.Ast.MkEConstAlt', V1, V2} -> V1 end.
'un--body'(V0) -> case V0 of {'Compiler.ES.Ast.MkEConstAlt', V1, V2} -> V2 end.
