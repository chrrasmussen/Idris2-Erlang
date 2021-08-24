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
'un--systemCmd'(V0, V1) -> begin (V2 = ('erlang':'apply'('os', 'cmd', [('unicode':'characters_to_list'(V0)) | []]))), case V2 of E0 -> (fun (V3) -> V3 end((fun (V4) -> ('unicode':'characters_to_binary'(V4)) end(E0)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.
'un--setupTerm'(V0) -> 0.
'un--getTermLines'(V0) -> begin (V1 = ('un--systemCmd'(<<"tput lines"/utf8>>, V0))), ('Idris.Idris2.Prelude.Cast':'dn--un--cast_Cast_String_Int'(('Idris.Idris2.Data.String':'un--trim'(V1)))) end.
'un--getTermCols'(V0) -> begin (V1 = ('un--systemCmd'(<<"tput cols"/utf8>>, V0))), ('Idris.Idris2.Prelude.Cast':'dn--un--cast_Cast_String_Int'(('Idris.Idris2.Data.String':'un--trim'(V1)))) end.
