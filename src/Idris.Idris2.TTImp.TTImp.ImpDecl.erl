-module('Idris.Idris2.TTImp.TTImp.ImpDecl').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--getFC'/1
]).
'un--getFC'(V0) -> case V0 of {'TTImp.TTImp.IClaim', V1, V2, V3, V4, V5} -> V1; {'TTImp.TTImp.IData', V6, V7, V8, V9} -> V6; {'TTImp.TTImp.IDef', V10, V11, V12} -> V10; {'TTImp.TTImp.IParameters', V13, V14, V15} -> V13; {'TTImp.TTImp.IRecord', V16, V17, V18, V19, V20} -> V16; {'TTImp.TTImp.IFail', V21, V22, V23} -> V21; {'TTImp.TTImp.INamespace', V24, V25, V26} -> V24; {'TTImp.TTImp.ITransform', V27, V28, V29, V30} -> V27; {'TTImp.TTImp.IRunElabDecl', V31, V32} -> V31; {'TTImp.TTImp.IPragma', V33, V34, V35} -> V33; {'TTImp.TTImp.ILog', V36} -> {'Core.FC.EmptyFC'}; {'TTImp.TTImp.IBuiltin', V37, V38, V39} -> V37 end.
