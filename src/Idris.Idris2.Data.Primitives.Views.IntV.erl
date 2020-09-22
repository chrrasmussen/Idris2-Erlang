-module('Idris.Idris2.Data.Primitives.Views.IntV').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--intRec-454'/2,
  'case--divides-392'/3,
  'un--intRec'/1,
  'un--divides'/2
]).
'case--intRec-454'(V0, V1) -> case V1 of 0 -> {'Idris.Data.Primitives.Views.IntV.IntSucc', ('un--intRec'(('Idris.Idris2.Prelude.Num':'dn--un---_Neg__Int'(V0, 1))))}; 1 -> ('Idris.Idris2.Builtin':'un--believe_me'('erased', 'erased', {'Idris.Data.Primitives.Views.IntV.IntPred', ('Idris.Idris2.Builtin':'un--believe_me'('erased', 'erased', ('un--intRec'(((V0 + 1) rem 9223372036854775808)))))})); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--divides-392'(V0, V1, V2) -> case V2 of 0 -> ('Idris.Idris2.Prelude.Num':'dn--un--negate_Neg__Int'(('Idris.Idris2.Prelude.Num':'dn--un--div_Integral__Int'(V1, ('Idris.Idris2.Prelude.Num':'dn--un--abs_Abs__Int'(V0)))))); 1 -> ('Idris.Idris2.Prelude.Num':'dn--un--div_Integral__Int'(V1, V0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--intRec'(V0) -> case V0 of 0 -> {'Idris.Data.Primitives.Views.IntV.IntZ'}; _ -> ('case--intRec-454'(V0, ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord__Int'(V0, 0)))) end.
'un--divides'(V0, V1) -> case V1 of 0 -> {'Idris.Data.Primitives.Views.IntV.DivByZero'}; _ -> begin (V2 = ('case--divides-392'(V1, V0, ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord__Int'(V1, 0))))), begin (V3 = ('Idris.Idris2.Prelude.Num':'dn--un--abs_Abs__Int'(('Idris.Idris2.Prelude.Num':'dn--un---_Neg__Int'(V0, ((V2 * V1) rem 9223372036854775808)))))), ('Idris.Idris2.Builtin':'un--believe_me'('erased', 'erased', {'Idris.Data.Primitives.Views.IntV.DivBy', V2, V3, ('Idris.Idris2.Builtin':'un--believe_me'('erased', 'erased', {'Idris.Builtin.Refl'}))})) end end end.
