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
'un--values'(V0) -> ('erlang':'apply'('maps', 'values', [('Idris.Idris2.Builtin':'un--believe_me'(V0)) | []])).
'un--toAnyMap'(V0) -> ('Idris.Idris2.Builtin':'un--believe_me'(V0)).
'un--size'(V0) -> begin (V1 = ('erlang':'apply'('maps', 'size', [('Idris.Idris2.Builtin':'un--believe_me'(V0)) | []]))), ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(V1)) end.
'un--lookup'(V0, V1, V2, V3) -> ('Idris.Idris2.Erlang.Decode':'un--erlDecodeMay'({'Idris.Erlang.Types.ETErlMapSubset', {'Idris.Erlang.Types.EMTNil'}}, fun (V4) -> ('Idris.Idris2.Erlang.Decode':'un--mapEntry'(V0, V1, V2, V4)) end, ('Idris.Idris2.Builtin':'un--believe_me'(V3)))).
'un--keys'(V0) -> ('erlang':'apply'('maps', 'keys', [('Idris.Idris2.Builtin':'un--believe_me'(V0)) | []])).
'un--insert'(V0, V1, V2, V3) -> ('erlang':'apply'('maps', 'put', [V1 | [V2 | [V3 | []]]])).
'un--get'(V0, V1, V2) -> ('erlang':'apply'('maps', 'get', [V0 | [('Idris.Idris2.Builtin':'un--believe_me'(V1)) | []]])).
'un--entries'(V0) -> begin (V1 = ('erlang':'apply'('maps', 'to_list', [('Idris.Idris2.Builtin':'un--believe_me'(V0)) | []]))), ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_List'(fun (V2) -> case V2 of {E0, E1} -> (fun (V3, V4) -> {'Idris.Builtin.MkPair', V3, V4} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end, V1)) end.
'un--empty'() -> ('erlang':'apply'('maps', 'new', [])).
'un--delete'(V0, V1, V2) -> ('erlang':'apply'('maps', 'remove', [V1 | [V2 | []]])).
