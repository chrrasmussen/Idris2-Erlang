-module('Idris.Idris2.Data.DPair.Exists.Exists').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.snd'/1,
  'un--snd'/1
]).
'un--.snd'(V0) -> begin (V1 = V0), V1 end.
'un--snd'(V0) -> begin (V1 = V0), V1 end.
