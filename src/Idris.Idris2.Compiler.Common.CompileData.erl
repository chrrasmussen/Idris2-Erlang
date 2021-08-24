-module('Idris.Idris2.Compiler.Common.CompileData').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--vmcode'/1,
  'rf--namedDefs'/1,
  'rf--mainExpr'/1,
  'rf--lambdaLifted'/1,
  'rf--anf'/1,
  'un--vmcode'/1,
  'un--namedDefs'/1,
  'un--mainExpr'/1,
  'un--lambdaLifted'/1,
  'un--anf'/1
]).
'rf--vmcode'(V0) -> case V0 of {'Idris.Compiler.Common.MkCompileData', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V5 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--namedDefs'(V0) -> case V0 of {'Idris.Compiler.Common.MkCompileData', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V2 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--mainExpr'(V0) -> case V0 of {'Idris.Compiler.Common.MkCompileData', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V1 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--lambdaLifted'(V0) -> case V0 of {'Idris.Compiler.Common.MkCompileData', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V3 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--anf'(V0) -> case V0 of {'Idris.Compiler.Common.MkCompileData', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V4 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--vmcode'(V0) -> case V0 of {'Idris.Compiler.Common.MkCompileData', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V5 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--namedDefs'(V0) -> case V0 of {'Idris.Compiler.Common.MkCompileData', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V2 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--mainExpr'(V0) -> case V0 of {'Idris.Compiler.Common.MkCompileData', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V1 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lambdaLifted'(V0) -> case V0 of {'Idris.Compiler.Common.MkCompileData', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V3 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--anf'(V0) -> case V0 of {'Idris.Compiler.Common.MkCompileData', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V4 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
