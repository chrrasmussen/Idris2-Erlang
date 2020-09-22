-module('Idris.Idris2.Algebra.Semiring').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--branchVal-596'/7,
  'case--branchOne-545'/7,
  'case--branchZero-494'/7,
  'case--case block in elimSemi-394'/8,
  'case--elimSemi-344'/8,
  'un--|+|'/2,
  'un--|*|'/2,
  'un--timesNeutral'/2,
  'un--plusNeutral'/2,
  'un--linear'/2,
  'un--isRigOther'/3,
  'un--isLinear'/3,
  'un--isErased'/3,
  'un--erased'/2,
  'un--elimSemi'/7,
  'un--branchZero'/6,
  'un--branchVal'/6,
  'un--branchOne'/6
]).
'case--branchVal-596'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of 0 -> (V5()); 1 -> (V4()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--branchOne-545'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of 0 -> (V5()); 1 -> (V4()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--branchZero-494'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of 0 -> (V5()); 1 -> (V4()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in elimSemi-394'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V7 of 0 -> V5; 1 -> (V4(V3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--elimSemi-344'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V7 of 0 -> V6; 1 -> ('case--case block in elimSemi-394'('erased', 'erased', V2, V3, V4, V5, V6, case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V2)) of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E0, E1} -> (fun (V8, V9) -> ((V8(V3))(case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V2)) of {'Idris.Algebra.Semiring.dn--un--__mkSemiring', E2, E3, E4, E5} -> (fun (V10, V11, V12, V13) -> V13 end(E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--|+|'(V0, V1) -> case V1 of {'Idris.Algebra.Semiring.dn--un--__mkSemiring', E0, E1, E2, E3} -> (fun (V2, V3, V4, V5) -> fun (V6) -> fun (V7) -> ((V2(V6))(V7)) end end end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--|*|'(V0, V1) -> case V1 of {'Idris.Algebra.Semiring.dn--un--__mkSemiring', E0, E1, E2, E3} -> (fun (V2, V3, V4, V5) -> fun (V6) -> fun (V7) -> ((V4(V6))(V7)) end end end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--timesNeutral'(V0, V1) -> case V1 of {'Idris.Algebra.Semiring.dn--un--__mkSemiring', E0, E1, E2, E3} -> (fun (V2, V3, V4, V5) -> V5 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--plusNeutral'(V0, V1) -> case V1 of {'Idris.Algebra.Semiring.dn--un--__mkSemiring', E0, E1, E2, E3} -> (fun (V2, V3, V4, V5) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--linear'(V0, V1) -> case V1 of {'Idris.Algebra.Semiring.dn--un--__mkSemiring', E0, E1, E2, E3} -> (fun (V2, V3, V4, V5) -> V5 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--isRigOther'(V0, V1, V2) -> ('un--elimSemi'('erased', 'erased', V1, 1, 1, fun (V3) -> 0 end, V2)).
'un--isLinear'(V0, V1, V2) -> ('un--elimSemi'('erased', 'erased', V1, 1, 0, fun (V3) -> 1 end, V2)).
'un--isErased'(V0, V1, V2) -> ('un--elimSemi'('erased', 'erased', V1, 0, 1, fun (V3) -> 1 end, V2)).
'un--erased'(V0, V1) -> case V1 of {'Idris.Algebra.Semiring.dn--un--__mkSemiring', E0, E1, E2, E3} -> (fun (V2, V3, V4, V5) -> V3 end(E0, E1, E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--elimSemi'(V0, V1, V2, V3, V4, V5, V6) -> ('case--elimSemi-344'('erased', 'erased', V2, V6, V5, V4, V3, case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V2)) of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E0, E1} -> (fun (V7, V8) -> ((V7(V6))(case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V2)) of {'Idris.Algebra.Semiring.dn--un--__mkSemiring', E2, E3, E4, E5} -> (fun (V9, V10, V11, V12) -> V10 end(E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)).
'un--branchZero'(V0, V1, V2, V3, V4, V5) -> ('case--branchZero-494'('erased', 'erased', V2, V5, V4, V3, ('un--isErased'('erased', V2, V5)))).
'un--branchVal'(V0, V1, V2, V3, V4, V5) -> ('case--branchVal-596'('erased', 'erased', V2, V5, V4, V3, ('un--isRigOther'('erased', V2, V5)))).
'un--branchOne'(V0, V1, V2, V3, V4, V5) -> ('case--branchOne-545'('erased', 'erased', V2, V5, V4, V3, ('un--isLinear'('erased', V2, V5)))).
