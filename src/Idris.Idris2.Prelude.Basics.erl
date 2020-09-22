-module('Idris.Idris2.Prelude.Basics').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--||'/2,
  'un--uncurry'/5,
  'un--the'/2,
  'un--not'/1,
  'un--intToBool'/1,
  'un--id'/2,
  'un--flip'/6,
  'un--dup'/2,
  'un--curry'/6,
  'un--const'/4,
  'un--cong2'/10,
  'un--cong'/6,
  'un--apply'/4,
  'un--Not'/1,
  'un--.'/6,
  'un--&&'/2,
  'un--$'/4
]).
'un--||'(V0, V1) -> case V0 of 0 -> 0; 1 -> (V1()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--uncurry'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V5, V6) -> ((V3(V5))(V6)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--the'(V0, V1) -> V1.
'un--not'(V0) -> case V0 of 0 -> 1; 1 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--intToBool'(V0) -> case V0 of 0 -> 1; _ -> 0 end.
'un--id'(V0, V1) -> V1.
'un--flip'(V0, V1, V2, V3, V4, V5) -> ((V3(V5))(V4)).
'un--dup'(V0, V1) -> {'Idris.Builtin.MkPair', V1, V1}.
'un--curry'(V0, V1, V2, V3, V4, V5) -> (V3({'Idris.Builtin.MkPair', V4, V5})).
'un--const'(V0, V1, V2, V3) -> V2.
'un--cong2'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9) -> case V8 of {'Idris.Builtin.Refl'} -> (fun () -> case V9 of {'Idris.Builtin.Refl'} -> (fun () -> {'Idris.Builtin.Refl'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--cong'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Idris.Builtin.Refl'} -> (fun () -> {'Idris.Builtin.Refl'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--apply'(V0, V1, V2, V3) -> (V2(V3)).
'un--Not'(V0) -> {'Idris.->', V0, fun (V1) -> {'Idris.Builtin.Void'} end}.
'un--.'(V0, V1, V2, V3, V4, V5) -> (V3((V4(V5)))).
'un--&&'(V0, V1) -> case V0 of 0 -> (V1()); 1 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--$'(V0, V1, V2, V3) -> (V2(V3)).
