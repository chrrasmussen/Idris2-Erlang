-module('Idris.Idris2.Erlang.Types.Map').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--values'/1,
  'un--toAnyMap'/1,
  'un--size'/1,
  'un--lookup'/4,
  'un--keys'/1,
  'un--insert'/4,
  'un--get'/3,
  'un--entries'/1,
  'un--empty'/0,
  'un--delete'/3
]).
'un--values'(V0) -> ('erlang':'apply'('maps', 'values', [V0 | []])).
'un--toAnyMap'(V0) -> V0.
'un--size'(V0) -> begin (V1 = ('erlang':'apply'('maps', 'size', [V0 | []]))), ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V1)) end.
'un--lookup'(V0, V1, V2, V3) -> ('Idris.Idris2.Erlang.Decode':'un--erlDecodeMay'({'Erlang.Types.ETErlMapSubset', {'Erlang.Types.EMTNil'}}, ('Idris.Idris2.Erlang.Decode':'un--mapEntry'(V1, V2)), V3)).
'un--keys'(V0) -> ('erlang':'apply'('maps', 'keys', [V0 | []])).
'un--insert'(V0, V1, V2, V3) -> ('erlang':'apply'('maps', 'put', [V1 | [V2 | [V3 | []]]])).
'un--get'(V0, V1, V2) -> begin (V3 = ('erlang':'apply'('maps', 'get', [V0 | [V1 | []]]))), V3 end.
'un--entries'(V0) -> begin (V1 = ('erlang':'apply'('maps', 'to_list', [V0 | []]))), ((begin (V9 = fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V7, V8)) end end end end), fun (V10) -> fun (V11) -> ((((V9('erased'))('erased'))(V10))(V11)) end end end(fun (V2) -> case V2 of {E0, E1} -> (fun (V3, V4) -> {'Builtin.MkPair', V3, V4} end(E0, E1)) end end))(V1)) end.
'un--empty'() -> ('erlang':'apply'('maps', 'new', [])).
'un--delete'(V0, V1, V2) -> ('erlang':'apply'('maps', 'remove', [V1 | [V2 | []]])).
