-module('Idris.Idris2.Data.Primitives.Views.IntegerV').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--integerRec-332'/2,
  'case--divides-270'/3,
  'un--integerRec'/1,
  'un--divides'/2
]).
'case--integerRec-332'(V0, V1) -> case V1 of 0 -> {'Idris.Data.Primitives.Views.IntegerV.IntegerSucc', ('un--integerRec'(('Idris.Idris2.Prelude.Num':'dn--un---_Neg__Integer'(V0, 1))))}; 1 -> ('Idris.Idris2.Builtin':'un--believe_me'('erased', 'erased', {'Idris.Data.Primitives.Views.IntegerV.IntegerPred', ('Idris.Idris2.Builtin':'un--believe_me'('erased', 'erased', ('un--integerRec'((V0 + 1)))))})); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--divides-270'(V0, V1, V2) -> case V2 of 0 -> ('Idris.Idris2.Prelude.Num':'dn--un--negate_Neg__Integer'(('Idris.Idris2.Prelude.Num':'dn--un--div_Integral__Integer'(V1, ('Idris.Idris2.Prelude.Num':'dn--un--abs_Abs__Integer'(V0)))))); 1 -> ('Idris.Idris2.Prelude.Num':'dn--un--div_Integral__Integer'(V1, V0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--integerRec'(V0) -> case V0 of 0 -> {'Idris.Data.Primitives.Views.IntegerV.IntegerZ'}; _ -> ('case--integerRec-332'(V0, ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord__Integer'(V0, 0)))) end.
'un--divides'(V0, V1) -> case V1 of 0 -> {'Idris.Data.Primitives.Views.IntegerV.DivByZero'}; _ -> begin (V2 = ('case--divides-270'(V1, V0, ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord__Integer'(V1, 0))))), begin (V3 = ('Idris.Idris2.Prelude.Num':'dn--un--abs_Abs__Integer'(('Idris.Idris2.Prelude.Num':'dn--un---_Neg__Integer'(V0, (V2 * V1)))))), ('Idris.Idris2.Builtin':'un--believe_me'('erased', 'erased', {'Idris.Data.Primitives.Views.IntegerV.DivBy', V2, V3, ('Idris.Idris2.Builtin':'un--believe_me'('erased', 'erased', {'Idris.Builtin.Refl'}))})) end end end.
