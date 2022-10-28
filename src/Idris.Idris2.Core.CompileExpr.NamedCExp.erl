-module('Idris.Idris2.Core.CompileExpr.NamedCExp').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--getFC'/1
]).
'un--getFC'(V0) -> case V0 of {'Core.CompileExpr.NmLocal', V1, V2} -> V1; {'Core.CompileExpr.NmRef', V3, V4} -> V3; {'Core.CompileExpr.NmLam', V5, V6, V7} -> V5; {'Core.CompileExpr.NmLet', V8, V9, V10, V11} -> V8; {'Core.CompileExpr.NmApp', V12, V13, V14} -> V12; {'Core.CompileExpr.NmCon', V15, V16, V17, V18, V19} -> V15; {'Core.CompileExpr.NmOp', V20, V21, V22, V23} -> V21; {'Core.CompileExpr.NmExtPrim', V24, V25, V26} -> V24; {'Core.CompileExpr.NmForce', V27, V28, V29} -> V27; {'Core.CompileExpr.NmDelay', V30, V31, V32} -> V30; {'Core.CompileExpr.NmConCase', V33, V34, V35, V36} -> V33; {'Core.CompileExpr.NmConstCase', V37, V38, V39, V40} -> V37; {'Core.CompileExpr.NmPrimVal', V41, V42} -> V41; {'Core.CompileExpr.NmErased', V43} -> V43; {'Core.CompileExpr.NmCrash', V44, V45} -> V44 end.
