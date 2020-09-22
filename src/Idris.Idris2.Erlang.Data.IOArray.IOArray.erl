-module('Idris.Idris2.Erlang.Data.IOArray.IOArray').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--maxSize'/2,
  'un--content'/2
]).
'un--maxSize'(V0, V1) -> case V1 of {'Idris.Erlang.Data.IOArray.MkIOArray', E0, E1} -> (fun (V2, V3) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--content'(V0, V1) -> case V1 of {'Idris.Erlang.Data.IOArray.MkIOArray', E0, E1} -> (fun (V2, V3) -> V3 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
