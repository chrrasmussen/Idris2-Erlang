-module('Idris.Idris2.Core.Primitives.Prim').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--type'/1,
  'rf--totality'/1,
  'rf--fn'/1,
  'rf--arity'/1,
  'un--type'/1,
  'un--totality'/1,
  'un--fn'/1,
  'un--arity'/1
]).
'rf--type'(V0) -> case V0 of {'Idris.Core.Primitives.MkPrim', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--totality'(V0) -> case V0 of {'Idris.Core.Primitives.MkPrim', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V4 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--fn'(V0) -> case V0 of {'Idris.Core.Primitives.MkPrim', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V2 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--arity'(V0) -> case V0 of {'Idris.Core.Primitives.MkPrim', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V1 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--type'(V0) -> case V0 of {'Idris.Core.Primitives.MkPrim', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--totality'(V0) -> case V0 of {'Idris.Core.Primitives.MkPrim', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V4 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--fn'(V0) -> case V0 of {'Idris.Core.Primitives.MkPrim', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V2 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--arity'(V0) -> case V0 of {'Idris.Core.Primitives.MkPrim', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V1 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
