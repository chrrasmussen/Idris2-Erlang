-module('Idris.Idris2.System.File.Process').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--prim__popen'/3,
  'un--prim__pclose'/2,
  'un--prim__flush'/2,
  'un--popen'/3,
  'un--pclose'/2,
  'un--fflush'/2
]).
'un--prim__popen'(V0, V1, V2) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive System.File.Process.prim__popen"/utf8>>})).
'un--prim__pclose'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive System.File.Process.prim__pclose"/utf8>>})).
'un--prim__flush'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive System.File.Process.prim__flush"/utf8>>})).
'un--popen'(V0, V1, V2) -> case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> case V3 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> ((((V6('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V18, V19} -> ((V19('erased'))(fun (V20) -> ('un--prim__popen'(V1, ('Idris.Idris2.System.File.Mode':'un--modeStr'(V2)), V20)) end)) end))(fun (V8) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Int'(('Idris.Idris2.PrimIO':'un--prim__nullAnyPtr'(V8)), begin (V9 = 0), case ((V9 band 9223372036854775808) =/= 0) of 'true' -> (V9 bor -9223372036854775808); _ -> (V9 band 9223372036854775807) end end)) of 1 -> ('Idris.Idris2.System.File.Error':'un--returnError'(V0)); 0 -> case V0 of {'Prelude.IO.MkHasIO', V10, V11} -> case V10 of {'Prelude.Interfaces.MkMonad', V12, V13, V14} -> case V12 of {'Prelude.Interfaces.MkApplicative', V15, V16, V17} -> ((V16('erased'))({'Prelude.Types.Right', V8})) end end end end end)) end end.
'un--pclose'(V0, V1) -> begin (V2 = V1), case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> ((V4('erased'))(fun (V5) -> ('un--prim__pclose'(V2, V5)) end)) end end.
'un--fflush'(V0, V1) -> begin (V2 = V1), ((begin (V15 = case V0 of {'Prelude.IO.MkHasIO', V7, V8} -> case V7 of {'Prelude.Interfaces.MkMonad', V9, V10, V11} -> case V9 of {'Prelude.Interfaces.MkApplicative', V12, V13, V14} -> V12 end end end), fun (V16) -> fun (V17) -> ((((V15('erased'))('erased'))(V16))(V17)) end end end(fun (V6) -> {'Builtin.MkUnit'} end))(case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> ((V4('erased'))(fun (V5) -> ('un--prim__flush'(V2, V5)) end)) end)) end.
