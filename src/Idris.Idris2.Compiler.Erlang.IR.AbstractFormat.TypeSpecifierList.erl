-module('Idris.Idris2.Compiler.Erlang.IR.AbstractFormat.TypeSpecifierList').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--unit'/1,
  'rf--type'/1,
  'rf--signedness'/1,
  'rf--endianness'/1,
  'un--unit'/1,
  'un--type'/1,
  'un--signedness'/1,
  'un--endianness'/1
]).
'rf--unit'(V0) -> case V0 of {'Idris.Compiler.Erlang.IR.AbstractFormat.MkTSL', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V4 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--type'(V0) -> case V0 of {'Idris.Compiler.Erlang.IR.AbstractFormat.MkTSL', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--signedness'(V0) -> case V0 of {'Idris.Compiler.Erlang.IR.AbstractFormat.MkTSL', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V1 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--endianness'(V0) -> case V0 of {'Idris.Compiler.Erlang.IR.AbstractFormat.MkTSL', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V2 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--unit'(V0) -> case V0 of {'Idris.Compiler.Erlang.IR.AbstractFormat.MkTSL', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V4 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--type'(V0) -> case V0 of {'Idris.Compiler.Erlang.IR.AbstractFormat.MkTSL', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--signedness'(V0) -> case V0 of {'Idris.Compiler.Erlang.IR.AbstractFormat.MkTSL', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V1 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--endianness'(V0) -> case V0 of {'Idris.Compiler.Erlang.IR.AbstractFormat.MkTSL', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> V2 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
