-module('Idris.Idris2.Core.Options.Dirs').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--working_dir'/1,
  'rf--source_dir'/1,
  'rf--prefix_dir'/1,
  'rf--package_dirs'/1,
  'rf--output_dir'/1,
  'rf--lib_dirs'/1,
  'rf--extra_dirs'/1,
  'rf--depends_dir'/1,
  'rf--data_dirs'/1,
  'rf--build_dir'/1,
  'un--working_dir'/1,
  'un--source_dir'/1,
  'un--prefix_dir'/1,
  'un--package_dirs'/1,
  'un--output_dir'/1,
  'un--lib_dirs'/1,
  'un--extra_dirs'/1,
  'un--depends_dir'/1,
  'un--data_dirs'/1,
  'un--build_dir'/1
]).
'rf--working_dir'(V0) -> case V0 of {'Idris.Core.Options.MkDirs', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V1 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--source_dir'(V0) -> case V0 of {'Idris.Core.Options.MkDirs', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V2 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--prefix_dir'(V0) -> case V0 of {'Idris.Core.Options.MkDirs', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V6 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--package_dirs'(V0) -> case V0 of {'Idris.Core.Options.MkDirs', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V8 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--output_dir'(V0) -> case V0 of {'Idris.Core.Options.MkDirs', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V5 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--lib_dirs'(V0) -> case V0 of {'Idris.Core.Options.MkDirs', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V9 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--extra_dirs'(V0) -> case V0 of {'Idris.Core.Options.MkDirs', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V7 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--depends_dir'(V0) -> case V0 of {'Idris.Core.Options.MkDirs', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--data_dirs'(V0) -> case V0 of {'Idris.Core.Options.MkDirs', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V10 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--build_dir'(V0) -> case V0 of {'Idris.Core.Options.MkDirs', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--working_dir'(V0) -> case V0 of {'Idris.Core.Options.MkDirs', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V1 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--source_dir'(V0) -> case V0 of {'Idris.Core.Options.MkDirs', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V2 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--prefix_dir'(V0) -> case V0 of {'Idris.Core.Options.MkDirs', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V6 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--package_dirs'(V0) -> case V0 of {'Idris.Core.Options.MkDirs', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V8 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--output_dir'(V0) -> case V0 of {'Idris.Core.Options.MkDirs', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V5 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lib_dirs'(V0) -> case V0 of {'Idris.Core.Options.MkDirs', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V9 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--extra_dirs'(V0) -> case V0 of {'Idris.Core.Options.MkDirs', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V7 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--depends_dir'(V0) -> case V0 of {'Idris.Core.Options.MkDirs', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--data_dirs'(V0) -> case V0 of {'Idris.Core.Options.MkDirs', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V10 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--build_dir'(V0) -> case V0 of {'Idris.Core.Options.MkDirs', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
