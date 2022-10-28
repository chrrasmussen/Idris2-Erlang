-module('Idris.Idris2.Core.Context.Context.GlobalDef').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.visibility'/1,
  'un--.type'/1,
  'un--.totality'/1,
  'un--.specArgs'/1,
  'un--.sizeChange'/1,
  'un--.schemeExpr'/1,
  'un--.safeErase'/1,
  'un--.refersToRuntimeM'/1,
  'un--.refersToM'/1,
  'un--.noCycles'/1,
  'un--.namedcompexpr'/1,
  'un--.multiplicity'/1,
  'un--.location'/1,
  'un--.localVars'/1,
  'un--.linearChecked'/1,
  'un--.invertible'/1,
  'un--.inferrable'/1,
  'un--.fullname'/1,
  'un--.flags'/1,
  'un--.eraseArgs'/1,
  'un--.definition'/1,
  'un--.compexpr'/1,
  'un--visibility'/1,
  'un--type'/1,
  'un--totality'/1,
  'un--specArgs'/1,
  'un--sizeChange'/1,
  'un--schemeExpr'/1,
  'un--safeErase'/1,
  'un--refersToRuntimeM'/1,
  'un--refersToM'/1,
  'un--noCycles'/1,
  'un--namedcompexpr'/1,
  'un--multiplicity'/1,
  'un--location'/1,
  'un--localVars'/1,
  'un--linearChecked'/1,
  'un--invertible'/1,
  'un--inferrable'/1,
  'un--fullname'/1,
  'un--flags'/1,
  'un--eraseArgs'/1,
  'un--definition'/1,
  'un--compexpr'/1
]).
'un--.visibility'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V10 end.
'un--.type'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V3 end.
'un--.totality'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V11 end.
'un--.specArgs'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V6 end.
'un--.sizeChange'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V21 end.
'un--.schemeExpr'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V22 end.
'un--.safeErase'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V5 end.
'un--.refersToRuntimeM'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V14 end.
'un--.refersToM'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V13 end.
'un--.noCycles'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V16 end.
'un--.namedcompexpr'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V20 end.
'un--.multiplicity'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V8 end.
'un--.location'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V1 end.
'un--.localVars'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V9 end.
'un--.linearChecked'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V17 end.
'un--.invertible'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V15 end.
'un--.inferrable'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V7 end.
'un--.fullname'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V2 end.
'un--.flags'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V12 end.
'un--.eraseArgs'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V4 end.
'un--.definition'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V18 end.
'un--.compexpr'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V19 end.
'un--visibility'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V10 end.
'un--type'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V3 end.
'un--totality'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V11 end.
'un--specArgs'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V6 end.
'un--sizeChange'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V21 end.
'un--schemeExpr'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V22 end.
'un--safeErase'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V5 end.
'un--refersToRuntimeM'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V14 end.
'un--refersToM'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V13 end.
'un--noCycles'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V16 end.
'un--namedcompexpr'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V20 end.
'un--multiplicity'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V8 end.
'un--location'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V1 end.
'un--localVars'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V9 end.
'un--linearChecked'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V17 end.
'un--invertible'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V15 end.
'un--inferrable'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V7 end.
'un--fullname'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V2 end.
'un--flags'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V12 end.
'un--eraseArgs'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V4 end.
'un--definition'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V18 end.
'un--compexpr'(V0) -> case V0 of {'Core.Context.Context.MkGlobalDef', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22} -> V19 end.
