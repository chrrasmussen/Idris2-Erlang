-module('Idris.Idris2.Utils.System').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--exit-643'/5,
  'un--softExitWith'/4,
  'un--softExitAtom'/0,
  'un--exit'/4
]).
'case--exit-643'(V0, V1, V2, V3, V4) -> case case case V2 of {'Idris.Prelude.IO.dn--un--__mkHasIO', E6, E7} -> (fun (V5, V6) -> V5 end(E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of {'Idris.Prelude.Interfaces.dn--un--__mkMonad', E3, E4, E5} -> (fun (V7, V8, V9) -> V7 end(E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', E0, E1, E2} -> (fun (V10, V11, V12) -> ((V11('erased'))(V4)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--softExitWith'(V0, V1, V2, V3) -> case V3 of {'Idris.Erlang.System.ExitSuccess'} -> (fun () -> ('un--exit'('erased', 'erased', V2, 0)) end()); {'Idris.Erlang.System.ExitFailure', E0, E1} -> (fun (V4, V5) -> ('un--exit'('erased', 'erased', V2, V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--softExitAtom'() -> '$idris_rts_exit'.
'un--exit'(V0, V1, V2, V3) -> case case V2 of {'Idris.Prelude.IO.dn--un--__mkHasIO', E19, E20} -> (fun (V4, V5) -> V4 end(E19, E20)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of {'Idris.Prelude.Interfaces.dn--un--__mkMonad', E0, E1, E2} -> (fun (V6, V7, V8) -> ((((V7('erased'))('erased'))(case case case V2 of {'Idris.Prelude.IO.dn--un--__mkHasIO', E9, E10} -> (fun (V18, V19) -> V18 end(E9, E10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of {'Idris.Prelude.Interfaces.dn--un--__mkMonad', E6, E7, E8} -> (fun (V20, V21, V22) -> V20 end(E6, E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', E3, E4, E5} -> (fun (V23, V24, V25) -> ((V24('erased'))(('erlang':'apply'('erlang', 'exit', [{('un--softExitAtom'()), V3} | []])))) end(E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end))(fun (V9) -> case case case V2 of {'Idris.Prelude.IO.dn--un--__mkHasIO', E17, E18} -> (fun (V10, V11) -> V10 end(E17, E18)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of {'Idris.Prelude.Interfaces.dn--un--__mkMonad', E14, E15, E16} -> (fun (V12, V13, V14) -> V12 end(E14, E15, E16)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', E11, E12, E13} -> (fun (V15, V16, V17) -> ((V16('erased'))(V9)) end(E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end)) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
