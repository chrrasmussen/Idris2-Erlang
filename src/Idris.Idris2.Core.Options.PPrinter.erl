-module('Idris.Idris2.Core.Options.PPrinter').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.showMachineNames'/1,
  'un--.showImplicits'/1,
  'un--.showFullEnv'/1,
  'un--.fullNamespace'/1,
  'un--showMachineNames'/1,
  'un--showImplicits'/1,
  'un--showFullEnv'/1,
  'un--fullNamespace'/1
]).
'un--.showMachineNames'(V0) -> case V0 of {'Core.Options.MkPPOpts', V1, V2, V3, V4} -> V2 end.
'un--.showImplicits'(V0) -> case V0 of {'Core.Options.MkPPOpts', V1, V2, V3, V4} -> V1 end.
'un--.showFullEnv'(V0) -> case V0 of {'Core.Options.MkPPOpts', V1, V2, V3, V4} -> V3 end.
'un--.fullNamespace'(V0) -> case V0 of {'Core.Options.MkPPOpts', V1, V2, V3, V4} -> V4 end.
'un--showMachineNames'(V0) -> case V0 of {'Core.Options.MkPPOpts', V1, V2, V3, V4} -> V2 end.
'un--showImplicits'(V0) -> case V0 of {'Core.Options.MkPPOpts', V1, V2, V3, V4} -> V1 end.
'un--showFullEnv'(V0) -> case V0 of {'Core.Options.MkPPOpts', V1, V2, V3, V4} -> V3 end.
'un--fullNamespace'(V0) -> case V0 of {'Core.Options.MkPPOpts', V1, V2, V3, V4} -> V4 end.
