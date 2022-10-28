-module('Idris.Idris2.Idris.Package.Types.CSS').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.stylename'/1,
  'un--.filename'/1,
  'un--stylename'/1,
  'un--filename'/1
]).
'un--.stylename'(V0) -> case V0 of {'Idris.Package.Types.MkCSS', V1, V2} -> V1 end.
'un--.filename'(V0) -> case V0 of {'Idris.Package.Types.MkCSS', V1, V2} -> V2 end.
'un--stylename'(V0) -> case V0 of {'Idris.Package.Types.MkCSS', V1, V2} -> V1 end.
'un--filename'(V0) -> case V0 of {'Idris.Package.Types.MkCSS', V1, V2} -> V2 end.
