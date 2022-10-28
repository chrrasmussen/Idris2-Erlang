-module('Idris.Idris2.Compiler.ES.TailRec.TcFunction').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.name'/1,
  'un--.index'/1,
  'un--.exp'/1,
  'un--.args'/1,
  'un--name'/1,
  'un--index'/1,
  'un--exp'/1,
  'un--args'/1
]).
'un--.name'(V0) -> case V0 of {'Compiler.ES.TailRec.MkTcFunction', V1, V2, V3, V4} -> V1 end.
'un--.index'(V0) -> case V0 of {'Compiler.ES.TailRec.MkTcFunction', V1, V2, V3, V4} -> V2 end.
'un--.exp'(V0) -> case V0 of {'Compiler.ES.TailRec.MkTcFunction', V1, V2, V3, V4} -> V4 end.
'un--.args'(V0) -> case V0 of {'Compiler.ES.TailRec.MkTcFunction', V1, V2, V3, V4} -> V3 end.
'un--name'(V0) -> case V0 of {'Compiler.ES.TailRec.MkTcFunction', V1, V2, V3, V4} -> V1 end.
'un--index'(V0) -> case V0 of {'Compiler.ES.TailRec.MkTcFunction', V1, V2, V3, V4} -> V2 end.
'un--exp'(V0) -> case V0 of {'Compiler.ES.TailRec.MkTcFunction', V1, V2, V3, V4} -> V4 end.
'un--args'(V0) -> case V0 of {'Compiler.ES.TailRec.MkTcFunction', V1, V2, V3, V4} -> V3 end.
