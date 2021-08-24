-module('Idris.Idris2.Prelude.Interfaces.Bool.Semigroup').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--<+>_Semigroup_AnyBool'/2,
  'dn--un--<+>_Semigroup_AllBool'/2,
  'un--Any'/2,
  'un--All'/2
]).
'dn--un--<+>_Semigroup_AnyBool'(V0, V1) -> case V0 of 1 -> 1; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--<+>_Semigroup_AllBool'(V0, V1) -> case V0 of 1 -> V1; 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--Any'(V0, V1) -> ('dn--un--<+>_Semigroup_AnyBool'(V0, V1)).
'un--All'(V0, V1) -> ('dn--un--<+>_Semigroup_AllBool'(V0, V1)).
