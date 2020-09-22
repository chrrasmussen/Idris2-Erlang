-module('Idris.Idris2.Utils.Term').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--systemCmd-1324'/2,
  'un--systemCmd'/2,
  'un--setupTerm'/1,
  'un--getTermLines'/1,
  'un--getTermCols'/1
]).
'case--systemCmd-1324'(V0, V1) -> case V1 of E0 -> (fun (V2) -> fun (V3) -> V2 end end((fun (V4) -> ('unicode':'characters_to_binary'(V4)) end(E0)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--systemCmd'(V0, V1) -> begin (V2 = ('erlang':'apply'('os', 'cmd', [('unicode':'characters_to_list'(V0)) | []]))), case V2 of E0 -> (fun (V3) -> V3 end((fun (V4) -> ('unicode':'characters_to_binary'(V4)) end(E0)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.
'un--setupTerm'(V0) -> {'Idris.Builtin.MkUnit'}.
'un--getTermLines'(V0) -> begin (V1 = ('un--systemCmd'(<<"tput lines"/utf8>>, V0))), ('Idris.Idris2.Prelude.Types':'dn--un--cast_Cast__String_Int'(('Idris.Idris2.Data.Strings':'un--trim'(V1)))) end.
'un--getTermCols'(V0) -> begin (V1 = ('un--systemCmd'(<<"tput cols"/utf8>>, V0))), ('Idris.Idris2.Prelude.Types':'dn--un--cast_Cast__String_Int'(('Idris.Idris2.Data.Strings':'un--trim'(V1)))) end.
