-module('Idris.Idris2.Compiler.Erlang.IR.ErlExpr').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--__Impl_Eq_ErlVisibility'/0,
  'dn--un--==_Eq_ErlVisibility'/2,
  'dn--un--/=_Eq_ErlVisibility'/2,
  'un--Line'/0
]).
'dn--un--__Impl_Eq_ErlVisibility'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_ErlVisibility'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_ErlVisibility'(V2, V3)) end end}.
'dn--un--==_Eq_ErlVisibility'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> 1; _ -> 0 end; 1 -> case V1 of 1 -> 1; _ -> 0 end; _ -> 0 end.
'dn--un--/=_Eq_ErlVisibility'(V0, V1) -> case ('dn--un--==_Eq_ErlVisibility'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--Line'() -> {'Idris.Int'}.
