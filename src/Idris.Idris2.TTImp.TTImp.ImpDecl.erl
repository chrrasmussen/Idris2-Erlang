-module('Idris.Idris2.TTImp.TTImp.ImpDecl').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--getFC'/1
]).
'un--getFC'(V0) -> case V0 of {'Idris.TTImp.TTImp.IClaim', E0, E1, E2, E3, E4} -> (fun (V1, V2, V3, V4, V5) -> V1 end(E0, E1, E2, E3, E4)); {'Idris.TTImp.TTImp.IData', E5, E6, E7} -> (fun (V6, V7, V8) -> V6 end(E5, E6, E7)); {'Idris.TTImp.TTImp.IDef', E8, E9, E10} -> (fun (V9, V10, V11) -> V9 end(E8, E9, E10)); {'Idris.TTImp.TTImp.IParameters', E11, E12, E13} -> (fun (V12, V13, V14) -> V12 end(E11, E12, E13)); {'Idris.TTImp.TTImp.IRecord', E14, E15, E16, E17} -> (fun (V15, V16, V17, V18) -> V15 end(E14, E15, E16, E17)); {'Idris.TTImp.TTImp.INamespace', E18, E19, E20} -> (fun (V19, V20, V21) -> V19 end(E18, E19, E20)); {'Idris.TTImp.TTImp.ITransform', E21, E22, E23, E24} -> (fun (V22, V23, V24, V25) -> V22 end(E21, E22, E23, E24)); {'Idris.TTImp.TTImp.IRunElabDecl', E25, E26} -> (fun (V26, V27) -> V26 end(E25, E26)); {'Idris.TTImp.TTImp.IPragma', E27, E28} -> (fun (V28, V29) -> {'Idris.Core.FC.EmptyFC'} end(E27, E28)); {'Idris.TTImp.TTImp.ILog', E29} -> (fun (V30) -> {'Idris.Core.FC.EmptyFC'} end(E29)); {'Idris.TTImp.TTImp.IBuiltin', E30, E31, E32} -> (fun (V31, V32, V33) -> V31 end(E30, E31, E32)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
