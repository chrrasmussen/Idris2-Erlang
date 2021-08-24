-module('Idris.Idris2.Compiler.Erlang.IR.AbstractFormat').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--getLiteralLine'/1,
  'un--getGuardLine'/1,
  'un--Line'/0
]).
'un--getLiteralLine'(V0) -> case V0 of {'Idris.Compiler.Erlang.IR.AbstractFormat.ALAtom', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); {'Idris.Compiler.Erlang.IR.AbstractFormat.ALChar', E2, E3} -> (fun (V3, V4) -> V3 end(E2, E3)); {'Idris.Compiler.Erlang.IR.AbstractFormat.ALFloat', E4, E5} -> (fun (V5, V6) -> V5 end(E4, E5)); {'Idris.Compiler.Erlang.IR.AbstractFormat.ALInteger', E6, E7} -> (fun (V7, V8) -> V7 end(E6, E7)); {'Idris.Compiler.Erlang.IR.AbstractFormat.ALCharlist', E8, E9} -> (fun (V9, V10) -> V9 end(E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--getGuardLine'(V0) -> case V0 of {'Idris.Compiler.Erlang.IR.AbstractFormat.AGLiteral', E0} -> (fun (V1) -> ('un--getLiteralLine'(V1)) end(E0)); {'Idris.Compiler.Erlang.IR.AbstractFormat.AGCons', E1, E2, E3} -> (fun (V2, V3, V4) -> V2 end(E1, E2, E3)); {'Idris.Compiler.Erlang.IR.AbstractFormat.AGFunCall', E4, E5, E6} -> (fun (V5, V6, V7) -> V5 end(E4, E5, E6)); {'Idris.Compiler.Erlang.IR.AbstractFormat.AGNil', E7} -> (fun (V8) -> V8 end(E7)); {'Idris.Compiler.Erlang.IR.AbstractFormat.AGOp', E8, E9, E10, E11} -> (fun (V9, V10, V11, V12) -> V9 end(E8, E9, E10, E11)); {'Idris.Compiler.Erlang.IR.AbstractFormat.AGTuple', E12, E13} -> (fun (V13, V14) -> V13 end(E12, E13)); {'Idris.Compiler.Erlang.IR.AbstractFormat.AGVar', E14, E15} -> (fun (V15, V16) -> V15 end(E14, E15)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--Line'() -> {'Idris.Int'}.
