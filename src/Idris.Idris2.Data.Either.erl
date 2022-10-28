-module('Idris.Idris2.Data.Either').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--3024-1754--in--un--compressRights'/4,
  'nested--3024-1716--in--un--compressLefts'/4,
  'dn--un--uninhabited_Uninhabited_(IsRight (Left $x))'/1,
  'dn--un--uninhabited_Uninhabited_(IsLeft (Right $x))'/1,
  'dn--un--injective_Injective_Right'/3,
  'dn--un--injective_Injective_Left'/3,
  'dn--un--__Impl_Uninhabited_(IsRight (Left $x))'/1,
  'dn--un--__Impl_Uninhabited_(IsLeft (Right $x))'/1,
  'dn--un--__Impl_Injective_Right'/0,
  'dn--un--__Impl_Injective_Left'/0,
  'un--rights'/1,
  'un--pushInto'/2,
  'un--partitionEithers'/1,
  'un--mirror'/1,
  'un--maybeToEither'/2,
  'un--lefts'/1,
  'un--isRight'/1,
  'un--isLeft'/1,
  'un--getRight'/1,
  'un--getLeft'/1,
  'un--fromEither'/1,
  'un--eitherToMaybe'/1,
  'un--eitherMapFusion'/4,
  'un--eitherBimapFusion'/5,
  'un--decompress'/1,
  'un--compress'/1
]).
'nested--3024-1754--in--un--compressRights'(V0, V1, V2, V3) -> case V3 of [E0 | E1] -> (fun (V4, V5) -> case V4 of {'Prelude.Types.Right', V6} -> ('nested--3024-1754--in--un--compressRights'(V0, V1, ('Idris.Idris2.Data.List1':'un--cons'(V6, V2)), V5)); _ -> [{'Prelude.Types.Right', ('Idris.Idris2.Data.List1':'un--reverse'(V2))} | ('un--compress'(V3))] end end(E0, E1)); _ -> [{'Prelude.Types.Right', ('Idris.Idris2.Data.List1':'un--reverse'(V2))} | ('un--compress'(V3))] end.
'nested--3024-1716--in--un--compressLefts'(V0, V1, V2, V3) -> case V3 of [E0 | E1] -> (fun (V4, V5) -> case V4 of {'Prelude.Types.Left', V6} -> ('nested--3024-1716--in--un--compressLefts'(V0, V1, ('Idris.Idris2.Data.List1':'un--cons'(V6, V2)), V5)); _ -> [{'Prelude.Types.Left', ('Idris.Idris2.Data.List1':'un--reverse'(V2))} | ('un--compress'(V3))] end end(E0, E1)); _ -> [{'Prelude.Types.Left', ('Idris.Idris2.Data.List1':'un--reverse'(V2))} | ('un--compress'(V3))] end.
'dn--un--uninhabited_Uninhabited_(IsRight (Left $x))'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--uninhabited_Uninhabited_(IsLeft (Right $x))'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--injective_Injective_Right'(V0, V1, V2) -> {'Builtin.Refl'}.
'dn--un--injective_Injective_Left'(V0, V1, V2) -> {'Builtin.Refl'}.
'dn--un--__Impl_Uninhabited_(IsRight (Left $x))'(V0) -> ('dn--un--uninhabited_Uninhabited_(IsRight (Left $x))'(V0)).
'dn--un--__Impl_Uninhabited_(IsLeft (Right $x))'(V0) -> ('dn--un--uninhabited_Uninhabited_(IsLeft (Right $x))'(V0)).
'dn--un--__Impl_Injective_Right'() -> {'Control.Function.MkInjective', fun (V0) -> {'Prelude.Types.Right', V0} end, fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--injective_Injective_Right'(V1, V2, V3)) end end end}.
'dn--un--__Impl_Injective_Left'() -> {'Control.Function.MkInjective', fun (V0) -> {'Prelude.Types.Left', V0} end, fun (V1) -> fun (V2) -> fun (V3) -> ('dn--un--injective_Injective_Left'(V1, V2, V3)) end end end}.
'un--rights'(V0) -> case V0 of [] -> []; [E0 | E1] -> (fun (V1, V2) -> case V1 of {'Prelude.Types.Left', V3} -> ('un--rights'(V2)); {'Prelude.Types.Right', V4} -> [V4 | ('un--rights'(V2))] end end(E0, E1)) end.
'un--pushInto'(V0, V1) -> case V1 of {'Prelude.Types.Left', V2} -> {'Prelude.Types.Left', {'Builtin.MkPair', V0, V2}}; {'Prelude.Types.Right', V3} -> {'Prelude.Types.Right', {'Builtin.MkPair', V0, V3}} end.
'un--partitionEithers'(V0) -> {'Builtin.MkPair', ('un--lefts'(V0)), ('un--rights'(V0))}.
'un--mirror'(V0) -> case V0 of {'Prelude.Types.Left', V1} -> {'Prelude.Types.Right', V1}; {'Prelude.Types.Right', V2} -> {'Prelude.Types.Left', V2} end.
'un--maybeToEither'(V0, V1) -> case V1 of {'Prelude.Types.Just', V2} -> {'Prelude.Types.Right', V2}; {'Prelude.Types.Nothing'} -> {'Prelude.Types.Left', (V0())} end.
'un--lefts'(V0) -> case V0 of [] -> []; [E0 | E1] -> (fun (V1, V2) -> case V1 of {'Prelude.Types.Left', V3} -> [V3 | ('un--lefts'(V2))]; {'Prelude.Types.Right', V4} -> ('un--lefts'(V2)) end end(E0, E1)) end.
'un--isRight'(V0) -> case V0 of {'Prelude.Types.Left', V1} -> 0; {'Prelude.Types.Right', V2} -> 1 end.
'un--isLeft'(V0) -> case V0 of {'Prelude.Types.Left', V1} -> 1; {'Prelude.Types.Right', V2} -> 0 end.
'un--getRight'(V0) -> case V0 of {'Prelude.Types.Right', V1} -> {'Prelude.Types.Just', V1}; _ -> {'Prelude.Types.Nothing'} end.
'un--getLeft'(V0) -> case V0 of {'Prelude.Types.Left', V1} -> {'Prelude.Types.Just', V1}; _ -> {'Prelude.Types.Nothing'} end.
'un--fromEither'(V0) -> case V0 of {'Prelude.Types.Left', V1} -> V1; {'Prelude.Types.Right', V2} -> V2 end.
'un--eitherToMaybe'(V0) -> case V0 of {'Prelude.Types.Left', V1} -> {'Prelude.Types.Nothing'}; {'Prelude.Types.Right', V2} -> {'Prelude.Types.Just', V2} end.
'un--eitherMapFusion'(V0, V1, V2, V3) -> case V3 of {'Prelude.Types.Left', V4} -> {'Builtin.Refl'}; {'Prelude.Types.Right', V5} -> {'Builtin.Refl'} end.
'un--eitherBimapFusion'(V0, V1, V2, V3, V4) -> case V4 of {'Prelude.Types.Left', V5} -> {'Builtin.Refl'}; {'Prelude.Types.Right', V6} -> {'Builtin.Refl'} end.
'un--decompress'(V0) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V1) -> fun (V2) -> ('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(V1, V2)) end end, []}, fun (V3) -> case V3 of {'Prelude.Types.Left', V4} -> ((begin (V10 = fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V8, V9)) end end end end), fun (V11) -> fun (V12) -> ((((V10('erased'))('erased'))(V11))(V12)) end end end(fun (V5) -> {'Prelude.Types.Left', V5} end))(('Idris.Idris2.Data.List1':'un--forget'(V4)))); {'Prelude.Types.Right', V13} -> ((begin (V19 = fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V17, V18)) end end end end), fun (V20) -> fun (V21) -> ((((V19('erased'))('erased'))(V20))(V21)) end end end(fun (V14) -> {'Prelude.Types.Right', V14} end))(('Idris.Idris2.Data.List1':'un--forget'(V13)))) end end, V0)).
'un--compress'(V0) -> case V0 of [] -> []; [E0 | E1] -> (fun (V1, V2) -> case V1 of {'Prelude.Types.Left', V3} -> ('nested--3024-1716--in--un--compressLefts'(V3, V2, ('Idris.Idris2.Data.List1':'un--singleton'(V3)), V2)); {'Prelude.Types.Right', V4} -> ('nested--3024-1754--in--un--compressRights'(V4, V2, ('Idris.Idris2.Data.List1':'un--singleton'(V4)), V2)) end end(E0, E1)) end.
