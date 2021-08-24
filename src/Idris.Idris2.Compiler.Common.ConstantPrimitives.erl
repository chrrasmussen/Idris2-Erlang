-module('Idris.Idris2.Compiler.Common.ConstantPrimitives').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--stringToInt'/1,
  'rf--intToString'/1,
  'rf--intToInt'/1,
  'rf--intToDouble'/1,
  'rf--intToChar'/1,
  'rf--doubleToInt'/1,
  'rf--charToInt'/1,
  'un--stringToInt'/1,
  'un--intToString'/1,
  'un--intToInt'/1,
  'un--intToDouble'/1,
  'un--intToChar'/1,
  'un--doubleToInt'/1,
  'un--charToInt'/1
]).
'rf--stringToInt'(V0) -> case V0 of {'Idris.Compiler.Common.MkConstantPrimitives', E0, E1, E2, E3, E4, E5, E6} -> (fun (V1, V2, V3, V4, V5, V6, V7) -> V3 end(E0, E1, E2, E3, E4, E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--intToString'(V0) -> case V0 of {'Idris.Compiler.Common.MkConstantPrimitives', E0, E1, E2, E3, E4, E5, E6} -> (fun (V1, V2, V3, V4, V5, V6, V7) -> V4 end(E0, E1, E2, E3, E4, E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--intToInt'(V0) -> case V0 of {'Idris.Compiler.Common.MkConstantPrimitives', E0, E1, E2, E3, E4, E5, E6} -> (fun (V1, V2, V3, V4, V5, V6, V7) -> V7 end(E0, E1, E2, E3, E4, E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--intToDouble'(V0) -> case V0 of {'Idris.Compiler.Common.MkConstantPrimitives', E0, E1, E2, E3, E4, E5, E6} -> (fun (V1, V2, V3, V4, V5, V6, V7) -> V6 end(E0, E1, E2, E3, E4, E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--intToChar'(V0) -> case V0 of {'Idris.Compiler.Common.MkConstantPrimitives', E0, E1, E2, E3, E4, E5, E6} -> (fun (V1, V2, V3, V4, V5, V6, V7) -> V2 end(E0, E1, E2, E3, E4, E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--doubleToInt'(V0) -> case V0 of {'Idris.Compiler.Common.MkConstantPrimitives', E0, E1, E2, E3, E4, E5, E6} -> (fun (V1, V2, V3, V4, V5, V6, V7) -> V5 end(E0, E1, E2, E3, E4, E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--charToInt'(V0) -> case V0 of {'Idris.Compiler.Common.MkConstantPrimitives', E0, E1, E2, E3, E4, E5, E6} -> (fun (V1, V2, V3, V4, V5, V6, V7) -> V1 end(E0, E1, E2, E3, E4, E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--stringToInt'(V0) -> case V0 of {'Idris.Compiler.Common.MkConstantPrimitives', E0, E1, E2, E3, E4, E5, E6} -> (fun (V1, V2, V3, V4, V5, V6, V7) -> V3 end(E0, E1, E2, E3, E4, E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--intToString'(V0) -> case V0 of {'Idris.Compiler.Common.MkConstantPrimitives', E0, E1, E2, E3, E4, E5, E6} -> (fun (V1, V2, V3, V4, V5, V6, V7) -> V4 end(E0, E1, E2, E3, E4, E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--intToInt'(V0) -> case V0 of {'Idris.Compiler.Common.MkConstantPrimitives', E0, E1, E2, E3, E4, E5, E6} -> (fun (V1, V2, V3, V4, V5, V6, V7) -> V7 end(E0, E1, E2, E3, E4, E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--intToDouble'(V0) -> case V0 of {'Idris.Compiler.Common.MkConstantPrimitives', E0, E1, E2, E3, E4, E5, E6} -> (fun (V1, V2, V3, V4, V5, V6, V7) -> V6 end(E0, E1, E2, E3, E4, E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--intToChar'(V0) -> case V0 of {'Idris.Compiler.Common.MkConstantPrimitives', E0, E1, E2, E3, E4, E5, E6} -> (fun (V1, V2, V3, V4, V5, V6, V7) -> V2 end(E0, E1, E2, E3, E4, E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--doubleToInt'(V0) -> case V0 of {'Idris.Compiler.Common.MkConstantPrimitives', E0, E1, E2, E3, E4, E5, E6} -> (fun (V1, V2, V3, V4, V5, V6, V7) -> V5 end(E0, E1, E2, E3, E4, E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--charToInt'(V0) -> case V0 of {'Idris.Compiler.Common.MkConstantPrimitives', E0, E1, E2, E3, E4, E5, E6} -> (fun (V1, V2, V3, V4, V5, V6, V7) -> V1 end(E0, E1, E2, E3, E4, E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
