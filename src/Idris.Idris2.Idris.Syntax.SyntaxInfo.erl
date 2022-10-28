-module('Idris.Idris2.Idris.Syntax.SyntaxInfo').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.usingImpl'/1,
  'un--.startExpr'/1,
  'un--.saveMod'/1,
  'un--.saveIFaces'/1,
  'un--.saveDocstrings'/1,
  'un--.prefixes'/1,
  'un--.modDocstrings'/1,
  'un--.modDocexports'/1,
  'un--.infixes'/1,
  'un--.ifaces'/1,
  'un--.holeNames'/1,
  'un--.defDocstrings'/1,
  'un--.bracketholes'/1,
  'un--usingImpl'/1,
  'un--startExpr'/1,
  'un--saveMod'/1,
  'un--saveIFaces'/1,
  'un--saveDocstrings'/1,
  'un--prefixes'/1,
  'un--modDocstrings'/1,
  'un--modDocexports'/1,
  'un--infixes'/1,
  'un--ifaces'/1,
  'un--holeNames'/1,
  'un--defDocstrings'/1,
  'un--bracketholes'/1
]).
'un--.usingImpl'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V11 end.
'un--.startExpr'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V12 end.
'un--.saveMod'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V3 end.
'un--.saveIFaces'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V6 end.
'un--.saveDocstrings'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V8 end.
'un--.prefixes'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V2 end.
'un--.modDocstrings'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V4 end.
'un--.modDocexports'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V5 end.
'un--.infixes'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V1 end.
'un--.ifaces'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V7 end.
'un--.holeNames'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V13 end.
'un--.defDocstrings'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V9 end.
'un--.bracketholes'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V10 end.
'un--usingImpl'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V11 end.
'un--startExpr'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V12 end.
'un--saveMod'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V3 end.
'un--saveIFaces'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V6 end.
'un--saveDocstrings'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V8 end.
'un--prefixes'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V2 end.
'un--modDocstrings'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V4 end.
'un--modDocexports'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V5 end.
'un--infixes'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V1 end.
'un--ifaces'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V7 end.
'un--holeNames'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V13 end.
'un--defDocstrings'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V9 end.
'un--bracketholes'(V0) -> case V0 of {'Idris.Syntax.MkSyntax', V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13} -> V10 end.
