-module('Idris.Idris2.Control.Relation').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--reflexive-822'/3,
  'dn--un--transitive_Transitive_RET$ty_$rel'/6,
  'dn--un--transitive_Transitive_$ty_Equal'/5,
  'dn--un--symmetric_Symmetric_RES$ty_$rel'/4,
  'dn--un--symmetric_Symmetric_$ty_Equal'/3,
  'dn--un--serial_Serial_$ty_$rel'/2,
  'dn--un--reflexive_Reflexive_$ty_Equal'/1,
  'dn--un--reflexive_Reflexive_$ty_$rel'/2,
  'dn--un--euclidean_Euclidean_TSE$ty_$rel'/6,
  'dn--un--euclidean_Euclidean_$ty_Equal'/5,
  'dn--un--dense_Dense_$ty_$rel'/4,
  'dn--un--__Tolerance_((Symmetric ty) rel)'/1,
  'dn--un--__Tolerance_((Reflexive ty) rel)'/1,
  'dn--un--__PartialEquivalence_((Transitive ty) rel)'/1,
  'dn--un--__PartialEquivalence_((Symmetric ty) rel)'/1,
  'dn--un--__Impl_Transitive_$ty_Equal'/5,
  'dn--un--__Impl_Tolerance_$ty_Equal'/0,
  'dn--un--__Impl_Symmetric_$ty_Equal'/3,
  'dn--un--__Impl_Serial_$ty_$rel'/2,
  'dn--un--__Impl_Reflexive_$ty_Equal'/1,
  'dn--un--__Impl_Reflexive_$ty_$rel'/2,
  'dn--un--__Impl_PartialEquivalence_$ty_Equal'/0,
  'dn--un--__Impl_Euclidean_$ty_Equal'/5,
  'dn--un--__Impl_Equivalence_$ty_Equal'/0,
  'dn--un--__Impl_Dense_$ty_$rel'/4,
  'dn--un--__Equivalence_((Transitive ty) rel)'/1,
  'dn--un--__Equivalence_((Symmetric ty) rel)'/1,
  'dn--un--__Equivalence_((Reflexive ty) rel)'/1,
  'un--transitive'/6,
  'un--symmetric'/4,
  'un--serial'/2,
  'un--reflexive'/2,
  'un--euclidean'/6,
  'un--dense'/4,
  'un--antisymmetric'/5,
  'un--TSE'/6,
  'un--Rel'/1,
  'un--RET'/6,
  'un--RES'/4
]).
'case--reflexive-822'(V0, V1, V2) -> case V2 of {'Idris.Builtin.DPair.MkDPair', E0, E1} -> (fun (V3, V4) -> (((((('Idris.Idris2.Builtin':'un--fst'(V0))(V1))(V3))(V1))(V4))((((('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(V0))))(V1))(V3))(V4)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--transitive_Transitive_RET$ty_$rel'(V0, V1, V2, V3, V4, V5) -> ('dn--un--symmetric_Symmetric_RES$ty_$rel'(V0, V3, V1, (((((('Idris.Idris2.Builtin':'un--snd'(V0))(V2))(V3))(V1))(V5))(('dn--un--symmetric_Symmetric_RES$ty_$rel'(V0, V1, V2, V4)))))).
'dn--un--transitive_Transitive_$ty_Equal'(V0, V1, V2, V3, V4) -> 0.
'dn--un--symmetric_Symmetric_RES$ty_$rel'(V0, V1, V2, V3) -> (((((('Idris.Idris2.Builtin':'un--snd'(V0))(V1))(V2))(V1))(V3))((('Idris.Idris2.Builtin':'un--fst'(V0))(V1)))).
'dn--un--symmetric_Symmetric_$ty_Equal'(V0, V1, V2) -> 0.
'dn--un--serial_Serial_$ty_$rel'(V0, V1) -> {'Idris.Builtin.DPair.MkDPair', V1, (V0(V1))}.
'dn--un--reflexive_Reflexive_$ty_Equal'(V0) -> 0.
'dn--un--reflexive_Reflexive_$ty_$rel'(V0, V1) -> ('case--reflexive-822'(V0, V1, (('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0))))(V1)))).
'dn--un--euclidean_Euclidean_TSE$ty_$rel'(V0, V1, V2, V3, V4, V5) -> (((((('Idris.Idris2.Builtin':'un--fst'(V0))(V2))(V1))(V3))((((('Idris.Idris2.Builtin':'un--snd'(V0))(V1))(V2))(V4))))(V5)).
'dn--un--euclidean_Euclidean_$ty_Equal'(V0, V1, V2, V3, V4) -> ('dn--un--euclidean_Euclidean_TSE$ty_$rel'({'Idris.Builtin.MkPair', fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--transitive_Transitive_$ty_Equal'(V5, V6, V7, V8, V9)) end end end end end, fun (V10) -> fun (V11) -> fun (V12) -> ('dn--un--symmetric_Symmetric_$ty_Equal'(V10, V11, V12)) end end end}, V0, V1, V2, V3, V4)).
'dn--un--dense_Dense_$ty_$rel'(V0, V1, V2, V3) -> {'Idris.Builtin.DPair.MkDPair', V1, {'Idris.Builtin.MkPair', (V0(V1)), V3}}.
'dn--un--__Tolerance_((Symmetric ty) rel)'(V0) -> case V0 of {'Idris.Control.Relation.dn--un--__mkTolerance', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Tolerance_((Reflexive ty) rel)'(V0) -> case V0 of {'Idris.Control.Relation.dn--un--__mkTolerance', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__PartialEquivalence_((Transitive ty) rel)'(V0) -> case V0 of {'Idris.Control.Relation.dn--un--__mkPartialEquivalence', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__PartialEquivalence_((Symmetric ty) rel)'(V0) -> case V0 of {'Idris.Control.Relation.dn--un--__mkPartialEquivalence', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Impl_Transitive_$ty_Equal'(V0, V1, V2, V3, V4) -> ('dn--un--transitive_Transitive_$ty_Equal'(V0, V1, V2, V3, V4)).
'dn--un--__Impl_Tolerance_$ty_Equal'() -> {'Idris.Control.Relation.dn--un--__mkTolerance', fun (V0) -> ('dn--un--reflexive_Reflexive_$ty_Equal'(V0)) end, fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--symmetric_Symmetric_$ty_Equal'(V1, V2, V3)) end end end}.
'dn--un--__Impl_Symmetric_$ty_Equal'(V0, V1, V2) -> ('dn--un--symmetric_Symmetric_$ty_Equal'(V0, V1, V2)).
'dn--un--__Impl_Serial_$ty_$rel'(V0, V1) -> ('dn--un--serial_Serial_$ty_$rel'(V0, V1)).
'dn--un--__Impl_Reflexive_$ty_Equal'(V0) -> ('dn--un--reflexive_Reflexive_$ty_Equal'(V0)).
'dn--un--__Impl_Reflexive_$ty_$rel'(V0, V1) -> ('dn--un--reflexive_Reflexive_$ty_$rel'(V0, V1)).
'dn--un--__Impl_PartialEquivalence_$ty_Equal'() -> {'Idris.Control.Relation.dn--un--__mkPartialEquivalence', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--transitive_Transitive_$ty_Equal'(V0, V1, V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> ('dn--un--symmetric_Symmetric_$ty_Equal'(V5, V6, V7)) end end end}.
'dn--un--__Impl_Euclidean_$ty_Equal'(V0, V1, V2, V3, V4) -> ('dn--un--euclidean_Euclidean_$ty_Equal'(V0, V1, V2, V3, V4)).
'dn--un--__Impl_Equivalence_$ty_Equal'() -> {'Idris.Control.Relation.dn--un--__mkEquivalence', fun (V0) -> ('dn--un--reflexive_Reflexive_$ty_Equal'(V0)) end, fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('dn--un--transitive_Transitive_$ty_Equal'(V1, V2, V3, V4, V5)) end end end end end, fun (V6) -> fun (V7) -> fun (V8) -> ('dn--un--symmetric_Symmetric_$ty_Equal'(V6, V7, V8)) end end end}.
'dn--un--__Impl_Dense_$ty_$rel'(V0, V1, V2, V3) -> ('dn--un--dense_Dense_$ty_$rel'(V0, V1, V2, V3)).
'dn--un--__Equivalence_((Transitive ty) rel)'(V0) -> case V0 of {'Idris.Control.Relation.dn--un--__mkEquivalence', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Equivalence_((Symmetric ty) rel)'(V0) -> case V0 of {'Idris.Control.Relation.dn--un--__mkEquivalence', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Equivalence_((Reflexive ty) rel)'(V0) -> case V0 of {'Idris.Control.Relation.dn--un--__mkEquivalence', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--transitive'(V0, V1, V2, V3, V4, V5) -> (((((V0(V1))(V2))(V3))(V4))(V5)).
'un--symmetric'(V0, V1, V2, V3) -> (((V0(V1))(V2))(V3)).
'un--serial'(V0, V1) -> (V0(V1)).
'un--reflexive'(V0, V1) -> (V0(V1)).
'un--euclidean'(V0, V1, V2, V3, V4, V5) -> (((((V0(V1))(V2))(V3))(V4))(V5)).
'un--dense'(V0, V1, V2, V3) -> (((V0(V1))(V2))(V3)).
'un--antisymmetric'(V0, V1, V2, V3, V4) -> ((((V0(V1))(V2))(V3))(V4)).
'un--TSE'(V0, V1, V2, V3, V4, V5) -> ('dn--un--euclidean_Euclidean_TSE$ty_$rel'(V0, V1, V2, V3, V4, V5)).
'un--Rel'(V0) -> {'Idris.->', V0, fun (V1) -> {'Idris.->', V0, fun (V2) -> {'Idris.Type'} end} end}.
'un--RET'(V0, V1, V2, V3, V4, V5) -> ('dn--un--transitive_Transitive_RET$ty_$rel'(V0, V1, V2, V3, V4, V5)).
'un--RES'(V0, V1, V2, V3) -> ('dn--un--symmetric_Symmetric_RES$ty_$rel'(V0, V1, V2, V3)).
