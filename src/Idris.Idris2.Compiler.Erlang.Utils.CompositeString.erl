-module('Idris.Idris2.Compiler.Erlang.Utils.CompositeString').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--3049-2558--in--un--go'/3,
  'un--flatten'/1
]).
'nested--3049-2558--in--un--go'(V0, V1, V2) -> case V1 of {'Compiler.Erlang.Utils.CompositeString.Str', V3} -> [V3 | V2]; {'Compiler.Erlang.Utils.CompositeString.Nested', V4} -> case V4 of [] -> V2; [E0 | E1] -> (fun (V5, V6) -> ('nested--3049-2558--in--un--go'(V0, {'Compiler.Erlang.Utils.CompositeString.Nested', V6}, ('nested--3049-2558--in--un--go'(V0, V5, V2)))) end(E0, E1)) end end.
'un--flatten'(V0) -> ('Idris.Idris2.Prelude.Types.List':'un--reverse'(('nested--3049-2558--in--un--go'(V0, V0, [])))).
