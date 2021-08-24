-module('Idris.Idris2.Compiler.ES.TailRec.Function').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--name'/1,
  'rf--body'/1,
  'rf--args'/1,
  'un--name'/1,
  'un--body'/1,
  'un--args'/1
]).
'rf--name'(V0) -> case V0 of {'Idris.Compiler.ES.TailRec.MkFunction', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--body'(V0) -> case V0 of {'Idris.Compiler.ES.TailRec.MkFunction', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--args'(V0) -> case V0 of {'Idris.Compiler.ES.TailRec.MkFunction', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--name'(V0) -> case V0 of {'Idris.Compiler.ES.TailRec.MkFunction', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--body'(V0) -> case V0 of {'Idris.Compiler.ES.TailRec.MkFunction', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--args'(V0) -> case V0 of {'Idris.Compiler.ES.TailRec.MkFunction', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
