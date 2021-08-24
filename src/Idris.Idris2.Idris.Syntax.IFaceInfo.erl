-module('Idris.Idris2.Idris.Syntax.IFaceInfo').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--parents'/1,
  'rf--params'/1,
  'rf--methods'/1,
  'rf--implParams'/1,
  'rf--iconstructor'/1,
  'rf--defaults'/1,
  'un--parents'/1,
  'un--params'/1,
  'un--methods'/1,
  'un--implParams'/1,
  'un--iconstructor'/1,
  'un--defaults'/1
]).
'rf--parents'(V0) -> case V0 of {'Idris.Idris.Syntax.MkIFaceInfo', E0, E1, E2, E3, E4, E5} -> (fun (V1, V2, V3, V4, V5, V6) -> V4 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--params'(V0) -> case V0 of {'Idris.Idris.Syntax.MkIFaceInfo', E0, E1, E2, E3, E4, E5} -> (fun (V1, V2, V3, V4, V5, V6) -> V3 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--methods'(V0) -> case V0 of {'Idris.Idris.Syntax.MkIFaceInfo', E0, E1, E2, E3, E4, E5} -> (fun (V1, V2, V3, V4, V5, V6) -> V5 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--implParams'(V0) -> case V0 of {'Idris.Idris.Syntax.MkIFaceInfo', E0, E1, E2, E3, E4, E5} -> (fun (V1, V2, V3, V4, V5, V6) -> V2 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--iconstructor'(V0) -> case V0 of {'Idris.Idris.Syntax.MkIFaceInfo', E0, E1, E2, E3, E4, E5} -> (fun (V1, V2, V3, V4, V5, V6) -> V1 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--defaults'(V0) -> case V0 of {'Idris.Idris.Syntax.MkIFaceInfo', E0, E1, E2, E3, E4, E5} -> (fun (V1, V2, V3, V4, V5, V6) -> V6 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--parents'(V0) -> case V0 of {'Idris.Idris.Syntax.MkIFaceInfo', E0, E1, E2, E3, E4, E5} -> (fun (V1, V2, V3, V4, V5, V6) -> V4 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--params'(V0) -> case V0 of {'Idris.Idris.Syntax.MkIFaceInfo', E0, E1, E2, E3, E4, E5} -> (fun (V1, V2, V3, V4, V5, V6) -> V3 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--methods'(V0) -> case V0 of {'Idris.Idris.Syntax.MkIFaceInfo', E0, E1, E2, E3, E4, E5} -> (fun (V1, V2, V3, V4, V5, V6) -> V5 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--implParams'(V0) -> case V0 of {'Idris.Idris.Syntax.MkIFaceInfo', E0, E1, E2, E3, E4, E5} -> (fun (V1, V2, V3, V4, V5, V6) -> V2 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--iconstructor'(V0) -> case V0 of {'Idris.Idris.Syntax.MkIFaceInfo', E0, E1, E2, E3, E4, E5} -> (fun (V1, V2, V3, V4, V5, V6) -> V1 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--defaults'(V0) -> case V0 of {'Idris.Idris.Syntax.MkIFaceInfo', E0, E1, E2, E3, E4, E5} -> (fun (V1, V2, V3, V4, V5, V6) -> V6 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
