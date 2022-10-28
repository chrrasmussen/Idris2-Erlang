-module('Idris.Idris2.Compiler.Erlang.IR.AbstractFormat').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--natToBitUnit'/1,
  'un--getLiteralLine'/1,
  'un--getGuardLine'/1,
  'un--getBitUnit'/1,
  'un--getBitSignedness'/1,
  'un--getBitEndianness'/1,
  'un--fromInteger'/2,
  'un--bitUnitToNat'/1,
  'un--Line'/0
]).
'un--natToBitUnit'(V0) -> ((begin (V6 = fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V4, V5)) end end end end), fun (V7) -> fun (V8) -> ((((V6('erased'))('erased'))(V7))(V8)) end end end(fun (V1) -> V1 end))(('Idris.Idris2.Data.Fin':'un--natToFin'(('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'((V0 - 1))), 256)))).
'un--getLiteralLine'(V0) -> case V0 of {'Compiler.Erlang.IR.AbstractFormat.ALAtom', V1, V2} -> V1; {'Compiler.Erlang.IR.AbstractFormat.ALChar', V3, V4} -> V3; {'Compiler.Erlang.IR.AbstractFormat.ALFloat', V5, V6} -> V5; {'Compiler.Erlang.IR.AbstractFormat.ALInteger', V7, V8} -> V7; {'Compiler.Erlang.IR.AbstractFormat.ALCharlist', V9, V10} -> V9 end.
'un--getGuardLine'(V0) -> case V0 of {'Compiler.Erlang.IR.AbstractFormat.AGLiteral', V1} -> ('un--getLiteralLine'(V1)); {'Compiler.Erlang.IR.AbstractFormat.AGCons', V2, V3, V4} -> V2; {'Compiler.Erlang.IR.AbstractFormat.AGFunCall', V5, V6, V7} -> V5; {'Compiler.Erlang.IR.AbstractFormat.AGNil', V8} -> V8; {'Compiler.Erlang.IR.AbstractFormat.AGOp', V9, V10, V11, V12} -> V9; {'Compiler.Erlang.IR.AbstractFormat.AGTuple', V13, V14} -> V13; {'Compiler.Erlang.IR.AbstractFormat.AGVar', V15, V16} -> V15 end.
'un--getBitUnit'(V0) -> case V0 of {'Compiler.Erlang.IR.AbstractFormat.ABInteger', V1, V2, V3} -> {'Prelude.Types.Just', V3}; {'Compiler.Erlang.IR.AbstractFormat.ABFloat', V4, V5} -> {'Prelude.Types.Just', V5}; {'Compiler.Erlang.IR.AbstractFormat.ABBinary', V6} -> {'Prelude.Types.Just', V6}; {'Compiler.Erlang.IR.AbstractFormat.ABBitstring', V7} -> {'Prelude.Types.Just', V7}; _ -> {'Prelude.Types.Nothing'} end.
'un--getBitSignedness'(V0) -> case V0 of {'Compiler.Erlang.IR.AbstractFormat.ABInteger', V1, V2, V3} -> {'Prelude.Types.Just', V1}; _ -> {'Prelude.Types.Nothing'} end.
'un--getBitEndianness'(V0) -> case V0 of {'Compiler.Erlang.IR.AbstractFormat.ABInteger', V1, V2, V3} -> {'Prelude.Types.Just', V2}; {'Compiler.Erlang.IR.AbstractFormat.ABFloat', V4, V5} -> {'Prelude.Types.Just', V4}; {'Compiler.Erlang.IR.AbstractFormat.ABUtf16', V6} -> {'Prelude.Types.Just', V6}; {'Compiler.Erlang.IR.AbstractFormat.ABUtf32', V7} -> {'Prelude.Types.Just', V7}; _ -> {'Prelude.Types.Nothing'} end.
'un--fromInteger'(V0, V1) -> ('Idris.Idris2.Data.Maybe':'un--fromMaybe'(fun () -> 0 end, ('un--natToBitUnit'(('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V0)))))).
'un--bitUnitToNat'(V0) -> begin (V1 = V0), (V1 + 1) end.
'un--Line'() -> {'.Int'}.
