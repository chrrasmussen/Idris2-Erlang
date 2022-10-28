-module('Idris.Idris2.Idris.Main').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'start'/0,
  'main'/1,
  'run'/1,
  'nested--4110-1177--in--un--toExitCode'/1,
  'un--tryMainWithCodegens'/2,
  'un--throwReasonDecoder'/0,
  'un--exports'/0,
  'un--errorAtom'/0,
  'un--erlRun'/1,
  'un--erlMain'/2,
  'un--erlInitStart'/1,
  'un--erlEscriptMain'/1,
  'un--defaultEscriptExitCode'/0,
  'un--codegens'/0
]).
'start'() -> (fun () -> ('Idris.Idris2.PrimIO':'un--unsafePerformIO'(fun (V0) -> ('un--erlInitStart'(V0)) end)) end()).
'main'(V2) -> (fun (V1) -> ('Idris.Idris2.PrimIO':'un--unsafePerformIO'((fun (V0) -> ('un--erlEscriptMain'(V0)) end(V1)))) end(V2)).
'run'(V2) -> (fun (V1) -> ('Idris.Idris2.PrimIO':'un--unsafePerformIO'((fun (V0) -> ('un--erlRun'(V0)) end(V1)))) end(V2)).
'nested--4110-1177--in--un--toExitCode'(V0) -> case ('Idris.Idris2.Data.So':'un--choose'(case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(V0, begin (V1 = 0), case ((V1 band 9223372036854775808) =/= 0) of 'true' -> (V1 bor -9223372036854775808); _ -> (V1 band 9223372036854775807) end end)) of 1 -> 0; 0 -> 1 end)) of {'Prelude.Types.Left', V2} -> {'Erlang.System.ExitFailure', V0, V2}; {'Prelude.Types.Right', V3} -> {'Erlang.System.ExitSuccess'} end.
'un--tryMainWithCodegens'(V0, V1) -> begin (V30 = (('Idris.Idris2.Erlang.IO':'un--erlTryCatch'({'Prelude.IO.MkHasIO', {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V4, V5, V6)) end end end end end, fun (V7) -> fun (V8) -> fun (V9) -> V8 end end end, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> begin (V15 = (V12(V14))), begin (V16 = (V13(V14))), (V15(V16)) end end end end end end end}, fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> begin (V22 = (V19(V21))), ((V20(V22))(V21)) end end end end end end, fun (V23) -> fun (V24) -> fun (V25) -> begin (V26 = (V24(V25))), (V26(V25)) end end end end}, fun (V27) -> fun (V28) -> V28 end end}, fun (V29) -> ('Idris.Idris2.Idris.Driver':'un--mainWithCodegens'(('un--codegens'()), V0, V29)) end))(V1))), case V30 of {'Prelude.Types.Right', V31} -> {'Prelude.Types.Right', {'Builtin.MkUnit'}}; {'Prelude.Types.Left', V32} -> case V32 of {E0, E1, E2} -> (fun (V33, V34, V35) -> case ('Idris.Idris2.Erlang.Decode':'un--erlDecode'({'Erlang.Types.ETErlTerm'}, ('un--throwReasonDecoder'()), V34)) of {'Prelude.Types.Right', V36} -> case V36 of {'Prelude.Types.Right', V37} -> {'Prelude.Types.Left', V37}; {'Prelude.Types.Left', V38} -> begin (V39 = ('Idris.Idris2.Prelude.IO':'un--prim__putStr'(<<V38/binary, <<"\x{a}"/utf8>>/binary>>, V1))), {'Prelude.Types.Left', ('un--defaultEscriptExitCode'())} end end; {'Prelude.Types.Left', V40} -> begin (V68 = (('Idris.Idris2.Erlang.Debug':'un--erlPrintLn'({'Prelude.IO.MkHasIO', {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V41) -> fun (V42) -> fun (V43) -> fun (V44) -> fun (V45) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V43, V44, V45)) end end end end end, fun (V46) -> fun (V47) -> fun (V48) -> V47 end end end, fun (V49) -> fun (V50) -> fun (V51) -> fun (V52) -> fun (V53) -> begin (V54 = (V51(V53))), begin (V55 = (V52(V53))), (V54(V55)) end end end end end end end}, fun (V56) -> fun (V57) -> fun (V58) -> fun (V59) -> fun (V60) -> begin (V61 = (V58(V60))), ((V59(V61))(V60)) end end end end end end, fun (V62) -> fun (V63) -> fun (V64) -> begin (V65 = (V63(V64))), (V65(V64)) end end end end}, fun (V66) -> fun (V67) -> V67 end end}, V34))(V1))), {'Prelude.Types.Left', ('un--defaultEscriptExitCode'())} end end end(E0, E1, E2)) end end end.
'un--throwReasonDecoder'() -> ('Idris.Idris2.Erlang.Decode':'dn--un--<|>_Alternative_ErlDecoder'(((begin (V13 = fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(V11, V12)) end end end end), fun (V14) -> fun (V15) -> ((((V13('erased'))('erased'))(V14))(V15)) end end end(fun (V2) -> case V2 of {E0, E1} -> (fun (V3, V4) -> {'Prelude.Types.Right', ('nested--4110-1177--in--un--toExitCode'((begin (V7 = fun (V5) -> begin (V6 = V5), case ((V6 band 9223372036854775808) =/= 0) of 'true' -> (V6 bor -9223372036854775808); _ -> (V6 band 9223372036854775807) end end end), fun (V8) -> (V7(V8)) end end(V4))))} end(E0, E1)) end end))(('Idris.Idris2.Erlang.Decode':'un--tuple2'(fun (V0) -> ('Idris.Idris2.Erlang.Decode':'un--exact'({'Erlang.Types.ETErlAtom'}, ('Idris.Idris2.Libraries.Utils.System':'un--softExitAtom'()), V0)) end, fun (V1) -> ('Idris.Idris2.Erlang.Decode':'un--integer'(V1)) end)))), fun () -> ((begin (V25 = fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(V23, V24)) end end end end), fun (V26) -> fun (V27) -> ((((V25('erased'))('erased'))(V26))(V27)) end end end(fun (V18) -> case V18 of {E2, E3} -> (fun (V19, V20) -> {'Prelude.Types.Left', V20} end(E2, E3)) end end))(('Idris.Idris2.Erlang.Decode':'un--tuple2'(fun (V16) -> ('Idris.Idris2.Erlang.Decode':'un--exact'({'Erlang.Types.ETErlAtom'}, ('un--errorAtom'()), V16)) end, fun (V17) -> ('Idris.Idris2.Erlang.Decode':'un--string'(V17)) end)))) end)).
'un--exports'() -> {'Erlang.IO.Combine', {'Erlang.IO.Combine', {'Erlang.IO.Fun', {'Erlang.Types.ETErlIOFun0', {'Erlang.Types.ETErlTypesCons', {'Builtin.MkPair', {'Erlang.Types.ETErlTerm'}, {'Erlang.Types.ETErlTypesNil'}}}}, <<"start"/utf8>>, fun () -> ('Idris.Idris2.PrimIO':'un--unsafePerformIO'(fun (V0) -> ('un--erlInitStart'(V0)) end)) end}, {'Erlang.IO.Fun', {'Erlang.Types.ETErlIOFun1', {'Erlang.Types.ETErlTypesCons', {'Builtin.MkPair', {'Erlang.Types.ETList', {'Erlang.Types.ETErlCharlist'}}, {'Erlang.Types.ETErlTypesCons', {'Builtin.MkPair', {'Erlang.Types.ETErlTerm'}, {'Erlang.Types.ETErlTypesNil'}}}}}}, <<"main"/utf8>>, fun (V2) -> ('Idris.Idris2.PrimIO':'un--unsafePerformIO'((fun (V1) -> ('un--erlEscriptMain'(V1)) end(V2)))) end}}, {'Erlang.IO.Fun', {'Erlang.Types.ETErlIOFun1', {'Erlang.Types.ETErlTypesCons', {'Builtin.MkPair', {'Erlang.Types.ETErlTerm'}, {'Erlang.Types.ETErlTypesCons', {'Builtin.MkPair', {'Erlang.Types.ETErlTerm'}, {'Erlang.Types.ETErlTypesNil'}}}}}}, <<"run"/utf8>>, fun (V4) -> ('Idris.Idris2.PrimIO':'un--unsafePerformIO'((fun (V3) -> ('un--erlRun'(V3)) end(V4)))) end}}.
'un--errorAtom'() -> '$idris_error'.
'un--erlRun'(V0) -> begin (V12 = ('Idris.Idris2.Erlang.Decode':'un--erlDecodeDef'({'Erlang.Types.ETErlTerm'}, fun () -> [] end, ('Idris.Idris2.Erlang.Decode':'dn--un--<|>_Alternative_ErlDecoder'(('Idris.Idris2.Erlang.Decode':'un--list'(fun (V1) -> ('Idris.Idris2.Erlang.Decode':'un--string'(V1)) end)), fun () -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'((begin (V9 = fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V7, V8)) end end end end), fun (V10) -> fun (V11) -> ((((V9('erased'))('erased'))(V10))(V11)) end end end(fun (V2) -> case V2 of E0 -> (fun (V3) -> V3 end((fun (V4) -> ('unicode':'characters_to_binary'(V4)) end(E0)))) end end)), ('Idris.Idris2.Erlang.Decode':'un--list'(('Idris.Idris2.Erlang.Decode':'un--charlist'()))))) end)), V0))), fun (V13) -> begin (V14 = ('un--tryMainWithCodegens'(V12, V13))), case V14 of {'Prelude.Types.Right', V15} -> (begin (V17 = fun (V16) -> V16 end), fun (V18) -> (V17(V18)) end end('ok')); {'Prelude.Types.Left', V19} -> (begin (V21 = fun (V20) -> V20 end), fun (V22) -> (V21(V22)) end end('error')) end end end end.
'un--erlMain'(V0, V1) -> begin (V12 = (((begin (V9 = fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V6, V7, V8)) end end end end end), fun (V10) -> fun (V11) -> ((((V9('erased'))('erased'))(V10))(V11)) end end end(fun (V3) -> {'Builtin.MkUnit'} end))(fun (V2) -> ('erlang':'apply'('io', 'setopts', [[{'encoding', 'unicode'} | []] | []])) end))(V1))), begin (V13 = ('un--tryMainWithCodegens'(V0, V1))), case V13 of {'Prelude.Types.Right', V14} -> (begin (V16 = fun (V15) -> V15 end), fun (V17) -> (V16(V17)) end end('ok')); {'Prelude.Types.Left', V18} -> (('Idris.Idris2.Erlang.System':'un--exitWith'({'Prelude.IO.MkHasIO', {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V21, V22, V23)) end end end end end, fun (V24) -> fun (V25) -> fun (V26) -> V25 end end end, fun (V27) -> fun (V28) -> fun (V29) -> fun (V30) -> fun (V31) -> begin (V32 = (V29(V31))), begin (V33 = (V30(V31))), (V32(V33)) end end end end end end end}, fun (V34) -> fun (V35) -> fun (V36) -> fun (V37) -> fun (V38) -> begin (V39 = (V36(V38))), ((V37(V39))(V38)) end end end end end end, fun (V40) -> fun (V41) -> fun (V42) -> begin (V43 = (V41(V42))), (V43(V42)) end end end end}, fun (V44) -> fun (V45) -> V45 end end}, V18))(V1)) end end end.
'un--erlInitStart'(V0) -> begin (V28 = (('Idris.Idris2.Erlang.System':'un--getArgs'({'Prelude.IO.MkHasIO', {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V3, V4, V5)) end end end end end, fun (V6) -> fun (V7) -> fun (V8) -> V7 end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> begin (V14 = (V11(V13))), begin (V15 = (V12(V13))), (V14(V15)) end end end end end end end}, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> begin (V21 = (V18(V20))), ((V19(V21))(V20)) end end end end end end, fun (V22) -> fun (V23) -> fun (V24) -> begin (V25 = (V23(V24))), (V25(V24)) end end end end}, fun (V26) -> fun (V27) -> V27 end end}))(V0))), case V28 of [E0 | E1] -> (fun (V29, V30) -> ('un--erlMain'(V30, V0)) end(E0, E1)); _ -> (begin (V32 = fun (V31) -> V31 end), fun (V33) -> (V32(V33)) end end({'error', 'invalid_args'})) end end.
'un--erlEscriptMain'(V0) -> begin (V11 = ((begin (V8 = fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V6, V7)) end end end end), fun (V9) -> fun (V10) -> ((((V8('erased'))('erased'))(V9))(V10)) end end end(fun (V1) -> case V1 of E0 -> (fun (V2) -> V2 end((fun (V3) -> ('unicode':'characters_to_binary'(V3)) end(E0)))) end end))(V0))), fun (V12) -> ('un--erlMain'(V11, V12)) end end.
'un--defaultEscriptExitCode'() -> {'Erlang.System.ExitFailure', begin (V0 = 127), case ((V0 band 9223372036854775808) =/= 0) of 'true' -> (V0 bor -9223372036854775808); _ -> (V0 band 9223372036854775807) end end, {'Data.So.Oh'}}.
'un--codegens'() -> [{'Builtin.MkPair', <<"erlang"/utf8>>, ('Idris.Idris2.Compiler.Erlang.Erlang':'un--codegenErlang'())} | []].
