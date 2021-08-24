-module('Idris.Idris2.Compiler.Erlang.ModuleOpts.ModuleOpts').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--ns'/1,
  'rf--inlineSize'/1,
  'rf--exportFunName'/1,
  'un--ns'/1,
  'un--inlineSize'/1,
  'un--exportFunName'/1
]).
'rf--ns'(V0) -> case V0 of {'Idris.Compiler.Erlang.ModuleOpts.MkModuleOpts', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--inlineSize'(V0) -> case V0 of {'Idris.Compiler.Erlang.ModuleOpts.MkModuleOpts', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--exportFunName'(V0) -> case V0 of {'Idris.Compiler.Erlang.ModuleOpts.MkModuleOpts', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--ns'(V0) -> case V0 of {'Idris.Compiler.Erlang.ModuleOpts.MkModuleOpts', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--inlineSize'(V0) -> case V0 of {'Idris.Compiler.Erlang.ModuleOpts.MkModuleOpts', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--exportFunName'(V0) -> case V0 of {'Idris.Compiler.Erlang.ModuleOpts.MkModuleOpts', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
