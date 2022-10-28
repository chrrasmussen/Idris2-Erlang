-module('Idris.Idris2.Data.DPair.DPair').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--==-3525'/7,
  'dn--un--__Impl_Eq_((DPair $k) $v)'/2,
  'dn--un--==_Eq_((DPair $k) $v)'/4,
  'dn--un--/=_Eq_((DPair $k) $v)'/4,
  'un--uncurry'/2,
  'un--curry'/3,
  'un--choice'/1,
  'un--bimap'/3
]).
'case--==-3525'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Prelude.Types.Yes', V7} -> case (V1(V2)) of {'Prelude.EqOrd.MkEq', V8, V9} -> ((V8(V3))(V5)) end; {'Prelude.Types.No', V10} -> 0 end.
'dn--un--__Impl_Eq_((DPair $k) $v)'(V0, V1) -> {'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('dn--un--==_Eq_((DPair $k) $v)'(V0, fun (V4) -> (V1(V4)) end, V2, V3)) end end, fun (V5) -> fun (V6) -> ('dn--un--/=_Eq_((DPair $k) $v)'(V0, fun (V7) -> (V1(V7)) end, V5, V6)) end end}.
'dn--un--==_Eq_((DPair $k) $v)'(V0, V1, V2, V3) -> case V2 of {'Builtin.DPair.MkDPair', V4, V5} -> case V3 of {'Builtin.DPair.MkDPair', V6, V7} -> case ((begin (V8 = V0), fun (V9) -> fun (V10) -> ((V8(V9))(V10)) end end end(V4))(V6)) of {'Prelude.Types.Yes', V11} -> case (V1(V4)) of {'Prelude.EqOrd.MkEq', V12, V13} -> ((V12(V5))(V7)) end; {'Prelude.Types.No', V14} -> 0 end end end.
'dn--un--/=_Eq_((DPair $k) $v)'(V0, V1, V2, V3) -> case ('dn--un--==_Eq_((DPair $k) $v)'(V0, fun (V4) -> (V1(V4)) end, V2, V3)) of 1 -> 0; 0 -> 1 end.
'un--uncurry'(V0, V1) -> ((V0(case V1 of {'Builtin.DPair.MkDPair', V4, V5} -> V4 end))(case V1 of {'Builtin.DPair.MkDPair', V2, V3} -> V3 end)).
'un--curry'(V0, V1, V2) -> (V0({'Builtin.DPair.MkDPair', V1, V2})).
'un--choice'(V0) -> {'Builtin.DPair.MkDPair', fun (V1) -> case (V0(V1)) of {'Builtin.DPair.MkDPair', V2, V3} -> V2 end end, fun (V4) -> case (V0(V4)) of {'Builtin.DPair.MkDPair', V5, V6} -> V6 end end}.
'un--bimap'(V0, V1, V2) -> case V2 of {'Builtin.DPair.MkDPair', V3, V4} -> {'Builtin.DPair.MkDPair', (V0(V3)), ((V1('erased'))(V4))} end.
