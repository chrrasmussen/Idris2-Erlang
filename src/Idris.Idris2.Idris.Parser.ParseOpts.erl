-module('Idris.Idris2.Idris.Parser.ParseOpts').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--withOK'/1,
  'un--eqOK'/1
]).
'un--withOK'(V0) -> case V0 of {'Idris.Idris.Parser.MkParseOpts', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--eqOK'(V0) -> case V0 of {'Idris.Idris.Parser.MkParseOpts', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
