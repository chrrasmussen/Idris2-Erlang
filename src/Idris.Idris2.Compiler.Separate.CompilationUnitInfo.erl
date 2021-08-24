-module('Idris.Idris2.Compiler.Separate.CompilationUnitInfo').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--namespaceMap'/1,
  'rf--compilationUnits'/1,
  'rf--byId'/1,
  'un--namespaceMap'/1,
  'un--compilationUnits'/1,
  'un--byId'/1
]).
'rf--namespaceMap'(V0) -> case V0 of {'Idris.Compiler.Separate.MkCompilationUnitInfo', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--compilationUnits'(V0) -> case V0 of {'Idris.Compiler.Separate.MkCompilationUnitInfo', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--byId'(V0) -> case V0 of {'Idris.Compiler.Separate.MkCompilationUnitInfo', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--namespaceMap'(V0) -> case V0 of {'Idris.Compiler.Separate.MkCompilationUnitInfo', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--compilationUnits'(V0) -> case V0 of {'Idris.Compiler.Separate.MkCompilationUnitInfo', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--byId'(V0) -> case V0 of {'Idris.Compiler.Separate.MkCompilationUnitInfo', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
