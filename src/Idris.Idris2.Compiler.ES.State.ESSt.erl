-module('Idris.Idris2.Compiler.ES.State.ESSt').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.refs'/1,
  'un--.ref'/1,
  'un--.preamble'/1,
  'un--.noMangleMap'/1,
  'un--.mode'/1,
  'un--.locals'/1,
  'un--.loc'/1,
  'un--.isFun'/1,
  'un--.isArg'/1,
  'un--.ccTypes'/1,
  'un--refs'/1,
  'un--ref'/1,
  'un--preamble'/1,
  'un--noMangleMap'/1,
  'un--mode'/1,
  'un--locals'/1,
  'un--loc'/1,
  'un--isFun'/1,
  'un--isArg'/1,
  'un--ccTypes'/1
]).
'un--.refs'(V0) -> case V0 of {'Compiler.ES.State.MkESSt', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V7 end.
'un--.ref'(V0) -> case V0 of {'Compiler.ES.State.MkESSt', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V5 end.
'un--.preamble'(V0) -> case V0 of {'Compiler.ES.State.MkESSt', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V8 end.
'un--.noMangleMap'(V0) -> case V0 of {'Compiler.ES.State.MkESSt', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V10 end.
'un--.mode'(V0) -> case V0 of {'Compiler.ES.State.MkESSt', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V1 end.
'un--.locals'(V0) -> case V0 of {'Compiler.ES.State.MkESSt', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V6 end.
'un--.loc'(V0) -> case V0 of {'Compiler.ES.State.MkESSt', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V4 end.
'un--.isFun'(V0) -> case V0 of {'Compiler.ES.State.MkESSt', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V3 end.
'un--.isArg'(V0) -> case V0 of {'Compiler.ES.State.MkESSt', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V2 end.
'un--.ccTypes'(V0) -> case V0 of {'Compiler.ES.State.MkESSt', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V9 end.
'un--refs'(V0) -> case V0 of {'Compiler.ES.State.MkESSt', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V7 end.
'un--ref'(V0) -> case V0 of {'Compiler.ES.State.MkESSt', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V5 end.
'un--preamble'(V0) -> case V0 of {'Compiler.ES.State.MkESSt', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V8 end.
'un--noMangleMap'(V0) -> case V0 of {'Compiler.ES.State.MkESSt', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V10 end.
'un--mode'(V0) -> case V0 of {'Compiler.ES.State.MkESSt', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V1 end.
'un--locals'(V0) -> case V0 of {'Compiler.ES.State.MkESSt', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V6 end.
'un--loc'(V0) -> case V0 of {'Compiler.ES.State.MkESSt', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V4 end.
'un--isFun'(V0) -> case V0 of {'Compiler.ES.State.MkESSt', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V3 end.
'un--isArg'(V0) -> case V0 of {'Compiler.ES.State.MkESSt', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V2 end.
'un--ccTypes'(V0) -> case V0 of {'Compiler.ES.State.MkESSt', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10} -> V9 end.
