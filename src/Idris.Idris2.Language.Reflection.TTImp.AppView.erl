-module('Idris.Idris2.Language.Reflection.TTImp.AppView').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.head'/1,
  'un--.args'/1,
  'un--head'/1,
  'un--args'/1
]).
'un--.head'(V0) -> case V0 of {'Language.Reflection.TTImp.MkAppView', V1, V2} -> V1 end.
'un--.args'(V0) -> case V0 of {'Language.Reflection.TTImp.MkAppView', V1, V2} -> V2 end.
'un--head'(V0) -> case V0 of {'Language.Reflection.TTImp.MkAppView', V1, V2} -> V1 end.
'un--args'(V0) -> case V0 of {'Language.Reflection.TTImp.MkAppView', V1, V2} -> V2 end.
