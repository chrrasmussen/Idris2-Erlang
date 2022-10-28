-module('Idris.Idris2.Core.Core.Applicative').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--pure_Applicative_CORECore'/2,
  'dn--un--<*>_Applicative_CORECore'/2,
  'un--CORE'/0
]).
'dn--un--pure_Applicative_CORECore'(V0, V1) -> {'Prelude.Types.Right', V0}.
'dn--un--<*>_Applicative_CORECore'(V0, V1) -> ('Idris.Idris2.Core.Core':'un--<*>'(V0, V1)).
'un--CORE'() -> {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('Idris.Idris2.Core.Core.Functor':'dn--un--map_Functor_CORECore'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> fun (V6) -> ('dn--un--pure_Applicative_CORECore'(V5, V6)) end end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('dn--un--<*>_Applicative_CORECore'(V9, V10)) end end end end}.
