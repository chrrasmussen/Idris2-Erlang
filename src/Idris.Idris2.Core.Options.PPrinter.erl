-module('Idris.Idris2.Core.Options.PPrinter').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--showImplicits'/1,
  'un--showFullEnv'/1,
  'un--fullNamespace'/1
]).
'un--showImplicits'(V0) -> case V0 of {'Idris.Core.Options.MkPPOpts', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--showFullEnv'(V0) -> case V0 of {'Idris.Core.Options.MkPPOpts', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--fullNamespace'(V0) -> case V0 of {'Idris.Core.Options.MkPPOpts', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
