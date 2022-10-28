-module('Idris.Idris2.Core.Context.Defs').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.warnings'/1,
  'un--.userHoles'/1,
  'un--.typeHints'/1,
  'un--.transforms'/1,
  'un--.toSave'/1,
  'un--.toIR'/1,
  'un--.toCompileCase'/1,
  'un--.timings'/1,
  'un--.timer'/1,
  'un--.schemeEvalLoaded'/1,
  'un--.saveTypeHints'/1,
  'un--.saveTransforms'/1,
  'un--.saveAutoHints'/1,
  'un--.peFailures'/1,
  'un--.options'/1,
  'un--.openHints'/1,
  'un--.nextTag'/1,
  'un--.nestedNS'/1,
  'un--.namedirectives'/1,
  'un--.mutData'/1,
  'un--.localHints'/1,
  'un--.incData'/1,
  'un--.imported'/1,
  'un--.importHashes'/1,
  'un--.ifaceHash'/1,
  'un--.gamma'/1,
  'un--.foreignExports'/1,
  'un--.currentNS'/1,
  'un--.cgdirectives'/1,
  'un--.autoHints'/1,
  'un--.allIncData'/1,
  'un--.allImported'/1,
  'un--warnings'/1,
  'un--userHoles'/1,
  'un--typeHints'/1,
  'un--transforms'/1,
  'un--toSave'/1,
  'un--toIR'/1,
  'un--toCompileCase'/1,
  'un--timings'/1,
  'un--timer'/1,
  'un--schemeEvalLoaded'/1,
  'un--saveTypeHints'/1,
  'un--saveTransforms'/1,
  'un--saveAutoHints'/1,
  'un--peFailures'/1,
  'un--options'/1,
  'un--openHints'/1,
  'un--nextTag'/1,
  'un--nestedNS'/1,
  'un--namedirectives'/1,
  'un--mutData'/1,
  'un--localHints'/1,
  'un--incData'/1,
  'un--imported'/1,
  'un--importHashes'/1,
  'un--ifaceHash'/1,
  'un--gamma'/1,
  'un--foreignExports'/1,
  'un--currentNS'/1,
  'un--cgdirectives'/1,
  'un--autoHints'/1,
  'un--allIncData'/1,
  'un--allImported'/1
]).
'un--.warnings'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V30 end.
'un--.userHoles'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V26 end.
'un--.typeHints'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V8 end.
'un--.transforms'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V14 end.
'un--.toSave'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V6 end.
'un--.toIR'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V25 end.
'un--.toCompileCase'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V22 end.
'un--.timings'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V28 end.
'un--.timer'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V29 end.
'un--.schemeEvalLoaded'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V31 end.
'un--.saveTypeHints'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V12 end.
'un--.saveTransforms'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V15 end.
'un--.saveAutoHints'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V13 end.
'un--.peFailures'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V27 end.
'un--.options'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V5 end.
'un--.openHints'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V10 end.
'un--.nextTag'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V7 end.
'un--.nestedNS'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V4 end.
'un--.namedirectives'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V16 end.
'un--.mutData'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V2 end.
'un--.localHints'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V11 end.
'un--.incData'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V23 end.
'un--.imported'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V19 end.
'un--.importHashes'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V18 end.
'un--.ifaceHash'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V17 end.
'un--.gamma'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V1 end.
'un--.foreignExports'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V32 end.
'un--.currentNS'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V3 end.
'un--.cgdirectives'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V21 end.
'un--.autoHints'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V9 end.
'un--.allIncData'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V24 end.
'un--.allImported'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V20 end.
'un--warnings'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V30 end.
'un--userHoles'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V26 end.
'un--typeHints'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V8 end.
'un--transforms'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V14 end.
'un--toSave'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V6 end.
'un--toIR'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V25 end.
'un--toCompileCase'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V22 end.
'un--timings'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V28 end.
'un--timer'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V29 end.
'un--schemeEvalLoaded'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V31 end.
'un--saveTypeHints'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V12 end.
'un--saveTransforms'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V15 end.
'un--saveAutoHints'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V13 end.
'un--peFailures'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V27 end.
'un--options'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V5 end.
'un--openHints'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V10 end.
'un--nextTag'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V7 end.
'un--nestedNS'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V4 end.
'un--namedirectives'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V16 end.
'un--mutData'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V2 end.
'un--localHints'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V11 end.
'un--incData'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V23 end.
'un--imported'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V19 end.
'un--importHashes'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V18 end.
'un--ifaceHash'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V17 end.
'un--gamma'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V1 end.
'un--foreignExports'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V32 end.
'un--currentNS'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V3 end.
'un--cgdirectives'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V21 end.
'un--autoHints'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V9 end.
'un--allIncData'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V24 end.
'un--allImported'(V0) -> case V0 of {'Core.Context.MkDefs', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32} -> V20 end.
