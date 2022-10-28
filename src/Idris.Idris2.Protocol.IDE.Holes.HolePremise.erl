-module('Idris.Idris2.Protocol.IDE.Holes.HolePremise').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.type'/1,
  'un--.name'/1,
  'un--type'/1,
  'un--name'/1
]).
'un--.type'(V0) -> case V0 of {'Protocol.IDE.Holes.MkHolePremise', V1, V2} -> V2 end.
'un--.name'(V0) -> case V0 of {'Protocol.IDE.Holes.MkHolePremise', V1, V2} -> V1 end.
'un--type'(V0) -> case V0 of {'Protocol.IDE.Holes.MkHolePremise', V1, V2} -> V2 end.
'un--name'(V0) -> case V0 of {'Protocol.IDE.Holes.MkHolePremise', V1, V2} -> V1 end.
