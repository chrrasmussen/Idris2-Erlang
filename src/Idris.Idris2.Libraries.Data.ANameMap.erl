-module('Idris.Idris2.Libraries.Data.ANameMap').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--addToHier-12806'/4,
  'case--lookupName-12615'/3,
  'nested--3786-12725--in--un--update'/5,
  'nested--4051-12960--in--un--insertFrom'/5,
  'nested--4016-12922--in--un--fromList\x{27}'/2,
  'un--toList'/1,
  'un--merge'/2,
  'un--lookupName'/2,
  'un--lookupExact'/2,
  'un--fromList'/1,
  'un--empty'/0,
  'un--addToHier'/3,
  'un--addName'/3
]).
'case--addToHier-12806'(V0, V1, V2, V3) -> case V3 of {'Prelude.Types.Nothing'} -> V1; {'Prelude.Types.Just', V4} -> case ('Idris.Idris2.Libraries.Data.UserNameMap':'un--lookup'(V4, V1)) of {'Prelude.Types.Nothing'} -> ('Idris.Idris2.Libraries.Data.UserNameMap':'un--insert'(V4, [{'Builtin.MkPair', V2, V0} | []], V1)); {'Prelude.Types.Just', V5} -> ('Idris.Idris2.Libraries.Data.UserNameMap':'un--insert'(V4, ('nested--3786-12725--in--un--update'(V0, V1, V2, V0, V5)), V1)) end end.
'case--lookupName-12615'(V0, V1, V2) -> case V2 of {'Prelude.Types.Nothing'} -> case ('un--lookupExact'(V1, V0)) of {'Prelude.Types.Nothing'} -> []; {'Prelude.Types.Just', V3} -> [{'Builtin.MkPair', V1, V3} | []] end; {'Prelude.Types.Just', V4} -> case ('Idris.Idris2.Libraries.Data.UserNameMap':'un--lookup'(V4, case V0 of {'Libraries.Data.ANameMap.MkANameMap', V5, V6} -> V6 end)) of {'Prelude.Types.Nothing'} -> []; {'Prelude.Types.Just', V7} -> ('Idris.Idris2.Prelude.Types.List':'un--filterAppend'({'Prelude.Basics.Lin'}, fun (V8) -> ('Idris.Idris2.Core.Name':'un--matches'(V1, ('Idris.Idris2.Builtin':'un--fst'(V8)))) end, V7)) end end.
'nested--3786-12725--in--un--update'(V0, V1, V2, V3, V4) -> case V4 of [] -> [{'Builtin.MkPair', V2, V3} | []]; [E0 | E1] -> (fun (V5, V6) -> case ('Idris.Idris2.Core.Name':'dn--un--==_Eq_Name'(V2, ('Idris.Idris2.Builtin':'un--fst'(V5)))) of 1 -> [{'Builtin.MkPair', V2, V3} | V6]; 0 -> [V5 | ('nested--3786-12725--in--un--update'(V0, V1, V2, V3, V6))] end end(E0, E1)) end.
'nested--4051-12960--in--un--insertFrom'(V0, V1, V2, V3, V4) -> case V3 of [] -> V4; [E0 | E1] -> (fun (V5, V6) -> case V5 of {'Builtin.MkPair', V7, V8} -> ('nested--4051-12960--in--un--insertFrom'(V0, V1, V2, V6, ('un--addName'(V7, V8, V4)))) end end(E0, E1)) end.
'nested--4016-12922--in--un--fromList\x{27}'(V0, V1) -> case V1 of [] -> V0; [E0 | E1] -> (fun (V2, V3) -> case V2 of {'Builtin.MkPair', V4, V5} -> ('nested--4016-12922--in--un--fromList\x{27}'(('un--addName'(V4, V5, V0)), V3)) end end(E0, E1)) end.
'un--toList'(V0) -> ('Idris.Idris2.Libraries.Data.NameMap':'un--toList'(case V0 of {'Libraries.Data.ANameMap.MkANameMap', V1, V2} -> V1 end)).
'un--merge'(V0, V1) -> case V0 of {'Libraries.Data.ANameMap.MkANameMap', V2, V3} -> ('nested--4051-12960--in--un--insertFrom'(V3, V2, V1, ('Idris.Idris2.Libraries.Data.NameMap':'un--toList'(V2)), V1)) end.
'un--lookupName'(V0, V1) -> ('case--lookupName-12615'(V1, V0, ('Idris.Idris2.Core.Name':'un--userNameRoot'(V0)))).
'un--lookupExact'(V0, V1) -> ('Idris.Idris2.Libraries.Data.NameMap':'un--lookup'(V0, case V1 of {'Libraries.Data.ANameMap.MkANameMap', V2, V3} -> V2 end)).
'un--fromList'(V0) -> ('nested--4016-12922--in--un--fromList\x{27}'(('un--empty'()), V0)).
'un--empty'() -> {'Libraries.Data.ANameMap.MkANameMap', ('Idris.Idris2.Libraries.Data.NameMap':'un--empty'()), ('Idris.Idris2.Libraries.Data.UserNameMap':'un--empty'())}.
'un--addToHier'(V0, V1, V2) -> ('case--addToHier-12806'(V1, V2, V0, ('Idris.Idris2.Core.Name':'un--userNameRoot'(V0)))).
'un--addName'(V0, V1, V2) -> case V2 of {'Libraries.Data.ANameMap.MkANameMap', V3, V4} -> begin (V5 = ('Idris.Idris2.Libraries.Data.NameMap':'un--insert'(V0, V1, V3))), begin (V6 = ('un--addToHier'(V0, V1, V4))), {'Libraries.Data.ANameMap.MkANameMap', V5, V6} end end end.
