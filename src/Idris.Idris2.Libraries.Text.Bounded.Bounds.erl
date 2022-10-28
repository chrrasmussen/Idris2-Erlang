-module('Idris.Idris2.Libraries.Text.Bounded.Bounds').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.startLine'/1,
  'un--.startCol'/1,
  'un--.endLine'/1,
  'un--.endCol'/1,
  'un--startLine'/1,
  'un--startCol'/1,
  'un--endLine'/1,
  'un--endCol'/1
]).
'un--.startLine'(V0) -> case V0 of {'Libraries.Text.Bounded.MkBounds', V1, V2, V3, V4} -> V1 end.
'un--.startCol'(V0) -> case V0 of {'Libraries.Text.Bounded.MkBounds', V1, V2, V3, V4} -> V2 end.
'un--.endLine'(V0) -> case V0 of {'Libraries.Text.Bounded.MkBounds', V1, V2, V3, V4} -> V3 end.
'un--.endCol'(V0) -> case V0 of {'Libraries.Text.Bounded.MkBounds', V1, V2, V3, V4} -> V4 end.
'un--startLine'(V0) -> case V0 of {'Libraries.Text.Bounded.MkBounds', V1, V2, V3, V4} -> V1 end.
'un--startCol'(V0) -> case V0 of {'Libraries.Text.Bounded.MkBounds', V1, V2, V3, V4} -> V2 end.
'un--endLine'(V0) -> case V0 of {'Libraries.Text.Bounded.MkBounds', V1, V2, V3, V4} -> V3 end.
'un--endCol'(V0) -> case V0 of {'Libraries.Text.Bounded.MkBounds', V1, V2, V3, V4} -> V4 end.
