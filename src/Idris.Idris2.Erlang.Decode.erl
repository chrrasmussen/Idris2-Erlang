-module('Idris.Idris2.Erlang.Decode').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--mapEntry-5675'/4,
  'nested--5570-5587--in--un--listHead'/0,
  'dn--un--pure_Applicative_ErlDecoder'/2,
  'dn--un--map_Functor_ErlDecoder'/2,
  'dn--un--join_Monad_ErlDecoder'/1,
  'dn--un--empty_Alternative_ErlDecoder'/1,
  'dn--un--__Impl_Monad_ErlDecoder'/0,
  'dn--un--__Impl_Functor_ErlDecoder'/4,
  'dn--un--__Impl_Applicative_ErlDecoder'/0,
  'dn--un--__Impl_Alternative_ErlDecoder'/0,
  'dn--un-->>=_Monad_ErlDecoder'/2,
  'dn--un--<|>_Alternative_ErlDecoder'/2,
  'dn--un--<*>_Applicative_ErlDecoder'/2,
  'un--tuple8'/8,
  'un--tuple7'/7,
  'un--tuple6'/6,
  'un--tuple5'/5,
  'un--tuple4'/4,
  'un--tuple3'/3,
  'un--tuple2'/2,
  'un--tuple1'/1,
  'un--tuple0'/1,
  'un--string'/1,
  'un--reference'/1,
  'un--port'/1,
  'un--pid'/1,
  'un--optional'/1,
  'un--okTuple'/1,
  'un--nil'/1,
  'un--mapEntry'/2,
  'un--mapEntries'/1,
  'un--list'/1,
  'un--lazyAlt'/2,
  'un--ioData'/0,
  'un--integer'/1,
  'un--hList'/1,
  'un--fun8'/9,
  'un--fun7'/8,
  'un--fun6'/7,
  'un--fun5'/6,
  'un--fun4'/5,
  'un--fun3'/4,
  'un--fun2'/3,
  'un--fun1'/2,
  'un--fun0'/1,
  'un--fail'/2,
  'un--exact'/3,
  'un--errorTuple'/1,
  'un--erlDecodeMay'/3,
  'un--erlDecodeDef'/4,
  'un--erlDecode'/3,
  'un--double'/1,
  'un--cons'/2,
  'un--codepoint'/1,
  'un--charlist'/0,
  'un--bool'/0,
  'un--atom'/1,
  'un--anyMap'/1,
  'un--anyList'/1,
  'un--any'/1,
  'un--.='/2
]).
'case--mapEntry-5675'(V0, V1, V2, V3) -> case V3 of {'Prelude.Types.Just', V4} -> begin (V5 = ('erlang':'apply'('maps', 'find', [V0 | [V4 | []]]))), case case V5 of {E2, E3} -> (fun (V8) -> {'Prelude.Types.Just', V8} end((fun (V6, V7) -> {V6, V7} end(E2, E3)))); _ -> {'Prelude.Types.Nothing'} end of {'Prelude.Types.Just', V9} -> case V9 of {E0, E1} -> (fun (V10, V11) -> (V1(V11)) end(E0, E1)) end; {'Prelude.Types.Nothing'} -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Could not find key in map"/utf8>>}} end end; {'Prelude.Types.Nothing'} -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a map"/utf8>>}} end.
'nested--5570-5587--in--un--listHead'() -> ('un--lazyAlt'(('dn--un--map_Functor_ErlDecoder'(fun (V0) -> V0 end, fun (V1) -> ('un--codepoint'(V1)) end)), fun () -> ('un--lazyAlt'(('dn--un--map_Functor_ErlDecoder'(fun (V2) -> V2 end, fun (V3) -> ('un--string'(V3)) end)), fun () -> ('un--lazyAlt'(('dn--un--map_Functor_ErlDecoder'(fun (V4) -> V4 end, fun (V5) -> ('un--nil'(V5)) end)), fun () -> ('dn--un--map_Functor_ErlDecoder'(fun (V6) -> V6 end, ('un--cons'(('nested--5570-5587--in--un--listHead'()), ('un--ioData'()))))) end)) end)) end)).
'dn--un--pure_Applicative_ErlDecoder'(V0, V1) -> {'Prelude.Types.Right', V0}.
'dn--un--map_Functor_ErlDecoder'(V0, V1) -> begin (V2 = V1), fun (V3) -> ('Idris.Idris2.Prelude.Types':'un--either'(fun () -> fun (V4) -> {'Prelude.Types.Left', V4} end end, fun () -> fun (V5) -> {'Prelude.Types.Right', (V0(V5))} end end, (V2(V3)))) end end.
'dn--un--join_Monad_ErlDecoder'(V0) -> ('dn--un-->>=_Monad_ErlDecoder'(V0, fun (V1) -> V1 end)).
'dn--un--empty_Alternative_ErlDecoder'(V0) -> {'Prelude.Types.Left', {'Erlang.Decode.Empty'}}.
'dn--un--__Impl_Monad_ErlDecoder'() -> {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_ErlDecoder'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> fun (V6) -> ('dn--un--pure_Applicative_ErlDecoder'(V5, V6)) end end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('dn--un--<*>_Applicative_ErlDecoder'(V9, V10)) end end end end}, fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> ('dn--un-->>=_Monad_ErlDecoder'(V13, V14)) end end end end, fun (V15) -> fun (V16) -> ('dn--un--join_Monad_ErlDecoder'(V16)) end end}.
'dn--un--__Impl_Functor_ErlDecoder'(V0, V1, V2, V3) -> ('dn--un--map_Functor_ErlDecoder'(V2, V3)).
'dn--un--__Impl_Applicative_ErlDecoder'() -> {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_ErlDecoder'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> fun (V6) -> ('dn--un--pure_Applicative_ErlDecoder'(V5, V6)) end end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('dn--un--<*>_Applicative_ErlDecoder'(V9, V10)) end end end end}.
'dn--un--__Impl_Alternative_ErlDecoder'() -> {'Prelude.Interfaces.MkAlternative', {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_ErlDecoder'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> fun (V6) -> ('dn--un--pure_Applicative_ErlDecoder'(V5, V6)) end end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('dn--un--<*>_Applicative_ErlDecoder'(V9, V10)) end end end end}, fun (V11) -> fun (V12) -> ('dn--un--empty_Alternative_ErlDecoder'(V12)) end end, fun (V13) -> fun (V14) -> fun (V15) -> ('dn--un--<|>_Alternative_ErlDecoder'(V14, V15)) end end end}.
'dn--un-->>=_Monad_ErlDecoder'(V0, V1) -> begin (V2 = V0), fun (V3) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V2(V3)), fun (V4) -> begin (V5 = (V1(V4))), (V5(V3)) end end)) end end.
'dn--un--<|>_Alternative_ErlDecoder'(V0, V1) -> begin (V2 = V0), begin (V3 = (V1())), begin (V4 = V3), fun (V5) -> case (V2(V5)) of {'Prelude.Types.Right', V6} -> {'Prelude.Types.Right', V6}; {'Prelude.Types.Left', V7} -> case (V4(V5)) of {'Prelude.Types.Right', V8} -> {'Prelude.Types.Right', V8}; {'Prelude.Types.Left', V9} -> {'Prelude.Types.Left', {'Erlang.Decode.OneOf', V7, V9}} end end end end end end.
'dn--un--<*>_Applicative_ErlDecoder'(V0, V1) -> begin (V2 = V0), begin (V3 = V1), fun (V4) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V2(V4)), fun (V5) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V3(V4)), fun (V6) -> {'Prelude.Types.Right', (V5(V6))} end)) end)) end end end.
'un--tuple8'(V0, V1, V2, V3, V4, V5, V6, V7) -> begin (V8 = V0), begin (V9 = V1), begin (V10 = V2), begin (V11 = V3), begin (V12 = V4), begin (V13 = V5), begin (V14 = V6), begin (V15 = V7), fun (V16) -> case case V16 of {E8, E9, E10, E11, E12, E13, E14, E15} -> (fun (V25) -> {'Prelude.Types.Just', V25} end((fun (V17, V18, V19, V20, V21, V22, V23, V24) -> {V17, V18, V19, V20, V21, V22, V23, V24} end(E8, E9, E10, E11, E12, E13, E14, E15)))); _ -> {'Prelude.Types.Nothing'} end of {'Prelude.Types.Just', V26} -> case V26 of {E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V27, V28, V29, V30, V31, V32, V33, V34) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V8(V27)), fun (V35) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V9(V28)), fun (V36) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V10(V29)), fun (V37) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V11(V30)), fun (V38) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V12(V31)), fun (V39) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V13(V32)), fun (V40) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V14(V33)), fun (V41) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V15(V34)), fun (V42) -> {'Prelude.Types.Right', {V35, V36, V37, V38, V39, V40, V41, V42}} end)) end)) end)) end)) end)) end)) end)) end)) end(E0, E1, E2, E3, E4, E5, E6, E7)) end; {'Prelude.Types.Nothing'} -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a tuple with 8 elements"/utf8>>}} end end end end end end end end end end.
'un--tuple7'(V0, V1, V2, V3, V4, V5, V6) -> begin (V7 = V0), begin (V8 = V1), begin (V9 = V2), begin (V10 = V3), begin (V11 = V4), begin (V12 = V5), begin (V13 = V6), fun (V14) -> case case V14 of {E7, E8, E9, E10, E11, E12, E13} -> (fun (V22) -> {'Prelude.Types.Just', V22} end((fun (V15, V16, V17, V18, V19, V20, V21) -> {V15, V16, V17, V18, V19, V20, V21} end(E7, E8, E9, E10, E11, E12, E13)))); _ -> {'Prelude.Types.Nothing'} end of {'Prelude.Types.Just', V23} -> case V23 of {E0, E1, E2, E3, E4, E5, E6} -> (fun (V24, V25, V26, V27, V28, V29, V30) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V7(V24)), fun (V31) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V8(V25)), fun (V32) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V9(V26)), fun (V33) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V10(V27)), fun (V34) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V11(V28)), fun (V35) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V12(V29)), fun (V36) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V13(V30)), fun (V37) -> {'Prelude.Types.Right', {V31, V32, V33, V34, V35, V36, V37}} end)) end)) end)) end)) end)) end)) end)) end(E0, E1, E2, E3, E4, E5, E6)) end; {'Prelude.Types.Nothing'} -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a tuple with 7 elements"/utf8>>}} end end end end end end end end end.
'un--tuple6'(V0, V1, V2, V3, V4, V5) -> begin (V6 = V0), begin (V7 = V1), begin (V8 = V2), begin (V9 = V3), begin (V10 = V4), begin (V11 = V5), fun (V12) -> case case V12 of {E6, E7, E8, E9, E10, E11} -> (fun (V19) -> {'Prelude.Types.Just', V19} end((fun (V13, V14, V15, V16, V17, V18) -> {V13, V14, V15, V16, V17, V18} end(E6, E7, E8, E9, E10, E11)))); _ -> {'Prelude.Types.Nothing'} end of {'Prelude.Types.Just', V20} -> case V20 of {E0, E1, E2, E3, E4, E5} -> (fun (V21, V22, V23, V24, V25, V26) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V6(V21)), fun (V27) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V7(V22)), fun (V28) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V8(V23)), fun (V29) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V9(V24)), fun (V30) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V10(V25)), fun (V31) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V11(V26)), fun (V32) -> {'Prelude.Types.Right', {V27, V28, V29, V30, V31, V32}} end)) end)) end)) end)) end)) end)) end(E0, E1, E2, E3, E4, E5)) end; {'Prelude.Types.Nothing'} -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a tuple with 6 elements"/utf8>>}} end end end end end end end end.
'un--tuple5'(V0, V1, V2, V3, V4) -> begin (V5 = V0), begin (V6 = V1), begin (V7 = V2), begin (V8 = V3), begin (V9 = V4), fun (V10) -> case case V10 of {E5, E6, E7, E8, E9} -> (fun (V16) -> {'Prelude.Types.Just', V16} end((fun (V11, V12, V13, V14, V15) -> {V11, V12, V13, V14, V15} end(E5, E6, E7, E8, E9)))); _ -> {'Prelude.Types.Nothing'} end of {'Prelude.Types.Just', V17} -> case V17 of {E0, E1, E2, E3, E4} -> (fun (V18, V19, V20, V21, V22) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V5(V18)), fun (V23) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V6(V19)), fun (V24) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V7(V20)), fun (V25) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V8(V21)), fun (V26) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V9(V22)), fun (V27) -> {'Prelude.Types.Right', {V23, V24, V25, V26, V27}} end)) end)) end)) end)) end)) end(E0, E1, E2, E3, E4)) end; {'Prelude.Types.Nothing'} -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a tuple with 5 elements"/utf8>>}} end end end end end end end.
'un--tuple4'(V0, V1, V2, V3) -> begin (V4 = V0), begin (V5 = V1), begin (V6 = V2), begin (V7 = V3), fun (V8) -> case case V8 of {E4, E5, E6, E7} -> (fun (V13) -> {'Prelude.Types.Just', V13} end((fun (V9, V10, V11, V12) -> {V9, V10, V11, V12} end(E4, E5, E6, E7)))); _ -> {'Prelude.Types.Nothing'} end of {'Prelude.Types.Just', V14} -> case V14 of {E0, E1, E2, E3} -> (fun (V15, V16, V17, V18) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V4(V15)), fun (V19) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V5(V16)), fun (V20) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V6(V17)), fun (V21) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V7(V18)), fun (V22) -> {'Prelude.Types.Right', {V19, V20, V21, V22}} end)) end)) end)) end)) end(E0, E1, E2, E3)) end; {'Prelude.Types.Nothing'} -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a tuple with 4 elements"/utf8>>}} end end end end end end.
'un--tuple3'(V0, V1, V2) -> begin (V3 = V0), begin (V4 = V1), begin (V5 = V2), fun (V6) -> case case V6 of {E3, E4, E5} -> (fun (V10) -> {'Prelude.Types.Just', V10} end((fun (V7, V8, V9) -> {V7, V8, V9} end(E3, E4, E5)))); _ -> {'Prelude.Types.Nothing'} end of {'Prelude.Types.Just', V11} -> case V11 of {E0, E1, E2} -> (fun (V12, V13, V14) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V3(V12)), fun (V15) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V4(V13)), fun (V16) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V5(V14)), fun (V17) -> {'Prelude.Types.Right', {V15, V16, V17}} end)) end)) end)) end(E0, E1, E2)) end; {'Prelude.Types.Nothing'} -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a tuple with 3 elements"/utf8>>}} end end end end end.
'un--tuple2'(V0, V1) -> begin (V2 = V0), begin (V3 = V1), fun (V4) -> case case V4 of {E2, E3} -> (fun (V7) -> {'Prelude.Types.Just', V7} end((fun (V5, V6) -> {V5, V6} end(E2, E3)))); _ -> {'Prelude.Types.Nothing'} end of {'Prelude.Types.Just', V8} -> case V8 of {E0, E1} -> (fun (V9, V10) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V2(V9)), fun (V11) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V3(V10)), fun (V12) -> {'Prelude.Types.Right', {V11, V12}} end)) end)) end(E0, E1)) end; {'Prelude.Types.Nothing'} -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a tuple with 2 elements"/utf8>>}} end end end end.
'un--tuple1'(V0) -> begin (V1 = V0), fun (V2) -> case case V2 of {E1} -> (fun (V4) -> {'Prelude.Types.Just', V4} end((fun (V3) -> {V3} end(E1)))); _ -> {'Prelude.Types.Nothing'} end of {'Prelude.Types.Just', V5} -> case V5 of {E0} -> (fun (V6) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V1(V6)), fun (V7) -> {'Prelude.Types.Right', {V7}} end)) end(E0)) end; {'Prelude.Types.Nothing'} -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a tuple with 1 element"/utf8>>}} end end end.
'un--tuple0'(V0) -> ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a tuple with 0 elements"/utf8>>}} end, fun () -> fun (V1) -> {'Prelude.Types.Right', V1} end end, case V0 of {} -> (fun (V2) -> {'Prelude.Types.Just', V2} end((fun () -> {} end()))); _ -> {'Prelude.Types.Nothing'} end)).
'un--string'(V0) -> ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a binary"/utf8>>}} end, fun () -> fun (V1) -> {'Prelude.Types.Right', V1} end end, case V0 of E0 when (erlang:'is_binary'(E0)) -> (fun (V2) -> {'Prelude.Types.Just', V2} end(E0)); _ -> {'Prelude.Types.Nothing'} end)).
'un--reference'(V0) -> ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a reference"/utf8>>}} end, fun () -> fun (V1) -> {'Prelude.Types.Right', V1} end end, case V0 of E0 when (erlang:'is_reference'(E0)) -> (fun (V2) -> {'Prelude.Types.Just', V2} end(E0)); _ -> {'Prelude.Types.Nothing'} end)).
'un--port'(V0) -> ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a port"/utf8>>}} end, fun () -> fun (V1) -> {'Prelude.Types.Right', V1} end end, case V0 of E0 when (erlang:'is_port'(E0)) -> (fun (V2) -> {'Prelude.Types.Just', V2} end(E0)); _ -> {'Prelude.Types.Nothing'} end)).
'un--pid'(V0) -> ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a pid"/utf8>>}} end, fun () -> fun (V1) -> {'Prelude.Types.Right', V1} end end, case V0 of E0 when (erlang:'is_pid'(E0)) -> (fun (V2) -> {'Prelude.Types.Just', V2} end(E0)); _ -> {'Prelude.Types.Nothing'} end)).
'un--optional'(V0) -> ('dn--un--<|>_Alternative_ErlDecoder'(('dn--un--map_Functor_ErlDecoder'(fun (V1) -> {'Prelude.Types.Just', V1} end, V0)), fun () -> fun (V2) -> ('dn--un--pure_Applicative_ErlDecoder'({'Prelude.Types.Nothing'}, V2)) end end)).
'un--okTuple'(V0) -> ('dn--un--map_Functor_ErlDecoder'(fun (V1) -> case V1 of {E0, E1} -> (fun (V2, V3) -> V3 end(E0, E1)) end end, ('un--tuple2'(fun (V4) -> ('un--exact'({'Erlang.Types.ETErlAtom'}, 'ok', V4)) end, V0)))).
'un--nil'(V0) -> ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a nil value"/utf8>>}} end, fun () -> fun (V1) -> {'Prelude.Types.Right', V1} end end, case V0 of [] -> (fun (V2) -> {'Prelude.Types.Just', V2} end([])); _ -> {'Prelude.Types.Nothing'} end)).
'un--mapEntry'(V0, V1) -> begin (V2 = V1), fun (V3) -> ('case--mapEntry-5675'(V0, V2, V3, case V3 of E0 when (erlang:'is_map'(E0)) -> (fun (V4) -> {'Prelude.Types.Just', V4} end(E0)); _ -> {'Prelude.Types.Nothing'} end)) end end.
'un--mapEntries'(V0) -> case V0 of {'Erlang.Decode.ErlMapDecoders.Nil'} -> ('Idris.Idris2.Prelude.Interfaces':'un--*>'({'Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_ErlDecoder'(V3, V4)) end end end end, fun (V5) -> fun (V6) -> fun (V7) -> ('dn--un--pure_Applicative_ErlDecoder'(V6, V7)) end end end, fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> ('dn--un--<*>_Applicative_ErlDecoder'(V10, V11)) end end end end}, fun (V12) -> ('un--anyMap'(V12)) end, fun (V13) -> ('dn--un--pure_Applicative_ErlDecoder'([], V13)) end)); {'Erlang.Decode.ErlMapDecoders.::', V14, V15} -> case V14 of {'Erlang.Decode.MkDecoderMapEntry', V16, V17} -> ('dn--un--<*>_Applicative_ErlDecoder'(('dn--un--<*>_Applicative_ErlDecoder'(fun (V18) -> ('dn--un--pure_Applicative_ErlDecoder'(fun (V19) -> fun (V20) -> [V19 | V20] end end, V18)) end, ('un--mapEntry'(V16, V17)))), ('un--mapEntries'(V15)))) end end.
'un--list'(V0) -> ('un--lazyAlt'(('Idris.Idris2.Prelude.Interfaces':'un--*>'({'Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_ErlDecoder'(V3, V4)) end end end end, fun (V5) -> fun (V6) -> fun (V7) -> ('dn--un--pure_Applicative_ErlDecoder'(V6, V7)) end end end, fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> ('dn--un--<*>_Applicative_ErlDecoder'(V10, V11)) end end end end}, fun (V12) -> ('un--nil'(V12)) end, fun (V13) -> ('dn--un--pure_Applicative_ErlDecoder'([], V13)) end)), fun () -> ('dn--un--map_Functor_ErlDecoder'(fun (V14) -> case V14 of [E0 | E1] -> (fun (V15, V16) -> [V15 | V16] end(E0, E1)) end end, ('un--cons'(V0, ('un--list'(V0)))))) end)).
'un--lazyAlt'(V0, V1) -> ('dn--un-->>=_Monad_ErlDecoder'(('un--optional'(V0)), fun (V2) -> case V2 of {'Prelude.Types.Just', V3} -> fun (V4) -> ('dn--un--pure_Applicative_ErlDecoder'(V3, V4)) end; {'Prelude.Types.Nothing'} -> (V1()) end end)).
'un--ioData'() -> ('un--lazyAlt'(('dn--un--map_Functor_ErlDecoder'(fun (V0) -> V0 end, fun (V1) -> ('un--string'(V1)) end)), fun () -> ('un--lazyAlt'(('dn--un--map_Functor_ErlDecoder'(fun (V2) -> V2 end, fun (V3) -> ('un--nil'(V3)) end)), fun () -> ('dn--un--map_Functor_ErlDecoder'(fun (V4) -> V4 end, ('un--cons'(('nested--5570-5587--in--un--listHead'()), ('un--ioData'()))))) end)) end)).
'un--integer'(V0) -> ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected an integer"/utf8>>}} end, fun () -> fun (V1) -> {'Prelude.Types.Right', V1} end end, case V0 of E0 when (erlang:'is_integer'(E0)) -> (fun (V2) -> {'Prelude.Types.Just', V2} end(E0)); _ -> {'Prelude.Types.Nothing'} end)).
'un--hList'(V0) -> case V0 of {'Erlang.Decode.ErlDecoders.Nil'} -> ('Idris.Idris2.Prelude.Interfaces':'un--*>'({'Prelude.Interfaces.MkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_ErlDecoder'(V3, V4)) end end end end, fun (V5) -> fun (V6) -> fun (V7) -> ('dn--un--pure_Applicative_ErlDecoder'(V6, V7)) end end end, fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> ('dn--un--<*>_Applicative_ErlDecoder'(V10, V11)) end end end end}, fun (V12) -> ('un--nil'(V12)) end, fun (V13) -> ('dn--un--pure_Applicative_ErlDecoder'([], V13)) end)); {'Erlang.Decode.ErlDecoders.::', V14, V15} -> ('dn--un--map_Functor_ErlDecoder'(fun (V16) -> case V16 of [E0 | E1] -> (fun (V17, V18) -> [V17 | V18] end(E0, E1)) end end, ('un--cons'(V14, ('un--hList'(V15)))))) end.
'un--fun8'(V0, V1, V2, V3, V4, V5, V6, V7, V8) -> case case V8 of E1 when (erlang:'is_function'(E1, 8)) -> (fun (V9) -> {'Prelude.Types.Just', V9} end(E1)); _ -> {'Prelude.Types.Nothing'} end of {'Prelude.Types.Just', V10} -> case V10 of E0 -> (fun (V11) -> {'Prelude.Types.Right', fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> ('Idris.Idris2.Erlang.IO':'un--erlTryCatch'({'Prelude.IO.MkHasIO', {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V22, V23, V24)) end end end end end, fun (V25) -> fun (V26) -> fun (V27) -> V26 end end end, fun (V28) -> fun (V29) -> fun (V30) -> fun (V31) -> fun (V32) -> begin (V33 = (V30(V32))), begin (V34 = (V31(V32))), (V33(V34)) end end end end end end end}, fun (V35) -> fun (V36) -> fun (V37) -> fun (V38) -> fun (V39) -> begin (V40 = (V37(V39))), ((V38(V40))(V39)) end end end end end end, fun (V41) -> fun (V42) -> fun (V43) -> begin (V44 = (V42(V43))), (V44(V43)) end end end end}, fun (V45) -> fun (V46) -> V46 end end}, ((((((((V11(V12))(V13))(V14))(V15))(V16))(V17))(V18))(V19)))) end end end end end end end end} end((fun (V48) -> fun (V49) -> fun (V50) -> fun (V51) -> fun (V52) -> fun (V53) -> fun (V54) -> fun (V55) -> fun (V56) -> fun (V47) -> (V48(V49, V50, V51, V52, V53, V54, V55, V56)) end end end end end end end end end end(E0)))) end; {'Prelude.Types.Nothing'} -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a function of arity 8"/utf8>>}} end.
'un--fun7'(V0, V1, V2, V3, V4, V5, V6, V7) -> case case V7 of E1 when (erlang:'is_function'(E1, 7)) -> (fun (V8) -> {'Prelude.Types.Just', V8} end(E1)); _ -> {'Prelude.Types.Nothing'} end of {'Prelude.Types.Just', V9} -> case V9 of E0 -> (fun (V10) -> {'Prelude.Types.Right', fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> ('Idris.Idris2.Erlang.IO':'un--erlTryCatch'({'Prelude.IO.MkHasIO', {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V20, V21, V22)) end end end end end, fun (V23) -> fun (V24) -> fun (V25) -> V24 end end end, fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> fun (V30) -> begin (V31 = (V28(V30))), begin (V32 = (V29(V30))), (V31(V32)) end end end end end end end}, fun (V33) -> fun (V34) -> fun (V35) -> fun (V36) -> fun (V37) -> begin (V38 = (V35(V37))), ((V36(V38))(V37)) end end end end end end, fun (V39) -> fun (V40) -> fun (V41) -> begin (V42 = (V40(V41))), (V42(V41)) end end end end}, fun (V43) -> fun (V44) -> V44 end end}, (((((((V10(V11))(V12))(V13))(V14))(V15))(V16))(V17)))) end end end end end end end} end((fun (V46) -> fun (V47) -> fun (V48) -> fun (V49) -> fun (V50) -> fun (V51) -> fun (V52) -> fun (V53) -> fun (V45) -> (V46(V47, V48, V49, V50, V51, V52, V53)) end end end end end end end end end(E0)))) end; {'Prelude.Types.Nothing'} -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a function of arity 7"/utf8>>}} end.
'un--fun6'(V0, V1, V2, V3, V4, V5, V6) -> case case V6 of E1 when (erlang:'is_function'(E1, 6)) -> (fun (V7) -> {'Prelude.Types.Just', V7} end(E1)); _ -> {'Prelude.Types.Nothing'} end of {'Prelude.Types.Just', V8} -> case V8 of E0 -> (fun (V9) -> {'Prelude.Types.Right', fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> ('Idris.Idris2.Erlang.IO':'un--erlTryCatch'({'Prelude.IO.MkHasIO', {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V18, V19, V20)) end end end end end, fun (V21) -> fun (V22) -> fun (V23) -> V22 end end end, fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> begin (V29 = (V26(V28))), begin (V30 = (V27(V28))), (V29(V30)) end end end end end end end}, fun (V31) -> fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> begin (V36 = (V33(V35))), ((V34(V36))(V35)) end end end end end end, fun (V37) -> fun (V38) -> fun (V39) -> begin (V40 = (V38(V39))), (V40(V39)) end end end end}, fun (V41) -> fun (V42) -> V42 end end}, ((((((V9(V10))(V11))(V12))(V13))(V14))(V15)))) end end end end end end} end((fun (V44) -> fun (V45) -> fun (V46) -> fun (V47) -> fun (V48) -> fun (V49) -> fun (V50) -> fun (V43) -> (V44(V45, V46, V47, V48, V49, V50)) end end end end end end end end(E0)))) end; {'Prelude.Types.Nothing'} -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a function of arity 6"/utf8>>}} end.
'un--fun5'(V0, V1, V2, V3, V4, V5) -> case case V5 of E1 when (erlang:'is_function'(E1, 5)) -> (fun (V6) -> {'Prelude.Types.Just', V6} end(E1)); _ -> {'Prelude.Types.Nothing'} end of {'Prelude.Types.Just', V7} -> case V7 of E0 -> (fun (V8) -> {'Prelude.Types.Right', fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('Idris.Idris2.Erlang.IO':'un--erlTryCatch'({'Prelude.IO.MkHasIO', {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V16, V17, V18)) end end end end end, fun (V19) -> fun (V20) -> fun (V21) -> V20 end end end, fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> begin (V27 = (V24(V26))), begin (V28 = (V25(V26))), (V27(V28)) end end end end end end end}, fun (V29) -> fun (V30) -> fun (V31) -> fun (V32) -> fun (V33) -> begin (V34 = (V31(V33))), ((V32(V34))(V33)) end end end end end end, fun (V35) -> fun (V36) -> fun (V37) -> begin (V38 = (V36(V37))), (V38(V37)) end end end end}, fun (V39) -> fun (V40) -> V40 end end}, (((((V8(V9))(V10))(V11))(V12))(V13)))) end end end end end} end((fun (V42) -> fun (V43) -> fun (V44) -> fun (V45) -> fun (V46) -> fun (V47) -> fun (V41) -> (V42(V43, V44, V45, V46, V47)) end end end end end end end(E0)))) end; {'Prelude.Types.Nothing'} -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a function of arity 5"/utf8>>}} end.
'un--fun4'(V0, V1, V2, V3, V4) -> case case V4 of E1 when (erlang:'is_function'(E1, 4)) -> (fun (V5) -> {'Prelude.Types.Just', V5} end(E1)); _ -> {'Prelude.Types.Nothing'} end of {'Prelude.Types.Just', V6} -> case V6 of E0 -> (fun (V7) -> {'Prelude.Types.Right', fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> ('Idris.Idris2.Erlang.IO':'un--erlTryCatch'({'Prelude.IO.MkHasIO', {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V14, V15, V16)) end end end end end, fun (V17) -> fun (V18) -> fun (V19) -> V18 end end end, fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> begin (V25 = (V22(V24))), begin (V26 = (V23(V24))), (V25(V26)) end end end end end end end}, fun (V27) -> fun (V28) -> fun (V29) -> fun (V30) -> fun (V31) -> begin (V32 = (V29(V31))), ((V30(V32))(V31)) end end end end end end, fun (V33) -> fun (V34) -> fun (V35) -> begin (V36 = (V34(V35))), (V36(V35)) end end end end}, fun (V37) -> fun (V38) -> V38 end end}, ((((V7(V8))(V9))(V10))(V11)))) end end end end} end((fun (V40) -> fun (V41) -> fun (V42) -> fun (V43) -> fun (V44) -> fun (V39) -> (V40(V41, V42, V43, V44)) end end end end end end(E0)))) end; {'Prelude.Types.Nothing'} -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a function of arity 4"/utf8>>}} end.
'un--fun3'(V0, V1, V2, V3) -> case case V3 of E1 when (erlang:'is_function'(E1, 3)) -> (fun (V4) -> {'Prelude.Types.Just', V4} end(E1)); _ -> {'Prelude.Types.Nothing'} end of {'Prelude.Types.Just', V5} -> case V5 of E0 -> (fun (V6) -> {'Prelude.Types.Right', fun (V7) -> fun (V8) -> fun (V9) -> ('Idris.Idris2.Erlang.IO':'un--erlTryCatch'({'Prelude.IO.MkHasIO', {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V12, V13, V14)) end end end end end, fun (V15) -> fun (V16) -> fun (V17) -> V16 end end end, fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> begin (V23 = (V20(V22))), begin (V24 = (V21(V22))), (V23(V24)) end end end end end end end}, fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> begin (V30 = (V27(V29))), ((V28(V30))(V29)) end end end end end end, fun (V31) -> fun (V32) -> fun (V33) -> begin (V34 = (V32(V33))), (V34(V33)) end end end end}, fun (V35) -> fun (V36) -> V36 end end}, (((V6(V7))(V8))(V9)))) end end end} end((fun (V38) -> fun (V39) -> fun (V40) -> fun (V41) -> fun (V37) -> (V38(V39, V40, V41)) end end end end end(E0)))) end; {'Prelude.Types.Nothing'} -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a function of arity 3"/utf8>>}} end.
'un--fun2'(V0, V1, V2) -> case case V2 of E1 when (erlang:'is_function'(E1, 2)) -> (fun (V3) -> {'Prelude.Types.Just', V3} end(E1)); _ -> {'Prelude.Types.Nothing'} end of {'Prelude.Types.Just', V4} -> case V4 of E0 -> (fun (V5) -> {'Prelude.Types.Right', fun (V6) -> fun (V7) -> ('Idris.Idris2.Erlang.IO':'un--erlTryCatch'({'Prelude.IO.MkHasIO', {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V10, V11, V12)) end end end end end, fun (V13) -> fun (V14) -> fun (V15) -> V14 end end end, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> begin (V21 = (V18(V20))), begin (V22 = (V19(V20))), (V21(V22)) end end end end end end end}, fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> begin (V28 = (V25(V27))), ((V26(V28))(V27)) end end end end end end, fun (V29) -> fun (V30) -> fun (V31) -> begin (V32 = (V30(V31))), (V32(V31)) end end end end}, fun (V33) -> fun (V34) -> V34 end end}, ((V5(V6))(V7)))) end end} end((fun (V36) -> fun (V37) -> fun (V38) -> fun (V35) -> (V36(V37, V38)) end end end end(E0)))) end; {'Prelude.Types.Nothing'} -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a function of arity 2"/utf8>>}} end.
'un--fun1'(V0, V1) -> case case V1 of E1 when (erlang:'is_function'(E1, 1)) -> (fun (V2) -> {'Prelude.Types.Just', V2} end(E1)); _ -> {'Prelude.Types.Nothing'} end of {'Prelude.Types.Just', V3} -> case V3 of E0 -> (fun (V4) -> {'Prelude.Types.Right', fun (V5) -> ('Idris.Idris2.Erlang.IO':'un--erlTryCatch'({'Prelude.IO.MkHasIO', {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V8, V9, V10)) end end end end end, fun (V11) -> fun (V12) -> fun (V13) -> V12 end end end, fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> begin (V19 = (V16(V18))), begin (V20 = (V17(V18))), (V19(V20)) end end end end end end end}, fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> begin (V26 = (V23(V25))), ((V24(V26))(V25)) end end end end end end, fun (V27) -> fun (V28) -> fun (V29) -> begin (V30 = (V28(V29))), (V30(V29)) end end end end}, fun (V31) -> fun (V32) -> V32 end end}, (V4(V5)))) end} end((fun (V34) -> fun (V35) -> fun (V33) -> (V34(V35)) end end end(E0)))) end; {'Prelude.Types.Nothing'} -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a function of arity 1"/utf8>>}} end.
'un--fun0'(V0) -> case case V0 of E1 when (erlang:'is_function'(E1, 0)) -> (fun (V1) -> {'Prelude.Types.Just', V1} end(E1)); _ -> {'Prelude.Types.Nothing'} end of {'Prelude.Types.Just', V2} -> case V2 of E0 -> (fun (V3) -> {'Prelude.Types.Right', ('Idris.Idris2.Erlang.IO':'un--erlTryCatch'({'Prelude.IO.MkHasIO', {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V6, V7, V8)) end end end end end, fun (V9) -> fun (V10) -> fun (V11) -> V10 end end end, fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> begin (V17 = (V14(V16))), begin (V18 = (V15(V16))), (V17(V18)) end end end end end end end}, fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> begin (V24 = (V21(V23))), ((V22(V24))(V23)) end end end end end end, fun (V25) -> fun (V26) -> fun (V27) -> begin (V28 = (V26(V27))), (V28(V27)) end end end end}, fun (V29) -> fun (V30) -> V30 end end}, V3))} end((fun (V32) -> fun (V31) -> (V32()) end end(E0)))) end; {'Prelude.Types.Nothing'} -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a function of arity 0"/utf8>>}} end.
'un--fail'(V0, V1) -> {'Prelude.Types.Left', {'Erlang.Decode.Error', V0}}.
'un--exact'(V0, V1, V2) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(case (V2 =:= (begin (V4 = fun (V3) -> V3 end), fun (V5) -> (V4(V5)) end end(V1))) of 'false' -> 0; _ -> 1 end, begin (V6 = 1), case ((V6 band 9223372036854775808) =/= 0) of 'true' -> (V6 bor -9223372036854775808); _ -> (V6 band 9223372036854775807) end end)) of 1 -> {'Prelude.Types.Right', V1}; 0 -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected the value to match exactly"/utf8>>}} end.
'un--errorTuple'(V0) -> ('dn--un--map_Functor_ErlDecoder'(fun (V1) -> case V1 of {E0, E1} -> (fun (V2, V3) -> V3 end(E0, E1)) end end, ('un--tuple2'(fun (V4) -> ('un--exact'({'Erlang.Types.ETErlAtom'}, 'error', V4)) end, V0)))).
'un--erlDecodeMay'(V0, V1, V2) -> case ('un--erlDecode'(V0, V1, V2)) of {'Prelude.Types.Right', V3} -> {'Prelude.Types.Just', V3}; {'Prelude.Types.Left', V4} -> {'Prelude.Types.Nothing'} end.
'un--erlDecodeDef'(V0, V1, V2, V3) -> case ('un--erlDecode'(V0, V2, V3)) of {'Prelude.Types.Right', V4} -> V4; {'Prelude.Types.Left', V5} -> (V1()) end.
'un--erlDecode'(V0, V1, V2) -> begin (V3 = V1), (V3((begin (V5 = fun (V4) -> V4 end), fun (V6) -> (V5(V6)) end end(V2)))) end.
'un--double'(V0) -> ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a double"/utf8>>}} end, fun () -> fun (V1) -> {'Prelude.Types.Right', V1} end end, case V0 of E0 when (erlang:'is_float'(E0)) -> (fun (V2) -> {'Prelude.Types.Just', V2} end(E0)); _ -> {'Prelude.Types.Nothing'} end)).
'un--cons'(V0, V1) -> begin (V2 = V0), begin (V3 = V1), fun (V4) -> case case V4 of [E2 | E3] -> (fun (V7) -> {'Prelude.Types.Just', V7} end((fun (V5, V6) -> [V5 | V6] end(E2, E3)))); _ -> {'Prelude.Types.Nothing'} end of {'Prelude.Types.Just', V8} -> case V8 of [E0 | E1] -> (fun (V9, V10) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V2(V9)), fun (V11) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_(Either $e)'((V3(V10)), fun (V12) -> {'Prelude.Types.Right', [V11 | V12]} end)) end)) end(E0, E1)) end; {'Prelude.Types.Nothing'} -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a cons value"/utf8>>}} end end end end.
'un--codepoint'(V0) -> ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a char"/utf8>>}} end, fun () -> fun (V1) -> {'Prelude.Types.Right', V1} end end, case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> (fun (V2) -> {'Prelude.Types.Just', V2} end(E0)); _ -> {'Prelude.Types.Nothing'} end)).
'un--charlist'() -> ('dn--un-->>=_Monad_ErlDecoder'(('un--list'(fun (V0) -> ('un--codepoint'(V0)) end)), fun (V1) -> fun (V2) -> ('dn--un--pure_Applicative_ErlDecoder'(V1, V2)) end end)).
'un--bool'() -> ('dn--un--<|>_Alternative_ErlDecoder'(('Idris.Idris2.Prelude.Interfaces':'un--*>'({'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--map_Functor_ErlDecoder'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> fun (V6) -> ('dn--un--pure_Applicative_ErlDecoder'(V5, V6)) end end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('dn--un--<*>_Applicative_ErlDecoder'(V9, V10)) end end end end}, fun (V11) -> ('un--exact'({'Erlang.Types.ETErlAtom'}, 'true', V11)) end, fun (V12) -> ('dn--un--pure_Applicative_ErlDecoder'(1, V12)) end)), fun () -> ('Idris.Idris2.Prelude.Interfaces':'un--*>'({'Prelude.Interfaces.MkApplicative', fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> ('dn--un--map_Functor_ErlDecoder'(V15, V16)) end end end end, fun (V17) -> fun (V18) -> fun (V19) -> ('dn--un--pure_Applicative_ErlDecoder'(V18, V19)) end end end, fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('dn--un--<*>_Applicative_ErlDecoder'(V22, V23)) end end end end}, fun (V24) -> ('un--exact'({'Erlang.Types.ETErlAtom'}, 'false', V24)) end, fun (V25) -> ('dn--un--pure_Applicative_ErlDecoder'(0, V25)) end)) end)).
'un--atom'(V0) -> ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected an atom"/utf8>>}} end, fun () -> fun (V1) -> {'Prelude.Types.Right', V1} end end, case V0 of E0 when (erlang:'is_atom'(E0)) -> (fun (V2) -> {'Prelude.Types.Just', V2} end(E0)); _ -> {'Prelude.Types.Nothing'} end)).
'un--anyMap'(V0) -> ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a map"/utf8>>}} end, fun () -> fun (V1) -> {'Prelude.Types.Right', V1} end end, case V0 of E0 when (erlang:'is_map'(E0)) -> (fun (V2) -> {'Prelude.Types.Just', V2} end(E0)); _ -> {'Prelude.Types.Nothing'} end)).
'un--anyList'(V0) -> ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> {'Prelude.Types.Left', {'Erlang.Decode.Error', <<"Expected a list"/utf8>>}} end, fun () -> fun (V1) -> {'Prelude.Types.Right', V1} end end, case V0 of E0 when (erlang:'is_list'(E0)) -> (fun (V2) -> {'Prelude.Types.Just', V2} end(E0)); _ -> {'Prelude.Types.Nothing'} end)).
'un--any'(V0) -> {'Prelude.Types.Right', V0}.
'un--.='(V0, V1) -> {'Erlang.Decode.MkDecoderMapEntry', V0, V1}.
