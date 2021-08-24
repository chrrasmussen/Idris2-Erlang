-module('Idris.Idris2.Network.Socket.Data').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--3287-4108--in--un--toInt\x{27}'/2,
  'nested--3287-4109--in--un--toInt'/2,
  'nested--3287-4110--in--un--splitted'/1,
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
  'un--toCode'/2,
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
'nested--3287-4108--in--un--toInt\x{27}'(V0, V1) -> ('Idris.Idris2.Prelude.Cast':'dn--un--cast_Cast_String_Integer'(V1)).
'nested--3287-4109--in--un--toInt'(V0, V1) -> ('nested--3287-4108--in--un--toInt\x{27}'(V0, V1)).
'nested--3287-4110--in--un--splitted'(V0) -> ('Idris.Idris2.Data.List1':'dn--un--map_Functor_List1'(fun (V1) -> ('nested--3287-4109--in--un--toInt'(V0, V1)) end, ('Idris.Idris2.Data.String':'un--split'(fun (V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V2, $.)) end, V0)))).
'dn--un--toCode_ToCode_SocketType'(V0) -> case V0 of 0 -> 0; 1 -> 1; 2 -> 2; 3 -> 3; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--toCode_ToCode_SocketFamily'(V0) -> case V0 of 0 -> ('Idris.Idris2.PrimIO':'un--unsafePerformIO'(fun (V1) -> ('un--prim__idrnet_af_unspec'(V1)) end)); 1 -> ('Idris.Idris2.PrimIO':'un--unsafePerformIO'(fun (V2) -> ('un--prim__idrnet_af_unix'(V2)) end)); 2 -> ('Idris.Idris2.PrimIO':'un--unsafePerformIO'(fun (V3) -> ('un--prim__idrnet_af_inet'(V3)) end)); 3 -> ('Idris.Idris2.PrimIO':'un--unsafePerformIO'(fun (V4) -> ('un--prim__idrnet_af_inet6'(V4)) end)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show_SocketType'(V0) -> case V0 of 0 -> <<"Not a socket"/utf8>>; 1 -> <<"Stream"/utf8>>; 2 -> <<"Datagram"/utf8>>; 3 -> <<"Raw"/utf8>>; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show_SocketAddress'(V0) -> case V0 of {'Idris.Network.Socket.Data.IPv4Addr', E0, E1, E2, E3} -> (fun (V1, V2, V3, V4) -> ('Idris.Idris2.Prelude.Interfaces':'un--concat'({'Idris.Builtin.MkPair', {'Idris.Prelude.Interfaces.MkFoldable', fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V7, V8, V9)) end end end end end, fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> fun (V14) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V12, V13, V14)) end end end end end, fun (V15) -> fun (V16) -> ('Idris.Idris2.Prelude.Types':'dn--un--null_Foldable_List'(V16)) end end, fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldlM_Foldable_List'(V20, V21, V22, V23)) end end end end end end end, fun (V24) -> fun (V25) -> ('Idris.Idris2.Prelude.Types':'dn--un--toList_Foldable_List'(V25)) end end, fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> fun (V30) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V28, V29, V30)) end end end end end}, {'Idris.Prelude.Interfaces.MkMonoid', fun (V31) -> fun (V32) -> ('Idris.Idris2.Prelude.Types':'dn--un--<+>_Semigroup_String'(V31, V32)) end end, ('Idris.Idris2.Prelude.Types':'dn--un--neutral_Monoid_String'())}}, ('Idris.Idris2.Data.List':'un--intersperse'(<<"."/utf8>>, ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_List'(fun (V33) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(V33)) end, [V1 | [V2 | [V3 | [V4 | []]]]])))))) end(E0, E1, E2, E3)); {'Idris.Network.Socket.Data.IPv6Addr'} -> (fun () -> <<"NOT IMPLEMENTED YET"/utf8>> end()); {'Idris.Network.Socket.Data.Hostname', E4} -> (fun (V34) -> V34 end(E4)); {'Idris.Network.Socket.Data.InvalidAddress'} -> (fun () -> <<"Invalid"/utf8>> end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--showPrec_Show_SocketType'(V0, V1) -> ('dn--un--show_Show_SocketType'(V1)).
'dn--un--showPrec_Show_SocketAddress'(V0, V1) -> ('dn--un--show_Show_SocketAddress'(V1)).
'dn--un--__Impl_ToCode_SocketType'(V0) -> ('dn--un--toCode_ToCode_SocketType'(V0)).
'dn--un--__Impl_ToCode_SocketFamily'(V0) -> ('dn--un--toCode_ToCode_SocketFamily'(V0)).
'dn--un--__Impl_Show_SocketType'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_SocketType'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_SocketType'(V1, V2)) end end}.
'dn--un--__Impl_Show_SocketAddress'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_SocketAddress'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_SocketAddress'(V1, V2)) end end}.
'un--toCode'(V0, V1) -> (V0(V1)).
'un--prim__idrnet_isNull'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.Socket.Data.prim__idrnet_isNull")).
'un--prim__idrnet_geteagain'(V0) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.Socket.Data.prim__idrnet_geteagain")).
'un--prim__idrnet_errno'(V0) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.Socket.Data.prim__idrnet_errno")).
'un--prim__idrnet_af_unspec'(V0) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.Socket.Data.prim__idrnet_af_unspec")).
'un--prim__idrnet_af_unix'(V0) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.Socket.Data.prim__idrnet_af_unix")).
'un--prim__idrnet_af_inet6'(V0) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.Socket.Data.prim__idrnet_af_inet6")).
'un--prim__idrnet_af_inet'(V0) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.Socket.Data.prim__idrnet_af_inet")).
'un--parseIPv4'(V0) -> case ('nested--3287-4110--in--un--splitted'(V0)) of {'Idris.Data.List1.:::', E0, E1} -> (fun (V1, V2) -> case V2 of [E2 | E3] -> (fun (V3, V4) -> case V4 of [E4 | E5] -> (fun (V5, V6) -> case V6 of [E6 | E7] -> (fun (V7, V8) -> {'Idris.Network.Socket.Data.IPv4Addr', V1, V3, V5, V7} end(E6, E7)); _ -> {'Idris.Network.Socket.Data.InvalidAddress'} end end(E4, E5)); _ -> {'Idris.Network.Socket.Data.InvalidAddress'} end end(E2, E3)); _ -> {'Idris.Network.Socket.Data.InvalidAddress'} end end(E0, E1)); _ -> {'Idris.Network.Socket.Data.InvalidAddress'} end.
'un--nullPtr'(V0, V1) -> case V0 of {'Idris.Prelude.IO.MkHasIO', E0, E1} -> (fun (V2, V3) -> case V2 of {'Idris.Prelude.Interfaces.MkMonad', E2, E3, E4} -> (fun (V4, V5, V6) -> ((((V5('erased'))('erased'))(case V0 of {'Idris.Prelude.IO.MkHasIO', E5, E6} -> (fun (V24, V25) -> ((V25('erased'))(fun (V26) -> ('un--prim__idrnet_isNull'(V1, V26)) end)) end(E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end))(fun (V7) -> case V7 of 0 -> case V0 of {'Idris.Prelude.IO.MkHasIO', E15, E16} -> (fun (V8, V9) -> case V8 of {'Idris.Prelude.Interfaces.MkMonad', E17, E18, E19} -> (fun (V10, V11, V12) -> case V10 of {'Idris.Prelude.Interfaces.MkApplicative', E20, E21, E22} -> (fun (V13, V14, V15) -> ((V14('erased'))(0)) end(E20, E21, E22)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E17, E18, E19)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E15, E16)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> case V0 of {'Idris.Prelude.IO.MkHasIO', E7, E8} -> (fun (V16, V17) -> case V16 of {'Idris.Prelude.Interfaces.MkMonad', E9, E10, E11} -> (fun (V18, V19, V20) -> case V18 of {'Idris.Prelude.Interfaces.MkApplicative', E12, E13, E14} -> (fun (V21, V22, V23) -> ((V22('erased'))(1)) end(E12, E13, E14)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end)) end(E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--getSocketFamily'(V0) -> ('Idris.Idris2.Data.List':'un--lookup'({'Idris.Prelude.EqOrd.MkEq', fun (V1) -> fun (V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(V1, V2)) end end, fun (V3) -> fun (V4) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Int'(V3, V4)) end end}, V0, [{'Idris.Builtin.MkPair', ('dn--un--toCode_ToCode_SocketFamily'(0)), 0} | [{'Idris.Builtin.MkPair', ('dn--un--toCode_ToCode_SocketFamily'(1)), 1} | [{'Idris.Builtin.MkPair', ('dn--un--toCode_ToCode_SocketFamily'(2)), 2} | [{'Idris.Builtin.MkPair', ('dn--un--toCode_ToCode_SocketFamily'(3)), 3} | []]]]])).
'un--getErrno'(V0) -> case V0 of {'Idris.Prelude.IO.MkHasIO', E0, E1} -> (fun (V1, V2) -> ((V2('erased'))(fun (V3) -> ('un--prim__idrnet_errno'(V3)) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--SocketError'() -> {'Idris.Int'}.
'un--SocketDescriptor'() -> {'Idris.Int'}.
'un--ResultCode'() -> {'Idris.Int'}.
'un--ProtocolNumber'() -> {'Idris.Int'}.
'un--Port'() -> {'Idris.Int'}.
'un--EAGAIN'() -> ('Idris.Idris2.PrimIO':'un--unsafePerformIO'(fun (V0) -> ('un--prim__idrnet_geteagain'(V0)) end)).
'un--ByteLength'() -> {'Idris.Int'}.
'un--BACKLOG'() -> 20.
