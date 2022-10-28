-module('Idris.Idris2.Network.Socket.Data').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--4273-8110--in--un--toInt\x{27}'/2,
  'nested--4273-8111--in--un--toInt'/2,
  'nested--4273-8112--in--un--splitted'/1,
  'dn--un--toCode_ToCode_SocketType'/1,
  'dn--un--toCode_ToCode_SocketFamily'/1,
  'dn--un--show_Show_SocketType'/1,
  'dn--un--show_Show_SocketAddress'/1,
  'dn--un--showPrec_Show_SocketType'/2,
  'dn--un--showPrec_Show_SocketAddress'/2,
  'dn--un--__Impl_ToCode_SocketType'/1,
  'dn--un--__Impl_ToCode_SocketFamily'/1,
  'dn--un--__Impl_Show_SocketType'/0,
  'dn--un--__Impl_Show_SocketAddress'/0,
  'un--toCode'/1,
  'un--prim__idrnet_isNull'/2,
  'un--prim__idrnet_geteagain'/1,
  'un--prim__idrnet_errno'/1,
  'un--prim__idrnet_af_unspec'/1,
  'un--prim__idrnet_af_unix'/1,
  'un--prim__idrnet_af_inet6'/1,
  'un--prim__idrnet_af_inet'/1,
  'un--parseIPv4'/1,
  'un--nullPtr'/2,
  'un--getSocketFamily'/1,
  'un--getErrno'/1,
  'un--SocketError'/0,
  'un--SocketDescriptor'/0,
  'un--ResultCode'/0,
  'un--ProtocolNumber'/0,
  'un--Port'/0,
  'un--EAGAIN'/0,
  'un--ByteLength'/0,
  'un--BACKLOG'/0
]).
'nested--4273-8110--in--un--toInt\x{27}'(V0, V1) -> case ('string':'to_integer'(V1)) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V2, V3) -> case ('string':'is_empty'(V3)) of 'true' -> V2; _ -> 0 end end(E0, E1)); _ -> 0 end.
'nested--4273-8111--in--un--toInt'(V0, V1) -> begin (V2 = ('nested--4273-8110--in--un--toInt\x{27}'(V0, V1))), case ((V2 band 9223372036854775808) =/= 0) of 'true' -> (V2 bor -9223372036854775808); _ -> (V2 band 9223372036854775807) end end.
'nested--4273-8112--in--un--splitted'(V0) -> ('Idris.Idris2.Data.List1':'dn--un--map_Functor_List1'(fun (V1) -> ('nested--4273-8111--in--un--toInt'(V0, V1)) end, ('Idris.Idris2.Data.String':'un--split'(fun (V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V2, $.)) end, V0)))).
'dn--un--toCode_ToCode_SocketType'(V0) -> case V0 of 0 -> 0; 1 -> 1; 2 -> 2; 3 -> 3 end.
'dn--un--toCode_ToCode_SocketFamily'(V0) -> case V0 of 0 -> ('Idris.Idris2.PrimIO':'un--unsafePerformIO'(fun (V1) -> ('un--prim__idrnet_af_unspec'(V1)) end)); 1 -> ('Idris.Idris2.PrimIO':'un--unsafePerformIO'(fun (V2) -> ('un--prim__idrnet_af_unix'(V2)) end)); 2 -> ('Idris.Idris2.PrimIO':'un--unsafePerformIO'(fun (V3) -> ('un--prim__idrnet_af_inet'(V3)) end)); 3 -> ('Idris.Idris2.PrimIO':'un--unsafePerformIO'(fun (V4) -> ('un--prim__idrnet_af_inet6'(V4)) end)) end.
'dn--un--show_Show_SocketType'(V0) -> case V0 of 0 -> <<"Not a socket"/utf8>>; 1 -> <<"Stream"/utf8>>; 2 -> <<"Datagram"/utf8>>; 3 -> <<"Raw"/utf8>> end.
'dn--un--show_Show_SocketAddress'(V0) -> case V0 of {'Network.Socket.Data.IPv4Addr', V1, V2, V3, V4} -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V5) -> fun (V6) -> <<V5/binary, V6/binary>> end end, <<""/utf8>>}, fun (V7) -> V7 end, ('Idris.Idris2.Data.List':'un--intersperse'(<<"."/utf8>>, ((begin (V13 = fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V11, V12)) end end end end), fun (V14) -> fun (V15) -> ((((V13('erased'))('erased'))(V14))(V15)) end end end(fun (V8) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(V8)) end))([V1 | [V2 | [V3 | [V4 | []]]]])))))); {'Network.Socket.Data.IPv6Addr'} -> <<"NOT IMPLEMENTED YET"/utf8>>; {'Network.Socket.Data.Hostname', V16} -> V16; {'Network.Socket.Data.InvalidAddress'} -> <<"Invalid"/utf8>> end.
'dn--un--showPrec_Show_SocketType'(V0, V1) -> ('dn--un--show_Show_SocketType'(V1)).
'dn--un--showPrec_Show_SocketAddress'(V0, V1) -> ('dn--un--show_Show_SocketAddress'(V1)).
'dn--un--__Impl_ToCode_SocketType'(V0) -> ('dn--un--toCode_ToCode_SocketType'(V0)).
'dn--un--__Impl_ToCode_SocketFamily'(V0) -> ('dn--un--toCode_ToCode_SocketFamily'(V0)).
'dn--un--__Impl_Show_SocketType'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_SocketType'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_SocketType'(V1, V2)) end end}.
'dn--un--__Impl_Show_SocketAddress'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_SocketAddress'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_SocketAddress'(V1, V2)) end end}.
'un--toCode'(V0) -> begin (V1 = V0), fun (V2) -> (V1(V2)) end end.
'un--prim__idrnet_isNull'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.Socket.Data.prim__idrnet_isNull"/utf8>>})).
'un--prim__idrnet_geteagain'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.Socket.Data.prim__idrnet_geteagain"/utf8>>})).
'un--prim__idrnet_errno'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.Socket.Data.prim__idrnet_errno"/utf8>>})).
'un--prim__idrnet_af_unspec'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.Socket.Data.prim__idrnet_af_unspec"/utf8>>})).
'un--prim__idrnet_af_unix'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.Socket.Data.prim__idrnet_af_unix"/utf8>>})).
'un--prim__idrnet_af_inet6'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.Socket.Data.prim__idrnet_af_inet6"/utf8>>})).
'un--prim__idrnet_af_inet'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.Socket.Data.prim__idrnet_af_inet"/utf8>>})).
'un--parseIPv4'(V0) -> case ('nested--4273-8112--in--un--splitted'(V0)) of {'Data.List1.:::', V1, V2} -> case V2 of [E0 | E1] -> (fun (V3, V4) -> case V4 of [E2 | E3] -> (fun (V5, V6) -> case V6 of [E4 | E5] -> (fun (V7, V8) -> {'Network.Socket.Data.IPv4Addr', V1, V3, V5, V7} end(E4, E5)); _ -> {'Network.Socket.Data.InvalidAddress'} end end(E2, E3)); _ -> {'Network.Socket.Data.InvalidAddress'} end end(E0, E1)); _ -> {'Network.Socket.Data.InvalidAddress'} end; _ -> {'Network.Socket.Data.InvalidAddress'} end.
'un--nullPtr'(V0, V1) -> case V0 of {'Prelude.IO.MkHasIO', V2, V3} -> case V2 of {'Prelude.Interfaces.MkMonad', V4, V5, V6} -> ((((V5('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V24, V25} -> ((V25('erased'))(fun (V26) -> ('un--prim__idrnet_isNull'(V1, V26)) end)) end))(fun (V7) -> case V7 of 0 -> case V0 of {'Prelude.IO.MkHasIO', V8, V9} -> case V8 of {'Prelude.Interfaces.MkMonad', V10, V11, V12} -> case V10 of {'Prelude.Interfaces.MkApplicative', V13, V14, V15} -> ((V14('erased'))(0)) end end end; _ -> case V0 of {'Prelude.IO.MkHasIO', V16, V17} -> case V16 of {'Prelude.Interfaces.MkMonad', V18, V19, V20} -> case V18 of {'Prelude.Interfaces.MkApplicative', V21, V22, V23} -> ((V22('erased'))(1)) end end end end end)) end end.
'un--getSocketFamily'(V0) -> ('Idris.Idris2.Data.List':'un--lookup'({'Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(V1, V2)) end end, fun (V3) -> fun (V4) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Int'(V3, V4)) end end}, V0, [{'Builtin.MkPair', ('dn--un--toCode_ToCode_SocketFamily'(0)), 0} | [{'Builtin.MkPair', ('dn--un--toCode_ToCode_SocketFamily'(1)), 1} | [{'Builtin.MkPair', ('dn--un--toCode_ToCode_SocketFamily'(2)), 2} | [{'Builtin.MkPair', ('dn--un--toCode_ToCode_SocketFamily'(3)), 3} | []]]]])).
'un--getErrno'(V0) -> case V0 of {'Prelude.IO.MkHasIO', V1, V2} -> ((V2('erased'))(fun (V3) -> ('un--prim__idrnet_errno'(V3)) end)) end.
'un--SocketError'() -> {'.Int'}.
'un--SocketDescriptor'() -> {'.Int'}.
'un--ResultCode'() -> {'.Int'}.
'un--ProtocolNumber'() -> {'.Int'}.
'un--Port'() -> {'.Int'}.
'un--EAGAIN'() -> ('Idris.Idris2.PrimIO':'un--unsafePerformIO'(fun (V0) -> ('un--prim__idrnet_geteagain'(V0)) end)).
'un--ByteLength'() -> {'.Int'}.
'un--BACKLOG'() -> 20.
