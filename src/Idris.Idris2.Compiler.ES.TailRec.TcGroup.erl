-module('Idris.Idris2.Compiler.ES.TailRec.TcGroup').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--index'/1,
  'rf--functions'/1,
  'un--index'/1,
  'un--functions'/1
]).
'rf--index'(V0) -> case V0 of {'Idris.Compiler.ES.TailRec.MkTcGroup', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--functions'(V0) -> case V0 of {'Idris.Compiler.ES.TailRec.MkTcGroup', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--index'(V0) -> case V0 of {'Idris.Compiler.ES.TailRec.MkTcGroup', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--functions'(V0) -> case V0 of {'Idris.Compiler.ES.TailRec.MkTcGroup', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
