-module('Idris.Idris2.Data.Either').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--decompress-1270'/3,
  'un--rights'/3,
  'un--rightInjective'/5,
  'un--pushInto'/5,
  'un--partitionEithers'/3,
  'un--mirror'/3,
  'un--maybeToEither'/4,
  'un--lefts'/3,
  'un--leftInjective'/5,
  'un--isRight'/3,
  'un--isLeft'/3,
  'un--getRight'/3,
  'un--getLeft'/3,
  'un--fromEither'/2,
  'un--eitherToMaybe'/3,
  'un--decompress'/2,
  'un--compressRights'/4,
  'un--compressLefts'/4,
  'un--compress'/3,
  'un--bimap'/7
]).
'case--decompress-1270'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Left', E0} -> (fun (V3) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__List'('erased', 'erased', fun (V4) -> {'Idris.Prelude.Types.Left', V4} end, ('Idris.Idris2.Data.List1':'un--forget'('erased', V3)))) end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V5) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__List'('erased', 'erased', fun (V6) -> {'Idris.Prelude.Types.Right', V6} end, ('Idris.Idris2.Data.List1':'un--forget'('erased', V5)))) end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--rights'(V0, V1, V2) -> case V2 of [] -> []; [E0 | E1] -> (fun (V3, V4) -> case V3 of {'Idris.Prelude.Types.Left', E2} -> (fun (V5) -> ('un--rights'('erased', 'erased', V4)) end(E2)); {'Idris.Prelude.Types.Right', E3} -> (fun (V6) -> [V6 | ('un--rights'('erased', 'erased', V4))] end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--rightInjective'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Builtin.Refl'} -> (fun () -> {'Idris.Builtin.Refl'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--pushInto'(V0, V1, V2, V3, V4) -> ('un--bimap'('erased', 'erased', 'erased', 'erased', fun (V5) -> {'Idris.Builtin.MkPair', V3, V5} end, fun (V6) -> {'Idris.Builtin.MkPair', V3, V6} end, V4)).
'un--partitionEithers'(V0, V1, V2) -> {'Idris.Builtin.MkPair', ('un--lefts'('erased', 'erased', V2)), ('un--rights'('erased', 'erased', V2))}.
'un--mirror'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Left', E0} -> (fun (V3) -> {'Idris.Prelude.Types.Right', V3} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V4) -> {'Idris.Prelude.Types.Left', V4} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--maybeToEither'(V0, V1, V2, V3) -> case V3 of {'Idris.Prelude.Types.Just', E0} -> (fun (V4) -> {'Idris.Prelude.Types.Right', V4} end(E0)); {'Idris.Prelude.Types.Nothing'} -> (fun () -> {'Idris.Prelude.Types.Left', (V2())} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lefts'(V0, V1, V2) -> case V2 of [] -> []; [E0 | E1] -> (fun (V3, V4) -> case V3 of {'Idris.Prelude.Types.Left', E2} -> (fun (V5) -> [V5 | ('un--lefts'('erased', 'erased', V4))] end(E2)); {'Idris.Prelude.Types.Right', E3} -> (fun (V6) -> ('un--lefts'('erased', 'erased', V4)) end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--leftInjective'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Builtin.Refl'} -> (fun () -> {'Idris.Builtin.Refl'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--isRight'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Left', E0} -> (fun (V3) -> 1 end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V4) -> 0 end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--isLeft'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Left', E0} -> (fun (V3) -> 0 end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V4) -> 1 end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--getRight'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Right', E0} -> (fun (V3) -> {'Idris.Prelude.Types.Just', V3} end(E0)); _ -> {'Idris.Prelude.Types.Nothing'} end.
'un--getLeft'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Left', E0} -> (fun (V3) -> {'Idris.Prelude.Types.Just', V3} end(E0)); _ -> {'Idris.Prelude.Types.Nothing'} end.
'un--fromEither'(V0, V1) -> case V1 of {'Idris.Prelude.Types.Left', E0} -> (fun (V2) -> V2 end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V3) -> V3 end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--eitherToMaybe'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Left', E0} -> (fun (V3) -> {'Idris.Prelude.Types.Nothing'} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V4) -> {'Idris.Prelude.Types.Just', V4} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--decompress'(V0, V1) -> ('Idris.Idris2.Prelude.Interfaces':'un--concatMap'('erased', 'erased', 'erased', {'Idris.Builtin.MkPair', {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable__List'('erased', 'erased', V4, V5, V6)) end end end end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable__List'('erased', 'erased', V9, V10, V11)) end end end end end}, {'Idris.Prelude.Interfaces.dn--un--__mkMonoid', fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.Types':'dn--un--<+>_Semigroup__(List $a)'('erased', V12, V13)) end end, ('Idris.Idris2.Prelude.Types':'dn--un--neutral_Monoid__(List $a)'('erased'))}}, fun (V14) -> case V14 of {'Idris.Prelude.Types.Left', E0} -> (fun (V15) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__List'('erased', 'erased', fun (V16) -> {'Idris.Prelude.Types.Left', V16} end, ('Idris.Idris2.Data.List1':'un--forget'('erased', V15)))) end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V17) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__List'('erased', 'erased', fun (V18) -> {'Idris.Prelude.Types.Right', V18} end, ('Idris.Idris2.Data.List1':'un--forget'('erased', V17)))) end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end)).
'un--compressRights'(V0, V1, V2, V3) -> case V3 of [E0 | E1] -> (fun (V4, V5) -> case V4 of {'Idris.Prelude.Types.Right', E2} -> (fun (V6) -> ('un--compressRights'('erased', 'erased', ('Idris.Idris2.Data.List1':'un--cons'('erased', V6, V2)), V5)) end(E2)); _ -> [{'Idris.Prelude.Types.Right', ('Idris.Idris2.Data.List1':'un--reverse'('erased', V2))} | ('un--compress'('erased', 'erased', V3))] end end(E0, E1)); _ -> [{'Idris.Prelude.Types.Right', ('Idris.Idris2.Data.List1':'un--reverse'('erased', V2))} | ('un--compress'('erased', 'erased', V3))] end.
'un--compressLefts'(V0, V1, V2, V3) -> case V3 of [E0 | E1] -> (fun (V4, V5) -> case V4 of {'Idris.Prelude.Types.Left', E2} -> (fun (V6) -> ('un--compressLefts'('erased', 'erased', ('Idris.Idris2.Data.List1':'un--cons'('erased', V6, V2)), V5)) end(E2)); _ -> [{'Idris.Prelude.Types.Left', ('Idris.Idris2.Data.List1':'un--reverse'('erased', V2))} | ('un--compress'('erased', 'erased', V3))] end end(E0, E1)); _ -> [{'Idris.Prelude.Types.Left', ('Idris.Idris2.Data.List1':'un--reverse'('erased', V2))} | ('un--compress'('erased', 'erased', V3))] end.
'un--compress'(V0, V1, V2) -> case V2 of [] -> []; [E0 | E1] -> (fun (V3, V4) -> case V3 of {'Idris.Prelude.Types.Left', E2} -> (fun (V5) -> ('un--compressLefts'('erased', 'erased', ('Idris.Idris2.Data.List1':'un--singleton'('erased', V5)), V4)) end(E2)); {'Idris.Prelude.Types.Right', E3} -> (fun (V6) -> ('un--compressRights'('erased', 'erased', ('Idris.Idris2.Data.List1':'un--singleton'('erased', V6)), V4)) end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--bimap'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Idris.Prelude.Types.Left', E0} -> (fun (V7) -> {'Idris.Prelude.Types.Left', (V4(V7))} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V8) -> {'Idris.Prelude.Types.Right', (V5(V8))} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
