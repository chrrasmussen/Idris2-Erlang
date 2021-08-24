-module('Idris.Idris2.Libraries.Data.ANameMap').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--addToHier-8913'/4,
  'case--lookupName-8747'/3,
  'nested--3370-8842--in--un--update'/5,
  'nested--3585-9030--in--un--insertFrom'/5,
  'nested--3561-9006--in--un--fromList\x{27}'/2,
  'un--toList'/1,
  'un--merge'/2,
  'un--lookupName'/2,
  'un--lookupExact'/2,
  'un--fromList'/1,
  'un--empty'/0,
  'un--addToHier'/3,
  'un--addName'/3
]).
'case--addToHier-8913'(V0, V1, V2, V3) -> case V3 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> V1 end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V4) -> case ('Idris.Idris2.Libraries.Data.StringMap':'un--lookup'(V4, V1)) of {'Idris.Prelude.Types.Nothing'} -> (fun () -> ('Idris.Idris2.Libraries.Data.StringMap':'un--insert'(V4, [{'Idris.Builtin.MkPair', V2, V0} | []], V1)) end()); {'Idris.Prelude.Types.Just', E1} -> (fun (V5) -> ('Idris.Idris2.Libraries.Data.StringMap':'un--insert'(V4, ('nested--3370-8842--in--un--update'(V0, V1, V2, V0, V5)), V1)) end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--lookupName-8747'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> case ('un--lookupExact'(V1, V0)) of {'Idris.Prelude.Types.Nothing'} -> (fun () -> [] end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V3) -> [{'Idris.Builtin.MkPair', V1, V3} | []] end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); {'Idris.Prelude.Types.Just', E1} -> (fun (V4) -> case ('Idris.Idris2.Libraries.Data.StringMap':'un--lookup'(V4, case V0 of {'Idris.Libraries.Data.ANameMap.MkANameMap', E3, E4} -> (fun (V5, V6) -> V6 end(E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) of {'Idris.Prelude.Types.Nothing'} -> (fun () -> [] end()); {'Idris.Prelude.Types.Just', E2} -> (fun (V7) -> ('Idris.Idris2.Data.List':'un--filter'(fun (V8) -> ('Idris.Idris2.Core.Name':'un--matches'(V1, ('Idris.Idris2.Builtin':'un--fst'(V8)))) end, V7)) end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--3370-8842--in--un--update'(V0, V1, V2, V3, V4) -> case V4 of [] -> [{'Idris.Builtin.MkPair', V2, V3} | []]; [E0 | E1] -> (fun (V5, V6) -> case ('Idris.Idris2.Core.Name':'dn--un--==_Eq_Name'(V2, ('Idris.Idris2.Builtin':'un--fst'(V5)))) of 1 -> [{'Idris.Builtin.MkPair', V2, V3} | V6]; 0 -> [V5 | ('nested--3370-8842--in--un--update'(V0, V1, V2, V3, V6))]; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--3585-9030--in--un--insertFrom'(V0, V1, V2, V3, V4) -> case V3 of [] -> V4; [E0 | E1] -> (fun (V5, V6) -> case V5 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V7, V8) -> ('nested--3585-9030--in--un--insertFrom'(V0, V1, V2, V6, ('un--addName'(V7, V8, V4)))) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--3561-9006--in--un--fromList\x{27}'(V0, V1) -> case V1 of [] -> V0; [E0 | E1] -> (fun (V2, V3) -> case V2 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V4, V5) -> ('nested--3561-9006--in--un--fromList\x{27}'(('un--addName'(V4, V5, V0)), V3)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--toList'(V0) -> ('Idris.Idris2.Libraries.Data.NameMap':'un--toList'(case V0 of {'Idris.Libraries.Data.ANameMap.MkANameMap', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)).
'un--merge'(V0, V1) -> case V0 of {'Idris.Libraries.Data.ANameMap.MkANameMap', E0, E1} -> (fun (V2, V3) -> ('nested--3585-9030--in--un--insertFrom'(V3, V2, V1, ('Idris.Idris2.Libraries.Data.NameMap':'un--toList'(V2)), V1)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lookupName'(V0, V1) -> ('case--lookupName-8747'(V1, V0, ('Idris.Idris2.Core.Name':'un--userNameRoot'(V0)))).
'un--lookupExact'(V0, V1) -> ('Idris.Idris2.Libraries.Data.NameMap':'un--lookup'(V0, case V1 of {'Idris.Libraries.Data.ANameMap.MkANameMap', E0, E1} -> (fun (V2, V3) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)).
'un--fromList'(V0) -> ('nested--3561-9006--in--un--fromList\x{27}'(('un--empty'()), V0)).
'un--empty'() -> {'Idris.Libraries.Data.ANameMap.MkANameMap', ('Idris.Idris2.Libraries.Data.NameMap':'un--empty'()), ('Idris.Idris2.Libraries.Data.StringMap':'un--empty'())}.
'un--addToHier'(V0, V1, V2) -> ('case--addToHier-8913'(V1, V2, V0, ('Idris.Idris2.Core.Name':'un--userNameRoot'(V0)))).
'un--addName'(V0, V1, V2) -> case V2 of {'Idris.Libraries.Data.ANameMap.MkANameMap', E0, E1} -> (fun (V3, V4) -> begin (V5 = ('Idris.Idris2.Libraries.Data.NameMap':'un--insert'(V0, V1, V3))), begin (V6 = ('un--addToHier'(V0, V1, V4))), {'Idris.Libraries.Data.ANameMap.MkANameMap', V5, V6} end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
