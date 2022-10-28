-module('Idris.Idris2.Compiler.ES.TailRec.TcGroup').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.index'/1,
  'un--.functions'/1,
  'un--index'/1,
  'un--functions'/1
]).
'un--.index'(V0) -> case V0 of {'Compiler.ES.TailRec.MkTcGroup', V1, V2} -> V1 end.
'un--.functions'(V0) -> case V0 of {'Compiler.ES.TailRec.MkTcGroup', V1, V2} -> V2 end.
'un--index'(V0) -> case V0 of {'Compiler.ES.TailRec.MkTcGroup', V1, V2} -> V1 end.
'un--functions'(V0) -> case V0 of {'Compiler.ES.TailRec.MkTcGroup', V1, V2} -> V2 end.
