-module('Idris.Idris2.Data.Primitives.Views.IntegerV').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--integerRec-959'/2,
  'case--divides-878'/3,
  'un--integerRec'/1,
  'un--divides'/2
]).
'case--integerRec-959'(V0, V1) -> case V1 of 1 -> {'Data.Primitives.Views.IntegerV.IntegerSucc', ('un--integerRec'((V0 + -1)))}; 0 -> {'Data.Primitives.Views.IntegerV.IntegerPred', ('un--integerRec'((V0 + 1)))} end.
'case--divides-878'(V0, V1, V2) -> case V2 of 1 -> (0 - ('Idris.Idris2.Prelude.Num':'dn--un--div_Integral_Integer'(V1, ('Idris.Idris2.Prelude.Num':'dn--un--abs_Abs_Integer'(V0))))); 0 -> ('Idris.Idris2.Prelude.Num':'dn--un--div_Integral_Integer'(V1, V0)) end.
'un--integerRec'(V0) -> case V0 of 0 -> {'Data.Primitives.Views.IntegerV.IntegerZ'}; _ -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord_Integer'(V0, 0)) of 1 -> {'Data.Primitives.Views.IntegerV.IntegerSucc', ('un--integerRec'((V0 + -1)))}; 0 -> {'Data.Primitives.Views.IntegerV.IntegerPred', ('un--integerRec'((V0 + 1)))} end end.
'un--divides'(V0, V1) -> case V1 of 0 -> {'Data.Primitives.Views.IntegerV.DivByZero'}; _ -> begin (V2 = case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Integer'(V1, 0)) of 1 -> (0 - ('Idris.Idris2.Prelude.Num':'dn--un--div_Integral_Integer'(V0, ('Idris.Idris2.Prelude.Num':'dn--un--abs_Abs_Integer'(V1))))); 0 -> ('Idris.Idris2.Prelude.Num':'dn--un--div_Integral_Integer'(V0, V1)) end), begin (V3 = ('Idris.Idris2.Prelude.Num':'dn--un--abs_Abs_Integer'((V0 - (V2 * V1))))), {'Data.Primitives.Views.IntegerV.DivBy', V2, V3, {'Builtin.Refl'}} end end end.
