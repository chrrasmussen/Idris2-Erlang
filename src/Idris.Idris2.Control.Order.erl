-module('Idris.Idris2.Control.Order').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--__Preorder_((Transitive ty) rel)'/1,
  'dn--un--__Preorder_((Reflexive ty) rel)'/1,
  'dn--un--__PartialOrder_((Preorder ty) rel)'/1,
  'dn--un--__PartialOrder_((Antisymmetric ty) rel)'/1,
  'dn--un--__LinearOrder_((PartialOrder ty) rel)'/1,
  'dn--un--__LinearOrder_((Connex ty) rel)'/1,
  'un--order'/3,
  'un--connex'/4,
  'un--EP'/1
]).
'dn--un--__Preorder_((Transitive ty) rel)'(V0) -> case V0 of {'Idris.Control.Order.dn--un--__mkPreorder', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Preorder_((Reflexive ty) rel)'(V0) -> case V0 of {'Idris.Control.Order.dn--un--__mkPreorder', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__PartialOrder_((Preorder ty) rel)'(V0) -> case V0 of {'Idris.Control.Order.dn--un--__mkPartialOrder', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__PartialOrder_((Antisymmetric ty) rel)'(V0) -> case V0 of {'Idris.Control.Order.dn--un--__mkPartialOrder', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__LinearOrder_((PartialOrder ty) rel)'(V0) -> case V0 of {'Idris.Control.Order.dn--un--__mkLinearOrder', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__LinearOrder_((Connex ty) rel)'(V0) -> case V0 of {'Idris.Control.Order.dn--un--__mkLinearOrder', E0, E1} -> (fun (V1, V2) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--order'(V0, V1, V2) -> ((V0(V1))(V2)).
'un--connex'(V0, V1, V2, V3) -> (((V0(V1))(V2))(V3)).
'un--EP'(V0) -> {'Idris.Control.Order.dn--un--__mkPreorder', case V0 of {'Idris.Control.Relation.dn--un--__mkEquivalence', E0, E1, E2} -> (fun (V1, V2, V3) -> V1 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, case V0 of {'Idris.Control.Relation.dn--un--__mkEquivalence', E3, E4, E5} -> (fun (V4, V5, V6) -> V5 end(E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end}.
