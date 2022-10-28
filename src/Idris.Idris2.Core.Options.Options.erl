-module('Idris.Idris2.Core.Options.Options').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.session'/1,
  'un--.rewritenames'/1,
  'un--.printing'/1,
  'un--.primnames'/1,
  'un--.pairnames'/1,
  'un--.hashFn'/1,
  'un--.extensions'/1,
  'un--.elabDirectives'/1,
  'un--.dirs'/1,
  'un--.additionalCGs'/1,
  'un--session'/1,
  'un--rewritenames'/1,
  'un--printing'/1,
  'un--primnames'/1,
  'un--pairnames'/1,
  'un--hashFn'/1,
  'un--extensions'/1,
  'un--elabDirectives'/1,
  'un--dirs'/1,
  'un--additionalCGs'/1
]).
'un--.session'(V0) -> case V0 of {'Core.Options.MkOptions', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V3 end.
'un--.rewritenames'(V0) -> case V0 of {'Core.Options.MkOptions', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V6 end.
'un--.printing'(V0) -> case V0 of {'Core.Options.MkOptions', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V2 end.
'un--.primnames'(V0) -> case V0 of {'Core.Options.MkOptions', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V7 end.
'un--.pairnames'(V0) -> case V0 of {'Core.Options.MkOptions', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V5 end.
'un--.hashFn'(V0) -> case V0 of {'Core.Options.MkOptions', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V10 end.
'un--.extensions'(V0) -> case V0 of {'Core.Options.MkOptions', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V8 end.
'un--.elabDirectives'(V0) -> case V0 of {'Core.Options.MkOptions', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V4 end.
'un--.dirs'(V0) -> case V0 of {'Core.Options.MkOptions', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V1 end.
'un--.additionalCGs'(V0) -> case V0 of {'Core.Options.MkOptions', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V9 end.
'un--session'(V0) -> case V0 of {'Core.Options.MkOptions', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V3 end.
'un--rewritenames'(V0) -> case V0 of {'Core.Options.MkOptions', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V6 end.
'un--printing'(V0) -> case V0 of {'Core.Options.MkOptions', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V2 end.
'un--primnames'(V0) -> case V0 of {'Core.Options.MkOptions', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V7 end.
'un--pairnames'(V0) -> case V0 of {'Core.Options.MkOptions', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V5 end.
'un--hashFn'(V0) -> case V0 of {'Core.Options.MkOptions', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V10 end.
'un--extensions'(V0) -> case V0 of {'Core.Options.MkOptions', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V8 end.
'un--elabDirectives'(V0) -> case V0 of {'Core.Options.MkOptions', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V4 end.
'un--dirs'(V0) -> case V0 of {'Core.Options.MkOptions', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V1 end.
'un--additionalCGs'(V0) -> case V0 of {'Core.Options.MkOptions', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V9 end.
