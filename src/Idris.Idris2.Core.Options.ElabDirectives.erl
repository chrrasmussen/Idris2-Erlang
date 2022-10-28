-module('Idris.Idris2.Core.Options.ElabDirectives').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.unboundImplicits'/1,
  'un--.totality'/1,
  'un--.prefixRecordProjections'/1,
  'un--.nfThreshold'/1,
  'un--.lazyActive'/1,
  'un--.autoImplicitLimit'/1,
  'un--.ambigLimit'/1,
  'un--unboundImplicits'/1,
  'un--totality'/1,
  'un--prefixRecordProjections'/1,
  'un--nfThreshold'/1,
  'un--lazyActive'/1,
  'un--autoImplicitLimit'/1,
  'un--ambigLimit'/1
]).
'un--.unboundImplicits'(V0) -> case V0 of {'Core.Options.MkElabDirectives', V1, V2, V3, V4, V5, V6, V7} -> V2 end.
'un--.totality'(V0) -> case V0 of {'Core.Options.MkElabDirectives', V1, V2, V3, V4, V5, V6, V7} -> V3 end.
'un--.prefixRecordProjections'(V0) -> case V0 of {'Core.Options.MkElabDirectives', V1, V2, V3, V4, V5, V6, V7} -> V7 end.
'un--.nfThreshold'(V0) -> case V0 of {'Core.Options.MkElabDirectives', V1, V2, V3, V4, V5, V6, V7} -> V6 end.
'un--.lazyActive'(V0) -> case V0 of {'Core.Options.MkElabDirectives', V1, V2, V3, V4, V5, V6, V7} -> V1 end.
'un--.autoImplicitLimit'(V0) -> case V0 of {'Core.Options.MkElabDirectives', V1, V2, V3, V4, V5, V6, V7} -> V5 end.
'un--.ambigLimit'(V0) -> case V0 of {'Core.Options.MkElabDirectives', V1, V2, V3, V4, V5, V6, V7} -> V4 end.
'un--unboundImplicits'(V0) -> case V0 of {'Core.Options.MkElabDirectives', V1, V2, V3, V4, V5, V6, V7} -> V2 end.
'un--totality'(V0) -> case V0 of {'Core.Options.MkElabDirectives', V1, V2, V3, V4, V5, V6, V7} -> V3 end.
'un--prefixRecordProjections'(V0) -> case V0 of {'Core.Options.MkElabDirectives', V1, V2, V3, V4, V5, V6, V7} -> V7 end.
'un--nfThreshold'(V0) -> case V0 of {'Core.Options.MkElabDirectives', V1, V2, V3, V4, V5, V6, V7} -> V6 end.
'un--lazyActive'(V0) -> case V0 of {'Core.Options.MkElabDirectives', V1, V2, V3, V4, V5, V6, V7} -> V1 end.
'un--autoImplicitLimit'(V0) -> case V0 of {'Core.Options.MkElabDirectives', V1, V2, V3, V4, V5, V6, V7} -> V5 end.
'un--ambigLimit'(V0) -> case V0 of {'Core.Options.MkElabDirectives', V1, V2, V3, V4, V5, V6, V7} -> V4 end.
