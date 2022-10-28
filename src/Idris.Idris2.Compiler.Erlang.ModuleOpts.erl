-module('Idris.Idris2.Compiler.Erlang.ModuleOpts').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--4070-3310--in--un--parseFlag'/2,
  'nested--4044-3290--in--un--flagsToOpts\x{27}'/4,
  'un--stringToFlags'/1,
  'un--parseModuleOpts'/2,
  'un--flagsToOpts'/2,
  'un--flagToOpts'/2,
  'un--defaultModuleOpts'/1
]).
'nested--4070-3310--in--un--parseFlag'(V0, V1) -> case V1 of [E0 | E1] -> (fun (V2, V3) -> case V2 of <<"export"/utf8>> -> case V3 of [E2 | E3] -> (fun (V4, V5) -> case V5 of [] -> {'Prelude.Types.Just', {'Compiler.Erlang.ModuleOpts.SetExportFunName', V4}}; _ -> {'Prelude.Types.Nothing'} end end(E2, E3)); _ -> {'Prelude.Types.Nothing'} end; <<"inline"/utf8>> -> case V3 of [E4 | E5] -> (fun (V6, V7) -> case V7 of [] -> {'Prelude.Types.Just', {'Compiler.Erlang.ModuleOpts.SetInlineSize', ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(case ('string':'to_integer'(V6)) of {E6, E7} when (erlang:'is_integer'(E6)) -> (fun (V8, V9) -> case ('string':'is_empty'(V9)) of 'true' -> V8; _ -> 0 end end(E6, E7)); _ -> 0 end))}}; _ -> {'Prelude.Types.Nothing'} end end(E4, E5)); _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end end(E0, E1)); _ -> {'Prelude.Types.Nothing'} end.
'nested--4044-3290--in--un--flagsToOpts\x{27}'(V0, V1, V2, V3) -> case V2 of [] -> V3; [E0 | E1] -> (fun (V4, V5) -> ('nested--4044-3290--in--un--flagsToOpts\x{27}'(V0, V1, V5, ('un--flagToOpts'(V4, V3)))) end(E0, E1)) end.
'un--stringToFlags'(V0) -> ('Idris.Idris2.Prelude.Types.List':'un--mapMaybeAppend'({'Prelude.Basics.Lin'}, fun (V1) -> ('nested--4070-3310--in--un--parseFlag'(V0, V1)) end, ((begin (V7 = fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V5, V6)) end end end end), fun (V8) -> fun (V9) -> ((((V7('erased'))('erased'))(V8))(V9)) end end end(fun (V2) -> ('Idris.Idris2.Data.String':'un--words'(V2)) end))(V0)))).
'un--parseModuleOpts'(V0, V1) -> ('un--flagsToOpts'(V0, ('un--stringToFlags'(V1)))).
'un--flagsToOpts'(V0, V1) -> ('nested--4044-3290--in--un--flagsToOpts\x{27}'(V1, V0, V1, ('un--defaultModuleOpts'(V0)))).
'un--flagToOpts'(V0, V1) -> case V0 of {'Compiler.Erlang.ModuleOpts.SetExportFunName', V2} -> case V1 of {'Compiler.Erlang.ModuleOpts.MkModuleOpts', V3, V4, V5} -> {'Compiler.Erlang.ModuleOpts.MkModuleOpts', V3, {'Prelude.Types.Just', {'Core.Name.NS', case V1 of {'Compiler.Erlang.ModuleOpts.MkModuleOpts', V6, V7, V8} -> V6 end, {'Core.Name.UN', {'Core.Name.Basic', V2}}}}, V5} end; {'Compiler.Erlang.ModuleOpts.SetInlineSize', V9} -> case V1 of {'Compiler.Erlang.ModuleOpts.MkModuleOpts', V10, V11, V12} -> {'Compiler.Erlang.ModuleOpts.MkModuleOpts', V10, V11, {'Prelude.Types.Just', V9}} end end.
'un--defaultModuleOpts'(V0) -> {'Compiler.Erlang.ModuleOpts.MkModuleOpts', V0, {'Prelude.Types.Nothing'}, {'Prelude.Types.Nothing'}}.
