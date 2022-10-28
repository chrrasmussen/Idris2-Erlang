-module('Idris.Idris2.System.Info').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--prim__getNProcessors'/1,
  'un--os'/0,
  'un--isWindows'/0,
  'un--getNProcessors'/1,
  'un--codegen'/0
]).
'un--prim__getNProcessors'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive System.Info.prim__getNProcessors"/utf8>>})).
'un--os'() -> case ('os':'type'()) of {'unix', E0} -> (fun (V0, V1) -> case V1 of 'darwin' -> <<"darwin"/utf8>>; _ -> <<"unix"/utf8>> end end('unix', E0)); {'win32', E1} -> (fun (V2, V3) -> <<"windows"/utf8>> end('win32', E1)); _ -> <<"unknown"/utf8>> end.
'un--isWindows'() -> ('Idris.Idris2.Prelude.Types':'un--elem'({'Prelude.Interfaces.MkFoldable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V7, V8, V9)) end end end end end, fun (V10) -> fun (V11) -> ('Idris.Idris2.Prelude.Types':'dn--un--null_Foldable_List'(V11)) end end, fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldlM_Foldable_List'(V15, V16, V17, V18)) end end end end end end end, fun (V19) -> fun (V20) -> V20 end end, fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V23, V24, V25)) end end end end end}, {'Prelude.EqOrd.MkEq', fun (V26) -> fun (V27) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V26, V27)) end end, fun (V28) -> fun (V29) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_String'(V28, V29)) end end}, ('un--os'()), [<<"windows"/utf8>> | [<<"mingw32"/utf8>> | [<<"cygwin32"/utf8>> | []]]])).
'un--getNProcessors'(V0) -> begin (V1 = ('un--prim__getNProcessors'(V0))), case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Int'(V1, begin (V2 = 0), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end)) of 1 -> {'Prelude.Types.Nothing'}; 0 -> {'Prelude.Types.Just', ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V1))} end end.
'un--codegen'() -> <<"erlang"/utf8>>.
