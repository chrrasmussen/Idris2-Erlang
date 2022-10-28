-module('Idris.Idris2.Libraries.System.Directory.Tree.Tree').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.subTrees'/1,
  'un--.files'/1,
  'un--toRelative'/1,
  'un--subTrees'/1,
  'un--files'/1
]).
'un--.subTrees'(V0) -> case V0 of {'Libraries.System.Directory.Tree.MkTree', V1, V2} -> V2 end.
'un--.files'(V0) -> case V0 of {'Libraries.System.Directory.Tree.MkTree', V1, V2} -> V1 end.
'un--toRelative'(V0) -> V0.
'un--subTrees'(V0) -> case V0 of {'Libraries.System.Directory.Tree.MkTree', V1, V2} -> V2 end.
'un--files'(V0) -> case V0 of {'Libraries.System.Directory.Tree.MkTree', V1, V2} -> V1 end.
