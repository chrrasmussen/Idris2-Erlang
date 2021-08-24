-module('Idris.Idris2.Core.Context.PMDefInfo').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--holeInfo'/1,
  'rf--externalDecl'/1,
  'rf--alwaysReduce'/1,
  'un--holeInfo'/1,
  'un--externalDecl'/1,
  'un--alwaysReduce'/1
]).
'rf--holeInfo'(V0) -> case V0 of {'Idris.Core.Context.MkPMDefInfo', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--externalDecl'(V0) -> case V0 of {'Idris.Core.Context.MkPMDefInfo', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--alwaysReduce'(V0) -> case V0 of {'Idris.Core.Context.MkPMDefInfo', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--holeInfo'(V0) -> case V0 of {'Idris.Core.Context.MkPMDefInfo', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--externalDecl'(V0) -> case V0 of {'Idris.Core.Context.MkPMDefInfo', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--alwaysReduce'(V0) -> case V0 of {'Idris.Core.Context.MkPMDefInfo', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
