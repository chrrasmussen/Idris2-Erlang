-module('Idris.Idris2.Idris.REPL.Opts.REPLOpts').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.synHighlightOn'/1,
  'un--.source'/1,
  'un--.showTypes'/1,
  'un--.psResult'/1,
  'un--.mainfile'/1,
  'un--.literateStyle'/1,
  'un--.idemode'/1,
  'un--.gdResult'/1,
  'un--.extraCodegens'/1,
  'un--.evalTiming'/1,
  'un--.evalResultName'/1,
  'un--.evalMode'/1,
  'un--.errorLine'/1,
  'un--.editor'/1,
  'un--.currentElabSource'/1,
  'un--.consoleWidth'/1,
  'un--.color'/1,
  'un--synHighlightOn'/1,
  'un--source'/1,
  'un--showTypes'/1,
  'un--psResult'/1,
  'un--mainfile'/1,
  'un--literateStyle'/1,
  'un--idemode'/1,
  'un--gdResult'/1,
  'un--extraCodegens'/1,
  'un--evalTiming'/1,
  'un--evalResultName'/1,
  'un--evalMode'/1,
  'un--errorLine'/1,
  'un--editor'/1,
  'un--currentElabSource'/1,
  'un--consoleWidth'/1,
  'un--color'/1
]).
'un--.synHighlightOn'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V17 end.
'un--.source'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V6 end.
'un--.showTypes'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V1 end.
'un--.psResult'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V11 end.
'un--.mainfile'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V4 end.
'un--.literateStyle'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V5 end.
'un--.idemode'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V9 end.
'un--.gdResult'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V12 end.
'un--.extraCodegens'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V14 end.
'un--.evalTiming'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V3 end.
'un--.evalResultName'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V13 end.
'un--.evalMode'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V2 end.
'un--.errorLine'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V8 end.
'un--.editor'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V7 end.
'un--.currentElabSource'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V10 end.
'un--.consoleWidth'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V15 end.
'un--.color'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V16 end.
'un--synHighlightOn'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V17 end.
'un--source'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V6 end.
'un--showTypes'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V1 end.
'un--psResult'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V11 end.
'un--mainfile'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V4 end.
'un--literateStyle'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V5 end.
'un--idemode'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V9 end.
'un--gdResult'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V12 end.
'un--extraCodegens'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V14 end.
'un--evalTiming'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V3 end.
'un--evalResultName'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V13 end.
'un--evalMode'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V2 end.
'un--errorLine'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V8 end.
'un--editor'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V7 end.
'un--currentElabSource'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V10 end.
'un--consoleWidth'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V15 end.
'un--color'(V0) -> case V0 of {'Idris.REPL.Opts.MkREPLOpts', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17} -> V16 end.
