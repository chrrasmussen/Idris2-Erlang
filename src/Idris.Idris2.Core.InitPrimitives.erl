-module('Idris.Idris2.Core.InitPrimitives').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--addPrimitives'/1,
  'un--addPrim'/2
]).
'un--addPrimitives'(V0) -> ('Idris.Idris2.Core.Core':'un--traverse_'(fun (V1) -> ('un--addPrim'(V0, V1)) end, ('Idris.Idris2.Core.Primitives':'un--allPrimitives'()))).
'un--addPrim'(V0, V1) -> begin (V22 = ('Idris.Idris2.Core.Context':'un--addBuiltin'(case V1 of {'Core.Primitives.MkPrim', V2, V3, V4, V5} -> V2 end, V0, ('Idris.Idris2.Core.Primitives':'un--opName'(case V1 of {'Core.Primitives.MkPrim', V6, V7, V8, V9} -> V7 end)), case V1 of {'Core.Primitives.MkPrim', V10, V11, V12, V13} -> V12 end, case V1 of {'Core.Primitives.MkPrim', V14, V15, V16, V17} -> V17 end, case V1 of {'Core.Primitives.MkPrim', V18, V19, V20, V21} -> V19 end))), fun (V23) -> begin (V24 = (V22(V23))), case V24 of {'Prelude.Types.Left', V25} -> {'Prelude.Types.Left', V25}; {'Prelude.Types.Right', V26} -> (begin (V31 = ('Idris.Idris2.Compiler.CompileExpr':'un--compileDef'(V0, ('Idris.Idris2.Core.Primitives':'un--opName'(case V1 of {'Core.Primitives.MkPrim', V27, V28, V29, V30} -> V28 end))))), V31 end(V23)) end end end end.
