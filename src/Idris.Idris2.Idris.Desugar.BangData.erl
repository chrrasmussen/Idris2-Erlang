-module('Idris.Idris2.Idris.Desugar.BangData').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--nextName'/1,
  'un--bangNames'/1
]).
'un--nextName'(V0) -> case V0 of {'Idris.Idris.Desugar.MkBangData', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--bangNames'(V0) -> case V0 of {'Idris.Idris.Desugar.MkBangData', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
