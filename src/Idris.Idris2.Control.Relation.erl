-module('Idris.Idris2.Control.Relation').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--reflexive-1825'/3,
  'dn--un--transitive_Transitive_RET$ty_$rel'/6,
  'dn--un--transitive_Transitive_$ty_Equal'/5,
  'dn--un--symmetric_Symmetric_RES$ty_$rel'/4,
  'dn--un--symmetric_Symmetric_$ty_Equal'/3,
  'dn--un--serial_Serial_$ty_$rel'/2,
  'dn--un--reflexive_Reflexive_$ty_Equal'/1,
  'dn--un--reflexive_Reflexive_$ty_$rel'/2,
  'dn--un--euclidean_Euclidean_TSE$ty_$rel'/6,
  'dn--un--euclidean_Euclidean_$ty_Equal'/3,
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
  'un--transitive'/4,
  'un--symmetric'/3,
  'un--serial'/2,
  'un--reflexive'/2,
  'un--euclidean'/4,
  'un--dense'/3,
  'un--antisymmetric'/3,
  'un--TSE'/6,
  'un--Rel'/1,
  'un--RET'/6,
  'un--RES'/4
]).
'case--reflexive-1825'(V0, V1, V2) -> case V2 of {'Builtin.DPair.MkDPair', V3, V4} -> ((begin (V7 = ('Idris.Idris2.Builtin':'un--fst'(V0))), fun (V8) -> fun (V9) -> (((((V7(V1))(V3))(V1))(V8))(V9)) end end end(V4))((begin (V5 = ('Idris.Idris2.Builtin':'un--fst'(('Idris.Idris2.Builtin':'un--snd'(V0))))), fun (V6) -> (((V5(V1))(V3))(V6)) end end(V4)))) end.
'dn--un--transitive_Transitive_RET$ty_$rel'(V0, V1, V2, V3, V4, V5) -> (begin (V17 = fun (V14) -> fun (V15) -> fun (V16) -> ('dn--un--symmetric_Symmetric_RES$ty_$rel'(V0, V14, V15, V16)) end end end), fun (V18) -> (((V17(V3))(V1))(V18)) end end(((begin (V11 = ('Idris.Idris2.Builtin':'un--snd'(V0))), fun (V12) -> fun (V13) -> (((((V11(V2))(V3))(V1))(V12))(V13)) end end end(V5))((begin (V9 = fun (V6) -> fun (V7) -> fun (V8) -> ('dn--un--symmetric_Symmetric_RES$ty_$rel'(V0, V6, V7, V8)) end end end), fun (V10) -> (((V9(V1))(V2))(V10)) end end(V4)))))).
'dn--un--transitive_Transitive_$ty_Equal'(V0, V1, V2, V3, V4) -> {'Builtin.Refl'}.
'dn--un--symmetric_Symmetric_RES$ty_$rel'(V0, V1, V2, V3) -> ((begin (V5 = ('Idris.Idris2.Builtin':'un--snd'(V0))), fun (V6) -> fun (V7) -> (((((V5(V1))(V2))(V1))(V6))(V7)) end end end(V3))(begin (V4 = ('Idris.Idris2.Builtin':'un--fst'(V0))), (V4(V1)) end)).
'dn--un--symmetric_Symmetric_$ty_Equal'(V0, V1, V2) -> {'Builtin.Refl'}.
'dn--un--serial_Serial_$ty_$rel'(V0, V1) -> {'Builtin.DPair.MkDPair', V1, begin (V2 = V0), (V2(V1)) end}.
'dn--un--reflexive_Reflexive_$ty_Equal'(V0) -> {'Builtin.Refl'}.
'dn--un--reflexive_Reflexive_$ty_$rel'(V0, V1) -> ('case--reflexive-1825'(V0, V1, begin (V2 = ('Idris.Idris2.Builtin':'un--snd'(('Idris.Idris2.Builtin':'un--snd'(V0))))), (V2(V1)) end)).
'dn--un--euclidean_Euclidean_TSE$ty_$rel'(V0, V1, V2, V3, V4, V5) -> ((begin (V8 = ('Idris.Idris2.Builtin':'un--fst'(V0))), fun (V9) -> fun (V10) -> (((((V8(V2))(V1))(V3))(V9))(V10)) end end end((begin (V6 = ('Idris.Idris2.Builtin':'un--snd'(V0))), fun (V7) -> (((V6(V1))(V2))(V7)) end end(V4))))(V5)).
'dn--un--euclidean_Euclidean_$ty_Equal'(V0, V1, V2) -> begin (V16 = fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('dn--un--euclidean_Euclidean_TSE$ty_$rel'({'Builtin.MkPair', fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> {'Builtin.Refl'} end end end end end, fun (V13) -> fun (V14) -> fun (V15) -> {'Builtin.Refl'} end end end}, V3, V4, V5, V6, V7)) end end end end end), fun (V17) -> fun (V18) -> (((((V16(V0))(V1))(V2))(V17))(V18)) end end end.
'dn--un--dense_Dense_$ty_$rel'(V0, V1, V2, V3) -> {'Builtin.DPair.MkDPair', V1, {'Builtin.MkPair', begin (V4 = V0), (V4(V1)) end, V3}}.
'dn--un--__Tolerance_((Symmetric ty) rel)'(V0) -> case V0 of {'Control.Relation.dn--un--__mkTolerance', V1, V2} -> V2 end.
'dn--un--__Tolerance_((Reflexive ty) rel)'(V0) -> case V0 of {'Control.Relation.dn--un--__mkTolerance', V1, V2} -> V1 end.
'dn--un--__PartialEquivalence_((Transitive ty) rel)'(V0) -> case V0 of {'Control.Relation.dn--un--__mkPartialEquivalence', V1, V2} -> V1 end.
'dn--un--__PartialEquivalence_((Symmetric ty) rel)'(V0) -> case V0 of {'Control.Relation.dn--un--__mkPartialEquivalence', V1, V2} -> V2 end.
'dn--un--__Impl_Transitive_$ty_Equal'(V0, V1, V2, V3, V4) -> {'Builtin.Refl'}.
'dn--un--__Impl_Tolerance_$ty_Equal'() -> {'Control.Relation.dn--un--__mkTolerance', fun (V0) -> {'Builtin.Refl'} end, fun (V1) -> fun (V2) -> fun (V3) -> {'Builtin.Refl'} end end end}.
'dn--un--__Impl_Symmetric_$ty_Equal'(V0, V1, V2) -> {'Builtin.Refl'}.
'dn--un--__Impl_Serial_$ty_$rel'(V0, V1) -> ('dn--un--serial_Serial_$ty_$rel'(V0, V1)).
'dn--un--__Impl_Reflexive_$ty_Equal'(V0) -> {'Builtin.Refl'}.
'dn--un--__Impl_Reflexive_$ty_$rel'(V0, V1) -> ('dn--un--reflexive_Reflexive_$ty_$rel'(V0, V1)).
'dn--un--__Impl_PartialEquivalence_$ty_Equal'() -> {'Control.Relation.dn--un--__mkPartialEquivalence', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> {'Builtin.Refl'} end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> {'Builtin.Refl'} end end end}.
'dn--un--__Impl_Euclidean_$ty_Equal'(V0, V1, V2, V3, V4) -> ((('dn--un--euclidean_Euclidean_$ty_Equal'(V0, V1, V2))(V3))(V4)).
'dn--un--__Impl_Equivalence_$ty_Equal'() -> {'Control.Relation.dn--un--__mkEquivalence', fun (V0) -> {'Builtin.Refl'} end, fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> {'Builtin.Refl'} end end end end end, fun (V6) -> fun (V7) -> fun (V8) -> {'Builtin.Refl'} end end end}.
'dn--un--__Impl_Dense_$ty_$rel'(V0, V1, V2, V3) -> ('dn--un--dense_Dense_$ty_$rel'(V0, V1, V2, V3)).
'dn--un--__Equivalence_((Transitive ty) rel)'(V0) -> case V0 of {'Control.Relation.dn--un--__mkEquivalence', V1, V2, V3} -> V2 end.
'dn--un--__Equivalence_((Symmetric ty) rel)'(V0) -> case V0 of {'Control.Relation.dn--un--__mkEquivalence', V1, V2, V3} -> V3 end.
'dn--un--__Equivalence_((Reflexive ty) rel)'(V0) -> case V0 of {'Control.Relation.dn--un--__mkEquivalence', V1, V2, V3} -> V1 end.
'un--transitive'(V0, V1, V2, V3) -> begin (V4 = V0), fun (V5) -> fun (V6) -> (((((V4(V1))(V2))(V3))(V5))(V6)) end end end.
'un--symmetric'(V0, V1, V2) -> begin (V3 = V0), fun (V4) -> (((V3(V1))(V2))(V4)) end end.
'un--serial'(V0, V1) -> begin (V2 = V0), (V2(V1)) end.
'un--reflexive'(V0, V1) -> begin (V2 = V0), (V2(V1)) end.
'un--euclidean'(V0, V1, V2, V3) -> begin (V4 = V0), fun (V5) -> fun (V6) -> (((((V4(V1))(V2))(V3))(V5))(V6)) end end end.
'un--dense'(V0, V1, V2) -> begin (V3 = V0), fun (V4) -> (((V3(V1))(V2))(V4)) end end.
'un--antisymmetric'(V0, V1, V2) -> begin (V3 = V0), fun (V4) -> fun (V5) -> ((((V3(V1))(V2))(V4))(V5)) end end end.
'un--TSE'(V0, V1, V2, V3, V4, V5) -> ('dn--un--euclidean_Euclidean_TSE$ty_$rel'(V0, V1, V2, V3, V4, V5)).
'un--Rel'(V0) -> {'.->', V0, fun (V1) -> {'.->', V0, fun (V2) -> {'.Type'} end} end}.
'un--RET'(V0, V1, V2, V3, V4, V5) -> ('dn--un--transitive_Transitive_RET$ty_$rel'(V0, V1, V2, V3, V4, V5)).
'un--RES'(V0, V1, V2, V3) -> ('dn--un--symmetric_Symmetric_RES$ty_$rel'(V0, V1, V2, V3)).
