-module('Idris.Idris2.Protocol.SExp').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--toSExp-5532'/4,
  'nested--3222-5092--in--un--escapeChar'/1,
  'dn--un--toSExp_SExpable_String'/1,
  'dn--un--toSExp_SExpable_SExp'/1,
  'dn--un--toSExp_SExpable_Nat'/1,
  'dn--un--toSExp_SExpable_Integer'/1,
  'dn--un--toSExp_SExpable_Int'/1,
  'dn--un--toSExp_SExpable_Bool'/1,
  'dn--un--toSExp_SExpable_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/2,
  'dn--un--toSExp_SExpable_(Maybe $a)'/2,
  'dn--un--toSExp_SExpable_(List1 $a)'/2,
  'dn--un--toSExp_SExpable_(List $a)'/2,
  'dn--un--show_Show_SExp'/1,
  'dn--un--showPrec_Show_SExp'/2,
  'dn--un--fromSExp_FromSExpable_String'/1,
  'dn--un--fromSExp_FromSExpable_Nat'/1,
  'dn--un--fromSExp_FromSExpable_Integer'/1,
  'dn--un--fromSExp_FromSExpable_Int'/1,
  'dn--un--fromSExp_FromSExpable_Bool'/1,
  'dn--un--fromSExp_FromSExpable_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/2,
  'dn--un--fromSExp_FromSExpable_(List1 $a)'/2,
  'dn--un--fromSExp_FromSExpable_(List $a)'/2,
  'dn--un--__Impl_Show_SExp'/0,
  'dn--un--__Impl_SExpable_String'/1,
  'dn--un--__Impl_SExpable_SExp'/1,
  'dn--un--__Impl_SExpable_Nat'/1,
  'dn--un--__Impl_SExpable_Integer'/1,
  'dn--un--__Impl_SExpable_Int'/1,
  'dn--un--__Impl_SExpable_Bool'/1,
  'dn--un--__Impl_SExpable_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/2,
  'dn--un--__Impl_SExpable_(Maybe $a)'/2,
  'dn--un--__Impl_SExpable_(List1 $a)'/2,
  'dn--un--__Impl_SExpable_(List $a)'/2,
  'dn--un--__Impl_FromSExpable_String'/1,
  'dn--un--__Impl_FromSExpable_Nat'/1,
  'dn--un--__Impl_FromSExpable_Integer'/1,
  'dn--un--__Impl_FromSExpable_Int'/1,
  'dn--un--__Impl_FromSExpable_Bool'/1,
  'dn--un--__Impl_FromSExpable_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/2,
  'dn--un--__Impl_FromSExpable_(List1 $a)'/2,
  'dn--un--__Impl_FromSExpable_(List $a)'/2,
  'un--toSExp'/1,
  'un--join'/2,
  'un--fromSExp'/1,
  'un--escape'/1
]).
'case--toSExp-5532'(V0, V1, V2, V3) -> case V3 of {'Protocol.SExp.SExpList', V4} -> {'Protocol.SExp.SExpList', [(begin (V5 = ('Idris.Idris2.Builtin':'un--fst'(V0))), fun (V6) -> (V5(V6)) end end(V1)) | V4]}; _ -> {'Protocol.SExp.SExpList', [(begin (V7 = ('Idris.Idris2.Builtin':'un--fst'(V0))), fun (V8) -> (V7(V8)) end end(V1)) | [V3 | []]]} end.
'nested--3222-5092--in--un--escapeChar'(V0) -> case V0 of $\x{5c} -> [$\x{5c} | [$\x{5c} | []]]; $\x{22} -> [$\x{5c} | [$\x{22} | []]]; _ -> [V0 | []] end.
'dn--un--toSExp_SExpable_String'(V0) -> {'Protocol.SExp.StringAtom', V0}.
'dn--un--toSExp_SExpable_SExp'(V0) -> V0.
'dn--un--toSExp_SExpable_Nat'(V0) -> {'Protocol.SExp.IntegerAtom', V0}.
'dn--un--toSExp_SExpable_Integer'(V0) -> {'Protocol.SExp.IntegerAtom', V0}.
'dn--un--toSExp_SExpable_Int'(V0) -> {'Protocol.SExp.IntegerAtom', V0}.
'dn--un--toSExp_SExpable_Bool'(V0) -> {'Protocol.SExp.BoolAtom', V0}.
'dn--un--toSExp_SExpable_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1) -> case V1 of {'Builtin.MkPair', V2, V3} -> ('case--toSExp-5532'(V0, V2, V3, (begin (V4 = ('Idris.Idris2.Builtin':'un--snd'(V0))), fun (V5) -> (V4(V5)) end end(V3)))) end.
'dn--un--toSExp_SExpable_(Maybe $a)'(V0, V1) -> case V1 of {'Prelude.Types.Nothing'} -> {'Protocol.SExp.SExpList', []}; {'Prelude.Types.Just', V2} -> (begin (V3 = V0), fun (V4) -> (V3(V4)) end end(V2)) end.
'dn--un--toSExp_SExpable_(List1 $a)'(V0, V1) -> {'Protocol.SExp.SExpList', ((begin (V8 = fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V6, V7)) end end end end), fun (V9) -> fun (V10) -> ((((V8('erased'))('erased'))(V9))(V10)) end end end(begin (V2 = V0), fun (V3) -> (V2(V3)) end end))(('Idris.Idris2.Data.List1':'un--forget'(V1))))}.
'dn--un--toSExp_SExpable_(List $a)'(V0, V1) -> {'Protocol.SExp.SExpList', ((begin (V8 = fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V6, V7)) end end end end), fun (V9) -> fun (V10) -> ((((V8('erased'))('erased'))(V9))(V10)) end end end(begin (V2 = V0), fun (V3) -> (V2(V3)) end end))(V1))}.
'dn--un--show_Show_SExp'(V0) -> case V0 of {'Protocol.SExp.SExpList', V1} -> <<<<"("/utf8>>/binary, <<('un--join'(<<" "/utf8>>, ((begin (V7 = fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V5, V6)) end end end end), fun (V8) -> fun (V9) -> ((((V7('erased'))('erased'))(V8))(V9)) end end end(fun (V2) -> ('dn--un--show_Show_SExp'(V2)) end))(V1))))/binary, <<")"/utf8>>/binary>>/binary>>; {'Protocol.SExp.StringAtom', V10} -> <<<<"\x{22}"/utf8>>/binary, <<('un--escape'(V10))/binary, <<"\x{22}"/utf8>>/binary>>/binary>>; {'Protocol.SExp.BoolAtom', V11} -> <<<<":"/utf8>>/binary, ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Bool'(V11))/binary>>; {'Protocol.SExp.IntegerAtom', V12} -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Integer'(V12)); {'Protocol.SExp.SymbolAtom', V13} -> <<<<":"/utf8>>/binary, V13/binary>> end.
'dn--un--showPrec_Show_SExp'(V0, V1) -> ('dn--un--show_Show_SExp'(V1)).
'dn--un--fromSExp_FromSExpable_String'(V0) -> case V0 of {'Protocol.SExp.StringAtom', V1} -> {'Prelude.Types.Just', V1}; _ -> {'Prelude.Types.Nothing'} end.
'dn--un--fromSExp_FromSExpable_Nat'(V0) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('dn--un--fromSExp_FromSExpable_Integer'(V0)), fun (V1) -> {'Prelude.Types.Just', ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V1))} end)).
'dn--un--fromSExp_FromSExpable_Integer'(V0) -> case V0 of {'Protocol.SExp.IntegerAtom', V1} -> {'Prelude.Types.Just', V1}; _ -> {'Prelude.Types.Nothing'} end.
'dn--un--fromSExp_FromSExpable_Int'(V0) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('dn--un--fromSExp_FromSExpable_Integer'(V0)), fun (V1) -> {'Prelude.Types.Just', begin (V2 = V1), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end} end)).
'dn--un--fromSExp_FromSExpable_Bool'(V0) -> case V0 of {'Protocol.SExp.BoolAtom', V1} -> {'Prelude.Types.Just', V1}; _ -> {'Prelude.Types.Nothing'} end.
'dn--un--fromSExp_FromSExpable_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1) -> case V1 of {'Protocol.SExp.SExpList', V2} -> case V2 of [E0 | E1] -> (fun (V3, V4) -> case V4 of [E2 | E3] -> (fun (V5, V6) -> case V6 of [] -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'((begin (V7 = ('Idris.Idris2.Builtin':'un--fst'(V0))), fun (V8) -> (V7(V8)) end end(V3)), fun (V9) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'((begin (V10 = ('Idris.Idris2.Builtin':'un--snd'(V0))), fun (V11) -> (V10(V11)) end end(V5)), fun (V12) -> {'Prelude.Types.Just', {'Builtin.MkPair', V9, V12}} end)) end)); _ -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'((begin (V13 = ('Idris.Idris2.Builtin':'un--fst'(V0))), fun (V14) -> (V13(V14)) end end(V3)), fun (V15) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'((begin (V16 = ('Idris.Idris2.Builtin':'un--snd'(V0))), fun (V17) -> (V16(V17)) end end({'Protocol.SExp.SExpList', V4})), fun (V18) -> {'Prelude.Types.Just', {'Builtin.MkPair', V15, V18}} end)) end)) end end(E2, E3)); _ -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'((begin (V19 = ('Idris.Idris2.Builtin':'un--fst'(V0))), fun (V20) -> (V19(V20)) end end(V3)), fun (V21) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'((begin (V22 = ('Idris.Idris2.Builtin':'un--snd'(V0))), fun (V23) -> (V22(V23)) end end({'Protocol.SExp.SExpList', V4})), fun (V24) -> {'Prelude.Types.Just', {'Builtin.MkPair', V21, V24}} end)) end)) end end(E0, E1)); _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end.
'dn--un--fromSExp_FromSExpable_(List1 $a)'(V0, V1) -> case V1 of {'Protocol.SExp.SExpList', V2} -> case V2 of [E0 | E1] -> (fun (V3, V4) -> ('Idris.Idris2.Data.List1':'dn--un--traverse_Traversable_List1'({'Prelude.Interfaces.MkApplicative', fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V7, V8)) end end end end, fun (V9) -> fun (V10) -> {'Prelude.Types.Just', V10} end end, fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> ('Idris.Idris2.Prelude.Types':'dn--un--<*>_Applicative_Maybe'(V13, V14)) end end end end}, begin (V15 = V0), fun (V16) -> (V15(V16)) end end, {'Data.List1.:::', V3, V4})) end(E0, E1)); _ -> {'Prelude.Types.Nothing'} end; _ -> {'Prelude.Types.Nothing'} end.
'dn--un--fromSExp_FromSExpable_(List $a)'(V0, V1) -> case V1 of {'Protocol.SExp.SExpList', V2} -> ('Idris.Idris2.Prelude.Types':'dn--un--traverse_Traversable_List'({'Prelude.Interfaces.MkApplicative', fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V5, V6)) end end end end, fun (V7) -> fun (V8) -> {'Prelude.Types.Just', V8} end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> ('Idris.Idris2.Prelude.Types':'dn--un--<*>_Applicative_Maybe'(V11, V12)) end end end end}, begin (V13 = V0), fun (V14) -> (V13(V14)) end end, V2)); _ -> {'Prelude.Types.Nothing'} end.
'dn--un--__Impl_Show_SExp'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_SExp'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_SExp'(V1, V2)) end end}.
'dn--un--__Impl_SExpable_String'(V0) -> ('dn--un--toSExp_SExpable_String'(V0)).
'dn--un--__Impl_SExpable_SExp'(V0) -> V0.
'dn--un--__Impl_SExpable_Nat'(V0) -> ('dn--un--toSExp_SExpable_Nat'(V0)).
'dn--un--__Impl_SExpable_Integer'(V0) -> ('dn--un--toSExp_SExpable_Integer'(V0)).
'dn--un--__Impl_SExpable_Int'(V0) -> ('dn--un--toSExp_SExpable_Int'(V0)).
'dn--un--__Impl_SExpable_Bool'(V0) -> ('dn--un--toSExp_SExpable_Bool'(V0)).
'dn--un--__Impl_SExpable_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1) -> ('dn--un--toSExp_SExpable_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1)).
'dn--un--__Impl_SExpable_(Maybe $a)'(V0, V1) -> ('dn--un--toSExp_SExpable_(Maybe $a)'(V0, V1)).
'dn--un--__Impl_SExpable_(List1 $a)'(V0, V1) -> ('dn--un--toSExp_SExpable_(List1 $a)'(V0, V1)).
'dn--un--__Impl_SExpable_(List $a)'(V0, V1) -> ('dn--un--toSExp_SExpable_(List $a)'(V0, V1)).
'dn--un--__Impl_FromSExpable_String'(V0) -> ('dn--un--fromSExp_FromSExpable_String'(V0)).
'dn--un--__Impl_FromSExpable_Nat'(V0) -> ('dn--un--fromSExp_FromSExpable_Nat'(V0)).
'dn--un--__Impl_FromSExpable_Integer'(V0) -> ('dn--un--fromSExp_FromSExpable_Integer'(V0)).
'dn--un--__Impl_FromSExpable_Int'(V0) -> ('dn--un--fromSExp_FromSExpable_Int'(V0)).
'dn--un--__Impl_FromSExpable_Bool'(V0) -> ('dn--un--fromSExp_FromSExpable_Bool'(V0)).
'dn--un--__Impl_FromSExpable_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1) -> ('dn--un--fromSExp_FromSExpable_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1)).
'dn--un--__Impl_FromSExpable_(List1 $a)'(V0, V1) -> ('dn--un--fromSExp_FromSExpable_(List1 $a)'(V0, V1)).
'dn--un--__Impl_FromSExpable_(List $a)'(V0, V1) -> ('dn--un--fromSExp_FromSExpable_(List $a)'(V0, V1)).
'un--toSExp'(V0) -> begin (V1 = V0), fun (V2) -> (V1(V2)) end end.
'un--join'(V0, V1) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V2) -> fun (V3) -> <<V2/binary, V3/binary>> end end, <<""/utf8>>}, fun (V4) -> V4 end, ('Idris.Idris2.Data.List':'un--intersperse'(V0, V1)))).
'un--fromSExp'(V0) -> begin (V1 = V0), fun (V2) -> (V1(V2)) end end.
'un--escape'(V0) -> ('Idris.Idris2.Prelude.Types':'un--fastPack'(('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V1) -> fun (V2) -> ('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(V1, V2)) end end, []}, fun (V3) -> ('nested--3222-5092--in--un--escapeChar'(V3)) end, ('Idris.Idris2.Prelude.Types':'un--fastUnpack'(V0)))))).
