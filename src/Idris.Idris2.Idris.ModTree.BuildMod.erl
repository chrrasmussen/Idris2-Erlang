-module('Idris.Idris2.Idris.ModTree.BuildMod').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--imports'/1,
  'un--buildNS'/1,
  'un--buildFile'/1
]).
'un--imports'(V0) -> case V0 of {'Idris.Idris.ModTree.MkBuildMod', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--buildNS'(V0) -> case V0 of {'Idris.Idris.ModTree.MkBuildMod', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--buildFile'(V0) -> case V0 of {'Idris.Idris.ModTree.MkBuildMod', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
