-module('Idris.Idris2.Control.ANSI.DecoratedString').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--str'/1,
  'un--sgr'/1
]).
'un--str'(V0) -> case V0 of {'Idris.Control.ANSI.MkDString', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--sgr'(V0) -> case V0 of {'Idris.Control.ANSI.MkDString', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.