-module('Idris.Idris2.Libraries.Data.List.Extra').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--suffixOfBy-6132'/4,
  'case--diffBy-5542'/5,
  'case--splitAfter-5295'/3,
  'nested--4158-6015--in--un--go'/4,
  'nested--3887-5754--in--un--go'/5,
  'nested--4158-6014--in--un--chips'/3,
  'un--zipMaybe'/2,
  'un--suffixOfBy'/3,
  'un--splitAfter'/2,
  'un--sortedNub'/2,
  'un--prefixOfBy'/3,
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
'case--suffixOfBy-6132'(V0, V1, V2, V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> {'Prelude.Types.Just', {'Builtin.MkPair', ('Idris.Idris2.Prelude.Types.List':'un--reverse'(V5)), ('Idris.Idris2.Prelude.Types.List':'un--reverse'(V4))}} end.
'case--diffBy-5542'(V0, V1, V2, V3, V4) -> case V4 of {'Builtin.MkPair', V5, V6} -> case V6 of {'Builtin.MkPair', V7, V8} -> begin (V9 = ('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(V5, V8))), case V7 of {'Prelude.Types.Just', V10} -> ('un--diffBy'(V3, V1, V9)); {'Prelude.Types.Nothing'} -> [V0 | ('un--diffBy'(V3, V1, V9))] end end end end.
'case--splitAfter-5295'(V0, V1, V2) -> case V2 of {'Builtin.MkPair', V3, V4} -> case V4 of [] -> ('Idris.Idris2.Data.List1':'un--singleton'(V3)); [E0 | E1] -> (fun (V5, V6) -> ('Idris.Idris2.Data.List1':'un--cons'(V3, ('un--splitAfter'(V1, V4)))) end(E0, E1)) end end.
'nested--4158-6015--in--un--go'(V0, V1, V2, V3) -> case V2 of [] -> {'Prelude.Types.Just', {'Builtin.MkPair', ('nested--4158-6014--in--un--chips'(V0, V1, [])), V3}}; _ -> case V3 of [] -> {'Prelude.Types.Nothing'}; _ -> case V2 of [E0 | E1] -> (fun (V4, V5) -> case V3 of [E2 | E3] -> (fun (V6, V7) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(((V0(V4))(V6)), fun (V8) -> ('nested--4158-6015--in--un--go'(V0, {'Prelude.Basics.:<', V1, V8}, V5, V7)) end)) end(E2, E3)) end end(E0, E1)) end end end.
'nested--3887-5754--in--un--go'(V0, V1, V2, V3, V4) -> case V4 of [] -> {'Builtin.MkPair', ('Idris.Idris2.Data.List1':'un--singleton'(V3)), []}; [E0 | E1] -> (fun (V5, V6) -> case ('nested--3887-5754--in--un--go'(V0, V1, V2, V5, V6)) of {'Builtin.MkPair', V7, V8} -> case ((V2(V3))(V5)) of 1 -> {'Builtin.MkPair', ('Idris.Idris2.Data.List1':'un--cons'(V3, V7)), V8}; 0 -> {'Builtin.MkPair', ('Idris.Idris2.Data.List1':'un--singleton'(V3)), [V7 | V8]} end end end(E0, E1)) end.
'nested--4158-6014--in--un--chips'(V0, V1, V2) -> case V1 of {'Prelude.Basics.Lin'} -> V2; {'Prelude.Basics.:<', V3, V4} -> ('nested--4158-6014--in--un--chips'(V0, V3, [V4 | V2])) end.
'un--zipMaybe'(V0, V1) -> case V0 of [] -> case V1 of [] -> {'Prelude.Types.Just', []}; _ -> {'Prelude.Types.Nothing'} end; [E0 | E1] -> (fun (V2, V3) -> case V1 of [E2 | E3] -> (fun (V4, V5) -> ((begin (V11 = fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_Maybe'(V9, V10)) end end end end), fun (V12) -> fun (V13) -> ((((V11('erased'))('erased'))(V12))(V13)) end end end(fun (V6) -> [{'Builtin.MkPair', V2, V4} | V6] end))(('un--zipMaybe'(V3, V5)))) end(E2, E3)); _ -> {'Prelude.Types.Nothing'} end end(E0, E1)); _ -> {'Prelude.Types.Nothing'} end.
'un--suffixOfBy'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('un--prefixOfBy'(V0, ('Idris.Idris2.Prelude.Types.List':'un--reverse'(V1)), ('Idris.Idris2.Prelude.Types.List':'un--reverse'(V2)))), fun (V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> {'Prelude.Types.Just', {'Builtin.MkPair', ('Idris.Idris2.Prelude.Types.List':'un--reverse'(V5)), ('Idris.Idris2.Prelude.Types.List':'un--reverse'(V4))}} end end)).
'un--splitAfter'(V0, V1) -> ('case--splitAfter-5295'(V1, V0, ('un--breakAfter'(V0, V1)))).
'un--sortedNub'(V0, V1) -> ('un--dedup'(case V0 of {'Prelude.EqOrd.MkOrd', V2, V3, V4, V5, V6, V7, V8, V9} -> V2 end, ('Idris.Idris2.Data.List':'un--sort'(V0, V1)))).
'un--prefixOfBy'(V0, V1, V2) -> ('nested--4158-6015--in--un--go'(V0, {'Prelude.Basics.Lin'}, V1, V2)).
'un--minimum'(V0, V1) -> case V1 of [E0 | E1] -> (fun (V2, V3) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(fun (V4) -> fun (V5) -> case V0 of {'Prelude.EqOrd.MkOrd', V6, V7, V8, V9, V10, V11, V12, V13} -> ((V13(V4))(V5)) end end end, V2, V3)) end(E0, E1)) end.
'un--groupWith'(V0, V1, V2) -> ('un--groupBy'(fun (V3) -> fun (V4) -> case V0 of {'Prelude.EqOrd.MkEq', V5, V6} -> ((V5((V1(V3))))((V1(V4)))) end end end, V2)).
'un--groupBy'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> case ('nested--3887-5754--in--un--go'(V2, V3, V0, V2, V3)) of {'Builtin.MkPair', V4, V5} -> [V4 | V5] end end(E0, E1)) end.
'un--groupAllWith'(V0, V1, V2) -> ('un--groupWith'(case V0 of {'Prelude.EqOrd.MkOrd', V3, V4, V5, V6, V7, V8, V9, V10} -> V3 end, V1, ('Idris.Idris2.Data.List':'un--sortBy'(fun (V11) -> fun (V12) -> ('Idris.Idris2.Prelude.EqOrd':'un--comparing'(V0, V1, V11, V12)) end end, V2)))).
'un--group'(V0, V1) -> ('un--groupBy'(fun (V2) -> fun (V3) -> case V0 of {'Prelude.EqOrd.MkEq', V4, V5} -> ((V4(V2))(V3)) end end end, V1)).
'un--findBy\x{27}'(V0, V1) -> case V1 of [] -> {'Builtin.MkPair', [], {'Builtin.MkPair', {'Prelude.Types.Nothing'}, []}}; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of 1 -> {'Builtin.MkPair', [], {'Builtin.MkPair', {'Prelude.Types.Just', V2}, V3}}; 0 -> case ('un--findBy\x{27}'(V0, V3)) of {'Builtin.MkPair', V4, V5} -> case V5 of {'Builtin.MkPair', V6, V7} -> {'Builtin.MkPair', [V2 | V4], {'Builtin.MkPair', V6, V7}} end end end end(E0, E1)) end.
'un--findBy'(V0, V1) -> case V1 of [] -> {'Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of {'Prelude.Types.Nothing'} -> ('un--findBy'(V0, V3)); {'Prelude.Types.Just', V4} -> {'Prelude.Types.Just', V4} end end(E0, E1)) end.
'un--elemAt'(V0, V1) -> case V0 of [] -> {'Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V2, V3) -> case V1 of 0 -> {'Prelude.Types.Just', V2}; _ -> begin (V4 = (V1 - 1)), ('un--elemAt'(V3, V4)) end end end(E0, E1)) end.
'un--diffBy'(V0, V1, V2) -> case V1 of [] -> []; [E0 | E1] -> (fun (V3, V4) -> ('case--diffBy-5542'(V3, V4, V2, V0, ('un--findBy\x{27}'((V0(V3)), V2)))) end(E0, E1)) end.
'un--dedup'(V0, V1) -> case V1 of [E0 | E1] -> (fun (V2, V3) -> case V3 of [E2 | E3] -> (fun (V4, V5) -> begin (V6 = [V4 | V5]), case case V0 of {'Prelude.EqOrd.MkEq', V7, V8} -> ((V7(V2))(V4)) end of 1 -> ('un--dedup'(V0, V6)); 0 -> [V2 | ('un--dedup'(V0, V6))] end end end(E2, E3)); _ -> V1 end end(E0, E1)); _ -> V1 end.
'un--breakAfter'(V0, V1) -> case V1 of [] -> {'Builtin.MkPair', [], []}; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of 1 -> {'Builtin.MkPair', [V2 | []], V3}; 0 -> case ('un--breakAfter'(V0, V3)) of {'Builtin.MkPair', V4, V5} -> {'Builtin.MkPair', [V2 | V4], V5} end end end(E0, E1)) end.
