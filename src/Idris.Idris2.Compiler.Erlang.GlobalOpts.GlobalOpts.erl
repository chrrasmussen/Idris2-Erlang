-module('Idris.Idris2.Compiler.Erlang.GlobalOpts.GlobalOpts').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--prefixStr'/1,
  'un--outputFormat'/1,
  'un--inlineSize'/1
]).
'un--prefixStr'(V0) -> case V0 of {'Idris.Compiler.Erlang.GlobalOpts.MkGlobalOpts', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--outputFormat'(V0) -> case V0 of {'Idris.Compiler.Erlang.GlobalOpts.MkGlobalOpts', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--inlineSize'(V0) -> case V0 of {'Idris.Compiler.Erlang.GlobalOpts.MkGlobalOpts', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
