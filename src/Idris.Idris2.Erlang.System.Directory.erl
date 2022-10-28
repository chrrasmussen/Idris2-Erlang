-module('Idris.Idris2.Erlang.System.Directory').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--removeDir'/2,
  'un--listDir'/2,
  'un--dirExists'/2,
  'un--currentDir'/1,
  'un--createDir'/2,
  'un--changeDir'/2
]).
'un--removeDir'(V0, V1) -> ((begin (V19 = case V0 of {'Prelude.IO.MkHasIO', V11, V12} -> case V11 of {'Prelude.Interfaces.MkMonad', V13, V14, V15} -> case V13 of {'Prelude.Interfaces.MkApplicative', V16, V17, V18} -> V16 end end end), fun (V20) -> fun (V21) -> ((((V19('erased'))('erased'))(V20))(V21)) end end end(fun (V10) -> {'Builtin.MkUnit'} end))(case V0 of {'Prelude.IO.MkHasIO', V2, V3} -> case V2 of {'Prelude.Interfaces.MkMonad', V4, V5, V6} -> case V4 of {'Prelude.Interfaces.MkApplicative', V7, V8, V9} -> ((V8('erased'))(('erlang':'apply'('file', 'del_dir_r', [V1 | []])))) end end end)).
'un--listDir'(V0, V1) -> case V0 of {'Prelude.IO.MkHasIO', V2, V3} -> case V2 of {'Prelude.Interfaces.MkMonad', V4, V5, V6} -> ((((V5('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V28, V29} -> case V28 of {'Prelude.Interfaces.MkMonad', V30, V31, V32} -> case V30 of {'Prelude.Interfaces.MkApplicative', V33, V34, V35} -> ((V34('erased'))(('erlang':'apply'('file', 'list_dir', [V1 | []])))) end end end))(fun (V7) -> case V0 of {'Prelude.IO.MkHasIO', V8, V9} -> case V8 of {'Prelude.Interfaces.MkMonad', V10, V11, V12} -> case V10 of {'Prelude.Interfaces.MkApplicative', V13, V14, V15} -> ((V14('erased'))(('Idris.Idris2.Erlang.Decode':'un--erlDecodeDef'({'Erlang.Types.ETErlTerm'}, fun () -> {'Prelude.Types.Left', ('Idris.Idris2.Erlang.System.File':'un--unknownError'())} end, ('Idris.Idris2.Erlang.Decode':'dn--un--<|>_Alternative_ErlDecoder'(('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(fun (V16) -> {'Prelude.Types.Right', ((begin (V24 = fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V22, V23)) end end end end), fun (V25) -> fun (V26) -> ((((V24('erased'))('erased'))(V25))(V26)) end end end(fun (V17) -> case V17 of E0 -> (fun (V18) -> V18 end((fun (V19) -> ('unicode':'characters_to_binary'(V19)) end(E0)))) end end))(V16))} end, ('Idris.Idris2.Erlang.Decode':'un--okTuple'(('Idris.Idris2.Erlang.Decode':'un--list'(('Idris.Idris2.Erlang.Decode':'un--charlist'()))))))), fun () -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(fun (V27) -> {'Prelude.Types.Left', V27} end, ('Idris.Idris2.Erlang.System.File':'un--error'()))) end)), V7)))) end end end end)) end end.
'un--dirExists'(V0, V1) -> case V0 of {'Prelude.IO.MkHasIO', V2, V3} -> case V2 of {'Prelude.Interfaces.MkMonad', V4, V5, V6} -> ((((V5('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V29, V30} -> case V29 of {'Prelude.Interfaces.MkMonad', V31, V32, V33} -> case V31 of {'Prelude.Interfaces.MkApplicative', V34, V35, V36} -> ((V35('erased'))(('erlang':'apply'('filelib', 'is_dir', [V1 | []])))) end end end))(fun (V7) -> case V0 of {'Prelude.IO.MkHasIO', V8, V9} -> case V8 of {'Prelude.Interfaces.MkMonad', V10, V11, V12} -> case V10 of {'Prelude.Interfaces.MkApplicative', V13, V14, V15} -> ((V14('erased'))(('Idris.Idris2.Erlang.Decode':'un--erlDecodeDef'({'Erlang.Types.ETErlTerm'}, fun () -> 0 end, ('Idris.Idris2.Prelude.Interfaces':'un--*>'({'Prelude.Interfaces.MkApplicative', fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(V18, V19)) end end end end, fun (V20) -> fun (V21) -> fun (V22) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'(V21, V22)) end end end, fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> ('Idris.Idris2.Erlang.Decode':'dn--un--<*>_Applicative_ErlDecoder'(V25, V26)) end end end end}, fun (V27) -> ('Idris.Idris2.Erlang.Decode':'un--exact'({'Erlang.Types.ETErlAtom'}, 'true', V27)) end, fun (V28) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'(1, V28)) end)), V7)))) end end end end)) end end.
'un--currentDir'(V0) -> case V0 of {'Prelude.IO.MkHasIO', V1, V2} -> case V1 of {'Prelude.Interfaces.MkMonad', V3, V4, V5} -> ((((V4('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V18, V19} -> case V18 of {'Prelude.Interfaces.MkMonad', V20, V21, V22} -> case V20 of {'Prelude.Interfaces.MkApplicative', V23, V24, V25} -> ((V24('erased'))(('erlang':'apply'('file', 'get_cwd', [])))) end end end))(fun (V6) -> case V0 of {'Prelude.IO.MkHasIO', V7, V8} -> case V7 of {'Prelude.Interfaces.MkMonad', V9, V10, V11} -> case V9 of {'Prelude.Interfaces.MkApplicative', V12, V13, V14} -> ((V13('erased'))(('Idris.Idris2.Erlang.Decode':'un--erlDecodeMay'({'Erlang.Types.ETErlTerm'}, ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(fun (V15) -> case V15 of E0 -> (fun (V16) -> V16 end((fun (V17) -> ('unicode':'characters_to_binary'(V17)) end(E0)))) end end, ('Idris.Idris2.Erlang.Decode':'un--okTuple'(('Idris.Idris2.Erlang.Decode':'un--charlist'()))))), V6)))) end end end end)) end end.
'un--createDir'(V0, V1) -> case V0 of {'Prelude.IO.MkHasIO', V2, V3} -> case V2 of {'Prelude.Interfaces.MkMonad', V4, V5, V6} -> ((((V5('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V30, V31} -> case V30 of {'Prelude.Interfaces.MkMonad', V32, V33, V34} -> case V32 of {'Prelude.Interfaces.MkApplicative', V35, V36, V37} -> ((V36('erased'))(('erlang':'apply'('file', 'make_dir', [V1 | []])))) end end end))(fun (V7) -> case V0 of {'Prelude.IO.MkHasIO', V8, V9} -> case V8 of {'Prelude.Interfaces.MkMonad', V10, V11, V12} -> case V10 of {'Prelude.Interfaces.MkApplicative', V13, V14, V15} -> ((V14('erased'))(('Idris.Idris2.Erlang.Decode':'un--erlDecodeDef'({'Erlang.Types.ETErlTerm'}, fun () -> {'Prelude.Types.Left', ('Idris.Idris2.Erlang.System.File':'un--unknownError'())} end, ('Idris.Idris2.Erlang.Decode':'dn--un--<|>_Alternative_ErlDecoder'(('Idris.Idris2.Prelude.Interfaces':'un--*>'({'Prelude.Interfaces.MkApplicative', fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(V18, V19)) end end end end, fun (V20) -> fun (V21) -> fun (V22) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'(V21, V22)) end end end, fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> ('Idris.Idris2.Erlang.Decode':'dn--un--<*>_Applicative_ErlDecoder'(V25, V26)) end end end end}, fun (V27) -> ('Idris.Idris2.Erlang.Decode':'un--exact'({'Erlang.Types.ETErlAtom'}, 'ok', V27)) end, fun (V28) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'({'Prelude.Types.Right', {'Builtin.MkUnit'}}, V28)) end)), fun () -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(fun (V29) -> {'Prelude.Types.Left', V29} end, ('Idris.Idris2.Erlang.System.File':'un--error'()))) end)), V7)))) end end end end)) end end.
'un--changeDir'(V0, V1) -> case V0 of {'Prelude.IO.MkHasIO', V2, V3} -> case V2 of {'Prelude.Interfaces.MkMonad', V4, V5, V6} -> ((((V5('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V29, V30} -> case V29 of {'Prelude.Interfaces.MkMonad', V31, V32, V33} -> case V31 of {'Prelude.Interfaces.MkApplicative', V34, V35, V36} -> ((V35('erased'))(('erlang':'apply'('file', 'set_cwd', [V1 | []])))) end end end))(fun (V7) -> case V0 of {'Prelude.IO.MkHasIO', V8, V9} -> case V8 of {'Prelude.Interfaces.MkMonad', V10, V11, V12} -> case V10 of {'Prelude.Interfaces.MkApplicative', V13, V14, V15} -> ((V14('erased'))(('Idris.Idris2.Erlang.Decode':'un--erlDecodeDef'({'Erlang.Types.ETErlTerm'}, fun () -> 0 end, ('Idris.Idris2.Prelude.Interfaces':'un--*>'({'Prelude.Interfaces.MkApplicative', fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> ('Idris.Idris2.Erlang.Decode':'dn--un--map_Functor_ErlDecoder'(V18, V19)) end end end end, fun (V20) -> fun (V21) -> fun (V22) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'(V21, V22)) end end end, fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> ('Idris.Idris2.Erlang.Decode':'dn--un--<*>_Applicative_ErlDecoder'(V25, V26)) end end end end}, fun (V27) -> ('Idris.Idris2.Erlang.Decode':'un--exact'({'Erlang.Types.ETErlAtom'}, 'ok', V27)) end, fun (V28) -> ('Idris.Idris2.Erlang.Decode':'dn--un--pure_Applicative_ErlDecoder'(1, V28)) end)), V7)))) end end end end)) end end.
