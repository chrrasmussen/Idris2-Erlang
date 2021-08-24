-module('Idris.Idris2.Idris.Syntax.Module').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--moduleNS'/1,
  'rf--imports'/1,
  'rf--headerLoc'/1,
  'rf--documentation'/1,
  'rf--decls'/1,
  'un--moduleNS'/1,
  'un--imports'/1,
  'un--headerLoc'/1,
  'un--documentation'/1,
  'un--decls'/1
]).
'rf--moduleNS'(V0) -> case V0 of {'Idris.Idris.Syntax.MkModule', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V2 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--imports'(V0) -> case V0 of {'Idris.Idris.Syntax.MkModule', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V3 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--headerLoc'(V0) -> case V0 of {'Idris.Idris.Syntax.MkModule', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V1 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--documentation'(V0) -> case V0 of {'Idris.Idris.Syntax.MkModule', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V4 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--decls'(V0) -> case V0 of {'Idris.Idris.Syntax.MkModule', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V5 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--moduleNS'(V0) -> case V0 of {'Idris.Idris.Syntax.MkModule', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V2 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--imports'(V0) -> case V0 of {'Idris.Idris.Syntax.MkModule', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V3 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--headerLoc'(V0) -> case V0 of {'Idris.Idris.Syntax.MkModule', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V1 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--documentation'(V0) -> case V0 of {'Idris.Idris.Syntax.MkModule', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V4 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--decls'(V0) -> case V0 of {'Idris.Idris.Syntax.MkModule', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V5 end(E0, E1, E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
