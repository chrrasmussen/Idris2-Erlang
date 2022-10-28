-module('Idris.Idris2.Prelude.Types.List').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--filterAppend-7204'/5,
  'case--mapMaybeAppend-7096'/5,
  'case--mapMaybe-6846'/4,
  'case--filter-6782'/4,
  'un--tailRecAppend'/2,
  'un--reverseOnto'/2,
  'un--reverse'/1,
  'un--mapTR'/2,
  'un--mapMaybeTR'/2,
  'un--mapMaybeAppend'/3,
  'un--mapMaybe'/2,
  'un--mapImpl'/2,
  'un--mapAppend'/3,
  'un--lengthTR'/1,
  'un--lengthPlus'/2,
  'un--length'/1,
  'un--filterTR'/2,
  'un--filterAppend'/3,
  'un--filter'/2,
  'un--++'/2
]).
'case--filterAppend-7204'(V0, V1, V2, V3, V4) -> case V4 of 1 -> ('un--filterAppend'({'Prelude.Basics.:<', V3, V0}, V2, V1)); 0 -> ('un--filterAppend'(V3, V2, V1)) end.
'case--mapMaybeAppend-7096'(V0, V1, V2, V3, V4) -> case V4 of {'Prelude.Types.Just', V5} -> ('un--mapMaybeAppend'({'Prelude.Basics.:<', V3, V5}, V2, V1)); {'Prelude.Types.Nothing'} -> ('un--mapMaybeAppend'(V3, V2, V1)) end.
'case--mapMaybe-6846'(V0, V1, V2, V3) -> case V3 of {'Prelude.Types.Nothing'} -> ('un--mapMaybe'(V2, V1)); {'Prelude.Types.Just', V4} -> [V4 | ('un--mapMaybe'(V2, V1))] end.
'case--filter-6782'(V0, V1, V2, V3) -> case V3 of 1 -> [V0 | ('un--filter'(V2, V1))]; 0 -> ('un--filter'(V2, V1)) end.
'un--tailRecAppend'(V0, V1) -> ('un--reverseOnto'(V1, ('un--reverse'(V0)))).
'un--reverseOnto'(V0, V1) -> case V1 of [] -> V0; [E0 | E1] -> (fun (V2, V3) -> ('un--reverseOnto'([V2 | V0], V3)) end(E0, E1)) end.
'un--reverse'(V0) -> ('un--reverseOnto'([], V0)).
'un--mapTR'(V0, V1) -> ('un--mapAppend'({'Prelude.Basics.Lin'}, V0, V1)).
'un--mapMaybeTR'(V0, V1) -> ('un--mapMaybeAppend'({'Prelude.Basics.Lin'}, V0, V1)).
'un--mapMaybeAppend'(V0, V1, V2) -> case V2 of [E0 | E1] -> (fun (V3, V4) -> case (V1(V3)) of {'Prelude.Types.Just', V5} -> ('un--mapMaybeAppend'({'Prelude.Basics.:<', V0, V5}, V1, V4)); {'Prelude.Types.Nothing'} -> ('un--mapMaybeAppend'(V0, V1, V4)) end end(E0, E1)); [] -> ('Idris.Idris2.Prelude.Types.SnocList':'un--<>>'(V0, [])) end.
'un--mapMaybe'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of {'Prelude.Types.Nothing'} -> ('un--mapMaybe'(V0, V3)); {'Prelude.Types.Just', V4} -> [V4 | ('un--mapMaybe'(V0, V3))] end end(E0, E1)) end.
'un--mapImpl'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> [(V0(V2)) | ('un--mapImpl'(V0, V3))] end(E0, E1)) end.
'un--mapAppend'(V0, V1, V2) -> case V2 of [E0 | E1] -> (fun (V3, V4) -> ('un--mapAppend'({'Prelude.Basics.:<', V0, (V1(V3))}, V1, V4)) end(E0, E1)); [] -> ('Idris.Idris2.Prelude.Types.SnocList':'un--<>>'(V0, [])) end.
'un--lengthTR'(V0) -> ('un--lengthPlus'(0, V0)).
'un--lengthPlus'(V0, V1) -> case V1 of [] -> V0; [E0 | E1] -> (fun (V2, V3) -> ('un--lengthPlus'((V0 + 1), V3)) end(E0, E1)) end.
'un--length'(V0) -> case V0 of [] -> 0; [E0 | E1] -> (fun (V1, V2) -> (('un--length'(V2)) + 1) end(E0, E1)) end.
'un--filterTR'(V0, V1) -> ('un--filterAppend'({'Prelude.Basics.Lin'}, V0, V1)).
'un--filterAppend'(V0, V1, V2) -> case V2 of [E0 | E1] -> (fun (V3, V4) -> case (V1(V3)) of 1 -> ('un--filterAppend'({'Prelude.Basics.:<', V0, V3}, V1, V4)); 0 -> ('un--filterAppend'(V0, V1, V4)) end end(E0, E1)); [] -> ('Idris.Idris2.Prelude.Types.SnocList':'un--<>>'(V0, [])) end.
'un--filter'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> case (V0(V2)) of 1 -> [V2 | ('un--filter'(V0, V3))]; 0 -> ('un--filter'(V0, V3)) end end(E0, E1)) end.
'un--++'(V0, V1) -> case V0 of [] -> V1; [E0 | E1] -> (fun (V2, V3) -> [V2 | ('un--++'(V3, V1))] end(E0, E1)) end.
