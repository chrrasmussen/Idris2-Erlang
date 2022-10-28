-module('Idris.Idris2.Prelude.Types.SnocList').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--filterAppend-6654'/5,
  'case--mapMaybeAppend-6546'/5,
  'case--mapMaybe-6400'/4,
  'case--filter-6338'/5,
  'un--tailRecAppend'/2,
  'un--reverseOnto'/2,
  'un--reverse'/1,
  'un--mapMaybeTR'/2,
  'un--mapMaybeAppend'/3,
  'un--mapMaybe'/2,
  'un--lengthTR'/1,
  'un--lengthPlus'/2,
  'un--length'/1,
  'un--filterTR'/2,
  'un--filterAppend'/3,
  'un--filter'/2,
  'un--<>>'/2,
  'un--<><'/2,
  'un--++'/2
]).
'case--filterAppend-6654'(V0, V1, V2, V3, V4) -> case V4 of 1 -> ('un--filterAppend'([V0 | V3], V2, V1)); 0 -> ('un--filterAppend'(V3, V2, V1)) end.
'case--mapMaybeAppend-6546'(V0, V1, V2, V3, V4) -> case V4 of {'Prelude.Types.Just', V5} -> ('un--mapMaybeAppend'([V5 | V3], V2, V1)); {'Prelude.Types.Nothing'} -> ('un--mapMaybeAppend'(V3, V2, V1)) end.
'case--mapMaybe-6400'(V0, V1, V2, V3) -> case V3 of {'Prelude.Types.Nothing'} -> ('un--mapMaybe'(V2, V1)); {'Prelude.Types.Just', V4} -> {'Prelude.Basics.:<', ('un--mapMaybe'(V2, V1)), V4} end.
'case--filter-6338'(V0, V1, V2, V3, V4) -> case V4 of 1 -> {'Prelude.Basics.:<', V3, V0}; 0 -> V3 end.
'un--tailRecAppend'(V0, V1) -> ('un--reverseOnto'(V0, ('un--reverse'(V1)))).
'un--reverseOnto'(V0, V1) -> case V1 of {'Prelude.Basics.Lin'} -> V0; {'Prelude.Basics.:<', V2, V3} -> ('un--reverseOnto'({'Prelude.Basics.:<', V0, V3}, V2)) end.
'un--reverse'(V0) -> ('un--reverseOnto'({'Prelude.Basics.Lin'}, V0)).
'un--mapMaybeTR'(V0, V1) -> ('un--mapMaybeAppend'([], V0, V1)).
'un--mapMaybeAppend'(V0, V1, V2) -> case V2 of {'Prelude.Basics.:<', V3, V4} -> case (V1(V4)) of {'Prelude.Types.Just', V5} -> ('un--mapMaybeAppend'([V5 | V0], V1, V3)); {'Prelude.Types.Nothing'} -> ('un--mapMaybeAppend'(V0, V1, V3)) end; {'Prelude.Basics.Lin'} -> ('un--<><'({'Prelude.Basics.Lin'}, V0)) end.
'un--mapMaybe'(V0, V1) -> case V1 of {'Prelude.Basics.Lin'} -> {'Prelude.Basics.Lin'}; {'Prelude.Basics.:<', V2, V3} -> case (V0(V3)) of {'Prelude.Types.Nothing'} -> ('un--mapMaybe'(V0, V2)); {'Prelude.Types.Just', V4} -> {'Prelude.Basics.:<', ('un--mapMaybe'(V0, V2)), V4} end end.
'un--lengthTR'(V0) -> ('un--lengthPlus'(0, V0)).
'un--lengthPlus'(V0, V1) -> case V1 of {'Prelude.Basics.Lin'} -> V0; {'Prelude.Basics.:<', V2, V3} -> ('un--lengthPlus'((V0 + 1), V2)) end.
'un--length'(V0) -> case V0 of {'Prelude.Basics.Lin'} -> 0; {'Prelude.Basics.:<', V1, V2} -> (('un--length'(V1)) + 1) end.
'un--filterTR'(V0, V1) -> ('un--filterAppend'([], V0, V1)).
'un--filterAppend'(V0, V1, V2) -> case V2 of {'Prelude.Basics.:<', V3, V4} -> case (V1(V4)) of 1 -> ('un--filterAppend'([V4 | V0], V1, V3)); 0 -> ('un--filterAppend'(V0, V1, V3)) end; {'Prelude.Basics.Lin'} -> ('un--<><'({'Prelude.Basics.Lin'}, V0)) end.
'un--filter'(V0, V1) -> case V1 of {'Prelude.Basics.Lin'} -> {'Prelude.Basics.Lin'}; {'Prelude.Basics.:<', V2, V3} -> begin (V4 = ('un--filter'(V0, V2))), case (V0(V3)) of 1 -> {'Prelude.Basics.:<', V4, V3}; 0 -> V4 end end end.
'un--<>>'(V0, V1) -> case V0 of {'Prelude.Basics.Lin'} -> V1; {'Prelude.Basics.:<', V2, V3} -> ('un--<>>'(V2, [V3 | V1])) end.
'un--<><'(V0, V1) -> case V1 of [] -> V0; [E0 | E1] -> (fun (V2, V3) -> ('un--<><'({'Prelude.Basics.:<', V0, V2}, V3)) end(E0, E1)) end.
'un--++'(V0, V1) -> case V1 of {'Prelude.Basics.Lin'} -> V0; {'Prelude.Basics.:<', V2, V3} -> {'Prelude.Basics.:<', ('un--++'(V0, V2)), V3} end.
