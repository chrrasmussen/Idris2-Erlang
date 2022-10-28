-module('Idris.Idris2.Data.Stream').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--unzip3-5641'/2,
  'case--unzip3-5615'/2,
  'case--unzip3-5589'/2,
  'case--unfoldr-5118'/3,
  'nested--4161-6010--in--un--cycle\x{27}'/3,
  'dn--un--zip_Zippable_Stream'/2,
  'dn--un--zipWith_Zippable_Stream'/3,
  'dn--un--zipWith3_Zippable_Stream'/4,
  'dn--un--zip3_Zippable_Stream'/3,
  'dn--un--unzip_Zippable_Stream'/1,
  'dn--un--unzipWith_Zippable_Stream'/2,
  'dn--un--unzipWith3_Zippable_Stream'/2,
  'dn--un--unzip3_Zippable_Stream'/1,
  'dn--un--pure_Applicative_Stream'/1,
  'dn--un--join_Monad_Stream'/1,
  'dn--un--__Impl_Zippable_Stream'/0,
  'dn--un--__Impl_Monad_Stream'/0,
  'dn--un--__Impl_Applicative_Stream'/0,
  'dn--un-->>=_Monad_Stream'/2,
  'dn--un--<*>_Applicative_Stream'/2,
  'un--zipWithIndexLinear'/3,
  'un--zipWith3IndexLinear'/4,
  'un--zig'/2,
  'un--zag'/3,
  'un--unfoldr'/2,
  'un--scanl'/3,
  'un--repeat'/1,
  'un--nats'/0,
  'un--iterate'/2,
  'un--index'/2,
  'un--drop'/2,
  'un--diag'/1,
  'un--cycle'/1,
  'un--cantor'/1
]).
'case--unzip3-5641'(V0, V1) -> case V1 of {'Builtin.MkPair', V2, V3} -> case V3 of {'Builtin.MkPair', V4, V5} -> V5 end end.
'case--unzip3-5615'(V0, V1) -> case V1 of {'Builtin.MkPair', V2, V3} -> case V3 of {'Builtin.MkPair', V4, V5} -> V4 end end.
'case--unzip3-5589'(V0, V1) -> case V1 of {'Builtin.MkPair', V2, V3} -> case V3 of {'Builtin.MkPair', V4, V5} -> V2 end end.
'case--unfoldr-5118'(V0, V1, V2) -> case V2 of {'Builtin.MkPair', V3, V4} -> {'Prelude.Types.Stream.::', V3, fun () -> ('un--unfoldr'(V1, V4)) end} end.
'nested--4161-6010--in--un--cycle\x{27}'(V0, V1, V2) -> case V2 of [] -> {'Prelude.Types.Stream.::', V0, fun () -> ('nested--4161-6010--in--un--cycle\x{27}'(V0, V1, V1)) end}; [E0 | E1] -> (fun (V3, V4) -> {'Prelude.Types.Stream.::', V3, fun () -> ('nested--4161-6010--in--un--cycle\x{27}'(V0, V1, V4)) end} end(E0, E1)) end.
'dn--un--zip_Zippable_Stream'(V0, V1) -> ('dn--un--zipWith_Zippable_Stream'(fun (V2) -> fun (V3) -> {'Builtin.MkPair', V2, V3} end end, V0, V1)).
'dn--un--zipWith_Zippable_Stream'(V0, V1, V2) -> case V1 of {'Prelude.Types.Stream.::', V3, V4} -> case V2 of {'Prelude.Types.Stream.::', V5, V6} -> {'Prelude.Types.Stream.::', ((V0(V3))(V5)), fun () -> ('dn--un--zipWith_Zippable_Stream'(V0, (V4()), (V6()))) end} end end.
'dn--un--zipWith3_Zippable_Stream'(V0, V1, V2, V3) -> case V1 of {'Prelude.Types.Stream.::', V4, V5} -> case V2 of {'Prelude.Types.Stream.::', V6, V7} -> case V3 of {'Prelude.Types.Stream.::', V8, V9} -> {'Prelude.Types.Stream.::', (((V0(V4))(V6))(V8)), fun () -> ('dn--un--zipWith3_Zippable_Stream'(V0, (V5()), (V7()), (V9()))) end} end end end.
'dn--un--zip3_Zippable_Stream'(V0, V1, V2) -> ('dn--un--zipWith3_Zippable_Stream'(fun (V3) -> fun (V4) -> fun (V5) -> {'Builtin.MkPair', V3, {'Builtin.MkPair', V4, V5}} end end end, V0, V1, V2)).
'dn--un--unzip_Zippable_Stream'(V0) -> {'Builtin.MkPair', ((begin (V6 = fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Stream'(V4, V5)) end end end end), fun (V7) -> fun (V8) -> ((((V6('erased'))('erased'))(V7))(V8)) end end end(fun (V1) -> ('Idris.Idris2.Builtin':'un--fst'(V1)) end))(V0)), ((begin (V14 = fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Stream'(V12, V13)) end end end end), fun (V15) -> fun (V16) -> ((((V14('erased'))('erased'))(V15))(V16)) end end end(fun (V9) -> ('Idris.Idris2.Builtin':'un--snd'(V9)) end))(V0))}.
'dn--un--unzipWith_Zippable_Stream'(V0, V1) -> ('dn--un--unzip_Zippable_Stream'(((begin (V6 = fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Stream'(V4, V5)) end end end end), fun (V7) -> fun (V8) -> ((((V6('erased'))('erased'))(V7))(V8)) end end end(V0))(V1)))).
'dn--un--unzipWith3_Zippable_Stream'(V0, V1) -> ('dn--un--unzip3_Zippable_Stream'(((begin (V6 = fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Stream'(V4, V5)) end end end end), fun (V7) -> fun (V8) -> ((((V6('erased'))('erased'))(V7))(V8)) end end end(V0))(V1)))).
'dn--un--unzip3_Zippable_Stream'(V0) -> {'Builtin.MkPair', ((begin (V10 = fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Stream'(V8, V9)) end end end end), fun (V11) -> fun (V12) -> ((((V10('erased'))('erased'))(V11))(V12)) end end end(fun (V1) -> case V1 of {'Builtin.MkPair', V2, V3} -> case V3 of {'Builtin.MkPair', V4, V5} -> V2 end end end))(V0)), {'Builtin.MkPair', ((begin (V22 = fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Stream'(V20, V21)) end end end end), fun (V23) -> fun (V24) -> ((((V22('erased'))('erased'))(V23))(V24)) end end end(fun (V13) -> case V13 of {'Builtin.MkPair', V14, V15} -> case V15 of {'Builtin.MkPair', V16, V17} -> V16 end end end))(V0)), ((begin (V34 = fun (V30) -> fun (V31) -> fun (V32) -> fun (V33) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Stream'(V32, V33)) end end end end), fun (V35) -> fun (V36) -> ((((V34('erased'))('erased'))(V35))(V36)) end end end(fun (V25) -> case V25 of {'Builtin.MkPair', V26, V27} -> case V27 of {'Builtin.MkPair', V28, V29} -> V29 end end end))(V0))}}.
'dn--un--pure_Applicative_Stream'(V0) -> ('un--repeat'(V0)).
'dn--un--join_Monad_Stream'(V0) -> ('dn--un-->>=_Monad_Stream'(V0, fun (V1) -> V1 end)).
'dn--un--__Impl_Zippable_Stream'() -> {'Data.Zippable.dn--un--__mkZippable', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('dn--un--zipWith_Zippable_Stream'(V3, V4, V5)) end end end end end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--zip_Zippable_Stream'(V8, V9)) end end end end, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> ('dn--un--zipWith3_Zippable_Stream'(V14, V15, V16, V17)) end end end end end end end end, fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('dn--un--zip3_Zippable_Stream'(V21, V22, V23)) end end end end end end, fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> ('dn--un--unzipWith_Zippable_Stream'(V27, V28)) end end end end end, fun (V29) -> fun (V30) -> fun (V31) -> ('dn--un--unzip_Zippable_Stream'(V31)) end end end, fun (V32) -> fun (V33) -> fun (V34) -> fun (V35) -> fun (V36) -> fun (V37) -> ('dn--un--unzipWith3_Zippable_Stream'(V36, V37)) end end end end end end, fun (V38) -> fun (V39) -> fun (V40) -> fun (V41) -> ('dn--un--unzip3_Zippable_Stream'(V41)) end end end end}.
'dn--un--__Impl_Monad_Stream'() -> {'Prelude.Interfaces.MkMonad', {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Stream'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative_Stream'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_Stream'(V8, V9)) end end end end}, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('dn--un-->>=_Monad_Stream'(V12, V13)) end end end end, fun (V14) -> fun (V15) -> ('dn--un--join_Monad_Stream'(V15)) end end}.
'dn--un--__Impl_Applicative_Stream'() -> {'Prelude.Interfaces.MkApplicative', fun (V0) -> fun (V1) -> fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Stream'(V2, V3)) end end end end, fun (V4) -> fun (V5) -> ('dn--un--pure_Applicative_Stream'(V5)) end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('dn--un--<*>_Applicative_Stream'(V8, V9)) end end end end}.
'dn--un-->>=_Monad_Stream'(V0, V1) -> ('un--diag'(((begin (V6 = fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Stream'(V4, V5)) end end end end), fun (V7) -> fun (V8) -> ((((V6('erased'))('erased'))(V7))(V8)) end end end(V1))(V0)))).
'dn--un--<*>_Applicative_Stream'(V0, V1) -> ('dn--un--zipWith_Zippable_Stream'(fun (V2) -> fun (V3) -> (V2(V3)) end end, V0, V1)).
'un--zipWithIndexLinear'(V0, V1, V2) -> case V0 of {'Prelude.Types.Stream.::', V3, V4} -> case V1 of {'Prelude.Types.Stream.::', V5, V6} -> case V2 of 0 -> {'Builtin.Refl'}; _ -> begin (V7 = (V2 - 1)), ('un--zipWithIndexLinear'((V4()), (V6()), V7)) end end end end.
'un--zipWith3IndexLinear'(V0, V1, V2, V3) -> case V0 of {'Prelude.Types.Stream.::', V4, V5} -> case V1 of {'Prelude.Types.Stream.::', V6, V7} -> case V2 of {'Prelude.Types.Stream.::', V8, V9} -> case V3 of 0 -> {'Builtin.Refl'}; _ -> begin (V10 = (V3 - 1)), ('un--zipWith3IndexLinear'((V5()), (V7()), (V9()), V10)) end end end end end.
'un--zig'(V0, V1) -> ('un--zag'(((begin (V7 = fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('Idris.Idris2.Data.List1':'dn--un--map_Functor_List1'(V5, V6)) end end end end), fun (V8) -> fun (V9) -> ((((V7('erased'))('erased'))(V8))(V9)) end end end(fun (V2) -> ('Idris.Idris2.Prelude.Types':'un--head'(V2)) end))(V0)), ((begin (V15 = fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> ('Idris.Idris2.Data.List1':'dn--un--map_Functor_List1'(V13, V14)) end end end end), fun (V16) -> fun (V17) -> ((((V15('erased'))('erased'))(V16))(V17)) end end end(fun (V10) -> ('Idris.Idris2.Prelude.Types':'un--tail'(V10)) end))(V0)), V1)).
'un--zag'(V0, V1, V2) -> case V0 of {'Data.List1.:::', V3, V4} -> case V4 of [] -> case V2 of {'Prelude.Types.Stream.::', V5, V6} -> {'Prelude.Types.Stream.::', V3, fun () -> ('un--zig'({'Data.List1.:::', V5, ('Idris.Idris2.Data.List1':'un--forget'(V1))}, (V6()))) end} end; [E0 | E1] -> (fun (V7, V8) -> {'Prelude.Types.Stream.::', V3, fun () -> ('un--zag'({'Data.List1.:::', V7, V8}, V1, V2)) end} end(E0, E1)) end end.
'un--unfoldr'(V0, V1) -> case (V0(V1)) of {'Builtin.MkPair', V2, V3} -> {'Prelude.Types.Stream.::', V2, fun () -> ('un--unfoldr'(V0, V3)) end} end.
'un--scanl'(V0, V1, V2) -> case V2 of {'Prelude.Types.Stream.::', V3, V4} -> {'Prelude.Types.Stream.::', V1, fun () -> ('un--scanl'(V0, ((V0(V1))(V3)), (V4()))) end} end.
'un--repeat'(V0) -> {'Prelude.Types.Stream.::', V0, fun () -> ('un--repeat'(V0)) end}.
'un--nats'() -> ('un--iterate'(fun (V0) -> (V0 + 1) end, 0)).
'un--iterate'(V0, V1) -> {'Prelude.Types.Stream.::', V1, fun () -> ('un--iterate'(V0, (V0(V1)))) end}.
'un--index'(V0, V1) -> case V0 of 0 -> case V1 of {'Prelude.Types.Stream.::', V2, V3} -> V2 end; _ -> begin (V4 = (V0 - 1)), case V1 of {'Prelude.Types.Stream.::', V5, V6} -> ('un--index'(V4, (V6()))) end end end.
'un--drop'(V0, V1) -> case V0 of 0 -> V1; _ -> begin (V2 = (V0 - 1)), case V1 of {'Prelude.Types.Stream.::', V3, V4} -> ('un--drop'(V2, (V4()))) end end end.
'un--diag'(V0) -> case V0 of {'Prelude.Types.Stream.::', V1, V2} -> case V1 of {'Prelude.Types.Stream.::', V3, V4} -> {'Prelude.Types.Stream.::', V3, fun () -> ('un--diag'(((begin (V10 = fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Stream'(V8, V9)) end end end end), fun (V11) -> fun (V12) -> ((((V10('erased'))('erased'))(V11))(V12)) end end end(fun (V5) -> ('Idris.Idris2.Prelude.Types':'un--tail'(V5)) end))((V2()))))) end} end end.
'un--cycle'(V0) -> case V0 of [E0 | E1] -> (fun (V1, V2) -> {'Prelude.Types.Stream.::', V1, fun () -> ('nested--4161-6010--in--un--cycle\x{27}'(V1, V2, V2)) end} end(E0, E1)) end.
'un--cantor'(V0) -> case V0 of {'Prelude.Types.Stream.::', V1, V2} -> ('un--zig'({'Data.List1.:::', V1, []}, (V2()))) end.
