-module('Idris.Idris2.Idris.Syntax.IFaceInfo').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--parents'/1,
  'un--params'/1,
  'un--methods'/1,
  'un--implParams'/1,
  'un--iconstructor'/1,
  'un--defaults'/1
]).
'un--parents'(V0) -> case V0 of {'Idris.Idris.Syntax.MkIFaceInfo', E0, E1, E2, E3, E4, E5} -> (fun (V1, V2, V3, V4, V5, V6) -> V4 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--params'(V0) -> case V0 of {'Idris.Idris.Syntax.MkIFaceInfo', E0, E1, E2, E3, E4, E5} -> (fun (V1, V2, V3, V4, V5, V6) -> V3 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--methods'(V0) -> case V0 of {'Idris.Idris.Syntax.MkIFaceInfo', E0, E1, E2, E3, E4, E5} -> (fun (V1, V2, V3, V4, V5, V6) -> V5 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--implParams'(V0) -> case V0 of {'Idris.Idris.Syntax.MkIFaceInfo', E0, E1, E2, E3, E4, E5} -> (fun (V1, V2, V3, V4, V5, V6) -> V2 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--iconstructor'(V0) -> case V0 of {'Idris.Idris.Syntax.MkIFaceInfo', E0, E1, E2, E3, E4, E5} -> (fun (V1, V2, V3, V4, V5, V6) -> V1 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--defaults'(V0) -> case V0 of {'Idris.Idris.Syntax.MkIFaceInfo', E0, E1, E2, E3, E4, E5} -> (fun (V1, V2, V3, V4, V5, V6) -> V6 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
