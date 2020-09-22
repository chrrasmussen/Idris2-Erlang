-module('Idris.Idris2.Erlang.Types.Map').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--get-1371'/7,
  'case--entries-1279'/4,
  'un--values'/2,
  'un--toAnyMap'/2,
  'un--size'/2,
  'un--lookup'/7,
  'un--keys'/2,
  'un--insert'/6,
  'un--get'/6,
  'un--entries'/2,
  'un--empty'/0,
  'un--delete'/4
]).
'case--get-1371'(V0, V1, V2, V3, V4, V5, V6) -> V6.
'case--entries-1279'(V0, V1, V2, V3) -> case V3 of {E0, E1} -> (fun (V4, V5) -> {'Idris.Builtin.MkPair', V4, V5} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--values'(V0, V1) -> ('erlang':'apply'('maps', 'values', [('Idris.Idris2.Builtin':'un--believe_me'('erased', 'erased', V1)) | []])).
'un--toAnyMap'(V0, V1) -> ('Idris.Idris2.Builtin':'un--believe_me'('erased', 'erased', V1)).
'un--size'(V0, V1) -> begin (V2 = ('erlang':'apply'('maps', 'size', [('Idris.Idris2.Builtin':'un--believe_me'('erased', 'erased', V1)) | []]))), V2 end.
'un--lookup'(V0, V1, V2, V3, V4, V5, V6) -> ('Idris.Idris2.Erlang.Decode':'un--erlDecodeMay'('erased', 'erased', {'Idris.Erlang.Types.ETErlMapSubset', {'Idris.Erlang.Types.EMTNil'}}, fun (V7) -> ('Idris.Idris2.Erlang.Decode':'un--mapEntry'('erased', 'erased', V3, V4, V5, V7)) end, ('Idris.Idris2.Builtin':'un--believe_me'('erased', 'erased', V6)))).
'un--keys'(V0, V1) -> ('erlang':'apply'('maps', 'keys', [('Idris.Idris2.Builtin':'un--believe_me'('erased', 'erased', V1)) | []])).
'un--insert'(V0, V1, V2, V3, V4, V5) -> ('erlang':'apply'('maps', 'put', [V3 | [V4 | [V5 | []]]])).
'un--get'(V0, V1, V2, V3, V4, V5) -> ('case--get-1371'('erased', 'erased', 'erased', V3, V5, V4, ('erlang':'apply'('maps', 'get', [V3 | [('Idris.Idris2.Builtin':'un--believe_me'('erased', 'erased', V4)) | []]])))).
'un--entries'(V0, V1) -> begin (V2 = ('erlang':'apply'('maps', 'to_list', [('Idris.Idris2.Builtin':'un--believe_me'('erased', 'erased', V1)) | []]))), ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__List'('erased', 'erased', fun (V3) -> case V3 of {E0, E1} -> (fun (V4, V5) -> {'Idris.Builtin.MkPair', V4, V5} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end, V2)) end.
'un--empty'() -> ('erlang':'apply'('maps', 'new', [])).
'un--delete'(V0, V1, V2, V3) -> ('erlang':'apply'('maps', 'remove', [V2 | [V3 | []]])).
