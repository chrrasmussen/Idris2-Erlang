-module('Idris.Idris2.Compiler.Erlang.Codegen.AbstractFormat.Helpers').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--showBitType'/1,
  'un--showBitSignedness'/1,
  'un--showBitEndianness'/1,
  'un--isAllowedToSpecifyBitUnit'/1
]).
'un--showBitType'(V0) -> case V0 of {'Compiler.Erlang.IR.AbstractFormat.ABInteger', V1, V2, V3} -> <<"integer"/utf8>>; {'Compiler.Erlang.IR.AbstractFormat.ABFloat', V4, V5} -> <<"float"/utf8>>; {'Compiler.Erlang.IR.AbstractFormat.ABBinary', V6} -> <<"binary"/utf8>>; {'Compiler.Erlang.IR.AbstractFormat.ABBitstring', V7} -> <<"bitstring"/utf8>>; {'Compiler.Erlang.IR.AbstractFormat.ABUtf8'} -> <<"utf8"/utf8>>; {'Compiler.Erlang.IR.AbstractFormat.ABUtf16', V8} -> <<"utf16"/utf8>>; {'Compiler.Erlang.IR.AbstractFormat.ABUtf32', V9} -> <<"utf32"/utf8>> end.
'un--showBitSignedness'(V0) -> case V0 of 0 -> <<"unsigned"/utf8>>; 1 -> <<"signed"/utf8>> end.
'un--showBitEndianness'(V0) -> case V0 of 0 -> <<"big"/utf8>>; 1 -> <<"little"/utf8>>; 2 -> <<"native"/utf8>> end.
'un--isAllowedToSpecifyBitUnit'(V0) -> case V0 of {'Compiler.Erlang.IR.AbstractFormat.ABSDefault'} -> 0; {'Compiler.Erlang.IR.AbstractFormat.ABSInteger', V1, V2} -> 1; {'Compiler.Erlang.IR.AbstractFormat.ABSVar', V3, V4} -> 1 end.
