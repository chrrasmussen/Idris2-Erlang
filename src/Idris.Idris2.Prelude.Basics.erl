-module('Idris.Idris2.Prelude.Basics').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--||'/2,
  'un--uncurry'/2,
  'un--the'/1,
  'un--on'/4,
  'un--not'/1,
  'un--irrelevantEq'/0,
  'un--intToBool'/1,
  'un--ifThenElse'/3,
  'un--id'/1,
  'un--flip'/3,
  'un--dup'/1,
  'un--curry'/3,
  'un--const'/2,
  'un--cong2'/2,
  'un--cong'/1,
  'un--apply'/2,
  'un--Not'/1,
  'un--.:'/4,
  'un--.'/3,
  'un--&&'/2,
  'un--$'/2
]).
'un--||'(V0, V1) -> case V0 of 1 -> 1; 0 -> (V1()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--uncurry'(V0, V1) -> case V1 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V2, V3) -> ((V0(V2))(V3)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--the'(V0) -> V0.
'un--on'(V0, V1, V2, V3) -> ((V0((V1(V2))))((V1(V3)))).
'un--not'(V0) -> case V0 of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--irrelevantEq'() -> 0.
'un--intToBool'(V0) -> case V0 of 0 -> 0; _ -> 1 end.
'un--ifThenElse'(V0, V1, V2) -> case V0 of 1 -> (V1()); 0 -> (V2()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--id'(V0) -> V0.
'un--flip'(V0, V1, V2) -> ((V0(V2))(V1)).
'un--dup'(V0) -> {'Idris.Builtin.MkPair', V0, V0}.
'un--curry'(V0, V1, V2) -> (V0({'Idris.Builtin.MkPair', V1, V2})).
'un--const'(V0, V1) -> V0.
'un--cong2'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--cong'(V0) -> case V0 of 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--apply'(V0, V1) -> (V0(V1)).
'un--Not'(V0) -> {'Idris.->', V0, fun (V1) -> {'Idris.Builtin.Void'} end}.
'un--.:'(V0, V1, V2, V3) -> (V0(((V1(V2))(V3)))).
'un--.'(V0, V1, V2) -> (V0((V1(V2)))).
'un--&&'(V0, V1) -> case V0 of 1 -> (V1()); 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--$'(V0, V1) -> (V0(V1)).
