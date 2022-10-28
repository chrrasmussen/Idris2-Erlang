-module('Idris.Idris2.Core.Unify.UnifyResult').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.namesSolved'/1,
  'un--.holesSolved'/1,
  'un--.constraints'/1,
  'un--.addLazy'/1,
  'un--namesSolved'/1,
  'un--holesSolved'/1,
  'un--constraints'/1,
  'un--addLazy'/1
]).
'un--.namesSolved'(V0) -> case V0 of {'Core.Unify.MkUnifyResult', V1, V2, V3, V4} -> V3 end.
'un--.holesSolved'(V0) -> case V0 of {'Core.Unify.MkUnifyResult', V1, V2, V3, V4} -> V2 end.
'un--.constraints'(V0) -> case V0 of {'Core.Unify.MkUnifyResult', V1, V2, V3, V4} -> V1 end.
'un--.addLazy'(V0) -> case V0 of {'Core.Unify.MkUnifyResult', V1, V2, V3, V4} -> V4 end.
'un--namesSolved'(V0) -> case V0 of {'Core.Unify.MkUnifyResult', V1, V2, V3, V4} -> V3 end.
'un--holesSolved'(V0) -> case V0 of {'Core.Unify.MkUnifyResult', V1, V2, V3, V4} -> V2 end.
'un--constraints'(V0) -> case V0 of {'Core.Unify.MkUnifyResult', V1, V2, V3, V4} -> V1 end.
'un--addLazy'(V0) -> case V0 of {'Core.Unify.MkUnifyResult', V1, V2, V3, V4} -> V4 end.
