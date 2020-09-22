-module('Idris.Idris2.Prelude.IO').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--pure_Applicative__IO'/3,
  'dn--un--map_Functor__IO'/5,
  'dn--un--liftIO_HasIO__IO'/2,
  'dn--un--join_Monad__IO'/3,
  'dn--un--__Impl_Monad_IO'/0,
  'dn--un--__Impl_HasIO_IO'/0,
  'dn--un--__Impl_Functor_IO'/5,
  'dn--un--__Impl_Applicative_IO'/0,
  'dn--un--__HasIO_(Monad io)'/2,
  'dn--un-->>=_Monad__IO'/5,
  'dn--un--<*>_Applicative__IO'/5,
  'un--putStrLn'/3,
  'un--putStr'/3,
  'un--putCharLn'/3,
  'un--putChar'/3,
  'un--printLn'/4,
  'un--print'/4,
  'un--prim__putStr'/2,
  'un--prim__putChar'/2,
  'un--prim__onCollectAny'/3,
  'un--prim__onCollect'/4,
  'un--prim__getString'/1,
  'un--prim__getStr'/1,
  'un--prim__getErrno'/0,
  'un--prim__getChar'/1,
  'un--prim__fork'/2,
  'un--primIO'/4,
  'un--onCollectAny'/3,
  'un--onCollect'/4,
  'un--liftIO'/3,
  'un--getLine'/2,
  'un--getChar'/2,
  'un--fork'/2
]).
'dn--un--pure_Applicative__IO'(V0, V1, V2) -> V1.
'dn--un--map_Functor__IO'(V0, V1, V2, V3, V4) -> begin (V5 = (V3(V4))), (V2(V5)) end.
'dn--un--liftIO_HasIO__IO'(V0, V1) -> V1.
'dn--un--join_Monad__IO'(V0, V1, V2) -> begin (V3 = (V1(V2))), (V3(V2)) end.
'dn--un--__Impl_Monad_IO'() -> {'Idris.Prelude.Interfaces.dn--un--__mkMonad', {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor__IO'('erased', 'erased', V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> V6 end end end, fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> begin (V13 = (V10(V12))), begin (V14 = (V11(V12))), (V13(V14)) end end end end end end end}, fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> begin (V20 = (V17(V19))), ((V18(V20))(V19)) end end end end end end, fun (V21) -> fun (V22) -> fun (V23) -> begin (V24 = (V22(V23))), (V24(V23)) end end end end}.
'dn--un--__Impl_HasIO_IO'() -> {'Idris.Prelude.IO.dn--un--__mkHasIO', {'Idris.Prelude.Interfaces.dn--un--__mkMonad', {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor__IO'('erased', 'erased', V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> V6 end end end, fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> begin (V13 = (V10(V12))), begin (V14 = (V11(V12))), (V13(V14)) end end end end end end end}, fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> begin (V20 = (V17(V19))), ((V18(V20))(V19)) end end end end end end, fun (V21) -> fun (V22) -> fun (V23) -> begin (V24 = (V22(V23))), (V24(V23)) end end end end}, fun (V25) -> fun (V26) -> V26 end end}.
'dn--un--__Impl_Functor_IO'(V0, V1, V2, V3, V4) -> ('dn--un--map_Functor__IO'('erased', 'erased', V2, V3, V4)).
'dn--un--__Impl_Applicative_IO'() -> {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor__IO'('erased', 'erased', V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> V6 end end end, fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> begin (V13 = (V10(V12))), begin (V14 = (V11(V12))), (V13(V14)) end end end end end end end}.
'dn--un--__HasIO_(Monad io)'(V0, V1) -> case V1 of {'Idris.Prelude.IO.dn--un--__mkHasIO', E0, E1} -> (fun (V2, V3) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un-->>=_Monad__IO'(V0, V1, V2, V3, V4) -> begin (V5 = (V2(V4))), ((V3(V5))(V4)) end.
'dn--un--<*>_Applicative__IO'(V0, V1, V2, V3, V4) -> begin (V5 = (V2(V4))), begin (V6 = (V3(V4))), (V5(V6)) end end.
'un--putStrLn'(V0, V1, V2) -> ('un--putStr'('erased', V1, (fun (Bin1, Bin2) -> <<Bin1/binary, Bin2/binary>> end(V2, <<"\x{a}"/utf8>>)))).
'un--putStr'(V0, V1, V2) -> case V1 of {'Idris.Prelude.IO.dn--un--__mkHasIO', E0, E1} -> (fun (V3, V4) -> ((V4('erased'))(fun (V5) -> ('un--prim__putStr'(V2, V5)) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--putCharLn'(V0, V1, V2) -> ('un--putStrLn'('erased', V1, ('unicode':'characters_to_binary'([V2 | []])))).
'un--putChar'(V0, V1, V2) -> case V1 of {'Idris.Prelude.IO.dn--un--__mkHasIO', E0, E1} -> (fun (V3, V4) -> ((V4('erased'))(fun (V5) -> ('un--prim__putChar'(V2, V5)) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--printLn'(V0, V1, V2, V3) -> ('un--putStrLn'('erased', ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V2)), case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V2)) of {'Idris.Prelude.Show.dn--un--__mkShow', E0, E1} -> (fun (V4, V5) -> (V4(V3)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)).
'un--print'(V0, V1, V2, V3) -> ('un--putStr'('erased', ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V2)), case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V2)) of {'Idris.Prelude.Show.dn--un--__mkShow', E0, E1} -> (fun (V4, V5) -> (V4(V3)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)).
'un--prim__putStr'(V0, V1) -> begin ('io':'format'("~ts", [V0 | []])), {'Idris.Builtin.MkUnit'} end.
'un--prim__putChar'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Prelude.IO.prim__putChar")).
'un--prim__onCollectAny'(V0, V1, V2) -> ('erlang':'throw'("Error: Badly formed external primitive Prelude.IO.prim__onCollectAny")).
'un--prim__onCollect'(V0, V1, V2, V3) -> ('erlang':'throw'("Error: Badly formed external primitive Prelude.IO.prim__onCollect")).
'un--prim__getString'(V0) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Prelude.IO.prim__getString")).
'un--prim__getStr'(V0) -> ('unicode':'characters_to_binary'(('string':'trim'(('io':'get_line'("")), 'trailing', "\x{a}")))).
'un--prim__getErrno'() -> ('erlang':'throw'("Error: Unsupported %foreign primitive Prelude.IO.prim__getErrno")).
'un--prim__getChar'(V0) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Prelude.IO.prim__getChar")).
'un--prim__fork'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Prelude.IO.prim__fork")).
'un--primIO'(V0, V1, V2, V3) -> case V2 of {'Idris.Prelude.IO.dn--un--__mkHasIO', E0, E1} -> (fun (V4, V5) -> ((V5('erased'))(V3)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--onCollectAny'(V0, V1, V2) -> ('erlang':'throw'("Error: Badly formed external primitive Prelude.IO.prim__onCollectAny")).
'un--onCollect'(V0, V1, V2, V3) -> ('erlang':'throw'("Error: Badly formed external primitive Prelude.IO.prim__onCollect")).
'un--liftIO'(V0, V1, V2) -> case V2 of {'Idris.Prelude.IO.dn--un--__mkHasIO', E0, E1} -> (fun (V3, V4) -> fun (V5) -> ((V4('erased'))(V5)) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--getLine'(V0, V1) -> case V1 of {'Idris.Prelude.IO.dn--un--__mkHasIO', E0, E1} -> (fun (V2, V3) -> ((V3('erased'))(fun (V4) -> ('un--prim__getStr'(V4)) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--getChar'(V0, V1) -> case V1 of {'Idris.Prelude.IO.dn--un--__mkHasIO', E0, E1} -> (fun (V2, V3) -> ((V3('erased'))(fun (V4) -> ('un--prim__getChar'(V4)) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--fork'(V0, V1) -> ('un--prim__fork'(V0, V1)).
