-module('Idris.Idris2.Data.Bool.Extra').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--orTrueTrue'/1,
  'un--orSameNeutral'/1,
  'un--orSameAndRightNeutral'/2,
  'un--orFalseNeutral'/1,
  'un--anyTrue'/1,
  'un--andTrueNeutral'/1,
  'un--andSameNeutral'/1,
  'un--andFalseFalse'/1,
  'un--allTrue'/1
]).
'un--orTrueTrue'(V0) -> case V0 of 1 -> {'Idris.Builtin.Refl'}; 0 -> {'Idris.Builtin.Refl'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--orSameNeutral'(V0) -> case V0 of 1 -> {'Idris.Builtin.Refl'}; 0 -> {'Idris.Builtin.Refl'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--orSameAndRightNeutral'(V0, V1) -> case V0 of 1 -> {'Idris.Builtin.Refl'}; 0 -> {'Idris.Builtin.Refl'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--orFalseNeutral'(V0) -> case V0 of 1 -> {'Idris.Builtin.Refl'}; 0 -> {'Idris.Builtin.Refl'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--anyTrue'(V0) -> case V0 of [] -> 1; [E0 | E1] -> (fun (V1, V2) -> ('Idris.Idris2.Prelude.Basics':'un--||'(V1, fun () -> ('un--anyTrue'(V2)) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--andTrueNeutral'(V0) -> case V0 of 1 -> {'Idris.Builtin.Refl'}; 0 -> {'Idris.Builtin.Refl'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--andSameNeutral'(V0) -> case V0 of 1 -> {'Idris.Builtin.Refl'}; 0 -> {'Idris.Builtin.Refl'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--andFalseFalse'(V0) -> case V0 of 1 -> {'Idris.Builtin.Refl'}; 0 -> {'Idris.Builtin.Refl'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--allTrue'(V0) -> case V0 of [] -> 0; [E0 | E1] -> (fun (V1, V2) -> ('Idris.Idris2.Prelude.Basics':'un--&&'(V1, fun () -> ('un--allTrue'(V2)) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
