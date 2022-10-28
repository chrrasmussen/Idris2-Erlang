-module('Idris.Idris2.TTImp.Elab.Check.EState').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.unambiguousNames'/1,
  'un--.toBind'/1,
  'un--.subEnv'/1,
  'un--.saveHoles'/1,
  'un--.polyMetavars'/1,
  'un--.outerEnv'/1,
  'un--.outer'/1,
  'un--.linearUsed'/1,
  'un--.lhsPatVars'/1,
  'un--.delayDepth'/1,
  'un--.defining'/1,
  'un--.boundNames'/1,
  'un--.bindIfUnsolved'/1,
  'un--.allPatVars'/1,
  'un--unambiguousNames'/1,
  'un--toBind'/1,
  'un--subEnv'/1,
  'un--saveHoles'/1,
  'un--polyMetavars'/1,
  'un--outerEnv'/1,
  'un--outer'/1,
  'un--linearUsed'/1,
  'un--lhsPatVars'/1,
  'un--delayDepth'/1,
  'un--defining'/1,
  'un--boundNames'/1,
  'un--bindIfUnsolved'/1,
  'un--allPatVars'/1
]).
'un--.unambiguousNames'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V14 end.
'un--.toBind'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V6 end.
'un--.subEnv'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V4 end.
'un--.saveHoles'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V13 end.
'un--.polyMetavars'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V10 end.
'un--.outerEnv'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V3 end.
'un--.outer'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V1 end.
'un--.linearUsed'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V12 end.
'un--.lhsPatVars'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V8 end.
'un--.delayDepth'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V11 end.
'un--.defining'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V2 end.
'un--.boundNames'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V5 end.
'un--.bindIfUnsolved'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V7 end.
'un--.allPatVars'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V9 end.
'un--unambiguousNames'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V14 end.
'un--toBind'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V6 end.
'un--subEnv'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V4 end.
'un--saveHoles'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V13 end.
'un--polyMetavars'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V10 end.
'un--outerEnv'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V3 end.
'un--outer'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V1 end.
'un--linearUsed'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V12 end.
'un--lhsPatVars'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V8 end.
'un--delayDepth'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V11 end.
'un--defining'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V2 end.
'un--boundNames'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V5 end.
'un--bindIfUnsolved'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V7 end.
'un--allPatVars'(V0) -> case V0 of {'TTImp.Elab.Check.MkEState', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14} -> V9 end.
