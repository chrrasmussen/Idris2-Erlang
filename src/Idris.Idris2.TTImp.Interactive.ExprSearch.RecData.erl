-module('Idris.Idris2.TTImp.Interactive.ExprSearch.RecData').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--vars'/1,
  'un--recname'/1,
  'un--lhsapp'/1
]).
'un--vars'(V0) -> case V0 of {'Idris.TTImp.Interactive.ExprSearch.MkRecData', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--recname'(V0) -> case V0 of {'Idris.TTImp.Interactive.ExprSearch.MkRecData', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lhsapp'(V0) -> case V0 of {'Idris.TTImp.Interactive.ExprSearch.MkRecData', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
