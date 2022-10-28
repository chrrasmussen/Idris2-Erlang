-module('Idris.Idris2.Control.Function').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--injective_Injective_InjFromComp$f'/6,
  'dn--un--injective_Injective_IdInjectivePrelude.id'/3,
  'dn--un--injective_Injective_FromBiinjectiveR(%lam RigW Explicit (Just {arg:0}) _ (($f {arg:0}) $y))'/6,
  'dn--un--injective_Injective_FromBiinjectiveL($f $x)'/6,
  'dn--un--injective_Injective_ComposeInjective((. $g) $f)'/6,
  'dn--un--biinjective_Biinjective_MkPair'/5,
  'dn--un--biinjective_Biinjective_FlipBiinjective(flip $f)'/7,
  'dn--un--biinjective_Biinjective_ComposeBiinjective((.: $g) $f)'/9,
  'dn--un--biinjective_Biinjective_BiinjFromComp$f'/8,
  'dn--un--__Impl_Biinjective_MkPair'/5,
  'un--injective'/5,
  'un--inj'/0,
  'un--biinjective'/5,
  'un--biinj'/0,
  'un--InjFromComp'/3,
  'un--IdInjective'/0,
  'un--FromBiinjectiveR'/3,
  'un--FromBiinjectiveL'/3,
  'un--FlipBiinjective'/7,
  'un--ComposeInjective'/3,
  'un--ComposeBiinjective'/9,
  'un--BiinjFromComp'/8
]).
'dn--un--injective_Injective_InjFromComp$f'(V0, V1, V2, V3, V4, V5) -> case V2 of {'Control.Function.MkInjective', V6, V7} -> (((V7(V3))(V4))({'Builtin.Refl'})) end.
'dn--un--injective_Injective_IdInjectivePrelude.id'(V0, V1, V2) -> V2.
'dn--un--injective_Injective_FromBiinjectiveR(%lam RigW Explicit (Just {arg:0}) _ (($f {arg:0}) $y))'(V0, V1, V2, V3, V4, V5) -> ('Idris.Idris2.Builtin':'un--fst'((begin (V6 = V2), fun (V7) -> (((((V6(V3))(V4))(V1))(V1))(V7)) end end(V5)))).
'dn--un--injective_Injective_FromBiinjectiveL($f $x)'(V0, V1, V2, V3, V4, V5) -> ('Idris.Idris2.Builtin':'un--snd'((begin (V6 = V2), fun (V7) -> (((((V6(V1))(V1))(V3))(V4))(V7)) end end(V5)))).
'dn--un--injective_Injective_ComposeInjective((. $g) $f)'(V0, V1, V2, V3, V4, V5) -> case ('Idris.Idris2.Builtin':'un--fst'(V2)) of {'Control.Function.MkInjective', V6, V7} -> (((V7(V3))(V4))(case ('Idris.Idris2.Builtin':'un--snd'(V2)) of {'Control.Function.MkInjective', V8, V9} -> (((V9((V0(V3))))((V0(V4))))(V5)) end)) end.
'dn--un--biinjective_Biinjective_MkPair'(V0, V1, V2, V3, V4) -> {'Builtin.MkPair', {'Builtin.Refl'}, {'Builtin.Refl'}}.
'dn--un--biinjective_Biinjective_FlipBiinjective(flip $f)'(V0, V1, V2, V3, V4, V5, V6) -> ('Idris.Idris2.Builtin':'un--swap'((begin (V7 = V1), fun (V8) -> (((((V7(V4))(V5))(V2))(V3))(V8)) end end(V6)))).
'dn--un--biinjective_Biinjective_ComposeBiinjective((.: $g) $f)'(V0, V1, V2, V3, V4, V5, V6, V7, V8) -> (begin (V11 = V2), fun (V12) -> (((((V11(V4))(V5))(V6))(V7))(V12)) end end(case V3 of {'Control.Function.MkInjective', V9, V10} -> (((V10(((V0(V4))(V6))))(((V0(V5))(V7))))(V8)) end)).
'dn--un--biinjective_Biinjective_BiinjFromComp$f'(V0, V1, V2, V3, V4, V5, V6, V7) -> (begin (V8 = V2), fun (V9) -> (((((V8(V3))(V4))(V5))(V6))(V9)) end end({'Builtin.Refl'})).
'dn--un--__Impl_Biinjective_MkPair'(V0, V1, V2, V3, V4) -> ('dn--un--biinjective_Biinjective_MkPair'(V0, V1, V2, V3, V4)).
'un--injective'(V0, V1, V2, V3, V4) -> case V1 of {'Control.Function.MkInjective', V5, V6} -> (((V6(V2))(V3))(V4)) end.
'un--inj'() -> ('Idris.Idris2.Prelude.Basics':'un--irrelevantEq'()).
'un--biinjective'(V0, V1, V2, V3, V4) -> begin (V5 = V0), fun (V6) -> (((((V5(V1))(V2))(V3))(V4))(V6)) end end.
'un--biinj'() -> {'Builtin.MkPair', ('Idris.Idris2.Prelude.Basics':'un--irrelevantEq'()), ('Idris.Idris2.Prelude.Basics':'un--irrelevantEq'())}.
'un--InjFromComp'(V0, V1, V2) -> {'Control.Function.MkInjective', V0, fun (V3) -> fun (V4) -> fun (V5) -> ('dn--un--injective_Injective_InjFromComp$f'(V0, V1, V2, V3, V4, V5)) end end end}.
'un--IdInjective'() -> {'Control.Function.MkInjective', fun (V0) -> V0 end, fun (V1) -> fun (V2) -> fun (V3) -> V3 end end end}.
'un--FromBiinjectiveR'(V0, V1, V2) -> {'Control.Function.MkInjective', fun (V3) -> ((V0(V3))(V1)) end, fun (V4) -> fun (V5) -> fun (V6) -> ('dn--un--injective_Injective_FromBiinjectiveR(%lam RigW Explicit (Just {arg:0}) _ (($f {arg:0}) $y))'(V0, V1, V2, V4, V5, V6)) end end end}.
'un--FromBiinjectiveL'(V0, V1, V2) -> {'Control.Function.MkInjective', (V0(V1)), fun (V3) -> fun (V4) -> fun (V5) -> ('dn--un--injective_Injective_FromBiinjectiveL($f $x)'(V0, V1, V2, V3, V4, V5)) end end end}.
'un--FlipBiinjective'(V0, V1, V2, V3, V4, V5, V6) -> ('dn--un--biinjective_Biinjective_FlipBiinjective(flip $f)'(V0, V1, V2, V3, V4, V5, V6)).
'un--ComposeInjective'(V0, V1, V2) -> {'Control.Function.MkInjective', fun (V3) -> (V1((V0(V3)))) end, fun (V4) -> fun (V5) -> fun (V6) -> ('dn--un--injective_Injective_ComposeInjective((. $g) $f)'(V0, V1, V2, V4, V5, V6)) end end end}.
'un--ComposeBiinjective'(V0, V1, V2, V3, V4, V5, V6, V7, V8) -> ('dn--un--biinjective_Biinjective_ComposeBiinjective((.: $g) $f)'(V0, V1, V2, V3, V4, V5, V6, V7, V8)).
'un--BiinjFromComp'(V0, V1, V2, V3, V4, V5, V6, V7) -> ('dn--un--biinjective_Biinjective_BiinjFromComp$f'(V0, V1, V2, V3, V4, V5, V6, V7)).
