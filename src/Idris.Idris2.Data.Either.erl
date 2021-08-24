-module('Idris.Idris2.Data.Either').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--2669-872--in--un--compressRights'/4,
  'nested--2669-841--in--un--compressLefts'/4,
  'un--rights'/1,
  'un--rightInjective'/1,
  'un--pushInto'/2,
  'un--partitionEithers'/1,
  'un--mirror'/1,
  'un--maybeToEither'/2,
  'un--lefts'/1,
  'un--leftInjective'/1,
  'un--isRight'/1,
  'un--isLeft'/1,
  'un--getRight'/1,
  'un--getLeft'/1,
  'un--fromEither'/1,
  'un--eitherToMaybe'/1,
  'un--decompress'/1,
  'un--compress'/1
]).
'nested--2669-872--in--un--compressRights'(V0, V1, V2, V3) -> case V3 of [E0 | E1] -> (fun (V4, V5) -> case V4 of {'Idris.Prelude.Types.Right', E2} -> (fun (V6) -> ('nested--2669-872--in--un--compressRights'(V0, V1, ('Idris.Idris2.Data.List1':'un--cons'(V6, V2)), V5)) end(E2)); _ -> [{'Idris.Prelude.Types.Right', ('Idris.Idris2.Data.List1':'un--reverse'(V2))} | ('un--compress'(V3))] end end(E0, E1)); _ -> [{'Idris.Prelude.Types.Right', ('Idris.Idris2.Data.List1':'un--reverse'(V2))} | ('un--compress'(V3))] end.
'nested--2669-841--in--un--compressLefts'(V0, V1, V2, V3) -> case V3 of [E0 | E1] -> (fun (V4, V5) -> case V4 of {'Idris.Prelude.Types.Left', E2} -> (fun (V6) -> ('nested--2669-841--in--un--compressLefts'(V0, V1, ('Idris.Idris2.Data.List1':'un--cons'(V6, V2)), V5)) end(E2)); _ -> [{'Idris.Prelude.Types.Left', ('Idris.Idris2.Data.List1':'un--reverse'(V2))} | ('un--compress'(V3))] end end(E0, E1)); _ -> [{'Idris.Prelude.Types.Left', ('Idris.Idris2.Data.List1':'un--reverse'(V2))} | ('un--compress'(V3))] end.
'un--rights'(V0) -> case V0 of [] -> []; [E0 | E1] -> (fun (V1, V2) -> case V1 of {'Idris.Prelude.Types.Left', E2} -> (fun (V3) -> ('un--rights'(V2)) end(E2)); {'Idris.Prelude.Types.Right', E3} -> (fun (V4) -> [V4 | ('un--rights'(V2))] end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--rightInjective'(V0) -> case V0 of 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--pushInto'(V0, V1) -> case V1 of {'Idris.Prelude.Types.Left', E0} -> (fun (V2) -> {'Idris.Prelude.Types.Left', {'Idris.Builtin.MkPair', V0, V2}} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V3) -> {'Idris.Prelude.Types.Right', {'Idris.Builtin.MkPair', V0, V3}} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--partitionEithers'(V0) -> {'Idris.Builtin.MkPair', ('un--lefts'(V0)), ('un--rights'(V0))}.
'un--mirror'(V0) -> case V0 of {'Idris.Prelude.Types.Left', E0} -> (fun (V1) -> {'Idris.Prelude.Types.Right', V1} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V2) -> {'Idris.Prelude.Types.Left', V2} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--maybeToEither'(V0, V1) -> case V1 of {'Idris.Prelude.Types.Just', E0} -> (fun (V2) -> {'Idris.Prelude.Types.Right', V2} end(E0)); {'Idris.Prelude.Types.Nothing'} -> (fun () -> {'Idris.Prelude.Types.Left', (V0())} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--lefts'(V0) -> case V0 of [] -> []; [E0 | E1] -> (fun (V1, V2) -> case V1 of {'Idris.Prelude.Types.Left', E2} -> (fun (V3) -> [V3 | ('un--lefts'(V2))] end(E2)); {'Idris.Prelude.Types.Right', E3} -> (fun (V4) -> ('un--lefts'(V2)) end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--leftInjective'(V0) -> case V0 of 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--isRight'(V0) -> case V0 of {'Idris.Prelude.Types.Left', E0} -> (fun (V1) -> 0 end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V2) -> 1 end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--isLeft'(V0) -> case V0 of {'Idris.Prelude.Types.Left', E0} -> (fun (V1) -> 1 end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V2) -> 0 end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--getRight'(V0) -> case V0 of {'Idris.Prelude.Types.Right', E0} -> (fun (V1) -> {'Idris.Prelude.Types.Just', V1} end(E0)); _ -> {'Idris.Prelude.Types.Nothing'} end.
'un--getLeft'(V0) -> case V0 of {'Idris.Prelude.Types.Left', E0} -> (fun (V1) -> {'Idris.Prelude.Types.Just', V1} end(E0)); _ -> {'Idris.Prelude.Types.Nothing'} end.
'un--fromEither'(V0) -> case V0 of {'Idris.Prelude.Types.Left', E0} -> (fun (V1) -> V1 end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V2) -> V2 end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--eitherToMaybe'(V0) -> case V0 of {'Idris.Prelude.Types.Left', E0} -> (fun (V1) -> {'Idris.Prelude.Types.Nothing'} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V2) -> {'Idris.Prelude.Types.Just', V2} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--decompress'(V0) -> ('Idris.Idris2.Prelude.Interfaces':'un--concatMap'({'Idris.Builtin.MkPair', {'Idris.Prelude.Interfaces.MkFoldable', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V3, V4, V5)) end end end end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V8, V9, V10)) end end end end end, fun (V11) -> fun (V12) -> ('Idris.Idris2.Prelude.Types':'dn--un--null_Foldable_List'(V12)) end end, fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldlM_Foldable_List'(V16, V17, V18, V19)) end end end end end end end, fun (V20) -> fun (V21) -> ('Idris.Idris2.Prelude.Types':'dn--un--toList_Foldable_List'(V21)) end end, fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V24, V25, V26)) end end end end end}, {'Idris.Prelude.Interfaces.MkMonoid', fun (V27) -> fun (V28) -> ('Idris.Idris2.Prelude.Types':'dn--un--<+>_Semigroup_(List $a)'(V27, V28)) end end, ('Idris.Idris2.Prelude.Types':'dn--un--neutral_Monoid_(List $a)'())}}, fun (V29) -> case V29 of {'Idris.Prelude.Types.Left', E0} -> (fun (V30) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_List'(fun (V31) -> {'Idris.Prelude.Types.Left', V31} end, ('Idris.Idris2.Data.List1':'un--forget'(V30)))) end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V32) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_List'(fun (V33) -> {'Idris.Prelude.Types.Right', V33} end, ('Idris.Idris2.Data.List1':'un--forget'(V32)))) end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end, V0)).
'un--compress'(V0) -> case V0 of [] -> []; [E0 | E1] -> (fun (V1, V2) -> case V1 of {'Idris.Prelude.Types.Left', E2} -> (fun (V3) -> ('nested--2669-841--in--un--compressLefts'(V3, V2, ('Idris.Idris2.Data.List1':'un--singleton'(V3)), V2)) end(E2)); {'Idris.Prelude.Types.Right', E3} -> (fun (V4) -> ('nested--2669-872--in--un--compressRights'(V4, V2, ('Idris.Idris2.Data.List1':'un--singleton'(V4)), V2)) end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
