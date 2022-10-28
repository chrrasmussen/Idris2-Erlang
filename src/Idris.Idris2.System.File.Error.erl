-module('Idris.Idris2.System.File.Error').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--show_Show_FileError'/1,
  'dn--un--showPrec_Show_FileError'/2,
  'dn--un--__Impl_Show_FileError'/0,
  'un--returnError'/1,
  'un--prim__fileErrno'/1,
  'un--prim__error'/2,
  'un--fileError'/2
]).
'dn--un--show_Show_FileError'(V0) -> case V0 of {'System.File.Error.GenericFileError', V1} -> ('Idris.Idris2.System.Errno':'un--strerror'(V1)); {'System.File.Error.FileReadError'} -> <<"File Read Error"/utf8>>; {'System.File.Error.FileWriteError'} -> <<"File Write Error"/utf8>>; {'System.File.Error.FileNotFound'} -> <<"File Not Found"/utf8>>; {'System.File.Error.PermissionDenied'} -> <<"Permission Denied"/utf8>>; {'System.File.Error.FileExists'} -> <<"File Exists"/utf8>> end.
'dn--un--showPrec_Show_FileError'(V0, V1) -> ('dn--un--show_Show_FileError'(V1)).
'dn--un--__Impl_Show_FileError'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_FileError'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_FileError'(V1, V2)) end end}.
'un--returnError'(V0) -> case V0 of {'Prelude.IO.MkHasIO', V1, V2} -> case V1 of {'Prelude.Interfaces.MkMonad', V3, V4, V5} -> ((((V4('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V16, V17} -> ((V17('erased'))(fun (V18) -> ('un--prim__fileErrno'(V18)) end)) end))(fun (V6) -> case V0 of {'Prelude.IO.MkHasIO', V7, V8} -> case V7 of {'Prelude.Interfaces.MkMonad', V9, V10, V11} -> case V9 of {'Prelude.Interfaces.MkApplicative', V12, V13, V14} -> ((V13('erased'))({'Prelude.Types.Left', case V6 of 0 -> {'System.File.Error.FileReadError'}; 1 -> {'System.File.Error.FileWriteError'}; 2 -> {'System.File.Error.FileNotFound'}; 3 -> {'System.File.Error.PermissionDenied'}; 4 -> {'System.File.Error.FileExists'}; _ -> {'System.File.Error.GenericFileError', begin (V15 = (V6 - 5)), case ((V15 band 9223372036854775808) =/= 0) of 'true' -> (V15 bor -9223372036854775808); _ -> (V15 band 9223372036854775807) end end} end})) end end end end)) end end.
'un--prim__fileErrno'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive System.File.Error.prim__fileErrno"/utf8>>})).
'un--prim__error'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive System.File.Error.prim__error"/utf8>>})).
'un--fileError'(V0, V1) -> begin (V2 = V1), case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> case V3 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> ((((V6('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V18, V19} -> ((V19('erased'))(fun (V20) -> ('un--prim__error'(V2, V20)) end)) end))(fun (V8) -> case V0 of {'Prelude.IO.MkHasIO', V9, V10} -> case V9 of {'Prelude.Interfaces.MkMonad', V11, V12, V13} -> case V11 of {'Prelude.Interfaces.MkApplicative', V14, V15, V16} -> ((V15('erased'))(('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Int'(V8, begin (V17 = 0), case ((V17 band 9223372036854775808) =/= 0) of 'true' -> (V17 bor -9223372036854775808); _ -> (V17 band 9223372036854775807) end end)))) end end end end)) end end end.
