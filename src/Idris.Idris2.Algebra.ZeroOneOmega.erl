-module('Idris.Idris2.Algebra.ZeroOneOmega').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--|+|_Semiring_ZeroOneOmega'/2,
  'dn--un--|*|_Semiring_ZeroOneOmega'/2,
  'dn--un--top_Top_ZeroOneOmega'/0,
  'dn--un--topAbs_Top_ZeroOneOmega'/1,
  'dn--un--timesNeutral_Semiring_ZeroOneOmega'/0,
  'dn--un--show_Show_ZeroOneOmega'/1,
  'dn--un--showPrec_Show_ZeroOneOmega'/2,
  'dn--un--preorderTrans_Preorder_ZeroOneOmega'/5,
  'dn--un--preorderRefl_Preorder_ZeroOneOmega'/1,
  'dn--un--plusNeutral_Semiring_ZeroOneOmega'/0,
  'dn--un--__Impl_Top_ZeroOneOmega'/0,
  'dn--un--__Impl_Show_ZeroOneOmega'/0,
  'dn--un--__Impl_Semiring_ZeroOneOmega'/0,
  'dn--un--__Impl_Preorder_ZeroOneOmega'/0,
  'dn--un--__Impl_Eq_ZeroOneOmega'/0,
  'dn--un--==_Eq_ZeroOneOmega'/2,
  'dn--un--<=_Preorder_ZeroOneOmega'/2,
  'dn--un--/=_Eq_ZeroOneOmega'/2,
  'un--rigPlus'/2,
  'un--rigMult'/2
]).
'dn--un--|+|_Semiring_ZeroOneOmega'(V0, V1) -> ('un--rigPlus'(V0, V1)).
'dn--un--|*|_Semiring_ZeroOneOmega'(V0, V1) -> ('un--rigMult'(V0, V1)).
'dn--un--top_Top_ZeroOneOmega'() -> 2.
'dn--un--topAbs_Top_ZeroOneOmega'(V0) -> case V0 of 0 -> 0; 1 -> 0; 2 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--timesNeutral_Semiring_ZeroOneOmega'() -> 1.
'dn--un--show_Show_ZeroOneOmega'(V0) -> case V0 of 0 -> <<"Rig0"/utf8>>; 1 -> <<"Rig1"/utf8>>; 2 -> <<"RigW"/utf8>>; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--showPrec_Show_ZeroOneOmega'(V0, V1) -> ('dn--un--show_Show_ZeroOneOmega'(V1)).
'dn--un--preorderTrans_Preorder_ZeroOneOmega'(V0, V1, V2, V3, V4) -> case V0 of 0 -> 0; 1 -> case V2 of 1 -> 0; 2 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; 2 -> case V1 of 2 -> V4; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--preorderRefl_Preorder_ZeroOneOmega'(V0) -> case V0 of 0 -> 0; 1 -> 0; 2 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--plusNeutral_Semiring_ZeroOneOmega'() -> 0.
'dn--un--__Impl_Top_ZeroOneOmega'() -> {'Idris.Algebra.Preorder.dn--un--__mkTop', {'Idris.Algebra.Preorder.dn--un--__mkPreorder', fun (V0) -> fun (V1) -> ('dn--un--<=_Preorder_ZeroOneOmega'(V0, V1)) end end, fun (V2) -> ('dn--un--preorderRefl_Preorder_ZeroOneOmega'(V2)) end, fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('dn--un--preorderTrans_Preorder_ZeroOneOmega'(V3, V4, V5, V6, V7)) end end end end end}, ('dn--un--top_Top_ZeroOneOmega'()), fun (V8) -> ('dn--un--topAbs_Top_ZeroOneOmega'(V8)) end}.
'dn--un--__Impl_Show_ZeroOneOmega'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_ZeroOneOmega'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_ZeroOneOmega'(V1, V2)) end end}.
'dn--un--__Impl_Semiring_ZeroOneOmega'() -> {'Idris.Algebra.Semiring.dn--un--__mkSemiring', fun (V0) -> fun (V1) -> ('dn--un--|+|_Semiring_ZeroOneOmega'(V0, V1)) end end, ('dn--un--plusNeutral_Semiring_ZeroOneOmega'()), fun (V2) -> fun (V3) -> ('dn--un--|*|_Semiring_ZeroOneOmega'(V2, V3)) end end, ('dn--un--timesNeutral_Semiring_ZeroOneOmega'())}.
'dn--un--__Impl_Preorder_ZeroOneOmega'() -> {'Idris.Algebra.Preorder.dn--un--__mkPreorder', fun (V0) -> fun (V1) -> ('dn--un--<=_Preorder_ZeroOneOmega'(V0, V1)) end end, fun (V2) -> ('dn--un--preorderRefl_Preorder_ZeroOneOmega'(V2)) end, fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('dn--un--preorderTrans_Preorder_ZeroOneOmega'(V3, V4, V5, V6, V7)) end end end end end}.
'dn--un--__Impl_Eq_ZeroOneOmega'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_ZeroOneOmega'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_ZeroOneOmega'(V2, V3)) end end}.
'dn--un--==_Eq_ZeroOneOmega'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> 1; _ -> 0 end; 1 -> case V1 of 1 -> 1; _ -> 0 end; 2 -> case V1 of 2 -> 1; _ -> 0 end; _ -> 0 end.
'dn--un--<=_Preorder_ZeroOneOmega'(V0, V1) -> case V0 of 0 -> 1; 1 -> case V1 of 1 -> 1; 2 -> 1; _ -> 0 end; 2 -> case V1 of 2 -> 1; _ -> 0 end; _ -> 0 end.
'dn--un--/=_Eq_ZeroOneOmega'(V0, V1) -> case ('dn--un--==_Eq_ZeroOneOmega'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--rigPlus'(V0, V1) -> case V0 of 0 -> V1; _ -> case V1 of 0 -> V0; _ -> case V0 of 1 -> 2; _ -> case V1 of 1 -> 2; _ -> case V0 of 2 -> case V1 of 2 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end end.
'un--rigMult'(V0, V1) -> case V0 of 0 -> 0; _ -> case V1 of 0 -> 0; _ -> case V0 of 1 -> V1; _ -> case V1 of 1 -> V0; _ -> case V0 of 2 -> case V1 of 2 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end end.
