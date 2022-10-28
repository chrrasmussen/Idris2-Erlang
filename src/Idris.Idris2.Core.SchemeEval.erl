-module('Idris.Idris2.Core.SchemeEval').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--snormaliseMode'/5,
  'un--snormaliseAll'/4,
  'un--snormalise'/4,
  'un--snfAll'/4,
  'un--snf'/4
]).
'un--snormaliseMode'(V0, V1, V2, V3, V4) -> begin (V10 = begin (V5 = V0), fun (V6) -> begin (V9 = (begin (V7 = V5), fun (V8) -> ('erlang':'get'(V7)) end end(V6))), {'Prelude.Types.Right', V9} end end end), fun (V11) -> begin (V12 = (V10(V11))), case V12 of {'Prelude.Types.Left', V13} -> {'Prelude.Types.Left', V13}; {'Prelude.Types.Right', V14} -> (begin (V27 = begin (V15 = ('Idris.Idris2.Core.SchemeEval.Compile':'un--initialiseSchemeEval'(V0))), fun (V16) -> begin (V17 = (V15(V16))), case V17 of {'Prelude.Types.Left', V18} -> {'Prelude.Types.Left', V18}; {'Prelude.Types.Right', V19} -> (begin (V26 = case V19 of 1 -> begin (V20 = ('Idris.Idris2.Core.SchemeEval.Evaluate':'un--seval'(V0, V2, V3, V4))), fun (V21) -> begin (V22 = (V20(V21))), case V22 of {'Prelude.Types.Left', V23} -> {'Prelude.Types.Left', V23}; {'Prelude.Types.Right', V24} -> (begin (V25 = ('Idris.Idris2.Core.SchemeEval.Evaluate':'un--quoteObj'(V0, V24))), V25 end(V21)) end end end end; _ -> ('Idris.Idris2.Core.Normalise':'un--normalise'(V0, V1, V14, V3, V4)) end), V26 end(V16)) end end end end), V27 end(V11)) end end end end.
'un--snormaliseAll'(V0, V1, V2, V3) -> ('un--snormaliseMode'(V0, V1, 0, V2, V3)).
'un--snormalise'(V0, V1, V2, V3) -> ('un--snormaliseMode'(V0, V1, 1, V2, V3)).
'un--snfAll'(V0, V1, V2, V3) -> begin (V4 = ('Idris.Idris2.Core.SchemeEval.Compile':'un--initialiseSchemeEval'(V0))), fun (V5) -> begin (V6 = (V4(V5))), case V6 of {'Prelude.Types.Left', V7} -> {'Prelude.Types.Left', V7}; {'Prelude.Types.Right', V8} -> (begin (V16 = case V8 of 1 -> begin (V9 = ('Idris.Idris2.Core.SchemeEval.Evaluate':'un--seval'(V0, 0, V2, V3))), fun (V10) -> begin (V11 = (V9(V10))), case V11 of {'Prelude.Types.Left', V12} -> {'Prelude.Types.Left', V12}; {'Prelude.Types.Right', V13} -> (begin (V14 = ('Idris.Idris2.Core.SchemeEval.Evaluate':'un--toSNF'(V0, V13))), V14 end(V10)) end end end end; _ -> fun (V15) -> ('Idris.Idris2.Core.Core':'dn--un--throw_Catchable_Core_Error'({'Core.Core.InternalError', <<"Scheme evaluator not available"/utf8>>}, V15)) end end), V16 end(V5)) end end end end.
'un--snf'(V0, V1, V2, V3) -> begin (V4 = ('Idris.Idris2.Core.SchemeEval.Compile':'un--initialiseSchemeEval'(V0))), fun (V5) -> begin (V6 = (V4(V5))), case V6 of {'Prelude.Types.Left', V7} -> {'Prelude.Types.Left', V7}; {'Prelude.Types.Right', V8} -> (begin (V16 = case V8 of 1 -> begin (V9 = ('Idris.Idris2.Core.SchemeEval.Evaluate':'un--seval'(V0, 1, V2, V3))), fun (V10) -> begin (V11 = (V9(V10))), case V11 of {'Prelude.Types.Left', V12} -> {'Prelude.Types.Left', V12}; {'Prelude.Types.Right', V13} -> (begin (V14 = ('Idris.Idris2.Core.SchemeEval.Evaluate':'un--toSNF'(V0, V13))), V14 end(V10)) end end end end; _ -> fun (V15) -> ('Idris.Idris2.Core.Core':'dn--un--throw_Catchable_Core_Error'({'Core.Core.InternalError', <<"Scheme evaluator not available"/utf8>>}, V15)) end end), V16 end(V5)) end end end end.
