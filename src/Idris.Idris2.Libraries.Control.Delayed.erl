-module('Idris.Idris2.Libraries.Control.Delayed').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--lazy'/2,
  'un--inf'/2
]).
'un--lazy'(V0, V1) -> case V0 of 0 -> V1; 1 -> 'erased'; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--inf'(V0, V1) -> case V0 of 0 -> V1; 1 -> 'erased'; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
