-module('Idris.Idris2.Idris.Package.Types.PkgVersionBounds').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--upperInclusive'/1,
  'rf--upperBound'/1,
  'rf--lowerInclusive'/1,
  'rf--lowerBound'/1,
  'un--upperInclusive'/1,
  'un--upperBound'/1,
  'un--lowerInclusive'/1,
  'un--lowerBound'/1
]).
'rf--upperInclusive'(V0) -> case V0 of {'Idris.Idris.Package.Types.MkPkgVersionBounds', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V4 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--upperBound'(V0) -> case V0 of {'Idris.Idris.Package.Types.MkPkgVersionBounds', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--lowerInclusive'(V0) -> case V0 of {'Idris.Idris.Package.Types.MkPkgVersionBounds', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V2 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--lowerBound'(V0) -> case V0 of {'Idris.Idris.Package.Types.MkPkgVersionBounds', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V1 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--upperInclusive'(V0) -> case V0 of {'Idris.Idris.Package.Types.MkPkgVersionBounds', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V4 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--upperBound'(V0) -> case V0 of {'Idris.Idris.Package.Types.MkPkgVersionBounds', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lowerInclusive'(V0) -> case V0 of {'Idris.Idris.Package.Types.MkPkgVersionBounds', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V2 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lowerBound'(V0) -> case V0 of {'Idris.Idris.Package.Types.MkPkgVersionBounds', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V1 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
