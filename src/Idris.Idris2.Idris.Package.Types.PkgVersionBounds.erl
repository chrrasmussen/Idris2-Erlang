-module('Idris.Idris2.Idris.Package.Types.PkgVersionBounds').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.upperInclusive'/1,
  'un--.upperBound'/1,
  'un--.lowerInclusive'/1,
  'un--.lowerBound'/1,
  'un--upperInclusive'/1,
  'un--upperBound'/1,
  'un--lowerInclusive'/1,
  'un--lowerBound'/1
]).
'un--.upperInclusive'(V0) -> case V0 of {'Idris.Package.Types.MkPkgVersionBounds', V1, V2, V3, V4} -> V4 end.
'un--.upperBound'(V0) -> case V0 of {'Idris.Package.Types.MkPkgVersionBounds', V1, V2, V3, V4} -> V3 end.
'un--.lowerInclusive'(V0) -> case V0 of {'Idris.Package.Types.MkPkgVersionBounds', V1, V2, V3, V4} -> V2 end.
'un--.lowerBound'(V0) -> case V0 of {'Idris.Package.Types.MkPkgVersionBounds', V1, V2, V3, V4} -> V1 end.
'un--upperInclusive'(V0) -> case V0 of {'Idris.Package.Types.MkPkgVersionBounds', V1, V2, V3, V4} -> V4 end.
'un--upperBound'(V0) -> case V0 of {'Idris.Package.Types.MkPkgVersionBounds', V1, V2, V3, V4} -> V3 end.
'un--lowerInclusive'(V0) -> case V0 of {'Idris.Package.Types.MkPkgVersionBounds', V1, V2, V3, V4} -> V2 end.
'un--lowerBound'(V0) -> case V0 of {'Idris.Package.Types.MkPkgVersionBounds', V1, V2, V3, V4} -> V1 end.
