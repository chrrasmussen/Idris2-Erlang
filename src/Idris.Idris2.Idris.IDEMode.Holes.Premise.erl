-module('Idris.Idris2.Idris.IDEMode.Holes.Premise').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.type'/1,
  'un--.name'/1,
  'un--.multiplicity'/1,
  'un--.isImplicit'/1,
  'un--type'/1,
  'un--name'/1,
  'un--multiplicity'/1,
  'un--isImplicit'/1
]).
'un--.type'(V0) -> case V0 of {'Idris.IDEMode.Holes.MkHolePremise', V1, V2, V3, V4} -> V2 end.
'un--.name'(V0) -> case V0 of {'Idris.IDEMode.Holes.MkHolePremise', V1, V2, V3, V4} -> V1 end.
'un--.multiplicity'(V0) -> case V0 of {'Idris.IDEMode.Holes.MkHolePremise', V1, V2, V3, V4} -> V3 end.
'un--.isImplicit'(V0) -> case V0 of {'Idris.IDEMode.Holes.MkHolePremise', V1, V2, V3, V4} -> V4 end.
'un--type'(V0) -> case V0 of {'Idris.IDEMode.Holes.MkHolePremise', V1, V2, V3, V4} -> V2 end.
'un--name'(V0) -> case V0 of {'Idris.IDEMode.Holes.MkHolePremise', V1, V2, V3, V4} -> V1 end.
'un--multiplicity'(V0) -> case V0 of {'Idris.IDEMode.Holes.MkHolePremise', V1, V2, V3, V4} -> V3 end.
'un--isImplicit'(V0) -> case V0 of {'Idris.IDEMode.Holes.MkHolePremise', V1, V2, V3, V4} -> V4 end.
