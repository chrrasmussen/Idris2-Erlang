-module('Idris.Idris2.Data.List.Quantifiers').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--with block in pushOutInInverse-5436'/7,
  'with--pushOutInInverse-5423'/6,
  'case--case block in decide-6253'/5,
  'case--decide-6223'/4,
  'case--splitOnto-6013'/9,
  'case--pullOut-5293'/3,
  'un--splitOnto'/3,
  'un--split'/2,
  'un--pushOutInInverse'/1,
  'un--pushInOutInverse'/1,
  'un--pushIn'/1,
  'un--pullOut'/1,
  'un--negAnyAll'/2,
  'un--indexAll'/2,
  'un--decide'/2,
  'un--anyNegAll'/2,
  'un--allNegAny'/2
]).
'with--with block in pushOutInInverse-5436'(V0, V1, V2, V3, V4, V5, V6) -> begin (V7 = V3), {'Builtin.Refl'} end.
'with--pushOutInInverse-5423'(V0, V1, V2, V3, V4, V5) -> ('with--with block in pushOutInInverse-5436'('erased', 'erased', V2, ('un--pullOut'(V2)), V4, 'erased', V3)).
'case--case block in decide-6253'(V0, V1, V2, V3, V4) -> case V4 of {'Prelude.Types.Left', V5} -> {'Prelude.Types.Left', {'Data.List.Quantifiers.All.::', V3, V5}}; {'Prelude.Types.Right', V6} -> {'Prelude.Types.Right', {'Data.List.Quantifiers.Any.There', V6}} end.
'case--decide-6223'(V0, V1, V2, V3) -> case V3 of {'Prelude.Types.Left', V4} -> case ('un--decide'(V2, V1)) of {'Prelude.Types.Left', V5} -> {'Prelude.Types.Left', {'Data.List.Quantifiers.All.::', V4, V5}}; {'Prelude.Types.Right', V6} -> {'Prelude.Types.Right', {'Data.List.Quantifiers.Any.There', V6}} end; {'Prelude.Types.Right', V7} -> {'Prelude.Types.Right', {'Data.List.Quantifiers.Any.Here', V7}} end.
'case--splitOnto-6013'(V0, V1, V2, V3, V4, V5, V6, V7, V8) -> case V8 of {'Prelude.Types.Yes', V9} -> ('un--splitOnto'(V7, V4, {'Data.List.Quantifiers.MkSplit', [V3 | V0], V1, {'Data.List.Quantifiers.Left', V2}, {'Data.List.Quantifiers.All.::', V9, V6}, V5})); {'Prelude.Types.No', V10} -> ('un--splitOnto'(V7, V4, {'Data.List.Quantifiers.MkSplit', V0, [V3 | V1], {'Data.List.Quantifiers.Right', V2}, V6, {'Data.List.Quantifiers.All.::', V10, V5}})) end.
'case--pullOut-5293'(V0, V1, V2) -> begin (V3 = V2), [V0 | V3] end.
'un--splitOnto'(V0, V1, V2) -> case V1 of [] -> V2; [E0 | E1] -> (fun (V3, V4) -> case V2 of {'Data.List.Quantifiers.MkSplit', V5, V6, V7, V8, V9} -> case (V0(V3)) of {'Prelude.Types.Yes', V10} -> ('un--splitOnto'(V0, V4, {'Data.List.Quantifiers.MkSplit', [V3 | V5], V6, {'Data.List.Quantifiers.Left', V7}, {'Data.List.Quantifiers.All.::', V10, V8}, V9})); {'Prelude.Types.No', V11} -> ('un--splitOnto'(V0, V4, {'Data.List.Quantifiers.MkSplit', V5, [V3 | V6], {'Data.List.Quantifiers.Right', V7}, V8, {'Data.List.Quantifiers.All.::', V11, V9}})) end end end(E0, E1)) end.
'un--split'(V0, V1) -> ('un--splitOnto'(V0, V1, {'Data.List.Quantifiers.MkSplit', [], [], {'Data.List.Quantifiers.Nil'}, {'Data.List.Quantifiers.All.Nil'}, {'Data.List.Quantifiers.All.Nil'}})).
'un--pushOutInInverse'(V0) -> case V0 of [] -> {'Builtin.Refl'}; [E0 | E1] -> (fun (V1, V2) -> begin (V3 = V1), ('with--pushOutInInverse-5423'('erased', 'erased', V2, ('un--pushOutInInverse'(V2)), V3, 'erased')) end end(E0, E1)) end.
'un--pushInOutInverse'(V0) -> case V0 of [] -> {'Builtin.Refl'}; [E0 | E1] -> (fun (V1, V2) -> {'Builtin.Refl'} end(E0, E1)) end.
'un--pushIn'(V0) -> V0.
'un--pullOut'(V0) -> case V0 of [] -> []; [E0 | E1] -> (fun (V1, V2) -> begin (V3 = V1), begin (V4 = ('un--pullOut'(V2))), [V3 | V4] end end end(E0, E1)) end.
'un--negAnyAll'(V0, V1) -> case V0 of [] -> {'Data.List.Quantifiers.All.Nil'}; [E0 | E1] -> (fun (V2, V3) -> {'Data.List.Quantifiers.All.::', fun (V4) -> (V1({'Data.List.Quantifiers.Any.Here', V4})) end, ('un--negAnyAll'(V3, fun (V5) -> (V1({'Data.List.Quantifiers.Any.There', V5})) end))} end(E0, E1)) end.
'un--indexAll'(V0, V1) -> case V0 of 0 -> case V1 of {'Data.List.Quantifiers.All.::', V2, V3} -> V2 end; _ -> begin (V4 = (V0 - 1)), case V1 of {'Data.List.Quantifiers.All.::', V5, V6} -> ('un--indexAll'(V4, V6)) end end end.
'un--decide'(V0, V1) -> case V1 of [] -> {'Prelude.Types.Left', {'Data.List.Quantifiers.All.Nil'}}; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of {'Prelude.Types.Left', V4} -> case ('un--decide'(V0, V3)) of {'Prelude.Types.Left', V5} -> {'Prelude.Types.Left', {'Data.List.Quantifiers.All.::', V4, V5}}; {'Prelude.Types.Right', V6} -> {'Prelude.Types.Right', {'Data.List.Quantifiers.Any.There', V6}} end; {'Prelude.Types.Right', V7} -> {'Prelude.Types.Right', {'Data.List.Quantifiers.Any.Here', V7}} end end(E0, E1)) end.
'un--anyNegAll'(V0, V1) -> case V0 of {'Data.List.Quantifiers.Any.Here', V2} -> case V1 of {'Data.List.Quantifiers.All.::', V3, V4} -> (V2(V3)) end; {'Data.List.Quantifiers.Any.There', V5} -> case V1 of {'Data.List.Quantifiers.All.::', V6, V7} -> ('un--anyNegAll'(V5, V7)) end end.
'un--allNegAny'(V0, V1) -> case V0 of {'Data.List.Quantifiers.All.Nil'} -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V2) -> ('Idris.Idris2.Data.List.Quantifiers.Any':'dn--un--uninhabited_Uninhabited_((Any $p) Nil)'(V2)) end, V1)); {'Data.List.Quantifiers.All.::', V3, V4} -> case V1 of {'Data.List.Quantifiers.Any.Here', V5} -> ('Idris.Idris2.Prelude.Uninhabited':'un--absurd'(fun (V6) -> V6 end, (V3(V5)))); {'Data.List.Quantifiers.Any.There', V7} -> ('un--allNegAny'(V4, V7)) end end.
