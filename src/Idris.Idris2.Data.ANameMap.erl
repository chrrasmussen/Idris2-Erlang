-module('Idris.Idris2.Data.ANameMap').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--case block in addToHier-3200'/6,
  'case--addToHier-3170'/5,
  'case--addToHier,update-3120'/8,
  'case--case block in lookupName-3055'/5,
  'case--case block in lookupName-3013'/4,
  'case--lookupName-3000'/4,
  'nested--2751-3096--in--un--update'/6,
  'nested--2971-3290--in--un--insertFrom'/6,
  'nested--2949-3267--in--un--fromList\x{27}'/3,
  'un--toList'/2,
  'un--merge'/3,
  'un--lookupName'/3,
  'un--lookupExact'/3,
  'un--fromList'/2,
  'un--empty'/1,
  'un--addToHier'/4,
  'un--addName'/4
]).
'case--case block in addToHier-3200'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> ('Idris.Idris2.Data.StringMap':'un--insert'('erased', V4, [{'Idris.Builtin.MkPair', V2, V3} | []], V1)) end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V6) -> ('Idris.Idris2.Data.StringMap':'un--insert'('erased', V4, ('nested--2751-3096--in--un--update'('erased', V3, V1, V2, V3, V6)), V1)) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--addToHier-3170'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> V2 end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V5) -> ('case--case block in addToHier-3200'('erased', V2, V3, V1, V5, ('Idris.Idris2.Data.StringMap':'un--lookup'('erased', V5, V2)))) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--addToHier,update-3120'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V7 of 0 -> [{'Idris.Builtin.MkPair', V3, V6} | V5]; 1 -> [V4 | ('nested--2751-3096--in--un--update'('erased', V1, V2, V3, V6, V5))]; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in lookupName-3055'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> [] end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V5) -> ('Idris.Idris2.Data.List':'un--filter'('erased', fun (V6) -> ('Idris.Idris2.Core.Name':'un--matches'(V2, ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V6)))) end, V5)) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in lookupName-3013'(V0, V1, V2, V3) -> case V3 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> [] end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V4) -> [{'Idris.Builtin.MkPair', V2, V4} | []] end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--lookupName-3000'(V0, V1, V2, V3) -> case V3 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> ('case--case block in lookupName-3013'('erased', V1, V2, ('un--lookupExact'('erased', V2, V1)))) end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V4) -> ('case--case block in lookupName-3055'('erased', V1, V2, V4, ('Idris.Idris2.Data.StringMap':'un--lookup'('erased', V4, case V1 of {'Idris.Data.ANameMap.MkANameMap', E1, E2} -> (fun (V5, V6) -> V6 end(E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)))) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--2751-3096--in--un--update'(V0, V1, V2, V3, V4, V5) -> case V5 of [] -> [{'Idris.Builtin.MkPair', V3, V4} | []]; [E0 | E1] -> (fun (V6, V7) -> ('case--addToHier,update-3120'('erased', V1, V2, V3, V6, V7, V4, ('Idris.Idris2.Core.Name':'dn--un--==_Eq__Name'(V3, ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V6)))))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--2971-3290--in--un--insertFrom'(V0, V1, V2, V3, V4, V5) -> case V4 of [] -> V5; [E0 | E1] -> (fun (V6, V7) -> case V6 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V8, V9) -> ('nested--2971-3290--in--un--insertFrom'('erased', V1, V2, V3, V7, ('un--addName'('erased', V8, V9, V5)))) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--2949-3267--in--un--fromList\x{27}'(V0, V1, V2) -> case V2 of [] -> V1; [E0 | E1] -> (fun (V3, V4) -> case V3 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V5, V6) -> ('nested--2949-3267--in--un--fromList\x{27}'('erased', ('un--addName'('erased', V5, V6, V1)), V4)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--toList'(V0, V1) -> ('Idris.Idris2.Data.NameMap':'un--toList'('erased', case V1 of {'Idris.Data.ANameMap.MkANameMap', E0, E1} -> (fun (V2, V3) -> V2 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)).
'un--merge'(V0, V1, V2) -> case V1 of {'Idris.Data.ANameMap.MkANameMap', E0, E1} -> (fun (V3, V4) -> ('nested--2971-3290--in--un--insertFrom'('erased', V4, V3, V2, ('Idris.Idris2.Data.NameMap':'un--toList'('erased', V3)), V2)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lookupName'(V0, V1, V2) -> ('case--lookupName-3000'('erased', V2, V1, ('Idris.Idris2.Core.Name':'un--userNameRoot'(V1)))).
'un--lookupExact'(V0, V1, V2) -> ('Idris.Idris2.Data.NameMap':'un--lookup'('erased', V1, case V2 of {'Idris.Data.ANameMap.MkANameMap', E0, E1} -> (fun (V3, V4) -> V3 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)).
'un--fromList'(V0, V1) -> ('nested--2949-3267--in--un--fromList\x{27}'('erased', ('un--empty'('erased')), V1)).
'un--empty'(V0) -> {'Idris.Data.ANameMap.MkANameMap', ('Idris.Idris2.Data.NameMap':'un--empty'('erased')), ('Idris.Idris2.Data.StringMap':'un--empty'('erased'))}.
'un--addToHier'(V0, V1, V2, V3) -> ('case--addToHier-3170'('erased', V2, V3, V1, ('Idris.Idris2.Core.Name':'un--userNameRoot'(V1)))).
'un--addName'(V0, V1, V2, V3) -> case V3 of {'Idris.Data.ANameMap.MkANameMap', E0, E1} -> (fun (V4, V5) -> begin (V6 = ('Idris.Idris2.Data.NameMap':'un--insert'('erased', V1, V2, V4))), begin (V7 = ('un--addToHier'('erased', V1, V2, V5))), {'Idris.Data.ANameMap.MkANameMap', V6, V7} end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
