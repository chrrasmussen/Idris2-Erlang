-module('Idris.Idris2.Libraries.Data.LengthMatch').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--lengthsMatch'/1,
  'un--checkLengthMatch'/2
]).
'un--lengthsMatch'(V0) -> case V0 of 0 -> {'Builtin.Refl'}; _ -> {'Builtin.Refl'} end.
'un--checkLengthMatch'(V0, V1) -> case V0 of [] -> case V1 of [] -> {'Prelude.Types.Just', 0}; [E0 | E1] -> (fun (V2, V3) -> {'Prelude.Types.Nothing'} end(E0, E1)) end; [E2 | E3] -> (fun (V4, V5) -> case V1 of [] -> {'Prelude.Types.Nothing'}; [E4 | E5] -> (fun (V6, V7) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('un--checkLengthMatch'(V5, V7)), fun (V8) -> {'Prelude.Types.Just', (V8 + 1)} end)) end(E4, E5)) end end(E2, E3)) end.
