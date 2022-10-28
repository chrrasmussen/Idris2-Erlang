-module('Idris.Idris2.Compiler.ES.TailRec.Function').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.name'/1,
  'un--.body'/1,
  'un--.args'/1,
  'un--name'/1,
  'un--body'/1,
  'un--args'/1
]).
'un--.name'(V0) -> case V0 of {'Compiler.ES.TailRec.MkFunction', V1, V2, V3} -> V1 end.
'un--.body'(V0) -> case V0 of {'Compiler.ES.TailRec.MkFunction', V1, V2, V3} -> V3 end.
'un--.args'(V0) -> case V0 of {'Compiler.ES.TailRec.MkFunction', V1, V2, V3} -> V2 end.
'un--name'(V0) -> case V0 of {'Compiler.ES.TailRec.MkFunction', V1, V2, V3} -> V1 end.
'un--body'(V0) -> case V0 of {'Compiler.ES.TailRec.MkFunction', V1, V2, V3} -> V3 end.
'un--args'(V0) -> case V0 of {'Compiler.ES.TailRec.MkFunction', V1, V2, V3} -> V2 end.
