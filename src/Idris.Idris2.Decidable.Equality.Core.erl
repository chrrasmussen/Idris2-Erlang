-module('Idris.Idris2.Decidable.Equality.Core').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--decEqContraIsNo-2731'/6,
  'with--decEqSelfIsYes-2650'/4,
  'case--decEqCong2-3053'/4,
  'un--negEqSym'/2,
  'un--decEqSelfIsYes'/2,
  'un--decEqInj'/1,
  'un--decEqContraIsNo'/4,
  'un--decEqCong2'/2,
  'un--decEqCong'/1,
  'un--decEq'/1
]).
'with--decEqContraIsNo-2731'(V0, V1, V2, V3, V4, V5) -> case V4 of {'Prelude.Types.Yes', V6} -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V7) -> V7 end, (V5(V6)))); {'Prelude.Types.No', V8} -> {'Builtin.DPair.MkDPair', V8, {'Builtin.Refl'}} end.
'with--decEqSelfIsYes-2650'(V0, V1, V2, V3) -> case V3 of {'Prelude.Types.Yes', V4} -> {'Builtin.Refl'}; {'Prelude.Types.No', V5} -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V6) -> V6 end, (V5({'Builtin.Refl'})))) end.
'case--decEqCong2-3053'(V0, V1, V2, V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> (V1({'Builtin.Refl'})) end.
'un--negEqSym'(V0, V1) -> (V0({'Builtin.Refl'})).
'un--decEqSelfIsYes'(V0, V1) -> ('with--decEqSelfIsYes-2650'('erased', V0, V1, ((begin (V2 = V0), fun (V3) -> fun (V4) -> ((V2(V3))(V4)) end end end(V1))(V1)))).
'un--decEqInj'(V0) -> case V0 of {'Prelude.Types.Yes', V1} -> {'Prelude.Types.Yes', ('Idris.Idris2.Prelude.Basics':'un--irrelevantEq'())}; {'Prelude.Types.No', V2} -> {'Prelude.Types.No', fun (V3) -> (V2({'Builtin.Refl'})) end} end.
'un--decEqContraIsNo'(V0, V1, V2, V3) -> ('with--decEqContraIsNo-2731'('erased', V0, V2, V1, ((begin (V4 = V0), fun (V5) -> fun (V6) -> ((V4(V5))(V6)) end end end(V1))(V2)), V3)).
'un--decEqCong2'(V0, V1) -> case V0 of {'Prelude.Types.Yes', V2} -> ('un--decEqCong'((V1()))); {'Prelude.Types.No', V3} -> {'Prelude.Types.No', fun (V4) -> case ('Idris.Idris2.Control.Function':'un--biinj'()) of {'Builtin.MkPair', V5, V6} -> (V3({'Builtin.Refl'})) end end} end.
'un--decEqCong'(V0) -> case V0 of {'Prelude.Types.Yes', V1} -> {'Prelude.Types.Yes', {'Builtin.Refl'}}; {'Prelude.Types.No', V2} -> {'Prelude.Types.No', fun (V3) -> (V2(('Idris.Idris2.Prelude.Basics':'un--irrelevantEq'()))) end} end.
'un--decEq'(V0) -> begin (V1 = V0), fun (V2) -> fun (V3) -> ((V1(V2))(V3)) end end end.
