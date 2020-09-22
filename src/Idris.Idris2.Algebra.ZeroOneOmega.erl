-module('Idris.Idris2.Algebra.ZeroOneOmega').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--|+|_Semiring__ZeroOneOmega'/2,
  'dn--un--|*|_Semiring__ZeroOneOmega'/2,
  'dn--un--top_Top__ZeroOneOmega'/0,
  'dn--un--topAbs_Top__ZeroOneOmega'/1,
  'dn--un--timesNeutral_Semiring__ZeroOneOmega'/0,
  'dn--un--show_Show__ZeroOneOmega'/1,
  'dn--un--showPrec_Show__ZeroOneOmega'/2,
  'dn--un--preorderTrans_Preorder__ZeroOneOmega'/5,
  'dn--un--preorderRefl_Preorder__ZeroOneOmega'/1,
  'dn--un--plusNeutral_Semiring__ZeroOneOmega'/0,
  'dn--un--__Impl_Top_ZeroOneOmega'/0,
  'dn--un--__Impl_Show_ZeroOneOmega'/0,
  'dn--un--__Impl_Semiring_ZeroOneOmega'/0,
  'dn--un--__Impl_Preorder_ZeroOneOmega'/0,
  'dn--un--__Impl_Eq_ZeroOneOmega'/0,
  'dn--un--==_Eq__ZeroOneOmega'/2,
  'dn--un--<=_Preorder__ZeroOneOmega'/2,
  'dn--un--/=_Eq__ZeroOneOmega'/2,
  'un--rigPlus'/2,
  'un--rigMult'/2
]).
'dn--un--|+|_Semiring__ZeroOneOmega'(V0, V1) -> ('un--rigPlus'(V0, V1)).
'dn--un--|*|_Semiring__ZeroOneOmega'(V0, V1) -> ('un--rigMult'(V0, V1)).
'dn--un--top_Top__ZeroOneOmega'() -> {'Idris.Algebra.ZeroOneOmega.RigW'}.
'dn--un--topAbs_Top__ZeroOneOmega'(V0) -> case V0 of {'Idris.Algebra.ZeroOneOmega.Rig0'} -> (fun () -> {'Idris.Builtin.Refl'} end()); {'Idris.Algebra.ZeroOneOmega.Rig1'} -> (fun () -> {'Idris.Builtin.Refl'} end()); {'Idris.Algebra.ZeroOneOmega.RigW'} -> (fun () -> {'Idris.Builtin.Refl'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--timesNeutral_Semiring__ZeroOneOmega'() -> {'Idris.Algebra.ZeroOneOmega.Rig1'}.
'dn--un--show_Show__ZeroOneOmega'(V0) -> case V0 of {'Idris.Algebra.ZeroOneOmega.Rig0'} -> (fun () -> <<"Rig0"/utf8>> end()); {'Idris.Algebra.ZeroOneOmega.Rig1'} -> (fun () -> <<"Rig1"/utf8>> end()); {'Idris.Algebra.ZeroOneOmega.RigW'} -> (fun () -> <<"RigW"/utf8>> end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--showPrec_Show__ZeroOneOmega'(V0, V1) -> ('dn--un--show_Show__ZeroOneOmega'(V1)).
'dn--un--preorderTrans_Preorder__ZeroOneOmega'(V0, V1, V2, V3, V4) -> case V0 of {'Idris.Algebra.ZeroOneOmega.Rig0'} -> (fun () -> {'Idris.Builtin.Refl'} end()); {'Idris.Algebra.ZeroOneOmega.Rig1'} -> (fun () -> case V2 of {'Idris.Algebra.ZeroOneOmega.Rig1'} -> (fun () -> {'Idris.Builtin.Refl'} end()); {'Idris.Algebra.ZeroOneOmega.RigW'} -> (fun () -> {'Idris.Builtin.Refl'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); {'Idris.Algebra.ZeroOneOmega.RigW'} -> (fun () -> case V1 of {'Idris.Algebra.ZeroOneOmega.RigW'} -> (fun () -> V4 end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--preorderRefl_Preorder__ZeroOneOmega'(V0) -> case V0 of {'Idris.Algebra.ZeroOneOmega.Rig0'} -> (fun () -> {'Idris.Builtin.Refl'} end()); {'Idris.Algebra.ZeroOneOmega.Rig1'} -> (fun () -> {'Idris.Builtin.Refl'} end()); {'Idris.Algebra.ZeroOneOmega.RigW'} -> (fun () -> {'Idris.Builtin.Refl'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--plusNeutral_Semiring__ZeroOneOmega'() -> {'Idris.Algebra.ZeroOneOmega.Rig0'}.
'dn--un--__Impl_Top_ZeroOneOmega'() -> {'Idris.Algebra.Preorder.dn--un--__mkTop', {'Idris.Algebra.Preorder.dn--un--__mkPreorder', fun (V0) -> fun (V1) -> ('dn--un--<=_Preorder__ZeroOneOmega'(V0, V1)) end end, fun (V2) -> ('dn--un--preorderRefl_Preorder__ZeroOneOmega'(V2)) end, fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('dn--un--preorderTrans_Preorder__ZeroOneOmega'(V3, V4, V5, V6, V7)) end end end end end}, ('dn--un--top_Top__ZeroOneOmega'()), fun (V8) -> ('dn--un--topAbs_Top__ZeroOneOmega'(V8)) end}.
'dn--un--__Impl_Show_ZeroOneOmega'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__ZeroOneOmega'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__ZeroOneOmega'(V1, V2)) end end}.
'dn--un--__Impl_Semiring_ZeroOneOmega'() -> {'Idris.Algebra.Semiring.dn--un--__mkSemiring', fun (V0) -> fun (V1) -> ('dn--un--|+|_Semiring__ZeroOneOmega'(V0, V1)) end end, ('dn--un--plusNeutral_Semiring__ZeroOneOmega'()), fun (V2) -> fun (V3) -> ('dn--un--|*|_Semiring__ZeroOneOmega'(V2, V3)) end end, ('dn--un--timesNeutral_Semiring__ZeroOneOmega'())}.
'dn--un--__Impl_Preorder_ZeroOneOmega'() -> {'Idris.Algebra.Preorder.dn--un--__mkPreorder', fun (V0) -> fun (V1) -> ('dn--un--<=_Preorder__ZeroOneOmega'(V0, V1)) end end, fun (V2) -> ('dn--un--preorderRefl_Preorder__ZeroOneOmega'(V2)) end, fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('dn--un--preorderTrans_Preorder__ZeroOneOmega'(V3, V4, V5, V6, V7)) end end end end end}.
'dn--un--__Impl_Eq_ZeroOneOmega'() -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__ZeroOneOmega'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__ZeroOneOmega'(V2, V3)) end end}.
'dn--un--==_Eq__ZeroOneOmega'(V0, V1) -> case V0 of {'Idris.Algebra.ZeroOneOmega.Rig0'} -> (fun () -> case V1 of {'Idris.Algebra.ZeroOneOmega.Rig0'} -> (fun () -> 0 end()); _ -> 1 end end()); {'Idris.Algebra.ZeroOneOmega.Rig1'} -> (fun () -> case V1 of {'Idris.Algebra.ZeroOneOmega.Rig1'} -> (fun () -> 0 end()); _ -> 1 end end()); {'Idris.Algebra.ZeroOneOmega.RigW'} -> (fun () -> case V1 of {'Idris.Algebra.ZeroOneOmega.RigW'} -> (fun () -> 0 end()); _ -> 1 end end()); _ -> 1 end.
'dn--un--<=_Preorder__ZeroOneOmega'(V0, V1) -> case V0 of {'Idris.Algebra.ZeroOneOmega.Rig0'} -> (fun () -> 0 end()); {'Idris.Algebra.ZeroOneOmega.Rig1'} -> (fun () -> case V1 of {'Idris.Algebra.ZeroOneOmega.Rig1'} -> (fun () -> 0 end()); {'Idris.Algebra.ZeroOneOmega.RigW'} -> (fun () -> 0 end()); _ -> 1 end end()); {'Idris.Algebra.ZeroOneOmega.RigW'} -> (fun () -> case V1 of {'Idris.Algebra.ZeroOneOmega.RigW'} -> (fun () -> 0 end()); _ -> 1 end end()); _ -> 1 end.
'dn--un--/=_Eq__ZeroOneOmega'(V0, V1) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__ZeroOneOmega'(V0, V1)))).
'un--rigPlus'(V0, V1) -> case V0 of {'Idris.Algebra.ZeroOneOmega.Rig0'} -> (fun () -> V1 end()); _ -> case V1 of {'Idris.Algebra.ZeroOneOmega.Rig0'} -> (fun () -> V0 end()); _ -> case V0 of {'Idris.Algebra.ZeroOneOmega.Rig1'} -> (fun () -> {'Idris.Algebra.ZeroOneOmega.RigW'} end()); _ -> case V1 of {'Idris.Algebra.ZeroOneOmega.Rig1'} -> (fun () -> {'Idris.Algebra.ZeroOneOmega.RigW'} end()); _ -> case V0 of {'Idris.Algebra.ZeroOneOmega.RigW'} -> (fun () -> case V1 of {'Idris.Algebra.ZeroOneOmega.RigW'} -> (fun () -> {'Idris.Algebra.ZeroOneOmega.RigW'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end end.
'un--rigMult'(V0, V1) -> case V0 of {'Idris.Algebra.ZeroOneOmega.Rig0'} -> (fun () -> {'Idris.Algebra.ZeroOneOmega.Rig0'} end()); _ -> case V1 of {'Idris.Algebra.ZeroOneOmega.Rig0'} -> (fun () -> {'Idris.Algebra.ZeroOneOmega.Rig0'} end()); _ -> case V0 of {'Idris.Algebra.ZeroOneOmega.Rig1'} -> (fun () -> V1 end()); _ -> case V1 of {'Idris.Algebra.ZeroOneOmega.Rig1'} -> (fun () -> V0 end()); _ -> case V0 of {'Idris.Algebra.ZeroOneOmega.RigW'} -> (fun () -> case V1 of {'Idris.Algebra.ZeroOneOmega.RigW'} -> (fun () -> {'Idris.Algebra.ZeroOneOmega.RigW'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end end.
