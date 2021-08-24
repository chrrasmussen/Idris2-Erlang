-module('Idris.Idris2.Prelude.IO').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--pure_Applicative_IO'/2,
  'dn--un--map_Functor_IO'/3,
  'dn--un--liftIO_HasIO_$io'/2,
  'dn--un--liftIO1_HasLinearIO_IO'/1,
  'dn--un--join_Monad_IO'/2,
  'dn--un--__Impl_Monad_IO'/0,
  'dn--un--__Impl_HasLinearIO_IO'/0,
  'dn--un--__Impl_HasIO_$io'/1,
  'dn--un--__Impl_Functor_IO'/5,
  'dn--un--__Impl_Applicative_IO'/0,
  'dn--un--__HasLinearIO_(Monad io)'/1,
  'dn--un--__HasIO_(Monad io)'/1,
  'dn--un-->>=_Monad_IO'/3,
  'dn--un--<*>_Applicative_IO'/3,
  'un--threadWait'/2,
  'un--putStrLn'/2,
  'un--putStr'/2,
  'un--putCharLn'/2,
  'un--putChar'/2,
  'un--printLn'/2,
  'un--print'/2,
  'un--prim__threadWait'/2,
  'un--prim__putStr'/2,
  'un--prim__putChar'/2,
  'un--prim__getString'/1,
  'un--prim__getStr'/1,
  'un--prim__getChar'/1,
  'un--prim__fork'/2,
  'un--primIO1'/2,
  'un--primIO'/2,
  'un--onCollectAny'/3,
  'un--onCollect'/3,
  'un--liftIO1'/2,
  'un--liftIO'/2,
  'un--getLine'/1,
  'un--getChar'/1,
  'un--fork'/2
]).
'dn--un--pure_Applicative_IO'(V0, V1) -> V0.
'dn--un--map_Functor_IO'(V0, V1, V2) -> begin (V3 = (V1(V2))), (V0(V3)) end.
'dn--un--liftIO_HasIO_$io'(V0, V1) -> case V0 of {'Idris.Prelude.IO.MkHasLinearIO', E0, E1} -> (fun (V2, V3) -> ((V3('erased'))(V1)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--liftIO1_HasLinearIO_IO'(V0) -> V0.
'dn--un--join_Monad_IO'(V0, V1) -> begin (V2 = (V0(V1))), (V2(V1)) end.
'dn--un--__Impl_Monad_IO'() -> {'Idris.Prelude.Interfaces.MkMonad', {'Idris.Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_IO'(V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> V6 end end end, fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> begin (V13 = (V10(V12))), begin (V14 = (V11(V12))), (V13(V14)) end end end end end end end}, fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> begin (V20 = (V17(V19))), ((V18(V20))(V19)) end end end end end end, fun (V21) -> fun (V22) -> fun (V23) -> begin (V24 = (V22(V23))), (V24(V23)) end end end end}.
'dn--un--__Impl_HasLinearIO_IO'() -> {'Idris.Prelude.IO.MkHasLinearIO', {'Idris.Prelude.Interfaces.MkMonad', {'Idris.Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_IO'(V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> V6 end end end, fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> begin (V13 = (V10(V12))), begin (V14 = (V11(V12))), (V13(V14)) end end end end end end end}, fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> begin (V20 = (V17(V19))), ((V18(V20))(V19)) end end end end end end, fun (V21) -> fun (V22) -> fun (V23) -> begin (V24 = (V22(V23))), (V24(V23)) end end end end}, fun (V25) -> fun (V26) -> V26 end end}.
'dn--un--__Impl_HasIO_$io'(V0) -> {'Idris.Prelude.IO.MkHasIO', case V0 of {'Idris.Prelude.IO.MkHasLinearIO', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, fun (V3) -> fun (V4) -> case V0 of {'Idris.Prelude.IO.MkHasLinearIO', E2, E3} -> (fun (V5, V6) -> ((V6('erased'))(V4)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end}.
'dn--un--__Impl_Functor_IO'(V0, V1, V2, V3, V4) -> ('dn--un--map_Functor_IO'(V2, V3, V4)).
'dn--un--__Impl_Applicative_IO'() -> {'Idris.Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--map_Functor_IO'(V2, V3, V4)) end end end end end, fun (V5) -> fun (V6) -> fun (V7) -> V6 end end end, fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> begin (V13 = (V10(V12))), begin (V14 = (V11(V12))), (V13(V14)) end end end end end end end}.
'dn--un--__HasLinearIO_(Monad io)'(V0) -> case V0 of {'Idris.Prelude.IO.MkHasLinearIO', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__HasIO_(Monad io)'(V0) -> case V0 of {'Idris.Prelude.IO.MkHasIO', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un-->>=_Monad_IO'(V0, V1, V2) -> begin (V3 = (V0(V2))), ((V1(V3))(V2)) end.
'dn--un--<*>_Applicative_IO'(V0, V1, V2) -> begin (V3 = (V0(V2))), begin (V4 = (V1(V2))), (V3(V4)) end end.
'un--threadWait'(V0, V1) -> ('un--prim__threadWait'(V0, V1)).
'un--putStrLn'(V0, V1) -> ('un--putStr'(V0, (fun (Bin1, Bin2) -> <<Bin1/binary, Bin2/binary>> end(V1, <<"\x{a}"/utf8>>)))).
'un--putStr'(V0, V1) -> case V0 of {'Idris.Prelude.IO.MkHasIO', E0, E1} -> (fun (V2, V3) -> ((V3('erased'))(fun (V4) -> ('un--prim__putStr'(V1, V4)) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--putCharLn'(V0, V1) -> ('un--putStrLn'(V0, ('unicode':'characters_to_binary'([V1 | []])))).
'un--putChar'(V0, V1) -> case V0 of {'Idris.Prelude.IO.MkHasIO', E0, E1} -> (fun (V2, V3) -> ((V3('erased'))(fun (V4) -> ('un--prim__putChar'(V1, V4)) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--printLn'(V0, V1) -> ('un--putStrLn'(('Idris.Idris2.Builtin':'un--fst'(V0)), case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Idris.Prelude.Show.MkShow', E0, E1} -> (fun (V2, V3) -> (V2(V1)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)).
'un--print'(V0, V1) -> ('un--putStr'(('Idris.Idris2.Builtin':'un--fst'(V0)), case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Idris.Prelude.Show.MkShow', E0, E1} -> (fun (V2, V3) -> (V2(V1)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)).
'un--prim__threadWait'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Prelude.IO.prim__threadWait")).
'un--prim__putStr'(V0, V1) -> begin ('io':'format'("~ts", [V0 | []])), {'Idris.Builtin.MkUnit'} end.
'un--prim__putChar'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Prelude.IO.prim__putChar")).
'un--prim__getString'(V0) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Prelude.IO.prim__getString")).
'un--prim__getStr'(V0) -> ('unicode':'characters_to_binary'(('string':'chomp'(('io':'get_line'("")))))).
'un--prim__getChar'(V0) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Prelude.IO.prim__getChar")).
'un--prim__fork'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Prelude.IO.prim__fork")).
'un--primIO1'(V0, V1) -> case V0 of {'Idris.Prelude.IO.MkHasLinearIO', E0, E1} -> (fun (V2, V3) -> ((V3('erased'))(V1)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--primIO'(V0, V1) -> case V0 of {'Idris.Prelude.IO.MkHasIO', E0, E1} -> (fun (V2, V3) -> ((V3('erased'))(V1)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--onCollectAny'(V0, V1, V2) -> case V0 of {'Idris.Prelude.IO.MkHasIO', E0, E1} -> (fun (V3, V4) -> ((V4('erased'))(fun (V5) -> ('erlang':'throw'("Error: Badly formed external primitive Prelude.IO.prim__onCollectAny")) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--onCollect'(V0, V1, V2) -> case V0 of {'Idris.Prelude.IO.MkHasIO', E0, E1} -> (fun (V3, V4) -> ((V4('erased'))(fun (V5) -> ('erlang':'throw'("Error: Badly formed external primitive Prelude.IO.prim__onCollect")) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--liftIO1'(V0, V1) -> case V0 of {'Idris.Prelude.IO.MkHasLinearIO', E0, E1} -> (fun (V2, V3) -> ((V3('erased'))(V1)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--liftIO'(V0, V1) -> case V0 of {'Idris.Prelude.IO.MkHasIO', E0, E1} -> (fun (V2, V3) -> ((V3('erased'))(V1)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--getLine'(V0) -> case V0 of {'Idris.Prelude.IO.MkHasIO', E0, E1} -> (fun (V1, V2) -> ((V2('erased'))(fun (V3) -> ('un--prim__getStr'(V3)) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--getChar'(V0) -> case V0 of {'Idris.Prelude.IO.MkHasIO', E0, E1} -> (fun (V1, V2) -> ((V2('erased'))(fun (V3) -> ('un--prim__getChar'(V3)) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--fork'(V0, V1) -> ('un--prim__fork'(V0, V1)).
