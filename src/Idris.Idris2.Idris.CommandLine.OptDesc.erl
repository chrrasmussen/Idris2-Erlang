-module('Idris.Idris2.Idris.CommandLine.OptDesc').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--flags'/1,
  'un--argdescs'/1,
  'un--action'/1
]).
'un--flags'(V0) -> case V0 of {'Idris.Idris.CommandLine.MkOpt', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V1 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--argdescs'(V0) -> case V0 of {'Idris.Idris.CommandLine.MkOpt', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V2 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--action'(V0) -> case V0 of {'Idris.Idris.CommandLine.MkOpt', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
