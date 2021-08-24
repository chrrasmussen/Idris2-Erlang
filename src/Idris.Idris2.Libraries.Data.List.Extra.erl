-module('Idris.Idris2.Libraries.Data.List.Extra').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--diffBy-2875'/5,
  'case--splitAfter-2668'/3,
  'nested--3446-3054--in--un--go'/5,
  'un--zipMaybe'/2,
  'un--splitAfter'/2,
  'un--sortedNub'/2,
  'un--minimum'/2,
  'un--groupWith'/3,
  'un--groupBy'/2,
  'un--groupAllWith'/3,
  'un--group'/2,
  'un--findBy\x{27}'/2,
  'un--findBy'/2,
  'un--elemAt'/2,
  'un--diffBy'/3,
  'un--dedup'/2,
  'un--breakAfter'/2
]).
'case--diffBy-2875'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V5, V6) -> case V6 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V7, V8) -> begin (V9 = ('Idris.Idris2.Prelude.Types.List':'un--++'(V5, V8))), case V7 of {'Idris.Prelude.Types.Just', E4} -> (fun (V10) -> ('un--diffBy'(V3, V1, V9)) end(E4)); {'Idris.Prelude.Types.Nothing'} -> (fun () -> [V0 | ('un--diffBy'(V3, V1, V9))] end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--splitAfter-2668'(V0, V1, V2) -> case V2 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V3, V4) -> case V4 of [] -> ('Idris.Idris2.Data.List1':'un--singleton'(V3)); [E2 | E3] -> (fun (V5, V6) -> ('Idris.Idris2.Data.List1':'un--cons'(V3, ('un--splitAfter'(V1, V4)))) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--3446-3054--in--un--go'(V0, V1, V2, V3, V4) -> case V4 of [] -> {'Idris.Builtin.MkPair', ('Idris.Idris2.Data.List1':'un--singleton'(V3)), []}; [E0 | E1] -> (fun (V5, V6) -> case ('nested--3446-3054--in--un--go'(V0, V1, V2, V5, V6)) of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V7, V8) -> case ((V2(V3))(V5)) of 1 -> {'Idris.Builtin.MkPair', ('Idris.Idris2.Data.List1':'un--cons'(V3, V7)), V8}; 0 -> {'Idris.Builtin.MkPair', ('Idris.Idris2.Data.List1':'un--singleton'(V3)), [V7 | V8]}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--zipMaybe'(V0, V1) -> case V0 of [] -> case V1 of [] -> ('Idris.Idris2.Prelude.Types':'dn--un--pure_Applicative_Maybe'([])); _ -> {'Idris.Prelude.Types.Nothing'} end; [E0 | E1] -> (fun (V2, V3) -> case V1 of [E2 | E3] -> (fun (V4, V5) -> ('Idris.Idris2.Prelude.Interfaces':'un--<$>'(fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V8, V9)) end end end end, fun (V10) -> [{'Idris.Builtin.MkPair', V2, V4} | V10] end, ('un--zipMaybe'(V3, V5)))) end(E2, E3)); _ -> {'Idris.Prelude.Types.Nothing'} end end(E0, E1)); _ -> {'Idris.Prelude.Types.Nothing'} end.
'un--splitAfter'(V0, V1) -> ('case--splitAfter-2668'(V1, V0, ('un--breakAfter'(V0, V1)))).
'un--sortedNub'(V0, V1) -> ('un--dedup'(case V0 of {'Idris.Prelude.EqOrd.MkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9) -> V2 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, ('Idris.Idris2.Data.List':'un--sort'(V0, V1)))).
'un--minimum'(V0, V1) -> case V1 of [E0 | E1] -> (fun (V2, V3) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(fun (V4) -> fun (V5) -> case V0 of {'Idris.Prelude.EqOrd.MkOrd', E2, E3, E4, E5, E6, E7, E8, E9} -> (fun (V6, V7, V8, V9, V10, V11, V12, V13) -> ((V13(V4))(V5)) end(E2, E3, E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V2, V3)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--groupWith'(V0, V1, V2) -> ('un--groupBy'(fun (V3) -> fun (V4) -> case V0 of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V5, V6) -> ((V5((V1(V3))))((V1(V4)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V2)).
'un--groupBy'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> case ('nested--3446-3054--in--un--go'(V2, V3, V0, V2, V3)) of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V4, V5) -> [V4 | V5] end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--groupAllWith'(V0, V1, V2) -> ('un--groupWith'(case V0 of {'Idris.Prelude.EqOrd.MkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V3, V4, V5, V6, V7, V8, V9, V10) -> V3 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V1, ('Idris.Idris2.Data.List':'un--sortBy'(fun (V11) -> fun (V12) -> ('Idris.Idris2.Prelude.EqOrd':'un--comparing'(V0, V1, V11, V12)) end end, V2)))).
'un--group'(V0, V1) -> ('un--groupBy'(fun (V2) -> fun (V3) -> case V0 of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V4, V5) -> ((V4(V2))(V3)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end, V1)).
'un--findBy\x{27}'(V0, V1) -> case V1 of [] -> {'Idris.Builtin.MkPair', [], {'Idris.Builtin.MkPair', {'Idris.Prelude.Types.Nothing'}, []}}; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of 1 -> {'Idris.Builtin.MkPair', [], {'Idris.Builtin.MkPair', {'Idris.Prelude.Types.Just', V2}, V3}}; 0 -> case ('un--findBy\x{27}'(V0, V3)) of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V4, V5) -> case V5 of {'Idris.Builtin.MkPair', E4, E5} -> (fun (V6, V7) -> {'Idris.Builtin.MkPair', [V2 | V4], {'Idris.Builtin.MkPair', V6, V7}} end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--findBy'(V0, V1) -> case V1 of [] -> {'Idris.Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of {'Idris.Prelude.Types.Nothing'} -> (fun () -> ('un--findBy'(V0, V3)) end()); {'Idris.Prelude.Types.Just', E2} -> (fun (V4) -> ('Idris.Idris2.Prelude.Types':'dn--un--pure_Applicative_Maybe'(V4)) end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--elemAt'(V0, V1) -> case V0 of [] -> {'Idris.Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V2, V3) -> case V1 of 0 -> {'Idris.Prelude.Types.Just', V2}; _ -> begin (V4 = (V1 - 1)), ('un--elemAt'(V3, V4)) end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--diffBy'(V0, V1, V2) -> case V1 of [] -> []; [E0 | E1] -> (fun (V3, V4) -> ('case--diffBy-2875'(V3, V4, V2, V0, ('un--findBy\x{27}'((V0(V3)), V2)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--dedup'(V0, V1) -> case V1 of [E0 | E1] -> (fun (V2, V3) -> case V3 of [E2 | E3] -> (fun (V4, V5) -> begin (V6 = [V4 | V5]), case case V0 of {'Idris.Prelude.EqOrd.MkEq', E4, E5} -> (fun (V7, V8) -> ((V7(V2))(V4)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of 1 -> ('un--dedup'(V0, V6)); 0 -> [V2 | ('un--dedup'(V0, V6))]; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E2, E3)); _ -> V1 end end(E0, E1)); _ -> V1 end.
'un--breakAfter'(V0, V1) -> case V1 of [] -> {'Idris.Builtin.MkPair', [], []}; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of 1 -> {'Idris.Builtin.MkPair', [V2 | []], V3}; 0 -> case ('un--breakAfter'(V0, V3)) of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V4, V5) -> {'Idris.Builtin.MkPair', [V2 | V4], V5} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
