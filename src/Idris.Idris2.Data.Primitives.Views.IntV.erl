-module('Idris.Idris2.Data.Primitives.Views.IntV').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--intRec-588'/2,
  'case--divides-528'/3,
  'un--intRec'/1,
  'un--divides'/2
]).
'case--intRec-588'(V0, V1) -> case V1 of 1 -> {'Idris.Data.Primitives.Views.IntV.IntSucc', ('un--intRec'(((-1 + V0) rem 9223372036854775808)))}; 0 -> ('Idris.Idris2.Builtin':'un--believe_me'({'Idris.Data.Primitives.Views.IntV.IntPred', ('Idris.Idris2.Builtin':'un--believe_me'(('un--intRec'(((1 + V0) rem 9223372036854775808)))))})); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--divides-528'(V0, V1, V2) -> case V2 of 1 -> ((0 - ('Idris.Idris2.Prelude.Num':'dn--un--div_Integral_Int'(V1, ('Idris.Idris2.Prelude.Num':'dn--un--abs_Abs_Int'(V0))))) rem 9223372036854775808); 0 -> ('Idris.Idris2.Prelude.Num':'dn--un--div_Integral_Int'(V1, V0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--intRec'(V0) -> case V0 of 0 -> {'Idris.Data.Primitives.Views.IntV.IntZ'}; _ -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord_Int'(V0, 0)) of 1 -> {'Idris.Data.Primitives.Views.IntV.IntSucc', ('un--intRec'(((-1 + V0) rem 9223372036854775808)))}; 0 -> ('Idris.Idris2.Builtin':'un--believe_me'({'Idris.Data.Primitives.Views.IntV.IntPred', ('Idris.Idris2.Builtin':'un--believe_me'(('un--intRec'(((1 + V0) rem 9223372036854775808)))))})); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.
'un--divides'(V0, V1) -> case V1 of 0 -> {'Idris.Data.Primitives.Views.IntV.DivByZero'}; _ -> begin (V2 = case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Int'(V1, 0)) of 1 -> ((0 - ('Idris.Idris2.Prelude.Num':'dn--un--div_Integral_Int'(V0, ('Idris.Idris2.Prelude.Num':'dn--un--abs_Abs_Int'(V1))))) rem 9223372036854775808); 0 -> ('Idris.Idris2.Prelude.Num':'dn--un--div_Integral_Int'(V0, V1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end), begin (V3 = ('Idris.Idris2.Prelude.Num':'dn--un--abs_Abs_Int'(((V0 - ((V2 * V1) rem 9223372036854775808)) rem 9223372036854775808)))), ('Idris.Idris2.Builtin':'un--believe_me'({'Idris.Data.Primitives.Views.IntV.DivBy', V2, V3, ('Idris.Idris2.Builtin':'un--believe_me'(0))})) end end end.
