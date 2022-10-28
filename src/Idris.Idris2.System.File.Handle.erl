-module('Idris.Idris2.System.File.Handle').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--withFile'/5,
  'un--prim__open'/3,
  'un--prim__close'/2,
  'un--openFile'/3,
  'un--closeFile'/2
]).
'un--withFile'(V0, V1, V2, V3, V4) -> case V0 of {'Prelude.IO.MkHasIO', V5, V6} -> case V5 of {'Prelude.Interfaces.MkMonad', V7, V8, V9} -> ((((V8('erased'))('erased'))(('un--openFile'(V0, V1, V2))))(fun (V10) -> case V10 of {'Prelude.Types.Right', V11} -> case V0 of {'Prelude.IO.MkHasIO', V12, V13} -> case V12 of {'Prelude.Interfaces.MkMonad', V14, V15, V16} -> ((((V15('erased'))('erased'))((V4(V11))))(fun (V17) -> case V0 of {'Prelude.IO.MkHasIO', V18, V19} -> case V18 of {'Prelude.Interfaces.MkMonad', V20, V21, V22} -> ((((V21('erased'))('erased'))(('un--closeFile'(V0, V11))))(fun (V23) -> case V0 of {'Prelude.IO.MkHasIO', V24, V25} -> case V24 of {'Prelude.Interfaces.MkMonad', V26, V27, V28} -> case V26 of {'Prelude.Interfaces.MkApplicative', V29, V30, V31} -> ((V30('erased'))(V17)) end end end end)) end end end)) end end; {'Prelude.Types.Left', V32} -> ((begin (V42 = case V0 of {'Prelude.IO.MkHasIO', V34, V35} -> case V34 of {'Prelude.Interfaces.MkMonad', V36, V37, V38} -> case V36 of {'Prelude.Interfaces.MkApplicative', V39, V40, V41} -> V39 end end end), fun (V43) -> fun (V44) -> ((((V42('erased'))('erased'))(V43))(V44)) end end end(fun (V33) -> {'Prelude.Types.Left', V33} end))((V3(V32)))) end end)) end end.
'un--prim__open'(V0, V1, V2) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive System.File.Handle.prim__open"/utf8>>})).
'un--prim__close'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive System.File.Handle.prim__close"/utf8>>})).
'un--openFile'(V0, V1, V2) -> case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> case V3 of {'Prelude.Interfaces.MkMonad', V5, V6, V7} -> ((((V6('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V10, V11} -> ((V11('erased'))(fun (V12) -> ('un--prim__open'(V1, ('Idris.Idris2.System.File.Mode':'un--modeStr'(V2)), V12)) end)) end))(fun (V8) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Int'(('Idris.Idris2.PrimIO':'un--prim__nullAnyPtr'(V8)), begin (V9 = 0), case ((V9 band 9223372036854775808) =/= 0) of 'true' -> (V9 bor -9223372036854775808); _ -> (V9 band 9223372036854775807) end end)) of 1 -> ('Idris.Idris2.System.File.Error':'un--returnError'(V0)); 0 -> ('Idris.Idris2.System.File.Support':'un--ok'(V0, V8)) end end)) end end.
'un--closeFile'(V0, V1) -> begin (V2 = V1), case V0 of {'Prelude.IO.MkHasIO', V3, V4} -> ((V4('erased'))(fun (V5) -> ('un--prim__close'(V2, V5)) end)) end end.
