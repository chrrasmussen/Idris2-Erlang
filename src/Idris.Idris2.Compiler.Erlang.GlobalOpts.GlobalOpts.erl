-module('Idris.Idris2.Compiler.Erlang.GlobalOpts.GlobalOpts').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--useMutableStorage'/1,
  'rf--prefixStr'/1,
  'rf--outputFormat'/1,
  'rf--inlineSize'/1,
  'un--useMutableStorage'/1,
  'un--prefixStr'/1,
  'un--outputFormat'/1,
  'un--inlineSize'/1
]).
'rf--useMutableStorage'(V0) -> case V0 of {'Idris.Compiler.Erlang.GlobalOpts.MkGlobalOpts', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V4 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--prefixStr'(V0) -> case V0 of {'Idris.Compiler.Erlang.GlobalOpts.MkGlobalOpts', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V2 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--outputFormat'(V0) -> case V0 of {'Idris.Compiler.Erlang.GlobalOpts.MkGlobalOpts', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V1 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--inlineSize'(V0) -> case V0 of {'Idris.Compiler.Erlang.GlobalOpts.MkGlobalOpts', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--useMutableStorage'(V0) -> case V0 of {'Idris.Compiler.Erlang.GlobalOpts.MkGlobalOpts', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V4 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--prefixStr'(V0) -> case V0 of {'Idris.Compiler.Erlang.GlobalOpts.MkGlobalOpts', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V2 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--outputFormat'(V0) -> case V0 of {'Idris.Compiler.Erlang.GlobalOpts.MkGlobalOpts', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V1 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--inlineSize'(V0) -> case V0 of {'Idris.Compiler.Erlang.GlobalOpts.MkGlobalOpts', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
