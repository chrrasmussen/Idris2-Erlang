-module('Idris.Idris2.Compiler.Erlang.IR.ErlExpr').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--__Impl_Eq_ErlVisibility'/0,
  'dn--un--==_Eq__ErlVisibility'/2,
  'dn--un--/=_Eq__ErlVisibility'/2,
  'un--Line'/0
]).
'dn--un--__Impl_Eq_ErlVisibility'() -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__ErlVisibility'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__ErlVisibility'(V2, V3)) end end}.
'dn--un--==_Eq__ErlVisibility'(V0, V1) -> case V0 of {'Idris.Compiler.Erlang.IR.ErlExpr.Private'} -> (fun () -> case V1 of {'Idris.Compiler.Erlang.IR.ErlExpr.Private'} -> (fun () -> 0 end()); _ -> 1 end end()); {'Idris.Compiler.Erlang.IR.ErlExpr.Public'} -> (fun () -> case V1 of {'Idris.Compiler.Erlang.IR.ErlExpr.Public'} -> (fun () -> 0 end()); _ -> 1 end end()); _ -> 1 end.
'dn--un--/=_Eq__ErlVisibility'(V0, V1) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__ErlVisibility'(V0, V1)))).
'un--Line'() -> {'Idris.Int'}.
