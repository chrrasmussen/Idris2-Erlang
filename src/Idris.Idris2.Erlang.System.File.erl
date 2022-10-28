-module('Idris.Idris2.Erlang.System.File').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--fileInfo-4889'/6,
  'nested--5461-4289--in--un--scanBack'/2,
  'nested--6531-5326--in--un--getMs'/2,
  'nested--6531-5325--in--un--getM'/2,
  'dn--un--show_Show_FileError'/1,
  'dn--un--showPrec_Show_FileError'/2,
  'dn--un--__Impl_Show_FileError'/0,
  'un--writeFile'/3,
  'un--unknownError'/0,
  'un--stdout'/0,
  'un--stdin'/0,
  'un--stderr'/0,
  'un--removeFile'/2,
  'un--reason'/0,
  'un--readFile'/2,
  'un--openFile'/3,
  'un--mkMode'/1,
  'un--firstExists'/2,
  'un--fileStatusTime'/2,
  'un--fileSize'/2,
  'un--fileModifiedTime'/2,
  'un--fileModes'/1,
  'un--fileInfo'/4,
  'un--fileAccessTime'/2,
  'un--fflush'/2,
  'un--fPutStrLn'/3,
  'un--fPutStr'/3,
  'un--fGetLine'/2,
  'un--fGetChar'/2,
  'un--fEOF'/2,
  'un--exists'/2,
  'un--error'/0,
  'un--copyFile'/3,
  'un--closeFile'/2,
  'un--chmodRaw'/3,
  'un--chmod'/3
]).
'case--fileInfo-4889'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Prelude.Types.Right', V6} -> case V0 of {'Prelude.IO.MkHasIO', V7, V8} -> case V7 of {'Prelude.Interfaces.MkMonad', V9, V10, V11} -> ((((V10('erased'))('erased'))(('Idris.Idris2.Erlang.IO':'un--erlTryCatch'(V0, fun (V39) -> ('erlang':'apply'('erlang', 'element', [((begin (V41 = fun (V40) -> V40 end), fun (V42) -> (V41(V42)) end end(V2)) + 2) | [V6 | []]])) end))))(fun (V12) -> case V12 of {'Prelude.Types.Right', V13} -> case V0 of {'Prelude.IO.MkHasIO', V14, V15} -> case V14 of {'Prelude.Interfaces.MkMonad', V16, V17, V18} -> case V16 of {'Prelude.Interfaces.MkApplicative', V19, V20, V21} -> ((V20('erased'))(('Idris.Idris2.Erlang.Decode':'un--erlDecodeDef'({'Erlang.Types.ETErlTerm'}, fun () -> {'Prelude.Types.Left', ('un--unknownError'())} end, ((begin (V27 = fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(V25, V26)) end end end end), fun (V28) -> fun (V29) -> ((((V27('erased'))('erased'))(V28))(V29)) end end end(fun (V22) -> {'Prelude.Types.Right', V22} end))(V1)), V13)))) end end end; {'Prelude.Types.Left', V30} -> case V0 of {'Prelude.IO.MkHasIO', V31, V32} -> case V31 of {'Prelude.Interfaces.MkMonad', V33, V34, V35} -> case V33 of {'Prelude.Interfaces.MkApplicative', V36, V37, V38} -> ((V37('erased'))({'Prelude.Types.Left', ('un--unknownError'())})) end end end end end)) end end; {'Prelude.Types.Left', V43} -> case V0 of {'Prelude.IO.MkHasIO', V44, V45} -> case V44 of {'Prelude.Interfaces.MkMonad', V46, V47, V48} -> case V46 of {'Prelude.Interfaces.MkApplicative', V49, V50, V51} -> ((V50('erased'))({'Prelude.Types.Left', V43})) end end end end.
'nested--5461-4289--in--un--scanBack'(V0, V1) -> case V0 of {'Prelude.IO.MkHasIO', V2, V3} -> case V2 of {'Prelude.Interfaces.MkMonad', V4, V5, V6} -> ((((V5('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V42, V43} -> case V42 of {'Prelude.Interfaces.MkMonad', V44, V45, V46} -> case V44 of {'Prelude.Interfaces.MkApplicative', V47, V48, V49} -> ((V48('erased'))(('erlang':'apply'('file', 'position', [V1 | [{'cur', -1} | []]])))) end end end))(fun (V7) -> case V0 of {'Prelude.IO.MkHasIO', V8, V9} -> case V8 of {'Prelude.Interfaces.MkMonad', V10, V11, V12} -> case V10 of {'Prelude.Interfaces.MkApplicative', V13, V14, V15} -> ((V14('erased'))(('Idris.Idris2.Erlang.Decode':'un--erlDecodeDef'({'Erlang.Types.ETErlTerm'}, fun () -> 1 end, ('Idris.Idris2.Erlang.Decode':'dn--un--<|>_Alternative_ErlDecoder'(('Idris.Idris2.Prelude.Interfaces':'un--*>'({'Prelude.Interfaces.MkApplicative', fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(V18, V19)) end end end end, fun (V20) -> fun (V21) -> fun (V22) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'(V21, V22)) end end end, fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> ('Idris.Idris2.Erlang.Decode':'dn--un--<*>_Applicative_ErlDecoder'(V25, V26)) end end end end}, ('Idris.Idris2.Erlang.Decode':'un--okTuple'(fun (V27) -> ('Idris.Idris2.Erlang.Decode':'un--any'(V27)) end)), fun (V28) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'(0, V28)) end)), fun () -> ('Idris.Idris2.Prelude.Interfaces':'un--*>'({'Prelude.Interfaces.MkApplicative', fun (V29) -> fun (V30) -> fun (V31) -> fun (V32) -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(V31, V32)) end end end end, fun (V33) -> fun (V34) -> fun (V35) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'(V34, V35)) end end end, fun (V36) -> fun (V37) -> fun (V38) -> fun (V39) -> ('Idris.Idris2.Erlang.Decode':'dn--un--<*>_Applicative_ErlDecoder'(V38, V39)) end end end end}, ('Idris.Idris2.Erlang.Decode':'un--errorTuple'(fun (V40) -> ('Idris.Idris2.Erlang.Decode':'un--any'(V40)) end)), fun (V41) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'(1, V41)) end)) end)), V7)))) end end end end)) end end.
'nested--6531-5326--in--un--getMs'(V0, V1) -> ('Idris.Idris2.Prelude.Interfaces':'un--sum'({'Prelude.Num.MkNum', fun (V2) -> fun (V3) -> begin (V4 = (V2 + V3)), case ((V4 band 9223372036854775808) =/= 0) of 'true' -> (V4 bor -9223372036854775808); _ -> (V4 band 9223372036854775807) end end end end, fun (V5) -> fun (V6) -> begin (V7 = (V5 * V6)), case ((V7 band 9223372036854775808) =/= 0) of 'true' -> (V7 bor -9223372036854775808); _ -> (V7 band 9223372036854775807) end end end end, fun (V8) -> begin (V9 = V8), case ((V9 band 9223372036854775808) =/= 0) of 'true' -> (V9 bor -9223372036854775808); _ -> (V9 band 9223372036854775807) end end end}, {'Prelude.Interfaces.MkFoldable', fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V12, V13, V14)) end end end end end, fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V17, V18, V19)) end end end end end, fun (V20) -> fun (V21) -> ('Idris.Idris2.Prelude.Types':'dn--un--null_Foldable_List'(V21)) end end, fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldlM_Foldable_List'(V25, V26, V27, V28)) end end end end end end end, fun (V29) -> fun (V30) -> V30 end end, fun (V31) -> fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V33, V34, V35)) end end end end end}, ((begin (V41 = fun (V37) -> fun (V38) -> fun (V39) -> fun (V40) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V39, V40)) end end end end), fun (V42) -> fun (V43) -> ((((V41('erased'))('erased'))(V42))(V43)) end end end(fun (V36) -> ('nested--6531-5325--in--un--getM'(V0, V36)) end))(V1)))).
'nested--6531-5325--in--un--getM'(V0, V1) -> case V1 of 0 -> 4; 1 -> 2; 2 -> 1 end.
'dn--un--show_Show_FileError'(V0) -> case V0 of {'Erlang.System.File.GenericFileError', V1} -> <<<<"File error: "/utf8>>/binary, ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(V1))/binary>>; {'Erlang.System.File.FileReadError'} -> <<"File Read Error"/utf8>>; {'Erlang.System.File.FileWriteError'} -> <<"File Write Error"/utf8>>; {'Erlang.System.File.FileNotFound'} -> <<"File Not Found"/utf8>>; {'Erlang.System.File.PermissionDenied'} -> <<"Permission Denied"/utf8>>; {'Erlang.System.File.FileExists'} -> <<"File Exists"/utf8>> end.
'dn--un--showPrec_Show_FileError'(V0, V1) -> ('dn--un--show_Show_FileError'(V1)).
'dn--un--__Impl_Show_FileError'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_FileError'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_FileError'(V1, V2)) end end}.
'un--writeFile'(V0, V1, V2) -> case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> case V3 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> ((((V6('erased'))('erased'))(('un--openFile'(V0, V1, 1))))(fun (V8) -> case V8 of {'Prelude.Types.Right', V9} -> case V0 of {'Prelude.IO.MkHasIO', V10, V11} -> case V10 of {'Prelude.Interfaces.MkMonad', V12, V13, V14} -> ((((V13('erased'))('erased'))(('un--fPutStr'(V0, V9, V2))))(fun (V15) -> case V15 of {'Prelude.Types.Right', V16} -> case V0 of {'Prelude.IO.MkHasIO', V17, V18} -> case V17 of {'Prelude.Interfaces.MkMonad', V19, V20, V21} -> ((((V20('erased'))('erased'))(('un--closeFile'(V0, V9))))(fun (V22) -> case V0 of {'Prelude.IO.MkHasIO', V23, V24} -> case V23 of {'Prelude.Interfaces.MkMonad', V25, V26, V27} -> case V25 of {'Prelude.Interfaces.MkApplicative', V28, V29, V30} -> ((V29('erased'))({'Prelude.Types.Right', {'Builtin.MkUnit'}})) end end end end)) end end; {'Prelude.Types.Left', V31} -> case V0 of {'Prelude.IO.MkHasIO', V32, V33} -> case V32 of {'Prelude.Interfaces.MkMonad', V34, V35, V36} -> ((((V35('erased'))('erased'))(('un--closeFile'(V0, V9))))(fun (V37) -> case V0 of {'Prelude.IO.MkHasIO', V38, V39} -> case V38 of {'Prelude.Interfaces.MkMonad', V40, V41, V42} -> case V40 of {'Prelude.Interfaces.MkApplicative', V43, V44, V45} -> ((V44('erased'))({'Prelude.Types.Left', V31})) end end end end)) end end end end)) end end; {'Prelude.Types.Left', V46} -> case V0 of {'Prelude.IO.MkHasIO', V47, V48} -> case V47 of {'Prelude.Interfaces.MkMonad', V49, V50, V51} -> case V49 of {'Prelude.Interfaces.MkApplicative', V52, V53, V54} -> ((V53('erased'))({'Prelude.Types.Left', V46})) end end end end end)) end end.
'un--unknownError'() -> {'Erlang.System.File.GenericFileError', 0}.
'un--stdout'() -> (begin (V1 = fun (V0) -> V0 end), fun (V2) -> (V1(V2)) end end('standard_io')).
'un--stdin'() -> (begin (V1 = fun (V0) -> V0 end), fun (V2) -> (V1(V2)) end end('standard_io')).
'un--stderr'() -> (begin (V1 = fun (V0) -> V0 end), fun (V2) -> (V1(V2)) end end('standard_error')).
'un--removeFile'(V0, V1) -> case V0 of {'Prelude.IO.MkHasIO', V2, V3} -> case V2 of {'Prelude.Interfaces.MkMonad', V4, V5, V6} -> ((((V5('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V30, V31} -> case V30 of {'Prelude.Interfaces.MkMonad', V32, V33, V34} -> case V32 of {'Prelude.Interfaces.MkApplicative', V35, V36, V37} -> ((V36('erased'))(('erlang':'apply'('file', 'delete', [V1 | []])))) end end end))(fun (V7) -> case V0 of {'Prelude.IO.MkHasIO', V8, V9} -> case V8 of {'Prelude.Interfaces.MkMonad', V10, V11, V12} -> case V10 of {'Prelude.Interfaces.MkApplicative', V13, V14, V15} -> ((V14('erased'))(('Idris.Idris2.Erlang.Decode':'un--erlDecodeDef'({'Erlang.Types.ETErlTerm'}, fun () -> {'Prelude.Types.Left', ('un--unknownError'())} end, ('Idris.Idris2.Erlang.Decode':'dn--un--<|>_Alternative_ErlDecoder'(('Idris.Idris2.Prelude.Interfaces':'un--*>'({'Prelude.Interfaces.MkApplicative', fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(V18, V19)) end end end end, fun (V20) -> fun (V21) -> fun (V22) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'(V21, V22)) end end end, fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> ('Idris.Idris2.Erlang.Decode':'dn--un--<*>_Applicative_ErlDecoder'(V25, V26)) end end end end}, fun (V27) -> ('Idris.Idris2.Erlang.Decode':'un--exact'({'Erlang.Types.ETErlAtom'}, 'ok', V27)) end, fun (V28) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'({'Prelude.Types.Right', {'Builtin.MkUnit'}}, V28)) end)), fun () -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(fun (V29) -> {'Prelude.Types.Left', V29} end, ('un--error'()))) end)), V7)))) end end end end)) end end.
'un--reason'() -> ('Idris.Idris2.Erlang.Decode':'dn--un--<|>_Alternative_ErlDecoder'(('Idris.Idris2.Prelude.Interfaces':'un--*>'({'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> fun (V6) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'(V5, V6)) end end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('Idris.Idris2.Erlang.Decode':'dn--un--<*>_Applicative_ErlDecoder'(V9, V10)) end end end end}, fun (V11) -> ('Idris.Idris2.Erlang.Decode':'un--exact'({'Erlang.Types.ETErlAtom'}, 'enoent', V11)) end, fun (V12) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'({'Erlang.System.File.FileNotFound'}, V12)) end)), fun () -> ('Idris.Idris2.Erlang.Decode':'dn--un--<|>_Alternative_ErlDecoder'(('Idris.Idris2.Prelude.Interfaces':'un--*>'({'Prelude.Interfaces.MkApplicative', fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(V15, V16)) end end end end, fun (V17) -> fun (V18) -> fun (V19) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'(V18, V19)) end end end, fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('Idris.Idris2.Erlang.Decode':'dn--un--<*>_Applicative_ErlDecoder'(V22, V23)) end end end end}, fun (V24) -> ('Idris.Idris2.Erlang.Decode':'un--exact'({'Erlang.Types.ETErlAtom'}, 'eacces', V24)) end, fun (V25) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'({'Erlang.System.File.PermissionDenied'}, V25)) end)), fun () -> ('Idris.Idris2.Erlang.Decode':'dn--un--<|>_Alternative_ErlDecoder'(('Idris.Idris2.Prelude.Interfaces':'un--*>'({'Prelude.Interfaces.MkApplicative', fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(V28, V29)) end end end end, fun (V30) -> fun (V31) -> fun (V32) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'(V31, V32)) end end end, fun (V33) -> fun (V34) -> fun (V35) -> fun (V36) -> ('Idris.Idris2.Erlang.Decode':'dn--un--<*>_Applicative_ErlDecoder'(V35, V36)) end end end end}, fun (V37) -> ('Idris.Idris2.Erlang.Decode':'un--exact'({'Erlang.Types.ETErlAtom'}, 'eexist', V37)) end, fun (V38) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'({'Erlang.System.File.FileExists'}, V38)) end)), fun () -> fun (V39) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'(('un--unknownError'()), V39)) end end)) end)) end)).
'un--readFile'(V0, V1) -> case V0 of {'Prelude.IO.MkHasIO', V2, V3} -> case V2 of {'Prelude.Interfaces.MkMonad', V4, V5, V6} -> ((((V5('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V33, V34} -> case V33 of {'Prelude.Interfaces.MkMonad', V35, V36, V37} -> case V35 of {'Prelude.Interfaces.MkApplicative', V38, V39, V40} -> ((V39('erased'))(('erlang':'apply'('file', 'read_file', [V1 | []])))) end end end))(fun (V7) -> case V0 of {'Prelude.IO.MkHasIO', V8, V9} -> case V8 of {'Prelude.Interfaces.MkMonad', V10, V11, V12} -> case V10 of {'Prelude.Interfaces.MkApplicative', V13, V14, V15} -> ((V14('erased'))(('Idris.Idris2.Erlang.Decode':'un--erlDecodeDef'({'Erlang.Types.ETErlTerm'}, fun () -> {'Prelude.Types.Left', {'Erlang.System.File.FileReadError'}} end, ('Idris.Idris2.Erlang.Decode':'dn--un--<|>_Alternative_ErlDecoder'(((begin (V22 = fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(V20, V21)) end end end end), fun (V23) -> fun (V24) -> ((((V22('erased'))('erased'))(V23))(V24)) end end end(fun (V17) -> {'Prelude.Types.Right', V17} end))(('Idris.Idris2.Erlang.Decode':'un--okTuple'(fun (V16) -> ('Idris.Idris2.Erlang.Decode':'un--string'(V16)) end)))), fun () -> ((begin (V30 = fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(V28, V29)) end end end end), fun (V31) -> fun (V32) -> ((((V30('erased'))('erased'))(V31))(V32)) end end end(fun (V25) -> {'Prelude.Types.Left', V25} end))(('un--error'()))) end)), V7)))) end end end end)) end end.
'un--openFile'(V0, V1, V2) -> case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> case V3 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> ((((V6('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V23, V24} -> case V23 of {'Prelude.Interfaces.MkMonad', V25, V26, V27} -> case V25 of {'Prelude.Interfaces.MkApplicative', V28, V29, V30} -> ((V29('erased'))(('erlang':'apply'('file', 'open', [V1 | [('un--fileModes'(V2)) | []]])))) end end end))(fun (V8) -> case V0 of {'Prelude.IO.MkHasIO', V9, V10} -> case V9 of {'Prelude.Interfaces.MkMonad', V11, V12, V13} -> case V11 of {'Prelude.Interfaces.MkApplicative', V14, V15, V16} -> ((V15('erased'))(('Idris.Idris2.Erlang.Decode':'un--erlDecodeDef'({'Erlang.Types.ETErlTerm'}, fun () -> {'Prelude.Types.Left', ('un--unknownError'())} end, ('Idris.Idris2.Erlang.Decode':'dn--un--<|>_Alternative_ErlDecoder'(('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(fun (V17) -> {'Prelude.Types.Right', (begin (V19 = fun (V18) -> V18 end), fun (V20) -> (V19(V20)) end end(V17))} end, ('Idris.Idris2.Erlang.Decode':'un--okTuple'(fun (V21) -> ('Idris.Idris2.Erlang.Decode':'un--pid'(V21)) end)))), fun () -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(fun (V22) -> {'Prelude.Types.Left', V22} end, ('un--error'()))) end)), V8)))) end end end end)) end end.
'un--mkMode'(V0) -> begin (V13 = (begin (V9 = (begin (V4 = (('nested--6531-5326--in--un--getMs'(V0, case V0 of {'Erlang.System.File.MkPermissions', V1, V2, V3} -> V1 end)) * 64)), case ((V4 band 9223372036854775808) =/= 0) of 'true' -> (V4 bor -9223372036854775808); _ -> (V4 band 9223372036854775807) end end + begin (V8 = (('nested--6531-5326--in--un--getMs'(V0, case V0 of {'Erlang.System.File.MkPermissions', V5, V6, V7} -> V6 end)) * 8)), case ((V8 band 9223372036854775808) =/= 0) of 'true' -> (V8 bor -9223372036854775808); _ -> (V8 band 9223372036854775807) end end)), case ((V9 band 9223372036854775808) =/= 0) of 'true' -> (V9 bor -9223372036854775808); _ -> (V9 band 9223372036854775807) end end + ('nested--6531-5326--in--un--getMs'(V0, case V0 of {'Erlang.System.File.MkPermissions', V10, V11, V12} -> V12 end)))), case ((V13 band 9223372036854775808) =/= 0) of 'true' -> (V13 bor -9223372036854775808); _ -> (V13 band 9223372036854775807) end end.
'un--firstExists'(V0, V1) -> case V1 of [] -> case V0 of {'Prelude.IO.MkHasIO', V2, V3} -> case V2 of {'Prelude.Interfaces.MkMonad', V4, V5, V6} -> case V4 of {'Prelude.Interfaces.MkApplicative', V7, V8, V9} -> ((V8('erased'))({'Prelude.Types.Nothing'})) end end end; [E0 | E1] -> (fun (V10, V11) -> case V0 of {'Prelude.IO.MkHasIO', V12, V13} -> case V12 of {'Prelude.Interfaces.MkMonad', V14, V15, V16} -> ((((V15('erased'))('erased'))(('un--exists'(V0, V10))))(fun (V17) -> case V17 of 1 -> case V0 of {'Prelude.IO.MkHasIO', V18, V19} -> case V18 of {'Prelude.Interfaces.MkMonad', V20, V21, V22} -> case V20 of {'Prelude.Interfaces.MkApplicative', V23, V24, V25} -> ((V24('erased'))({'Prelude.Types.Just', V10})) end end end; 0 -> ('un--firstExists'(V0, V11)) end end)) end end end(E0, E1)) end.
'un--fileStatusTime'(V0, V1) -> ('un--fileInfo'(V0, V1, 5, ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(fun (V2) -> begin (V3 = V2), case ((V3 band 9223372036854775808) =/= 0) of 'true' -> (V3 bor -9223372036854775808); _ -> (V3 band 9223372036854775807) end end end, fun (V4) -> ('Idris.Idris2.Erlang.Decode':'un--integer'(V4)) end)))).
'un--fileSize'(V0, V1) -> ('un--fileInfo'(V0, V1, 0, ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(fun (V2) -> begin (V3 = V2), case ((V3 band 9223372036854775808) =/= 0) of 'true' -> (V3 bor -9223372036854775808); _ -> (V3 band 9223372036854775807) end end end, fun (V4) -> ('Idris.Idris2.Erlang.Decode':'un--integer'(V4)) end)))).
'un--fileModifiedTime'(V0, V1) -> ('un--fileInfo'(V0, V1, 4, ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(fun (V2) -> begin (V3 = V2), case ((V3 band 9223372036854775808) =/= 0) of 'true' -> (V3 bor -9223372036854775808); _ -> (V3 band 9223372036854775807) end end end, fun (V4) -> ('Idris.Idris2.Erlang.Decode':'un--integer'(V4)) end)))).
'un--fileModes'(V0) -> begin (V1 = case V0 of 0 -> ['read' | []]; 1 -> ['write' | []]; 2 -> ['append' | []]; 3 -> ['read' | ['write' | []]]; _ -> [] end), (begin (V3 = fun (V2) -> V2 end), fun (V4) -> (V3(V4)) end end(['binary' | V1])) end.
'un--fileInfo'(V0, V1, V2, V3) -> case V0 of {'Prelude.IO.MkHasIO', V4, V5} -> case V4 of {'Prelude.Interfaces.MkMonad', V6, V7, V8} -> ((((V7('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V13, V14} -> case V13 of {'Prelude.Interfaces.MkMonad', V15, V16, V17} -> case V15 of {'Prelude.Interfaces.MkApplicative', V18, V19, V20} -> ((V19('erased'))(('erlang':'apply'('file', 'read_file_info', [V1 | [[{'time', 'posix'} | []] | []]])))) end end end))(fun (V9) -> ('case--fileInfo-4889'(V0, V3, V2, V1, V9, ('Idris.Idris2.Erlang.Decode':'un--erlDecodeDef'({'Erlang.Types.ETErlTerm'}, fun () -> {'Prelude.Types.Left', ('un--unknownError'())} end, ('Idris.Idris2.Erlang.Decode':'dn--un--<|>_Alternative_ErlDecoder'(('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(fun (V10) -> {'Prelude.Types.Right', V10} end, ('Idris.Idris2.Erlang.Decode':'un--okTuple'(fun (V11) -> ('Idris.Idris2.Erlang.Decode':'un--any'(V11)) end)))), fun () -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(fun (V12) -> {'Prelude.Types.Left', V12} end, ('un--error'()))) end)), V9)))) end)) end end.
'un--fileAccessTime'(V0, V1) -> ('un--fileInfo'(V0, V1, 3, ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(fun (V2) -> begin (V3 = V2), case ((V3 band 9223372036854775808) =/= 0) of 'true' -> (V3 bor -9223372036854775808); _ -> (V3 band 9223372036854775807) end end end, fun (V4) -> ('Idris.Idris2.Erlang.Decode':'un--integer'(V4)) end)))).
'un--fflush'(V0, V1) -> begin (V2 = V1), case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> case V3 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> case V5 of {'Prelude.Interfaces.MkApplicative', V8, V9, V10} -> ((V9('erased'))({'Builtin.MkUnit'})) end end end end.
'un--fPutStrLn'(V0, V1, V2) -> ('un--fPutStr'(V0, V1, <<V2/binary, <<"\x{a}"/utf8>>/binary>>)).
'un--fPutStr'(V0, V1, V2) -> begin (V3 = V1), case V0 of {'Prelude.IO.MkHasIO', V4, V5} -> case V4 of {'Prelude.Interfaces.MkMonad', V6, V7, V8} -> ((((V7('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V32, V33} -> case V32 of {'Prelude.Interfaces.MkMonad', V34, V35, V36} -> case V34 of {'Prelude.Interfaces.MkApplicative', V37, V38, V39} -> ((V38('erased'))(('erlang':'apply'('file', 'write', [V3 | [V2 | []]])))) end end end))(fun (V9) -> case V0 of {'Prelude.IO.MkHasIO', V10, V11} -> case V10 of {'Prelude.Interfaces.MkMonad', V12, V13, V14} -> case V12 of {'Prelude.Interfaces.MkApplicative', V15, V16, V17} -> ((V16('erased'))(('Idris.Idris2.Erlang.Decode':'un--erlDecodeDef'({'Erlang.Types.ETErlTerm'}, fun () -> {'Prelude.Types.Left', ('un--unknownError'())} end, ('Idris.Idris2.Erlang.Decode':'dn--un--<|>_Alternative_ErlDecoder'(('Idris.Idris2.Prelude.Interfaces':'un--*>'({'Prelude.Interfaces.MkApplicative', fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(V20, V21)) end end end end, fun (V22) -> fun (V23) -> fun (V24) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'(V23, V24)) end end end, fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> ('Idris.Idris2.Erlang.Decode':'dn--un--<*>_Applicative_ErlDecoder'(V27, V28)) end end end end}, fun (V29) -> ('Idris.Idris2.Erlang.Decode':'un--exact'({'Erlang.Types.ETErlAtom'}, 'ok', V29)) end, fun (V30) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'({'Prelude.Types.Right', {'Builtin.MkUnit'}}, V30)) end)), fun () -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(fun (V31) -> {'Prelude.Types.Left', V31} end, ('un--error'()))) end)), V9)))) end end end end)) end end end.
'un--fGetLine'(V0, V1) -> begin (V2 = V1), case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> case V3 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> ((((V6('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V33, V34} -> case V33 of {'Prelude.Interfaces.MkMonad', V35, V36, V37} -> case V35 of {'Prelude.Interfaces.MkApplicative', V38, V39, V40} -> ((V39('erased'))(('erlang':'apply'('file', 'read_line', [V2 | []])))) end end end))(fun (V8) -> case V0 of {'Prelude.IO.MkHasIO', V9, V10} -> case V9 of {'Prelude.Interfaces.MkMonad', V11, V12, V13} -> case V11 of {'Prelude.Interfaces.MkApplicative', V14, V15, V16} -> ((V15('erased'))(('Idris.Idris2.Erlang.Decode':'un--erlDecodeDef'({'Erlang.Types.ETErlTerm'}, fun () -> {'Prelude.Types.Left', ('un--unknownError'())} end, ('Idris.Idris2.Erlang.Decode':'dn--un--<|>_Alternative_ErlDecoder'(('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(fun (V17) -> {'Prelude.Types.Right', V17} end, ('Idris.Idris2.Erlang.Decode':'un--okTuple'(fun (V18) -> ('Idris.Idris2.Erlang.Decode':'un--string'(V18)) end)))), fun () -> ('Idris.Idris2.Erlang.Decode':'dn--un--<|>_Alternative_ErlDecoder'(('Idris.Idris2.Prelude.Interfaces':'un--*>'({'Prelude.Interfaces.MkApplicative', fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(V21, V22)) end end end end, fun (V23) -> fun (V24) -> fun (V25) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'(V24, V25)) end end end, fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> ('Idris.Idris2.Erlang.Decode':'dn--un--<*>_Applicative_ErlDecoder'(V28, V29)) end end end end}, fun (V30) -> ('Idris.Idris2.Erlang.Decode':'un--exact'({'Erlang.Types.ETErlAtom'}, 'eof', V30)) end, fun (V31) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'({'Prelude.Types.Right', <<""/utf8>>}, V31)) end)), fun () -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(fun (V32) -> {'Prelude.Types.Left', V32} end, ('un--error'()))) end)) end)), V8)))) end end end end)) end end end.
'un--fGetChar'(V0, V1) -> begin (V2 = V1), case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> case V3 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> ((((V6('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V35, V36} -> case V35 of {'Prelude.Interfaces.MkMonad', V37, V38, V39} -> case V37 of {'Prelude.Interfaces.MkApplicative', V40, V41, V42} -> ((V41('erased'))(('erlang':'apply'('file', 'read', [V2 | [1 | []]])))) end end end))(fun (V8) -> case V0 of {'Prelude.IO.MkHasIO', V9, V10} -> case V9 of {'Prelude.Interfaces.MkMonad', V11, V12, V13} -> case V11 of {'Prelude.Interfaces.MkApplicative', V14, V15, V16} -> ((V15('erased'))(('Idris.Idris2.Erlang.Decode':'un--erlDecodeDef'({'Erlang.Types.ETErlTerm'}, fun () -> {'Prelude.Types.Left', ('un--unknownError'())} end, ('Idris.Idris2.Erlang.Decode':'dn--un--<|>_Alternative_ErlDecoder'(('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(fun (V17) -> case V17 of E0 -> (fun (V18) -> ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> {'Prelude.Types.Left', {'Erlang.System.File.FileReadError'}} end, fun () -> fun (V19) -> {'Prelude.Types.Right', ('Idris.Idris2.Builtin':'un--fst'(V19))} end end, ('Idris.Idris2.Prelude.Types':'un--strUncons'(V18)))) end((fun (V20) -> ('unicode':'characters_to_binary'(V20)) end(E0)))) end end, ('Idris.Idris2.Erlang.Decode':'un--okTuple'(('Idris.Idris2.Erlang.Decode':'un--charlist'()))))), fun () -> ('Idris.Idris2.Erlang.Decode':'dn--un--<|>_Alternative_ErlDecoder'(('Idris.Idris2.Prelude.Interfaces':'un--*>'({'Prelude.Interfaces.MkApplicative', fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(V23, V24)) end end end end, fun (V25) -> fun (V26) -> fun (V27) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'(V26, V27)) end end end, fun (V28) -> fun (V29) -> fun (V30) -> fun (V31) -> ('Idris.Idris2.Erlang.Decode':'dn--un--<*>_Applicative_ErlDecoder'(V30, V31)) end end end end}, fun (V32) -> ('Idris.Idris2.Erlang.Decode':'un--exact'({'Erlang.Types.ETErlAtom'}, 'eof', V32)) end, fun (V33) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'({'Prelude.Types.Left', {'Erlang.System.File.FileReadError'}}, V33)) end)), fun () -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(fun (V34) -> {'Prelude.Types.Left', V34} end, ('un--error'()))) end)) end)), V8)))) end end end end)) end end end.
'un--fEOF'(V0, V1) -> begin (V2 = V1), case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> case V3 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> ((((V6('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V72, V73} -> case V72 of {'Prelude.Interfaces.MkMonad', V74, V75, V76} -> case V74 of {'Prelude.Interfaces.MkApplicative', V77, V78, V79} -> ((V78('erased'))(('erlang':'apply'('file', 'read', [V2 | [1 | []]])))) end end end))(fun (V8) -> ('Idris.Idris2.Erlang.Decode':'un--erlDecodeDef'({'Erlang.Types.ETErlTerm'}, fun () -> case V0 of {'Prelude.IO.MkHasIO', V9, V10} -> case V9 of {'Prelude.Interfaces.MkMonad', V11, V12, V13} -> case V11 of {'Prelude.Interfaces.MkApplicative', V14, V15, V16} -> ((V15('erased'))(1)) end end end end, ('Idris.Idris2.Erlang.Decode':'dn--un--<|>_Alternative_ErlDecoder'(('Idris.Idris2.Prelude.Interfaces':'un--*>'({'Prelude.Interfaces.MkApplicative', fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(V19, V20)) end end end end, fun (V21) -> fun (V22) -> fun (V23) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'(V22, V23)) end end end, fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> ('Idris.Idris2.Erlang.Decode':'dn--un--<*>_Applicative_ErlDecoder'(V26, V27)) end end end end}, ('Idris.Idris2.Erlang.Decode':'un--okTuple'(fun (V28) -> ('Idris.Idris2.Erlang.Decode':'un--any'(V28)) end)), fun (V29) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'(('nested--5461-4289--in--un--scanBack'(V0, V2)), V29)) end)), fun () -> ('Idris.Idris2.Erlang.Decode':'dn--un--<|>_Alternative_ErlDecoder'(('Idris.Idris2.Prelude.Interfaces':'un--*>'({'Prelude.Interfaces.MkApplicative', fun (V30) -> fun (V31) -> fun (V32) -> fun (V33) -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(V32, V33)) end end end end, fun (V34) -> fun (V35) -> fun (V36) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'(V35, V36)) end end end, fun (V37) -> fun (V38) -> fun (V39) -> fun (V40) -> ('Idris.Idris2.Erlang.Decode':'dn--un--<*>_Applicative_ErlDecoder'(V39, V40)) end end end end}, fun (V41) -> ('Idris.Idris2.Erlang.Decode':'un--exact'({'Erlang.Types.ETErlAtom'}, 'eof', V41)) end, fun (V42) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'(case V0 of {'Prelude.IO.MkHasIO', V43, V44} -> case V43 of {'Prelude.Interfaces.MkMonad', V45, V46, V47} -> case V45 of {'Prelude.Interfaces.MkApplicative', V48, V49, V50} -> ((V49('erased'))(1)) end end end, V42)) end)), fun () -> ('Idris.Idris2.Prelude.Interfaces':'un--*>'({'Prelude.Interfaces.MkApplicative', fun (V51) -> fun (V52) -> fun (V53) -> fun (V54) -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(V53, V54)) end end end end, fun (V55) -> fun (V56) -> fun (V57) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'(V56, V57)) end end end, fun (V58) -> fun (V59) -> fun (V60) -> fun (V61) -> ('Idris.Idris2.Erlang.Decode':'dn--un--<*>_Applicative_ErlDecoder'(V60, V61)) end end end end}, ('Idris.Idris2.Erlang.Decode':'un--errorTuple'(fun (V62) -> ('Idris.Idris2.Erlang.Decode':'un--any'(V62)) end)), fun (V63) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'(case V0 of {'Prelude.IO.MkHasIO', V64, V65} -> case V64 of {'Prelude.Interfaces.MkMonad', V66, V67, V68} -> case V66 of {'Prelude.Interfaces.MkApplicative', V69, V70, V71} -> ((V70('erased'))(1)) end end end, V63)) end)) end)) end)), V8)) end)) end end end.
'un--exists'(V0, V1) -> case V0 of {'Prelude.IO.MkHasIO', V2, V3} -> case V2 of {'Prelude.Interfaces.MkMonad', V4, V5, V6} -> ((((V5('erased'))('erased'))(('un--openFile'(V0, V1, 0))))(fun (V7) -> case V7 of {'Prelude.Types.Right', V8} -> case V0 of {'Prelude.IO.MkHasIO', V9, V10} -> case V9 of {'Prelude.Interfaces.MkMonad', V11, V12, V13} -> ((((V12('erased'))('erased'))(('un--closeFile'(V0, V8))))(fun (V14) -> case V0 of {'Prelude.IO.MkHasIO', V15, V16} -> case V15 of {'Prelude.Interfaces.MkMonad', V17, V18, V19} -> case V17 of {'Prelude.Interfaces.MkApplicative', V20, V21, V22} -> ((V21('erased'))(1)) end end end end)) end end; {'Prelude.Types.Left', V23} -> case V0 of {'Prelude.IO.MkHasIO', V24, V25} -> case V24 of {'Prelude.Interfaces.MkMonad', V26, V27, V28} -> case V26 of {'Prelude.Interfaces.MkApplicative', V29, V30, V31} -> ((V30('erased'))(0)) end end end end end)) end end.
'un--error'() -> ('Idris.Idris2.Erlang.Decode':'un--errorTuple'(('un--reason'()))).
'un--copyFile'(V0, V1, V2) -> case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> case V3 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> ((((V6('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V33, V34} -> case V33 of {'Prelude.Interfaces.MkMonad', V35, V36, V37} -> case V35 of {'Prelude.Interfaces.MkApplicative', V38, V39, V40} -> ((V39('erased'))(('erlang':'apply'('file', 'copy', [V1 | [V2 | []]])))) end end end))(fun (V8) -> case V0 of {'Prelude.IO.MkHasIO', V9, V10} -> case V9 of {'Prelude.Interfaces.MkMonad', V11, V12, V13} -> case V11 of {'Prelude.Interfaces.MkApplicative', V14, V15, V16} -> ((V15('erased'))(('Idris.Idris2.Erlang.Decode':'un--erlDecodeDef'({'Erlang.Types.ETErlTerm'}, fun () -> {'Prelude.Types.Left', {'Builtin.MkPair', ('un--unknownError'()), begin (V17 = 0), case ((V17 band 9223372036854775808) =/= 0) of 'true' -> (V17 bor -9223372036854775808); _ -> (V17 band 9223372036854775807) end end}} end, ('Idris.Idris2.Erlang.Decode':'dn--un--<|>_Alternative_ErlDecoder'(('Idris.Idris2.Prelude.Interfaces':'un--*>'({'Prelude.Interfaces.MkApplicative', fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(V20, V21)) end end end end, fun (V22) -> fun (V23) -> fun (V24) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'(V23, V24)) end end end, fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> ('Idris.Idris2.Erlang.Decode':'dn--un--<*>_Applicative_ErlDecoder'(V27, V28)) end end end end}, ('Idris.Idris2.Erlang.Decode':'un--tuple2'(fun (V29) -> ('Idris.Idris2.Erlang.Decode':'un--exact'({'Erlang.Types.ETErlAtom'}, 'ok', V29)) end, fun (V30) -> ('Idris.Idris2.Erlang.Decode':'un--integer'(V30)) end)), fun (V31) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'({'Prelude.Types.Right', {'Builtin.MkUnit'}}, V31)) end)), fun () -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(fun (V32) -> {'Prelude.Types.Left', {'Builtin.MkPair', V32, 0}} end, ('un--error'()))) end)), V8)))) end end end end)) end end.
'un--closeFile'(V0, V1) -> begin (V2 = V1), ((begin (V20 = case V0 of {'Prelude.IO.MkHasIO', V12, V13} -> case V12 of {'Prelude.Interfaces.MkMonad', V14, V15, V16} -> case V14 of {'Prelude.Interfaces.MkApplicative', V17, V18, V19} -> V17 end end end), fun (V21) -> fun (V22) -> ((((V20('erased'))('erased'))(V21))(V22)) end end end(fun (V11) -> {'Builtin.MkUnit'} end))(case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> case V3 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> case V5 of {'Prelude.Interfaces.MkApplicative', V8, V9, V10} -> ((V9('erased'))(('erlang':'apply'('file', 'close', [V2 | []])))) end end end)) end.
'un--chmodRaw'(V0, V1, V2) -> case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> case V3 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> ((((V6('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V31, V32} -> case V31 of {'Prelude.Interfaces.MkMonad', V33, V34, V35} -> case V33 of {'Prelude.Interfaces.MkApplicative', V36, V37, V38} -> ((V37('erased'))(('erlang':'apply'('file', 'change_mode', [V1 | [V2 | []]])))) end end end))(fun (V8) -> case V0 of {'Prelude.IO.MkHasIO', V9, V10} -> case V9 of {'Prelude.Interfaces.MkMonad', V11, V12, V13} -> case V11 of {'Prelude.Interfaces.MkApplicative', V14, V15, V16} -> ((V15('erased'))(('Idris.Idris2.Erlang.Decode':'un--erlDecodeDef'({'Erlang.Types.ETErlTerm'}, fun () -> {'Prelude.Types.Left', ('un--unknownError'())} end, ('Idris.Idris2.Erlang.Decode':'dn--un--<|>_Alternative_ErlDecoder'(('Idris.Idris2.Prelude.Interfaces':'un--*>'({'Prelude.Interfaces.MkApplicative', fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(V19, V20)) end end end end, fun (V21) -> fun (V22) -> fun (V23) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'(V22, V23)) end end end, fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> ('Idris.Idris2.Erlang.Decode':'dn--un--<*>_Applicative_ErlDecoder'(V26, V27)) end end end end}, fun (V28) -> ('Idris.Idris2.Erlang.Decode':'un--exact'({'Erlang.Types.ETErlAtom'}, 'ok', V28)) end, fun (V29) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'({'Prelude.Types.Right', {'Builtin.MkUnit'}}, V29)) end)), fun () -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(fun (V30) -> {'Prelude.Types.Left', V30} end, ('un--error'()))) end)), V8)))) end end end end)) end end.
'un--chmod'(V0, V1, V2) -> ('un--chmodRaw'(V0, V1, ('un--mkMode'(V2)))).
