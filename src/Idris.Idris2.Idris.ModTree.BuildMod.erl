-module('Idris.Idris2.Idris.ModTree.BuildMod').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.imports'/1,
  'un--.buildNS'/1,
  'un--.buildFile'/1,
  'un--imports'/1,
  'un--buildNS'/1,
  'un--buildFile'/1
]).
'un--.imports'(V0) -> case V0 of {'Idris.ModTree.MkBuildMod', V1, V2, V3} -> V3 end.
'un--.buildNS'(V0) -> case V0 of {'Idris.ModTree.MkBuildMod', V1, V2, V3} -> V2 end.
'un--.buildFile'(V0) -> case V0 of {'Idris.ModTree.MkBuildMod', V1, V2, V3} -> V1 end.
'un--imports'(V0) -> case V0 of {'Idris.ModTree.MkBuildMod', V1, V2, V3} -> V3 end.
'un--buildNS'(V0) -> case V0 of {'Idris.ModTree.MkBuildMod', V1, V2, V3} -> V2 end.
'un--buildFile'(V0) -> case V0 of {'Idris.ModTree.MkBuildMod', V1, V2, V3} -> V1 end.
