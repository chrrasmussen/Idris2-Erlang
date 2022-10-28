-module('Idris.Idris2.Data.DPair.Subset').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--max-4678'/4,
  'case--min-4638'/4,
  'dn--un--show_Show_((Subset $type) $pred)'/2,
  'dn--un--showPrec_Show_((Subset $type) $pred)'/3,
  'dn--un--min_Ord_((Subset $type) $pred)'/3,
  'dn--un--max_Ord_((Subset $type) $pred)'/3,
  'dn--un--compare_Ord_((Subset $type) $pred)'/3,
  'dn--un--__Impl_Show_((Subset $type) $pred)'/1,
  'dn--un--__Impl_Ord_((Subset $type) $pred)'/1,
  'dn--un--__Impl_Eq_((Subset $type) $pred)'/1,
  'dn--un-->_Ord_((Subset $type) $pred)'/3,
  'dn--un-->=_Ord_((Subset $type) $pred)'/3,
  'dn--un--==_Eq_((Subset $type) $pred)'/3,
  'dn--un--<_Ord_((Subset $type) $pred)'/3,
  'dn--un--<=_Ord_((Subset $type) $pred)'/3,
  'dn--un--/=_Eq_((Subset $type) $pred)'/3,
  'un--uncurry'/2,
  'un--elementInjectiveSnd'/1,
  'un--elementInjectiveFst'/1,
  'un--curry'/2,
  'un--bimap'/2
]).
'case--max-4678'(V0, V1, V2, V3) -> case V3 of 1 -> V2; 0 -> V1 end.
'case--min-4638'(V0, V1, V2, V3) -> case V3 of 1 -> V2; 0 -> V1 end.
'dn--un--show_Show_((Subset $type) $pred)'(V0, V1) -> ('dn--un--showPrec_Show_((Subset $type) $pred)'(V0, {'Prelude.Show.Open'}, V1)).
'dn--un--showPrec_Show_((Subset $type) $pred)'(V0, V1, V2) -> begin (V3 = V2), ('Idris.Idris2.Prelude.Show':'un--showCon'(V1, <<"Element"/utf8>>, <<('Idris.Idris2.Prelude.Show':'un--showArg'(V0, V3))/binary, <<" _"/utf8>>/binary>>)) end.
'dn--un--min_Ord_((Subset $type) $pred)'(V0, V1, V2) -> case ('dn--un--<_Ord_((Subset $type) $pred)'(V0, V1, V2)) of 1 -> V1; 0 -> V2 end.
'dn--un--max_Ord_((Subset $type) $pred)'(V0, V1, V2) -> case ('dn--un-->_Ord_((Subset $type) $pred)'(V0, V1, V2)) of 1 -> V1; 0 -> V2 end.
'dn--un--compare_Ord_((Subset $type) $pred)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Basics':'un--on'(fun (V3) -> fun (V4) -> case V0 of {'Prelude.EqOrd.MkOrd', V5, V6, V7, V8, V9, V10, V11, V12} -> ((V6(V3))(V4)) end end end, fun (V13) -> begin (V14 = V13), V14 end end, V1, V2)).
'dn--un--__Impl_Show_((Subset $type) $pred)'(V0) -> {'Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_((Subset $type) $pred)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_((Subset $type) $pred)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Ord_((Subset $type) $pred)'(V0) -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_((Subset $type) $pred)'(case V0 of {'Prelude.EqOrd.MkOrd', V3, V4, V5, V6, V7, V8, V9, V10} -> V3 end, V1, V2)) end end, fun (V11) -> fun (V12) -> ('dn--un--/=_Eq_((Subset $type) $pred)'(case V0 of {'Prelude.EqOrd.MkOrd', V13, V14, V15, V16, V17, V18, V19, V20} -> V13 end, V11, V12)) end end}, fun (V21) -> fun (V22) -> ('dn--un--compare_Ord_((Subset $type) $pred)'(V0, V21, V22)) end end, fun (V23) -> fun (V24) -> ('dn--un--<_Ord_((Subset $type) $pred)'(V0, V23, V24)) end end, fun (V25) -> fun (V26) -> ('dn--un-->_Ord_((Subset $type) $pred)'(V0, V25, V26)) end end, fun (V27) -> fun (V28) -> ('dn--un--<=_Ord_((Subset $type) $pred)'(V0, V27, V28)) end end, fun (V29) -> fun (V30) -> ('dn--un-->=_Ord_((Subset $type) $pred)'(V0, V29, V30)) end end, fun (V31) -> fun (V32) -> ('dn--un--max_Ord_((Subset $type) $pred)'(V0, V31, V32)) end end, fun (V33) -> fun (V34) -> ('dn--un--min_Ord_((Subset $type) $pred)'(V0, V33, V34)) end end}.
'dn--un--__Impl_Eq_((Subset $type) $pred)'(V0) -> {'Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq_((Subset $type) $pred)'(V0, V1, V2)) end end, fun (V3) -> fun (V4) -> ('dn--un--/=_Eq_((Subset $type) $pred)'(V0, V3, V4)) end end}.
'dn--un-->_Ord_((Subset $type) $pred)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_((Subset $type) $pred)'(V0, V1, V2)), 2)).
'dn--un-->=_Ord_((Subset $type) $pred)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_((Subset $type) $pred)'(V0, V1, V2)), 0)).
'dn--un--==_Eq_((Subset $type) $pred)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Basics':'un--on'(fun (V3) -> fun (V4) -> case V0 of {'Prelude.EqOrd.MkEq', V5, V6} -> ((V5(V3))(V4)) end end end, fun (V7) -> begin (V8 = V7), V8 end end, V1, V2)).
'dn--un--<_Ord_((Subset $type) $pred)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_((Subset $type) $pred)'(V0, V1, V2)), 0)).
'dn--un--<=_Ord_((Subset $type) $pred)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_((Subset $type) $pred)'(V0, V1, V2)), 2)).
'dn--un--/=_Eq_((Subset $type) $pred)'(V0, V1, V2) -> case ('dn--un--==_Eq_((Subset $type) $pred)'(V0, V1, V2)) of 1 -> 0; 0 -> 1 end.
'un--uncurry'(V0, V1) -> ((V0(begin (V2 = V1), V2 end))('erased')).
'un--elementInjectiveSnd'(V0) -> {'Builtin.Refl'}.
'un--elementInjectiveFst'(V0) -> {'Builtin.Refl'}.
'un--curry'(V0, V1) -> (V0(V1)).
'un--bimap'(V0, V1) -> begin (V2 = V1), (V0(V2)) end.
