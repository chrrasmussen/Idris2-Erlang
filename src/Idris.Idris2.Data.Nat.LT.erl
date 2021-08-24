-module('Idris.Idris2.Data.Nat.LT').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--view'/1,
  'un--ltZero'/0
]).
'un--view'(V0) -> case V0 of 0 -> ('erlang':'throw'("Nat case not covered")); _ -> begin (V1 = (V0 - 1)), case V1 of 0 -> {'Idris.Data.Nat.LT.LTZero'}; _ -> {'Idris.Data.Nat.LT.LTSucc', V1} end end end.
'un--ltZero'() -> (1 + 0).
