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
  'un--order'/1,
  'un--connex'/3,
  'un--EP'/1
]).
'dn--un--__Preorder_((Transitive ty) rel)'(V0) -> case V0 of {'Control.Order.dn--un--__mkPreorder', V1, V2} -> V2 end.
'dn--un--__Preorder_((Reflexive ty) rel)'(V0) -> case V0 of {'Control.Order.dn--un--__mkPreorder', V1, V2} -> V1 end.
'dn--un--__PartialOrder_((Preorder ty) rel)'(V0) -> case V0 of {'Control.Order.dn--un--__mkPartialOrder', V1, V2} -> V1 end.
'dn--un--__PartialOrder_((Antisymmetric ty) rel)'(V0) -> case V0 of {'Control.Order.dn--un--__mkPartialOrder', V1, V2} -> V2 end.
'dn--un--__LinearOrder_((PartialOrder ty) rel)'(V0) -> case V0 of {'Control.Order.dn--un--__mkLinearOrder', V1, V2} -> V1 end.
'dn--un--__LinearOrder_((Connex ty) rel)'(V0) -> case V0 of {'Control.Order.dn--un--__mkLinearOrder', V1, V2} -> V2 end.
'un--order'(V0) -> begin (V1 = V0), fun (V2) -> fun (V3) -> ((V1(V2))(V3)) end end end.
'un--connex'(V0, V1, V2) -> begin (V3 = V0), fun (V4) -> (((V3(V1))(V2))(V4)) end end.
'un--EP'(V0) -> {'Control.Order.dn--un--__mkPreorder', case V0 of {'Control.Relation.dn--un--__mkEquivalence', V1, V2, V3} -> V1 end, case V0 of {'Control.Relation.dn--un--__mkEquivalence', V4, V5, V6} -> V5 end}.
