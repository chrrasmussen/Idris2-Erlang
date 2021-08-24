-module('Idris.Idris2.Libraries.System.Directory.Tree.Tree').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--subTrees'/1,
  'rf--files'/1,
  'un--toRelative'/1,
  'un--subTrees'/1,
  'un--files'/1
]).
'rf--subTrees'(V0) -> case V0 of {'Idris.Libraries.System.Directory.Tree.MkTree', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--files'(V0) -> case V0 of {'Idris.Libraries.System.Directory.Tree.MkTree', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--toRelative'(V0) -> ('Idris.Idris2.Builtin':'un--believe_me'(V0)).
'un--subTrees'(V0) -> case V0 of {'Idris.Libraries.System.Directory.Tree.MkTree', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--files'(V0) -> case V0 of {'Idris.Libraries.System.Directory.Tree.MkTree', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
