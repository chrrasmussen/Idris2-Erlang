-module('Idris.Idris2.Libraries.Utils.Term').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--systemCmd'/2,
  'un--setupTerm'/1,
  'un--getTermLines'/1,
  'un--getTermCols'/1
]).
'un--systemCmd'(V0, V1) -> begin (V2 = ('erlang':'apply'('os', 'cmd', [('unicode':'characters_to_list'(V0)) | []]))), case V2 of E0 -> (fun (V3) -> V3 end((fun (V4) -> ('unicode':'characters_to_binary'(V4)) end(E0)))) end end.
'un--setupTerm'(V0) -> {'Builtin.MkUnit'}.
'un--getTermLines'(V0) -> begin (V1 = ('un--systemCmd'(<<"tput lines"/utf8>>, V0))), begin (V4 = case ('string':'to_integer'(('Idris.Idris2.Data.String':'un--trim'(V1)))) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V2, V3) -> case ('string':'is_empty'(V3)) of 'true' -> V2; _ -> 0 end end(E0, E1)); _ -> 0 end), case ((V4 band 9223372036854775808) =/= 0) of 'true' -> (V4 bor -9223372036854775808); _ -> (V4 band 9223372036854775807) end end end.
'un--getTermCols'(V0) -> begin (V1 = ('un--systemCmd'(<<"tput cols"/utf8>>, V0))), begin (V4 = case ('string':'to_integer'(('Idris.Idris2.Data.String':'un--trim'(V1)))) of {E0, E1} when (erlang:'is_integer'(E0)) -> (fun (V2, V3) -> case ('string':'is_empty'(V3)) of 'true' -> V2; _ -> 0 end end(E0, E1)); _ -> 0 end), case ((V4 band 9223372036854775808) =/= 0) of 'true' -> (V4 bor -9223372036854775808); _ -> (V4 band 9223372036854775807) end end end.
