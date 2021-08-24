-module('Idris.Idris2.Core.TT.KindedName').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--rawName'/1,
  'rf--nameKind'/1,
  'rf--fullName'/1,
  'un--rawName'/1,
  'un--nameKind'/1,
  'un--fullName'/1
]).
'rf--rawName'(V0) -> case V0 of {'Idris.Core.TT.MkKindedName', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--nameKind'(V0) -> case V0 of {'Idris.Core.TT.MkKindedName', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--fullName'(V0) -> case V0 of {'Idris.Core.TT.MkKindedName', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--rawName'(V0) -> case V0 of {'Idris.Core.TT.MkKindedName', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--nameKind'(V0) -> case V0 of {'Idris.Core.TT.MkKindedName', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--fullName'(V0) -> case V0 of {'Idris.Core.TT.MkKindedName', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
