-module('Idris.Idris2.Core.Options.Session').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.wholeProgram'/1,
  'un--.warningsAsErrors'/1,
  'un--.totalReq'/1,
  'un--.showShadowingWarning'/1,
  'un--.searchTimeout'/1,
  'un--.profile'/1,
  'un--.packages'/1,
  'un--.noprelude'/1,
  'un--.nobanner'/1,
  'un--.logTimings'/1,
  'un--.logLevel'/1,
  'un--.logErrorCount'/1,
  'un--.logEnabled'/1,
  'un--.incrementalCGs'/1,
  'un--.ignoreMissingPkg'/1,
  'un--.findipkg'/1,
  'un--.dumpvmcode'/1,
  'un--.dumplifted'/1,
  'un--.dumpcases'/1,
  'un--.dumpanf'/1,
  'un--.directives'/1,
  'un--.debugElabCheck'/1,
  'un--.codegen'/1,
  'un--.checkHashesInsteadOfModTime'/1,
  'un--.changedModules'/1,
  'un--.caseTreeHeuristics'/1,
  'un--wholeProgram'/1,
  'un--warningsAsErrors'/1,
  'un--totalReq'/1,
  'un--showShadowingWarning'/1,
  'un--searchTimeout'/1,
  'un--profile'/1,
  'un--packages'/1,
  'un--noprelude'/1,
  'un--nobanner'/1,
  'un--logTimings'/1,
  'un--logLevel'/1,
  'un--logErrorCount'/1,
  'un--logEnabled'/1,
  'un--incrementalCGs'/1,
  'un--ignoreMissingPkg'/1,
  'un--findipkg'/1,
  'un--dumpvmcode'/1,
  'un--dumplifted'/1,
  'un--dumpcases'/1,
  'un--dumpanf'/1,
  'un--directives'/1,
  'un--debugElabCheck'/1,
  'un--codegen'/1,
  'un--checkHashesInsteadOfModTime'/1,
  'un--changedModules'/1,
  'un--caseTreeHeuristics'/1
]).
'un--.wholeProgram'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V25 end.
'un--.warningsAsErrors'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V21 end.
'un--.totalReq'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V2 end.
'un--.showShadowingWarning'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V22 end.
'un--.searchTimeout'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V9 end.
'un--.profile'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V19 end.
'un--.packages'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V7 end.
'un--.noprelude'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V1 end.
'un--.nobanner'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V3 end.
'un--.logTimings'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V13 end.
'un--.logLevel'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V12 end.
'un--.logErrorCount'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V20 end.
'un--.logEnabled'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V11 end.
'un--.incrementalCGs'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V24 end.
'un--.ignoreMissingPkg'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V10 end.
'un--.findipkg'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V4 end.
'un--.dumpvmcode'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V18 end.
'un--.dumplifted'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V16 end.
'un--.dumpcases'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V15 end.
'un--.dumpanf'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V17 end.
'un--.directives'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V6 end.
'un--.debugElabCheck'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V14 end.
'un--.codegen'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V5 end.
'un--.checkHashesInsteadOfModTime'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V23 end.
'un--.changedModules'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V8 end.
'un--.caseTreeHeuristics'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V26 end.
'un--wholeProgram'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V25 end.
'un--warningsAsErrors'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V21 end.
'un--totalReq'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V2 end.
'un--showShadowingWarning'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V22 end.
'un--searchTimeout'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V9 end.
'un--profile'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V19 end.
'un--packages'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V7 end.
'un--noprelude'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V1 end.
'un--nobanner'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V3 end.
'un--logTimings'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V13 end.
'un--logLevel'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V12 end.
'un--logErrorCount'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V20 end.
'un--logEnabled'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V11 end.
'un--incrementalCGs'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V24 end.
'un--ignoreMissingPkg'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V10 end.
'un--findipkg'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V4 end.
'un--dumpvmcode'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V18 end.
'un--dumplifted'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V16 end.
'un--dumpcases'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V15 end.
'un--dumpanf'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V17 end.
'un--directives'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V6 end.
'un--debugElabCheck'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V14 end.
'un--codegen'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V5 end.
'un--checkHashesInsteadOfModTime'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V23 end.
'un--changedModules'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V8 end.
'un--caseTreeHeuristics'(V0) -> case V0 of {'Core.Options.MkSessionOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26} -> V26 end.
