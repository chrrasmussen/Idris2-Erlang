-module('Idris.Idris2.Compiler.ES.TailRec.TcFunction').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--name'/1,
  'rf--index'/1,
  'rf--exp'/1,
  'rf--args'/1,
  'un--name'/1,
  'un--index'/1,
  'un--exp'/1,
  'un--args'/1
]).
'rf--name'(V0) -> case V0 of {'Idris.Compiler.ES.TailRec.MkTcFunction', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V1 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--index'(V0) -> case V0 of {'Idris.Compiler.ES.TailRec.MkTcFunction', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V2 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--exp'(V0) -> case V0 of {'Idris.Compiler.ES.TailRec.MkTcFunction', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V4 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--args'(V0) -> case V0 of {'Idris.Compiler.ES.TailRec.MkTcFunction', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--name'(V0) -> case V0 of {'Idris.Compiler.ES.TailRec.MkTcFunction', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V1 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--index'(V0) -> case V0 of {'Idris.Compiler.ES.TailRec.MkTcFunction', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V2 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--exp'(V0) -> case V0 of {'Idris.Compiler.ES.TailRec.MkTcFunction', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V4 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--args'(V0) -> case V0 of {'Idris.Compiler.ES.TailRec.MkTcFunction', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
