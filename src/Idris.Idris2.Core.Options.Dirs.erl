-module('Idris.Idris2.Core.Options.Dirs').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.working_dir'/1,
  'un--.source_dir'/1,
  'un--.prefix_dir'/1,
  'un--.package_dirs'/1,
  'un--.output_dir'/1,
  'un--.lib_dirs'/1,
  'un--.extra_dirs'/1,
  'un--.depends_dir'/1,
  'un--.data_dirs'/1,
  'un--.build_dir'/1,
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
'un--.working_dir'(V0) -> case V0 of {'Core.Options.MkDirs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V1 end.
'un--.source_dir'(V0) -> case V0 of {'Core.Options.MkDirs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V2 end.
'un--.prefix_dir'(V0) -> case V0 of {'Core.Options.MkDirs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V6 end.
'un--.package_dirs'(V0) -> case V0 of {'Core.Options.MkDirs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V8 end.
'un--.output_dir'(V0) -> case V0 of {'Core.Options.MkDirs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V5 end.
'un--.lib_dirs'(V0) -> case V0 of {'Core.Options.MkDirs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V9 end.
'un--.extra_dirs'(V0) -> case V0 of {'Core.Options.MkDirs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V7 end.
'un--.depends_dir'(V0) -> case V0 of {'Core.Options.MkDirs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V4 end.
'un--.data_dirs'(V0) -> case V0 of {'Core.Options.MkDirs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V10 end.
'un--.build_dir'(V0) -> case V0 of {'Core.Options.MkDirs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V3 end.
'un--working_dir'(V0) -> case V0 of {'Core.Options.MkDirs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V1 end.
'un--source_dir'(V0) -> case V0 of {'Core.Options.MkDirs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V2 end.
'un--prefix_dir'(V0) -> case V0 of {'Core.Options.MkDirs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V6 end.
'un--package_dirs'(V0) -> case V0 of {'Core.Options.MkDirs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V8 end.
'un--output_dir'(V0) -> case V0 of {'Core.Options.MkDirs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V5 end.
'un--lib_dirs'(V0) -> case V0 of {'Core.Options.MkDirs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V9 end.
'un--extra_dirs'(V0) -> case V0 of {'Core.Options.MkDirs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V7 end.
'un--depends_dir'(V0) -> case V0 of {'Core.Options.MkDirs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V4 end.
'un--data_dirs'(V0) -> case V0 of {'Core.Options.MkDirs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V10 end.
'un--build_dir'(V0) -> case V0 of {'Core.Options.MkDirs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V3 end.
