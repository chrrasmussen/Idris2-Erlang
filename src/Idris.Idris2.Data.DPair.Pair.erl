-module('Idris.Idris2.Data.DPair.Pair').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--choice'/1
]).
'un--choice'(V0) -> {'Builtin.DPair.MkDPair', fun (V1) -> case (V0(V1)) of {'Builtin.DPair.MkDPair', V2, V3} -> V2 end end, fun (V4) -> case (V0(V4)) of {'Builtin.DPair.MkDPair', V5, V6} -> V6 end end}.
