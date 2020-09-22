-module('Idris.Idris2.Compiler.ES.ES.ESSt').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--preamble'/1,
  'un--ccTypes'/1
]).
'un--preamble'(V0) -> case V0 of {'Idris.Compiler.ES.ES.MkESSt', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--ccTypes'(V0) -> case V0 of {'Idris.Compiler.ES.ES.MkESSt', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
