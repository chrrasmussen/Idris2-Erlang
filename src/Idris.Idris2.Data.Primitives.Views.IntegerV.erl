-module('Idris.Idris2.Data.Primitives.Views.IntegerV').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--integerRec-466'/2,
  'case--divides-406'/3,
  'un--integerRec'/1,
  'un--divides'/2
]).
'case--integerRec-466'(V0, V1) -> case V1 of 1 -> {'Idris.Data.Primitives.Views.IntegerV.IntegerSucc', ('un--integerRec'((-1 + V0)))}; 0 -> ('Idris.Idris2.Builtin':'un--believe_me'({'Idris.Data.Primitives.Views.IntegerV.IntegerPred', ('Idris.Idris2.Builtin':'un--believe_me'(('un--integerRec'((1 + V0)))))})); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--divides-406'(V0, V1, V2) -> case V2 of 1 -> (0 - ('Idris.Idris2.Prelude.Num':'dn--un--div_Integral_Integer'(V1, ('Idris.Idris2.Prelude.Num':'dn--un--abs_Abs_Integer'(V0))))); 0 -> ('Idris.Idris2.Prelude.Num':'dn--un--div_Integral_Integer'(V1, V0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--integerRec'(V0) -> case V0 of 0 -> {'Idris.Data.Primitives.Views.IntegerV.IntegerZ'}; _ -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord_Integer'(V0, 0)) of 1 -> {'Idris.Data.Primitives.Views.IntegerV.IntegerSucc', ('un--integerRec'((-1 + V0)))}; 0 -> ('Idris.Idris2.Builtin':'un--believe_me'({'Idris.Data.Primitives.Views.IntegerV.IntegerPred', ('Idris.Idris2.Builtin':'un--believe_me'(('un--integerRec'((1 + V0)))))})); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.
'un--divides'(V0, V1) -> case V1 of 0 -> {'Idris.Data.Primitives.Views.IntegerV.DivByZero'}; _ -> begin (V2 = case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Integer'(V1, 0)) of 1 -> (0 - ('Idris.Idris2.Prelude.Num':'dn--un--div_Integral_Integer'(V0, ('Idris.Idris2.Prelude.Num':'dn--un--abs_Abs_Integer'(V1))))); 0 -> ('Idris.Idris2.Prelude.Num':'dn--un--div_Integral_Integer'(V0, V1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end), begin (V3 = ('Idris.Idris2.Prelude.Num':'dn--un--abs_Abs_Integer'((V0 - (V2 * V1))))), ('Idris.Idris2.Builtin':'un--believe_me'({'Idris.Data.Primitives.Views.IntegerV.DivBy', V2, V3, ('Idris.Idris2.Builtin':'un--believe_me'(0))})) end end end.
