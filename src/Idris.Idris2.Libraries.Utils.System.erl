-module('Idris.Idris2.Libraries.Utils.System').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--softExitWith'/2,
  'un--softExitAtom'/0,
  'un--exit'/2
]).
'un--softExitWith'(V0, V1) -> case V1 of {'Erlang.System.ExitSuccess'} -> ('un--exit'(V0, 0)); {'Erlang.System.ExitFailure', V2, V3} -> ('un--exit'(V0, V2)) end.
'un--softExitAtom'() -> '$idris_rts_exit'.
'un--exit'(V0, V1) -> case V0 of {'Prelude.IO.MkHasIO', V2, V3} -> case V2 of {'Prelude.Interfaces.MkMonad', V4, V5, V6} -> ((((V5('erased'))('erased'))(case V0 of {'Prelude.IO.MkHasIO', V17, V18} -> case V17 of {'Prelude.Interfaces.MkMonad', V19, V20, V21} -> case V19 of {'Prelude.Interfaces.MkApplicative', V22, V23, V24} -> ((V23('erased'))(('erlang':'apply'('erlang', 'exit', [{('un--softExitAtom'()), V1} | []])))) end end end))(fun (V7) -> begin (V8 = V7), case V0 of {'Prelude.IO.MkHasIO', V9, V10} -> case V9 of {'Prelude.Interfaces.MkMonad', V11, V12, V13} -> case V11 of {'Prelude.Interfaces.MkApplicative', V14, V15, V16} -> ((V15('erased'))(V8)) end end end end end)) end end.
