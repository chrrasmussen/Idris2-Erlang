-module('Idris.Idris2.Libraries.Data.List1').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--2806-1509--in--un--go'/4,
  'un--unsnoc'/1
]).
'nested--2806-1509--in--un--go'(V0, V1, V2, V3) -> case V3 of [] -> {'Builtin.MkPair', [], V2}; [E0 | E1] -> (fun (V4, V5) -> case ('nested--2806-1509--in--un--go'(V0, V1, V4, V5)) of {'Builtin.MkPair', V6, V7} -> {'Builtin.MkPair', [V2 | V6], V7} end end(E0, E1)) end.
'un--unsnoc'(V0) -> case V0 of {'Data.List1.:::', V1, V2} -> ('nested--2806-1509--in--un--go'(V1, V2, V1, V2)) end.
