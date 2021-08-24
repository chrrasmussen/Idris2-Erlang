-module('Idris.Idris2.Core.Context.SCCall').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--fnCall'/1,
  'rf--fnArgs'/1,
  'un--fnCall'/1,
  'un--fnArgs'/1
]).
'rf--fnCall'(V0) -> case V0 of {'Idris.Core.Context.MkSCCall', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--fnArgs'(V0) -> case V0 of {'Idris.Core.Context.MkSCCall', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--fnCall'(V0) -> case V0 of {'Idris.Core.Context.MkSCCall', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--fnArgs'(V0) -> case V0 of {'Idris.Core.Context.MkSCCall', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
