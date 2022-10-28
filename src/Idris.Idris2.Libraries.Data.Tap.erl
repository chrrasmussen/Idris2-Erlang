-module('Idris.Idris2.Libraries.Data.Tap').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--map_Functor_(Tap $m)'/3,
  'dn--un--__Impl_Functor_(Tap $m)'/5,
  'un--traverse'/3,
  'un--filter'/3
]).
'dn--un--map_Functor_(Tap $m)'(V0, V1, V2) -> case V2 of {'Libraries.Data.Tap.Nil'} -> {'Libraries.Data.Tap.Nil'}; {'Libraries.Data.Tap.::', V3, V4} -> {'Libraries.Data.Tap.::', (V1(V3)), ((begin (V12 = V0), fun (V13) -> fun (V14) -> ((((V12('erased'))('erased'))(V13))(V14)) end end end((begin (V9 = fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('dn--un--map_Functor_(Tap $m)'(V0, V7, V8)) end end end end), fun (V10) -> fun (V11) -> ((((V9('erased'))('erased'))(V10))(V11)) end end end(V1))))(V4))} end.
'dn--un--__Impl_Functor_(Tap $m)'(V0, V1, V2, V3, V4) -> ('dn--un--map_Functor_(Tap $m)'(V0, V3, V4)).
'un--traverse'(V0, V1, V2) -> case V2 of {'Libraries.Data.Tap.Nil'} -> case V0 of {'Prelude.Interfaces.MkMonad', V3, V4, V5} -> case V3 of {'Prelude.Interfaces.MkApplicative', V6, V7, V8} -> ((V7('erased'))({'Libraries.Data.Tap.Nil'})) end end; {'Libraries.Data.Tap.::', V9, V10} -> case V0 of {'Prelude.Interfaces.MkMonad', V11, V12, V13} -> ((((V12('erased'))('erased'))((V1(V9))))(fun (V14) -> case V0 of {'Prelude.Interfaces.MkMonad', V15, V16, V17} -> case V15 of {'Prelude.Interfaces.MkApplicative', V18, V19, V20} -> ((V19('erased'))({'Libraries.Data.Tap.::', V14, case V0 of {'Prelude.Interfaces.MkMonad', V21, V22, V23} -> ((((V22('erased'))('erased'))(V10))(fun (V24) -> ('un--traverse'(V0, V1, V24)) end)) end})) end end end)) end end.
'un--filter'(V0, V1, V2) -> case V2 of {'Libraries.Data.Tap.Nil'} -> case V0 of {'Prelude.Interfaces.MkMonad', V3, V4, V5} -> case V3 of {'Prelude.Interfaces.MkApplicative', V6, V7, V8} -> ((V7('erased'))({'Libraries.Data.Tap.Nil'})) end end; {'Libraries.Data.Tap.::', V9, V10} -> begin (V15 = case V0 of {'Prelude.Interfaces.MkMonad', V11, V12, V13} -> ((((V12('erased'))('erased'))(V10))(fun (V14) -> ('un--filter'(V0, V1, V14)) end)) end), case (V1(V9)) of 1 -> case V0 of {'Prelude.Interfaces.MkMonad', V16, V17, V18} -> case V16 of {'Prelude.Interfaces.MkApplicative', V19, V20, V21} -> ((V20('erased'))({'Libraries.Data.Tap.::', V9, V15})) end end; 0 -> V15 end end end.
