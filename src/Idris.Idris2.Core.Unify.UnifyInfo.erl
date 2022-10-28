-module('Idris.Idris2.Core.Unify.UnifyInfo').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.umode'/1,
  'un--.atTop'/1,
  'un--umode'/1,
  'un--atTop'/1
]).
'un--.umode'(V0) -> case V0 of {'Core.Unify.MkUnifyInfo', V1, V2} -> V2 end.
'un--.atTop'(V0) -> case V0 of {'Core.Unify.MkUnifyInfo', V1, V2} -> V1 end.
'un--umode'(V0) -> case V0 of {'Core.Unify.MkUnifyInfo', V1, V2} -> V2 end.
'un--atTop'(V0) -> case V0 of {'Core.Unify.MkUnifyInfo', V1, V2} -> V1 end.
