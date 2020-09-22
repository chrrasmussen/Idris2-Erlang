-module('Idris.Idris2.Core.InitPrimitives').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--addPrimitives'/1,
  'un--addPrim'/3
]).
'un--addPrimitives'(V0) -> ('Idris.Idris2.Core.Core':'un--traverse_'('erased', 'erased', fun (V1) -> fun (V2) -> ('un--addPrim'(V0, V1, V2)) end end, ('Idris.Idris2.Core.Primitives':'un--allPrimitives'()))).
'un--addPrim'(V0, V1, V2) -> begin (V23 = ('Idris.Idris2.Core.Context':'un--addBuiltin'(case V1 of {'Idris.Core.Primitives.MkPrim', E0, E1, E2, E3} -> (fun (V3, V4, V5, V6) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V0, ('Idris.Idris2.Core.Primitives':'un--opName'('erased', case V1 of {'Idris.Core.Primitives.MkPrim', E4, E5, E6, E7} -> (fun (V7, V8, V9, V10) -> V8 end(E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)), case V1 of {'Idris.Core.Primitives.MkPrim', E8, E9, E10, E11} -> (fun (V11, V12, V13, V14) -> V13 end(E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, case V1 of {'Idris.Core.Primitives.MkPrim', E12, E13, E14, E15} -> (fun (V15, V16, V17, V18) -> V18 end(E12, E13, E14, E15)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, case V1 of {'Idris.Core.Primitives.MkPrim', E16, E17, E18, E19} -> (fun (V19, V20, V21, V22) -> V20 end(E16, E17, E18, E19)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V2))), case V23 of {'Idris.Prelude.Types.Left', E20} -> (fun (V24) -> {'Idris.Prelude.Types.Left', V24} end(E20)); {'Idris.Prelude.Types.Right', E21} -> (fun (V25) -> ('Idris.Idris2.Compiler.CompileExpr':'un--compileDef'(V0, ('Idris.Idris2.Core.Primitives':'un--opName'('erased', case V1 of {'Idris.Core.Primitives.MkPrim', E22, E23, E24, E25} -> (fun (V26, V27, V28, V29) -> V27 end(E22, E23, E24, E25)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)), V2)) end(E21)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.
