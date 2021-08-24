-module('Idris.Idris2.Idris.Package.Types.Depends').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--pkgname'/1,
  'rf--pkgbounds'/1,
  'un--pkgname'/1,
  'un--pkgbounds'/1
]).
'rf--pkgname'(V0) -> case V0 of {'Idris.Idris.Package.Types.MkDepends', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--pkgbounds'(V0) -> case V0 of {'Idris.Idris.Package.Types.MkDepends', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--pkgname'(V0) -> case V0 of {'Idris.Idris.Package.Types.MkDepends', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--pkgbounds'(V0) -> case V0 of {'Idris.Idris.Package.Types.MkDepends', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
