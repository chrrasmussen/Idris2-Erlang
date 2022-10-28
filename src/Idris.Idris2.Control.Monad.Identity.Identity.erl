-module('Idris.Idris2.Control.Monad.Identity.Identity').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.runIdentity'/1,
  'un--runIdentity'/1
]).
'un--.runIdentity'(V0) -> begin (V1 = V0), V1 end.
'un--runIdentity'(V0) -> begin (V1 = V0), V1 end.
