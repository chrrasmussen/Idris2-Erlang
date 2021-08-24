-module('Idris.Idris2.Libraries.Utils.System').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--softExitWith'/2,
  'un--softExitAtom'/0,
  'un--exit'/2
]).
'un--softExitWith'(V0, V1) -> case V1 of {'Idris.Erlang.System.ExitSuccess'} -> (fun () -> ('un--exit'(V0, 0)) end()); {'Idris.Erlang.System.ExitFailure', E0, E1} -> (fun (V2, V3) -> ('un--exit'(V0, V2)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--softExitAtom'() -> '$idris_rts_exit'.
'un--exit'(V0, V1) -> case V0 of {'Idris.Prelude.IO.MkHasIO', E0, E1} -> (fun (V2, V3) -> case V2 of {'Idris.Prelude.Interfaces.MkMonad', E2, E3, E4} -> (fun (V4, V5, V6) -> ((((V5('erased'))('erased'))(case V0 of {'Idris.Prelude.IO.MkHasIO', E5, E6} -> (fun (V16, V17) -> case V16 of {'Idris.Prelude.Interfaces.MkMonad', E7, E8, E9} -> (fun (V18, V19, V20) -> case V18 of {'Idris.Prelude.Interfaces.MkApplicative', E10, E11, E12} -> (fun (V21, V22, V23) -> ((V22('erased'))(('erlang':'apply'('erlang', 'exit', [{('un--softExitAtom'()), V1} | []])))) end(E10, E11, E12)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end))(fun (V7) -> case V0 of {'Idris.Prelude.IO.MkHasIO', E13, E14} -> (fun (V8, V9) -> case V8 of {'Idris.Prelude.Interfaces.MkMonad', E15, E16, E17} -> (fun (V10, V11, V12) -> case V10 of {'Idris.Prelude.Interfaces.MkApplicative', E18, E19, E20} -> (fun (V13, V14, V15) -> ((V14('erased'))(V7)) end(E18, E19, E20)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E15, E16, E17)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E13, E14)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end)) end(E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
