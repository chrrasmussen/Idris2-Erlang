-module('Idris.Idris2.Data.IORef').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--writeIORef1'/3,
  'un--writeIORef'/3,
  'un--readIORef'/2,
  'un--newIORef'/2,
  'un--modifyIORef'/3,
  'un--freeIORef'/2
]).
'un--writeIORef1'(V0, V1, V2) -> begin (V3 = V1), case V0 of {'Prelude.IO.MkHasLinearIO', V4, V5} -> ((V5('erased'))(fun (V6) -> ('erlang':'put'(V3, V2)) end)) end end.
'un--writeIORef'(V0, V1, V2) -> begin (V3 = V1), case V0 of {'Prelude.IO.MkHasIO', V4, V5} -> ((V5('erased'))(fun (V6) -> ('erlang':'put'(V3, V2)) end)) end end.
'un--readIORef'(V0, V1) -> begin (V2 = V1), case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> ((V4('erased'))(fun (V5) -> ('erlang':'get'(V2)) end)) end end.
'un--newIORef'(V0, V1) -> case V0 of {'Prelude.IO.MkHasIO', V2, V3} -> case V2 of {'Prelude.Interfaces.MkMonad', V4, V5, V6} -> ((((V5('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V16, V17} -> ((V17('erased'))(fun (V18) -> begin (V19 = ('erlang':'make_ref'())), begin ('erlang':'put'(V19, V1)), V19 end end end)) end))(fun (V7) -> case V0 of {'Prelude.IO.MkHasIO', V8, V9} -> case V8 of {'Prelude.Interfaces.MkMonad', V10, V11, V12} -> case V10 of {'Prelude.Interfaces.MkApplicative', V13, V14, V15} -> ((V14('erased'))(V7)) end end end end)) end end.
'un--modifyIORef'(V0, V1, V2) -> case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> case V3 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> ((((V6('erased'))('erased'))(begin (V13 = V1), case V0 of {'Prelude.IO.MkHasIO', V14, V15} -> ((V15('erased'))(fun (V16) -> ('erlang':'get'(V13)) end)) end end))(fun (V8) -> begin (V9 = V1), case V0 of {'Prelude.IO.MkHasIO', V10, V11} -> ((V11('erased'))(fun (V12) -> ('erlang':'put'(V9, (V2(V8)))) end)) end end end)) end end.
'un--freeIORef'(V0, V1) -> begin (V2 = V1), case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> ((V4('erased'))(fun (V5) -> ('erlang':'erase'(V2)) end)) end end.
