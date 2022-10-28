-module('Idris.Idris2.Compiler.Common.ConstantPrimitives').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.stringToInt'/1,
  'un--.intToString'/1,
  'un--.intToInt'/1,
  'un--.intToDouble'/1,
  'un--.intToChar'/1,
  'un--.doubleToInt'/1,
  'un--.charToInt'/1,
  'un--stringToInt'/1,
  'un--intToString'/1,
  'un--intToInt'/1,
  'un--intToDouble'/1,
  'un--intToChar'/1,
  'un--doubleToInt'/1,
  'un--charToInt'/1
]).
'un--.stringToInt'(V0) -> case V0 of {'Compiler.Common.MkConstantPrimitives', V1, V2, V3, V4, V5, V6, V7} -> V3 end.
'un--.intToString'(V0) -> case V0 of {'Compiler.Common.MkConstantPrimitives', V1, V2, V3, V4, V5, V6, V7} -> V4 end.
'un--.intToInt'(V0) -> case V0 of {'Compiler.Common.MkConstantPrimitives', V1, V2, V3, V4, V5, V6, V7} -> V7 end.
'un--.intToDouble'(V0) -> case V0 of {'Compiler.Common.MkConstantPrimitives', V1, V2, V3, V4, V5, V6, V7} -> V6 end.
'un--.intToChar'(V0) -> case V0 of {'Compiler.Common.MkConstantPrimitives', V1, V2, V3, V4, V5, V6, V7} -> V2 end.
'un--.doubleToInt'(V0) -> case V0 of {'Compiler.Common.MkConstantPrimitives', V1, V2, V3, V4, V5, V6, V7} -> V5 end.
'un--.charToInt'(V0) -> case V0 of {'Compiler.Common.MkConstantPrimitives', V1, V2, V3, V4, V5, V6, V7} -> V1 end.
'un--stringToInt'(V0) -> case V0 of {'Compiler.Common.MkConstantPrimitives', V1, V2, V3, V4, V5, V6, V7} -> V3 end.
'un--intToString'(V0) -> case V0 of {'Compiler.Common.MkConstantPrimitives', V1, V2, V3, V4, V5, V6, V7} -> V4 end.
'un--intToInt'(V0) -> case V0 of {'Compiler.Common.MkConstantPrimitives', V1, V2, V3, V4, V5, V6, V7} -> V7 end.
'un--intToDouble'(V0) -> case V0 of {'Compiler.Common.MkConstantPrimitives', V1, V2, V3, V4, V5, V6, V7} -> V6 end.
'un--intToChar'(V0) -> case V0 of {'Compiler.Common.MkConstantPrimitives', V1, V2, V3, V4, V5, V6, V7} -> V2 end.
'un--doubleToInt'(V0) -> case V0 of {'Compiler.Common.MkConstantPrimitives', V1, V2, V3, V4, V5, V6, V7} -> V5 end.
'un--charToInt'(V0) -> case V0 of {'Compiler.Common.MkConstantPrimitives', V1, V2, V3, V4, V5, V6, V7} -> V1 end.
