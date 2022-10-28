-module('Idris.Idris2.Core.Context.TTC').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--toBuf_TTC_BuiltinType'/2,
  'dn--un--fromBuf_TTC_BuiltinType'/1,
  'dn--un--__Impl_TTC_BuiltinType'/0
]).
'dn--un--toBuf_TTC_BuiltinType'(V0, V1) -> case V1 of 0 -> ('Idris.Idris2.Core.Binary.Prims':'un--tag'(V0, 0)); 1 -> ('Idris.Idris2.Core.Binary.Prims':'un--tag'(V0, 1)); 2 -> ('Idris.Idris2.Core.Binary.Prims':'un--tag'(V0, 2)) end.
'dn--un--fromBuf_TTC_BuiltinType'(V0) -> begin (V1 = ('Idris.Idris2.Core.Binary.Prims':'un--getTag'(V0))), fun (V2) -> begin (V3 = (V1(V2))), case V3 of {'Prelude.Types.Left', V4} -> {'Prelude.Types.Left', V4}; {'Prelude.Types.Right', V5} -> (begin (V7 = fun (V6) -> case V5 of 0 -> {'Prelude.Types.Right', 0}; 1 -> {'Prelude.Types.Right', 1}; 2 -> {'Prelude.Types.Right', 2}; _ -> ('Idris.Idris2.Core.Binary.Prims':'un--corrupt'(<<"BuiltinType"/utf8>>, V6)) end end), V7 end(V2)) end end end end.
'dn--un--__Impl_TTC_BuiltinType'() -> {'Core.Binary.Prims.dn--un--__mkTTC', fun (V0) -> fun (V1) -> ('dn--un--toBuf_TTC_BuiltinType'(V0, V1)) end end, fun (V2) -> ('dn--un--fromBuf_TTC_BuiltinType'(V2)) end}.
