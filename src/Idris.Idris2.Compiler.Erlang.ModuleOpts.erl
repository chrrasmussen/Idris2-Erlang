-module('Idris.Idris2.Compiler.Erlang.ModuleOpts').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--flagToOpts-7771'/2,
  'case--flagToOpts-7759'/2,
  'nested--2356-7787--in--un--parseFlag'/2,
  'nested--2344-7778--in--un--flagsToOpts\x{27}'/4,
  'un--stringToFlags'/1,
  'un--parseModuleOpts'/2,
  'un--flagsToOpts'/2,
  'un--flagToOpts'/2,
  'un--defaultModuleOpts'/1
]).
'case--flagToOpts-7771'(V0, V1) -> case V1 of {'Idris.Compiler.Erlang.ModuleOpts.MkModuleOpts', E0, E1, E2} -> (fun (V2, V3, V4) -> {'Idris.Compiler.Erlang.ModuleOpts.MkModuleOpts', V2, V3, {'Idris.Prelude.Types.Just', V0}} end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--flagToOpts-7759'(V0, V1) -> case V1 of {'Idris.Compiler.Erlang.ModuleOpts.MkModuleOpts', E0, E1, E2} -> (fun (V2, V3, V4) -> {'Idris.Compiler.Erlang.ModuleOpts.MkModuleOpts', V2, {'Idris.Prelude.Types.Just', {'Idris.Core.Name.NS', case V1 of {'Idris.Compiler.Erlang.ModuleOpts.MkModuleOpts', E3, E4, E5} -> (fun (V5, V6, V7) -> V5 end(E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, {'Idris.Core.Name.UN', V0}}}, V4} end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--2356-7787--in--un--parseFlag'(V0, V1) -> case V1 of [E0 | E1] -> (fun (V2, V3) -> case V2 of <<"export"/utf8>> -> case V3 of [E2 | E3] -> (fun (V4, V5) -> case V5 of [] -> {'Idris.Prelude.Types.Just', {'Idris.Compiler.Erlang.ModuleOpts.SetExportFunName', V4}}; _ -> {'Idris.Prelude.Types.Nothing'} end end(E2, E3)); _ -> {'Idris.Prelude.Types.Nothing'} end; <<"inline"/utf8>> -> case V3 of [E4 | E5] -> (fun (V6, V7) -> case V7 of [] -> {'Idris.Prelude.Types.Just', {'Idris.Compiler.Erlang.ModuleOpts.SetInlineSize', ('Idris.Idris2.Prelude.Types':'dn--un--cast_Cast__String_Integer'(V6))}}; _ -> {'Idris.Prelude.Types.Nothing'} end end(E4, E5)); _ -> {'Idris.Prelude.Types.Nothing'} end; _ -> {'Idris.Prelude.Types.Nothing'} end end(E0, E1)); _ -> {'Idris.Prelude.Types.Nothing'} end.
'nested--2344-7778--in--un--flagsToOpts\x{27}'(V0, V1, V2, V3) -> case V2 of [] -> V3; [E0 | E1] -> (fun (V4, V5) -> ('nested--2344-7778--in--un--flagsToOpts\x{27}'(V0, V1, V5, ('un--flagToOpts'(V4, V3)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--stringToFlags'(V0) -> ('Idris.Idris2.Data.List':'un--mapMaybe'('erased', 'erased', fun (V1) -> ('nested--2356-7787--in--un--parseFlag'(V0, V1)) end, ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__List'('erased', 'erased', fun (V2) -> ('Idris.Idris2.Data.Strings':'un--words'(V2)) end, V0)))).
'un--parseModuleOpts'(V0, V1) -> ('un--flagsToOpts'(V0, ('un--stringToFlags'(V1)))).
'un--flagsToOpts'(V0, V1) -> ('nested--2344-7778--in--un--flagsToOpts\x{27}'(V1, V0, V1, ('un--defaultModuleOpts'(V0)))).
'un--flagToOpts'(V0, V1) -> case V0 of {'Idris.Compiler.Erlang.ModuleOpts.SetExportFunName', E0} -> (fun (V2) -> case V1 of {'Idris.Compiler.Erlang.ModuleOpts.MkModuleOpts', E1, E2, E3} -> (fun (V3, V4, V5) -> {'Idris.Compiler.Erlang.ModuleOpts.MkModuleOpts', V3, {'Idris.Prelude.Types.Just', {'Idris.Core.Name.NS', case V1 of {'Idris.Compiler.Erlang.ModuleOpts.MkModuleOpts', E4, E5, E6} -> (fun (V6, V7, V8) -> V6 end(E4, E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, {'Idris.Core.Name.UN', V2}}}, V5} end(E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Compiler.Erlang.ModuleOpts.SetInlineSize', E7} -> (fun (V9) -> case V1 of {'Idris.Compiler.Erlang.ModuleOpts.MkModuleOpts', E8, E9, E10} -> (fun (V10, V11, V12) -> {'Idris.Compiler.Erlang.ModuleOpts.MkModuleOpts', V10, V11, {'Idris.Prelude.Types.Just', V9}} end(E8, E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--defaultModuleOpts'(V0) -> {'Idris.Compiler.Erlang.ModuleOpts.MkModuleOpts', V0, {'Idris.Prelude.Types.Nothing'}, {'Idris.Prelude.Types.Nothing'}}.
