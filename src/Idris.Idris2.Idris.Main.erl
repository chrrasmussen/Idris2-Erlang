-module('Idris.Idris2.Idris.Main').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'start'/0,
  'main'/1,
  'run'/1,
  'case--erlRun-2461'/3,
  'case--erlRun-2447'/2,
  'case--erlEscriptMain-2419'/2,
  'case--erlInitStart-2370'/1,
  'case--erlMain-2329'/3,
  'case--case block in tryMainWithCodegens-2143'/6,
  'case--tryMainWithCodegens-2107'/2,
  'case--softExitDecoder-2083'/1,
  'case--softExitDecoder,toExitCode-2055'/2,
  'nested--3522-2043--in--un--toExitCode'/1,
  'un--tryMainWithCodegens'/2,
  'un--softExitDecoder'/0,
  'un--exports'/0,
  'un--erlRun'/1,
  'un--erlMain'/2,
  'un--erlInitStart'/1,
  'un--erlEscriptMain'/1,
  'un--codegens'/0
]).
'start'() -> (fun () -> ('Idris.Idris2.PrimIO':'un--unsafePerformIO'('erased', fun (V0) -> ('un--erlInitStart'(V0)) end)) end()).
'main'(V2) -> (fun (V1) -> ('Idris.Idris2.PrimIO':'un--unsafePerformIO'('erased', (fun (V0) -> ('un--erlEscriptMain'(V0)) end(V1)))) end(V2)).
'run'(V2) -> (fun (V1) -> ('Idris.Idris2.PrimIO':'un--unsafePerformIO'('erased', (fun (V0) -> ('un--erlRun'(V0)) end(V1)))) end(V2)).
'case--erlRun-2461'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Right', E0} -> (fun (V3) -> case V3 of {'Idris.Builtin.MkUnit'} -> (fun () -> fun (V4) -> ('Idris.Idris2.Erlang.Conversion':'dn--un--cast_Cast__$a_ErlTerm'('erased', {'Idris.Erlang.Types.ETErlAtom'}, 'ok')) end end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.Left', E1} -> (fun (V5) -> fun (V6) -> ('Idris.Idris2.Erlang.Conversion':'dn--un--cast_Cast__$a_ErlTerm'('erased', {'Idris.Erlang.Types.ETErlAtom'}, 'error')) end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--erlRun-2447'(V0, V1) -> case V1 of E0 -> (fun (V2) -> V2 end((fun (V3) -> ('unicode':'characters_to_binary'(V3)) end(E0)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--erlEscriptMain-2419'(V0, V1) -> case V1 of E0 -> (fun (V2) -> V2 end((fun (V3) -> ('unicode':'characters_to_binary'(V3)) end(E0)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--erlInitStart-2370'(V0) -> case V0 of [E0 | E1] -> (fun (V1, V2) -> fun (V3) -> ('un--erlMain'(V2, V3)) end end(E0, E1)); _ -> fun (V4) -> ('Idris.Idris2.Erlang.Conversion':'dn--un--cast_Cast__$a_ErlTerm'('erased', {'Idris.Erlang.Types.ETErlTuple2', {'Idris.Erlang.Types.ETErlTypesCons', {'Idris.Builtin.MkPair', {'Idris.Erlang.Types.ETErlAtom'}, {'Idris.Erlang.Types.ETErlTypesCons', {'Idris.Builtin.MkPair', {'Idris.Erlang.Types.ETErlAtom'}, {'Idris.Erlang.Types.ETErlTypesNil'}}}}}}, {'error', 'invalid_args'})) end end.
'case--erlMain-2329'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Right', E0} -> (fun (V3) -> case V3 of {'Idris.Builtin.MkUnit'} -> (fun () -> fun (V4) -> ('Idris.Idris2.Erlang.Conversion':'dn--un--cast_Cast__$a_ErlTerm'('erased', {'Idris.Erlang.Types.ETErlAtom'}, 'ok')) end end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.Left', E1} -> (fun (V5) -> ('Idris.Idris2.Erlang.System':'un--exitWith'('erased', 'erased', {'Idris.Prelude.IO.dn--un--__mkHasIO', {'Idris.Prelude.Interfaces.dn--un--__mkMonad', {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor__IO'('erased', 'erased', V8, V9, V10)) end end end end end, fun (V11) -> fun (V12) -> fun (V13) -> V12 end end end, fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> begin (V19 = (V16(V18))), begin (V20 = (V17(V18))), (V19(V20)) end end end end end end end}, fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> begin (V26 = (V23(V25))), ((V24(V26))(V25)) end end end end end end, fun (V27) -> fun (V28) -> fun (V29) -> begin (V30 = (V28(V29))), (V30(V29)) end end end end}, fun (V31) -> fun (V32) -> V32 end end}, V5)) end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in tryMainWithCodegens-2143'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Idris.Prelude.Types.Right', E0} -> (fun (V6) -> fun (V7) -> {'Idris.Prelude.Types.Left', V6} end end(E0)); {'Idris.Prelude.Types.Left', E1} -> (fun (V8) -> fun (V9) -> {'Idris.Prelude.Types.Right', {'Idris.Builtin.MkUnit'}} end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--tryMainWithCodegens-2107'(V0, V1) -> case V1 of {'Idris.Prelude.Types.Right', E0} -> (fun (V2) -> fun (V3) -> {'Idris.Prelude.Types.Right', {'Idris.Builtin.MkUnit'}} end end(E0)); {'Idris.Prelude.Types.Left', E1} -> (fun (V4) -> case V4 of {E2, E3, E4} -> (fun (V5, V6, V7) -> begin (V8 = {'Idris.Prelude.Types.Left', {V5, V6, V7}}), ('case--case block in tryMainWithCodegens-2143'(V0, V7, V5, V6, V8, ('Idris.Idris2.Erlang.Decode':'un--erlDecode'('erased', 'erased', {'Idris.Erlang.Types.ETErlTerm'}, ('un--softExitDecoder'()), V6)))) end end(E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--softExitDecoder-2083'(V0) -> case V0 of {E0, E1} -> (fun (V1, V2) -> ('nested--3522-2043--in--un--toExitCode'(('Idris.Idris2.Prelude.Types':'dn--un--cast_Cast__Integer_Int'(V2)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--softExitDecoder,toExitCode-2055'(V0, V1) -> case V1 of {'Idris.Prelude.Types.Left', E0} -> (fun (V2) -> {'Idris.Erlang.System.ExitFailure', V0, V2} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V3) -> {'Idris.Erlang.System.ExitSuccess'} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--3522-2043--in--un--toExitCode'(V0) -> ('case--softExitDecoder,toExitCode-2055'(V0, ('Idris.Idris2.Data.So':'un--choose'(('Idris.Idris2.Prelude.Basics':'un--not'(('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Int'(V0, 0)))))))).
'un--tryMainWithCodegens'(V0, V1) -> begin (V29 = (('Idris.Idris2.Erlang.IO':'un--erlTryCatch'('erased', 'erased', {'Idris.Prelude.IO.dn--un--__mkHasIO', {'Idris.Prelude.Interfaces.dn--un--__mkMonad', {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor__IO'('erased', 'erased', V4, V5, V6)) end end end end end, fun (V7) -> fun (V8) -> fun (V9) -> V8 end end end, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> begin (V15 = (V12(V14))), begin (V16 = (V13(V14))), (V15(V16)) end end end end end end end}, fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> begin (V22 = (V19(V21))), ((V20(V22))(V21)) end end end end end end, fun (V23) -> fun (V24) -> fun (V25) -> begin (V26 = (V24(V25))), (V26(V25)) end end end end}, fun (V27) -> fun (V28) -> V28 end end}, ('Idris.Idris2.Idris.Driver':'un--mainWithCodegens'(('un--codegens'()), V0))))(V1))), case V29 of {'Idris.Prelude.Types.Right', E0} -> (fun (V30) -> {'Idris.Prelude.Types.Right', {'Idris.Builtin.MkUnit'}} end(E0)); {'Idris.Prelude.Types.Left', E1} -> (fun (V31) -> case V31 of {E2, E3, E4} -> (fun (V32, V33, V34) -> begin (V35 = {'Idris.Prelude.Types.Left', {V32, V33, V34}}), (('case--case block in tryMainWithCodegens-2143'(V0, V34, V32, V33, V35, ('Idris.Idris2.Erlang.Decode':'un--erlDecode'('erased', 'erased', {'Idris.Erlang.Types.ETErlTerm'}, ('un--softExitDecoder'()), V33))))(V1)) end end(E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.
'un--softExitDecoder'() -> ('Idris.Idris2.Prelude.Interfaces':'un--<$>'('erased', 'erased', 'erased', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor__ErlDecoder'('erased', 'erased', V2, V3, V4)) end end end end end, fun (V5) -> case V5 of {E0, E1} -> (fun (V6, V7) -> ('nested--3522-2043--in--un--toExitCode'(('Idris.Idris2.Prelude.Types':'dn--un--cast_Cast__Integer_Int'(V7)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end, fun (V8) -> ('Idris.Idris2.Erlang.Decode':'un--tuple2'('erased', 'erased', fun (V9) -> ('Idris.Idris2.Erlang.Decode':'un--exact'('erased', {'Idris.Erlang.Types.ETErlAtom'}, ('Idris.Idris2.Utils.System':'un--softExitAtom'()), V9)) end, fun (V10) -> ('Idris.Idris2.Erlang.Decode':'un--integer'(V10)) end, V8)) end)).
'un--exports'() -> {'Idris.Erlang.IO.Combine', {'Idris.Erlang.IO.Combine', {'Idris.Erlang.IO.Fun', {'Idris.Erlang.Types.ETErlIOFun0', {'Idris.Erlang.Types.ETErlTypesCons', {'Idris.Builtin.MkPair', {'Idris.Erlang.Types.ETErlTerm'}, {'Idris.Erlang.Types.ETErlTypesNil'}}}}, <<"start"/utf8>>, fun () -> ('Idris.Idris2.PrimIO':'un--unsafePerformIO'('erased', fun (V0) -> ('un--erlInitStart'(V0)) end)) end}, {'Idris.Erlang.IO.Fun', {'Idris.Erlang.Types.ETErlIOFun1', {'Idris.Erlang.Types.ETErlTypesCons', {'Idris.Builtin.MkPair', {'Idris.Erlang.Types.ETList', {'Idris.Erlang.Types.ETErlCharlist'}}, {'Idris.Erlang.Types.ETErlTypesCons', {'Idris.Builtin.MkPair', {'Idris.Erlang.Types.ETErlTerm'}, {'Idris.Erlang.Types.ETErlTypesNil'}}}}}}, <<"main"/utf8>>, fun (V2) -> ('Idris.Idris2.PrimIO':'un--unsafePerformIO'('erased', (fun (V1) -> ('un--erlEscriptMain'(V1)) end(V2)))) end}}, {'Idris.Erlang.IO.Fun', {'Idris.Erlang.Types.ETErlIOFun1', {'Idris.Erlang.Types.ETErlTypesCons', {'Idris.Builtin.MkPair', {'Idris.Erlang.Types.ETErlTerm'}, {'Idris.Erlang.Types.ETErlTypesCons', {'Idris.Builtin.MkPair', {'Idris.Erlang.Types.ETErlTerm'}, {'Idris.Erlang.Types.ETErlTypesNil'}}}}}}, <<"run"/utf8>>, fun (V4) -> ('Idris.Idris2.PrimIO':'un--unsafePerformIO'('erased', (fun (V3) -> ('un--erlRun'(V3)) end(V4)))) end}}.
'un--erlRun'(V0) -> begin (V11 = ('Idris.Idris2.Erlang.Decode':'un--erlDecodeDef'('erased', 'erased', {'Idris.Erlang.Types.ETErlTerm'}, fun () -> [] end, fun (V1) -> ('Idris.Idris2.Erlang.Decode':'dn--un--<|>_Alternative__ErlDecoder'('erased', fun (V2) -> ('Idris.Idris2.Erlang.Decode':'un--list'('erased', fun (V3) -> ('Idris.Idris2.Erlang.Decode':'un--string'(V3)) end, V2)) end, fun (V4) -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor__ErlDecoder'('erased', 'erased', fun (V5) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__List'('erased', 'erased', fun (V6) -> case V6 of E0 -> (fun (V7) -> V7 end((fun (V8) -> ('unicode':'characters_to_binary'(V8)) end(E0)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end, V5)) end, fun (V9) -> ('Idris.Idris2.Erlang.Decode':'un--list'('erased', fun (V10) -> ('Idris.Idris2.Erlang.Decode':'un--charlist'(V10)) end, V9)) end, V4)) end, V1)) end, V0))), fun (V12) -> begin (V13 = ('un--tryMainWithCodegens'(V11, V12))), case V13 of {'Idris.Prelude.Types.Right', E1} -> (fun (V14) -> case V14 of {'Idris.Builtin.MkUnit'} -> (fun () -> ('Idris.Idris2.Erlang.Conversion':'dn--un--cast_Cast__$a_ErlTerm'('erased', {'Idris.Erlang.Types.ETErlAtom'}, 'ok')) end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E1)); {'Idris.Prelude.Types.Left', E2} -> (fun (V15) -> ('Idris.Idris2.Erlang.Conversion':'dn--un--cast_Cast__$a_ErlTerm'('erased', {'Idris.Erlang.Types.ETErlAtom'}, 'error')) end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end.
'un--erlMain'(V0, V1) -> begin (V2 = ('erlang':'apply'('io', 'setopts', [[{'encoding', 'unicode'} | []] | []]))), begin (V3 = ('un--tryMainWithCodegens'(V0, V1))), case V3 of {'Idris.Prelude.Types.Right', E0} -> (fun (V4) -> case V4 of {'Idris.Builtin.MkUnit'} -> (fun () -> ('Idris.Idris2.Erlang.Conversion':'dn--un--cast_Cast__$a_ErlTerm'('erased', {'Idris.Erlang.Types.ETErlAtom'}, 'ok')) end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.Left', E1} -> (fun (V5) -> (('Idris.Idris2.Erlang.System':'un--exitWith'('erased', 'erased', {'Idris.Prelude.IO.dn--un--__mkHasIO', {'Idris.Prelude.Interfaces.dn--un--__mkMonad', {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor__IO'('erased', 'erased', V8, V9, V10)) end end end end end, fun (V11) -> fun (V12) -> fun (V13) -> V12 end end end, fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> begin (V19 = (V16(V18))), begin (V20 = (V17(V18))), (V19(V20)) end end end end end end end}, fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> begin (V26 = (V23(V25))), ((V24(V26))(V25)) end end end end end end, fun (V27) -> fun (V28) -> fun (V29) -> begin (V30 = (V28(V29))), (V30(V29)) end end end end}, fun (V31) -> fun (V32) -> V32 end end}, V5))(V1)) end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--erlInitStart'(V0) -> begin (V28 = (('Idris.Idris2.Erlang.System':'un--getArgs'('erased', {'Idris.Prelude.IO.dn--un--__mkHasIO', {'Idris.Prelude.Interfaces.dn--un--__mkMonad', {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor__IO'('erased', 'erased', V3, V4, V5)) end end end end end, fun (V6) -> fun (V7) -> fun (V8) -> V7 end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> begin (V14 = (V11(V13))), begin (V15 = (V12(V13))), (V14(V15)) end end end end end end end}, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> begin (V21 = (V18(V20))), ((V19(V21))(V20)) end end end end end end, fun (V22) -> fun (V23) -> fun (V24) -> begin (V25 = (V23(V24))), (V25(V24)) end end end end}, fun (V26) -> fun (V27) -> V27 end end}))(V0))), case V28 of [E0 | E1] -> (fun (V29, V30) -> ('un--erlMain'(V30, V0)) end(E0, E1)); _ -> ('Idris.Idris2.Erlang.Conversion':'dn--un--cast_Cast__$a_ErlTerm'('erased', {'Idris.Erlang.Types.ETErlTuple2', {'Idris.Erlang.Types.ETErlTypesCons', {'Idris.Builtin.MkPair', {'Idris.Erlang.Types.ETErlAtom'}, {'Idris.Erlang.Types.ETErlTypesCons', {'Idris.Builtin.MkPair', {'Idris.Erlang.Types.ETErlAtom'}, {'Idris.Erlang.Types.ETErlTypesNil'}}}}}}, {'error', 'invalid_args'})) end end.
'un--erlEscriptMain'(V0) -> begin (V4 = ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__List'('erased', 'erased', fun (V1) -> case V1 of E0 -> (fun (V2) -> V2 end((fun (V3) -> ('unicode':'characters_to_binary'(V3)) end(E0)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end, V0))), fun (V5) -> ('un--erlMain'(V4, V5)) end end.
'un--codegens'() -> [{'Idris.Builtin.MkPair', <<"erlang"/utf8>>, ('Idris.Idris2.Compiler.Erlang.Erlang':'un--codegenErlang'())} | []].