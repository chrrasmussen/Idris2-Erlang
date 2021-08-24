-module('Idris.Idris2.Data.Fuel').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--limit'/1,
  'un--forever'/0
]).
'un--limit'(V0) -> case V0 of 0 -> {'Idris.Data.Fuel.Dry'}; _ -> begin (V1 = (V0 - 1)), {'Idris.Data.Fuel.More', fun () -> ('un--limit'(V1)) end} end end.
'un--forever'() -> {'Idris.Data.Fuel.More', fun () -> ('un--forever'()) end}.
