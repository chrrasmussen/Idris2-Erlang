-module('Idris.Idris2.Compiler.Scheme.Gambit.CWrapperDefs').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--setBox'/1,
  'un--cWrapDef'/1,
  'un--boxDef'/1
]).
'un--setBox'(V0) -> case V0 of {'Idris.Compiler.Scheme.Gambit.MkCWrapperDefs', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--cWrapDef'(V0) -> case V0 of {'Idris.Compiler.Scheme.Gambit.MkCWrapperDefs', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--boxDef'(V0) -> case V0 of {'Idris.Compiler.Scheme.Gambit.MkCWrapperDefs', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
