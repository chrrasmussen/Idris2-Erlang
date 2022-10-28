-module('Idris.Idris2.Idris.Package.Types.Depends').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.pkgname'/1,
  'un--.pkgbounds'/1,
  'un--pkgname'/1,
  'un--pkgbounds'/1
]).
'un--.pkgname'(V0) -> case V0 of {'Idris.Package.Types.MkDepends', V1, V2} -> V1 end.
'un--.pkgbounds'(V0) -> case V0 of {'Idris.Package.Types.MkDepends', V1, V2} -> V2 end.
'un--pkgname'(V0) -> case V0 of {'Idris.Package.Types.MkDepends', V1, V2} -> V1 end.
'un--pkgbounds'(V0) -> case V0 of {'Idris.Package.Types.MkDepends', V1, V2} -> V2 end.
