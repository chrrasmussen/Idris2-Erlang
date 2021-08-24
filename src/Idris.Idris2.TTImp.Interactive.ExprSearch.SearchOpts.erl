-module('Idris.Idris2.TTImp.Interactive.ExprSearch.SearchOpts').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'rf--recData'/1,
  'rf--mustSplit'/1,
  'rf--ltor'/1,
  'rf--inUnwrap'/1,
  'rf--inArg'/1,
  'rf--holesOK'/1,
  'rf--getRecData'/1,
  'rf--genExpr'/1,
  'rf--doneSplit'/1,
  'rf--depth'/1,
  'un--recData'/1,
  'un--mustSplit'/1,
  'un--ltor'/1,
  'un--inUnwrap'/1,
  'un--inArg'/1,
  'un--holesOK'/1,
  'un--getRecData'/1,
  'un--genExpr'/1,
  'un--doneSplit'/1,
  'un--depth'/1
]).
'rf--recData'(V0) -> case V0 of {'Idris.TTImp.Interactive.ExprSearch.MkSearchOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--mustSplit'(V0) -> case V0 of {'Idris.TTImp.Interactive.ExprSearch.MkSearchOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V8 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--ltor'(V0) -> case V0 of {'Idris.TTImp.Interactive.ExprSearch.MkSearchOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V7 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--inUnwrap'(V0) -> case V0 of {'Idris.TTImp.Interactive.ExprSearch.MkSearchOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V6 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--inArg'(V0) -> case V0 of {'Idris.TTImp.Interactive.ExprSearch.MkSearchOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V5 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--holesOK'(V0) -> case V0 of {'Idris.TTImp.Interactive.ExprSearch.MkSearchOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V1 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--getRecData'(V0) -> case V0 of {'Idris.TTImp.Interactive.ExprSearch.MkSearchOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V2 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--genExpr'(V0) -> case V0 of {'Idris.TTImp.Interactive.ExprSearch.MkSearchOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V10 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--doneSplit'(V0) -> case V0 of {'Idris.TTImp.Interactive.ExprSearch.MkSearchOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V9 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'rf--depth'(V0) -> case V0 of {'Idris.TTImp.Interactive.ExprSearch.MkSearchOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--recData'(V0) -> case V0 of {'Idris.TTImp.Interactive.ExprSearch.MkSearchOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--mustSplit'(V0) -> case V0 of {'Idris.TTImp.Interactive.ExprSearch.MkSearchOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V8 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--ltor'(V0) -> case V0 of {'Idris.TTImp.Interactive.ExprSearch.MkSearchOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V7 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--inUnwrap'(V0) -> case V0 of {'Idris.TTImp.Interactive.ExprSearch.MkSearchOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V6 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--inArg'(V0) -> case V0 of {'Idris.TTImp.Interactive.ExprSearch.MkSearchOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V5 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--holesOK'(V0) -> case V0 of {'Idris.TTImp.Interactive.ExprSearch.MkSearchOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V1 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--getRecData'(V0) -> case V0 of {'Idris.TTImp.Interactive.ExprSearch.MkSearchOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V2 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--genExpr'(V0) -> case V0 of {'Idris.TTImp.Interactive.ExprSearch.MkSearchOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V10 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--doneSplit'(V0) -> case V0 of {'Idris.TTImp.Interactive.ExprSearch.MkSearchOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V9 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--depth'(V0) -> case V0 of {'Idris.TTImp.Interactive.ExprSearch.MkSearchOpts', E0, E1, E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
