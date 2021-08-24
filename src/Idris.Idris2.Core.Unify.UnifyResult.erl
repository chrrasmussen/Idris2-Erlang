-module('Idris.Idris2.Core.Unify.UnifyResult').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--namesSolved'/1,
  'rf--holesSolved'/1,
  'rf--constraints'/1,
  'rf--addLazy'/1,
  'un--namesSolved'/1,
  'un--holesSolved'/1,
  'un--constraints'/1,
  'un--addLazy'/1
]).
'rf--namesSolved'(V0) -> case V0 of {'Idris.Core.Unify.MkUnifyResult', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--holesSolved'(V0) -> case V0 of {'Idris.Core.Unify.MkUnifyResult', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V2 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--constraints'(V0) -> case V0 of {'Idris.Core.Unify.MkUnifyResult', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V1 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--addLazy'(V0) -> case V0 of {'Idris.Core.Unify.MkUnifyResult', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V4 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--namesSolved'(V0) -> case V0 of {'Idris.Core.Unify.MkUnifyResult', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--holesSolved'(V0) -> case V0 of {'Idris.Core.Unify.MkUnifyResult', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V2 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--constraints'(V0) -> case V0 of {'Idris.Core.Unify.MkUnifyResult', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V1 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--addLazy'(V0) -> case V0 of {'Idris.Core.Unify.MkUnifyResult', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V4 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
