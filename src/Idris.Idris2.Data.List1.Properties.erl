-module('Idris.Idris2.Data.List1.Properties').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--fromListAppend-5606'/6,
  'with--fromListAppend-5583'/3,
  'dn--un--injective_Injective_(%lam RigW Explicit (Just {arg:0}) _ ((::: {arg:0}) $ys))'/4,
  'dn--un--injective_Injective_(%lam RigW Explicit (Just {arg:0}) _ ((::: $x) {arg:0}))'/4,
  'dn--un--biinjective_Biinjective_:::'/5,
  'dn--un--__Impl_Injective_(%lam RigW Explicit (Just {arg:0}) _ ((::: {arg:0}) $ys))'/1,
  'dn--un--__Impl_Injective_(%lam RigW Explicit (Just {arg:0}) _ ((::: $x) {arg:0}))'/1,
  'dn--un--__Impl_Biinjective_:::'/5,
  'un--toListLappend'/2,
  'un--toListAppendl'/2,
  'un--toListAppend'/2,
  'un--listLength'/1,
  'un--lappendNilLeftNeutral'/1,
  'un--fromListAppend'/2,
  'un--consInjective'/1,
  'un--appendlNilRightNeutral'/1,
  'un--appendAssociative'/3
]).
'with--fromListAppend-5606'(V0, V1, V2, V3, V4, V5) -> case V1 of [] -> case V2 of {'Prelude.Types.Nothing'} -> {'Builtin.Refl'} end; [E0 | E1] -> (fun (V6, V7) -> case V2 of {'Prelude.Types.Just', V8} -> case V8 of {'Data.List1.:::', V9, V10} -> case ('dn--un--biinjective_Biinjective_:::'(V6, V9, V7, V10, ('Idris.Idris2.Data.Maybe':'dn--un--injective_Injective_Just'({'Data.List1.:::', V6, V7}, {'Data.List1.:::', V9, V10}, V3)))) of {'Builtin.MkPair', V11, V12} -> {'Builtin.Refl'} end end end end(E0, E1)) end.
'with--fromListAppend-5583'(V0, V1, V2) -> case V2 of {'Prelude.Types.Nothing'} -> {'Builtin.Refl'}; {'Prelude.Types.Just', V3} -> {'Builtin.Refl'} end.
'dn--un--injective_Injective_(%lam RigW Explicit (Just {arg:0}) _ ((::: {arg:0}) $ys))'(V0, V1, V2, V3) -> {'Builtin.Refl'}.
'dn--un--injective_Injective_(%lam RigW Explicit (Just {arg:0}) _ ((::: $x) {arg:0}))'(V0, V1, V2, V3) -> {'Builtin.Refl'}.
'dn--un--biinjective_Biinjective_:::'(V0, V1, V2, V3, V4) -> {'Builtin.MkPair', {'Builtin.Refl'}, {'Builtin.Refl'}}.
'dn--un--__Impl_Injective_(%lam RigW Explicit (Just {arg:0}) _ ((::: {arg:0}) $ys))'(V0) -> {'Control.Function.MkInjective', fun (V1) -> {'Data.List1.:::', V1, V0} end, fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--injective_Injective_(%lam RigW Explicit (Just {arg:0}) _ ((::: {arg:0}) $ys))'(V0, V2, V3, V4)) end end end}.
'dn--un--__Impl_Injective_(%lam RigW Explicit (Just {arg:0}) _ ((::: $x) {arg:0}))'(V0) -> {'Control.Function.MkInjective', fun (V1) -> {'Data.List1.:::', V0, V1} end, fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--injective_Injective_(%lam RigW Explicit (Just {arg:0}) _ ((::: $x) {arg:0}))'(V0, V2, V3, V4)) end end end}.
'dn--un--__Impl_Biinjective_:::'(V0, V1, V2, V3, V4) -> ('dn--un--biinjective_Biinjective_:::'(V0, V1, V2, V3, V4)).
'un--toListLappend'(V0, V1) -> case V0 of [] -> {'Builtin.Refl'}; [E0 | E1] -> (fun (V2, V3) -> {'Builtin.Refl'} end(E0, E1)) end.
'un--toListAppendl'(V0, V1) -> case V0 of {'Data.List1.:::', V2, V3} -> {'Builtin.Refl'} end.
'un--toListAppend'(V0, V1) -> case V0 of {'Data.List1.:::', V2, V3} -> case V1 of {'Data.List1.:::', V4, V5} -> {'Builtin.Refl'} end end.
'un--listLength'(V0) -> case V0 of {'Data.List1.:::', V1, V2} -> {'Builtin.Refl'} end.
'un--lappendNilLeftNeutral'(V0) -> {'Builtin.Refl'}.
'un--fromListAppend'(V0, V1) -> case V0 of [] -> ('with--fromListAppend-5583'('erased', V1, ('Idris.Idris2.Data.List1':'un--fromList'(V1)))); [E0 | E1] -> (fun (V2, V3) -> ('with--fromListAppend-5606'('erased', V1, ('Idris.Idris2.Data.List1':'un--fromList'(V1)), {'Builtin.Refl'}, V2, V3)) end(E0, E1)) end.
'un--consInjective'(V0) -> {'Builtin.MkPair', {'Builtin.Refl'}, {'Builtin.Refl'}}.
'un--appendlNilRightNeutral'(V0) -> case V0 of {'Data.List1.:::', V1, V2} -> {'Builtin.Refl'} end.
'un--appendAssociative'(V0, V1, V2) -> case V0 of {'Data.List1.:::', V3, V4} -> case V1 of {'Data.List1.:::', V5, V6} -> case V2 of {'Data.List1.:::', V7, V8} -> {'Builtin.Refl'} end end end.
