-module('Idris.Idris2.Text.Bounded').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--case block in mergeBounds-676'/7,
  'case--mergeBounds-651'/5,
  'dn--un--show_Show__(WithBounds $ty)'/3,
  'dn--un--showPrec_Show__(WithBounds $ty)'/4,
  'dn--un--map_Functor__WithBounds'/4,
  'dn--un--__Impl_Show_(WithBounds $ty)'/2,
  'dn--un--__Impl_Functor_WithBounds'/4,
  'dn--un--__Impl_Eq_(WithBounds $ty)'/2,
  'dn--un--==_Eq__(WithBounds $ty)'/4,
  'dn--un--/=_Eq__(WithBounds $ty)'/4,
  'un--start'/2,
  'un--mergeBounds'/4,
  'un--joinBounds'/2,
  'un--irrelevantBounds'/2,
  'un--end'/2
]).
'case--case block in mergeBounds-676'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V7, V8) -> {'Idris.Text.Bounded.MkBounded', case V2 of {'Idris.Text.Bounded.MkBounded', E2, E3, E4, E5, E6, E7} -> (fun (V9, V10, V11, V12, V13, V14) -> V9 end(E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, 1, V4, V5, V7, V8} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--mergeBounds-651'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V5, V6) -> ('case--case block in mergeBounds-676'('erased', 'erased', V2, V3, V5, V6, ('Idris.Idris2.Prelude.EqOrd':'dn--un--max_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V7) -> fun (V8) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Int'(V7, V8)) end end, fun (V9) -> fun (V10) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Int'(V9, V10)) end end}, fun (V11) -> fun (V12) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord__Int'(V11, V12)) end end, fun (V13) -> fun (V14) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord__Int'(V13, V14)) end end, fun (V15) -> fun (V16) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord__Int'(V15, V16)) end end, fun (V17) -> fun (V18) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord__Int'(V17, V18)) end end, fun (V19) -> fun (V20) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord__Int'(V19, V20)) end end, fun (V21) -> fun (V22) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--max_Ord__Int'(V21, V22)) end end, fun (V23) -> fun (V24) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--min_Ord__Int'(V23, V24)) end end}, {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V25) -> fun (V26) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Int'(V25, V26)) end end, fun (V27) -> fun (V28) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Int'(V27, V28)) end end}, fun (V29) -> fun (V30) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord__Int'(V29, V30)) end end, fun (V31) -> fun (V32) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord__Int'(V31, V32)) end end, fun (V33) -> fun (V34) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord__Int'(V33, V34)) end end, fun (V35) -> fun (V36) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord__Int'(V35, V36)) end end, fun (V37) -> fun (V38) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord__Int'(V37, V38)) end end, fun (V39) -> fun (V40) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--max_Ord__Int'(V39, V40)) end end, fun (V41) -> fun (V42) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--min_Ord__Int'(V41, V42)) end end}, ('un--end'('erased', V3)), ('un--end'('erased', V2)))))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show__(WithBounds $ty)'(V0, V1, V2) -> ('dn--un--showPrec_Show__(WithBounds $ty)'('erased', V1, {'Idris.Prelude.Show.Open'}, V2)).
'dn--un--showPrec_Show__(WithBounds $ty)'(V0, V1, V2, V3) -> case V3 of {'Idris.Text.Bounded.MkBounded', E0, E1, E2, E3, E4, E5} -> (fun (V4, V5, V6, V7, V8, V9) -> ('Idris.Idris2.Prelude.Show':'un--showCon'(V2, <<"MkBounded"/utf8>>, (('Idris.Idris2.Prelude.Interfaces':'un--concat'('erased', 'erased', {'Idris.Builtin.MkPair', {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable__List'('erased', 'erased', V27, V28, V29)) end end end end end, fun (V30) -> fun (V31) -> fun (V32) -> fun (V33) -> fun (V34) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable__List'('erased', 'erased', V32, V33, V34)) end end end end end}, {'Idris.Prelude.Interfaces.dn--un--__mkMonoid', fun (V35) -> fun (V36) -> ('Idris.Idris2.Prelude.Types':'dn--un--<+>_Semigroup__String'(V35, V36)) end end, ('Idris.Idris2.Prelude.Types':'dn--un--neutral_Monoid__String'())}}))([('Idris.Idris2.Prelude.Show':'un--showArg'('erased', {'Idris.Prelude.Show.dn--un--__mkShow', fun (V10) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Bool'(V10)) end, fun (V11) -> fun (V12) -> ('Idris.Idris2.Prelude.Show':'dn--un--showPrec_Show__Bool'(V11, V12)) end end}, V5)) | [('Idris.Idris2.Prelude.Show':'un--showArg'('erased', V1, V4)) | [('Idris.Idris2.Prelude.Show':'un--showArg'('erased', {'Idris.Prelude.Show.dn--un--__mkShow', fun (V13) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Int'(V13)) end, fun (V14) -> fun (V15) -> ('Idris.Idris2.Prelude.Show':'dn--un--showPrec_Show__Int'(V14, V15)) end end}, V6)) | [('Idris.Idris2.Prelude.Show':'un--showArg'('erased', {'Idris.Prelude.Show.dn--un--__mkShow', fun (V16) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Int'(V16)) end, fun (V17) -> fun (V18) -> ('Idris.Idris2.Prelude.Show':'dn--un--showPrec_Show__Int'(V17, V18)) end end}, V7)) | [('Idris.Idris2.Prelude.Show':'un--showArg'('erased', {'Idris.Prelude.Show.dn--un--__mkShow', fun (V19) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Int'(V19)) end, fun (V20) -> fun (V21) -> ('Idris.Idris2.Prelude.Show':'dn--un--showPrec_Show__Int'(V20, V21)) end end}, V8)) | [('Idris.Idris2.Prelude.Show':'un--showArg'('erased', {'Idris.Prelude.Show.dn--un--__mkShow', fun (V22) -> ('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Int'(V22)) end, fun (V23) -> fun (V24) -> ('Idris.Idris2.Prelude.Show':'dn--un--showPrec_Show__Int'(V23, V24)) end end}, V9)) | []]]]]]])))) end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--map_Functor__WithBounds'(V0, V1, V2, V3) -> case V3 of {'Idris.Text.Bounded.MkBounded', E0, E1, E2, E3, E4, E5} -> (fun (V4, V5, V6, V7, V8, V9) -> {'Idris.Text.Bounded.MkBounded', (V2(V4)), V5, V6, V7, V8, V9} end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Impl_Show_(WithBounds $ty)'(V0, V1) -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V2) -> ('dn--un--show_Show__(WithBounds $ty)'('erased', V1, V2)) end, fun (V3) -> fun (V4) -> ('dn--un--showPrec_Show__(WithBounds $ty)'('erased', V1, V3, V4)) end end}.
'dn--un--__Impl_Functor_WithBounds'(V0, V1, V2, V3) -> ('dn--un--map_Functor__WithBounds'('erased', 'erased', V2, V3)).
'dn--un--__Impl_Eq_(WithBounds $ty)'(V0, V1) -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V2) -> fun (V3) -> ('dn--un--==_Eq__(WithBounds $ty)'('erased', V1, V2, V3)) end end, fun (V4) -> fun (V5) -> ('dn--un--/=_Eq__(WithBounds $ty)'('erased', V1, V4, V5)) end end}.
'dn--un--==_Eq__(WithBounds $ty)'(V0, V1, V2, V3) -> case V2 of {'Idris.Text.Bounded.MkBounded', E0, E1, E2, E3, E4, E5} -> (fun (V4, V5, V6, V7, V8, V9) -> case V3 of {'Idris.Text.Bounded.MkBounded', E6, E7, E8, E9, E10, E11} -> (fun (V10, V11, V12, V13, V14, V15) -> ('Idris.Idris2.Prelude.Basics':'un--&&'(case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E12, E13} -> (fun (V16, V17) -> ((V16(V4))(V10)) end(E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, fun () -> ('Idris.Idris2.Prelude.Basics':'un--&&'(('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Bool'(V5, V11)), fun () -> ('Idris.Idris2.Prelude.Basics':'un--&&'(('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Int'(V6, V12)), fun () -> ('Idris.Idris2.Prelude.Basics':'un--&&'(('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Int'(V7, V13)), fun () -> ('Idris.Idris2.Prelude.Basics':'un--&&'(('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Int'(V8, V14)), fun () -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Int'(V9, V15)) end)) end)) end)) end)) end)) end(E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--/=_Eq__(WithBounds $ty)'(V0, V1, V2, V3) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__(WithBounds $ty)'('erased', V1, V2, V3)))).
'un--start'(V0, V1) -> {'Idris.Builtin.MkPair', case V1 of {'Idris.Text.Bounded.MkBounded', E0, E1, E2, E3, E4, E5} -> (fun (V2, V3, V4, V5, V6, V7) -> V4 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, case V1 of {'Idris.Text.Bounded.MkBounded', E6, E7, E8, E9, E10, E11} -> (fun (V8, V9, V10, V11, V12, V13) -> V11 end(E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end}.
'un--mergeBounds'(V0, V1, V2, V3) -> case V2 of {'Idris.Text.Bounded.MkBounded', E6, E7, E8, E9, E10, E11} -> (fun (V4, V5, V6, V7, V8, V9) -> case V5 of 0 -> case V3 of {'Idris.Text.Bounded.MkBounded', E18, E19, E20, E21, E22, E23} -> (fun (V10, V11, V12, V13, V14, V15) -> case V11 of 0 -> ('un--irrelevantBounds'('erased', V10)); _ -> V3 end end(E18, E19, E20, E21, E22, E23)); _ -> V3 end; _ -> case V3 of {'Idris.Text.Bounded.MkBounded', E12, E13, E14, E15, E16, E17} -> (fun (V16, V17, V18, V19, V20, V21) -> case V17 of 0 -> ('Idris.Idris2.Prelude.Interfaces':'un--<$>'('erased', 'erased', 'erased', fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> ('dn--un--map_Functor__WithBounds'('erased', 'erased', V24, V25)) end end end end, fun (V26) -> V16 end, V2)); _ -> ('case--mergeBounds-651'('erased', 'erased', V3, V2, ('Idris.Idris2.Prelude.EqOrd':'dn--un--min_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V27) -> fun (V28) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Int'(V27, V28)) end end, fun (V29) -> fun (V30) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Int'(V29, V30)) end end}, fun (V31) -> fun (V32) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord__Int'(V31, V32)) end end, fun (V33) -> fun (V34) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord__Int'(V33, V34)) end end, fun (V35) -> fun (V36) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord__Int'(V35, V36)) end end, fun (V37) -> fun (V38) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord__Int'(V37, V38)) end end, fun (V39) -> fun (V40) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord__Int'(V39, V40)) end end, fun (V41) -> fun (V42) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--max_Ord__Int'(V41, V42)) end end, fun (V43) -> fun (V44) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--min_Ord__Int'(V43, V44)) end end}, {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V45) -> fun (V46) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Int'(V45, V46)) end end, fun (V47) -> fun (V48) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Int'(V47, V48)) end end}, fun (V49) -> fun (V50) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord__Int'(V49, V50)) end end, fun (V51) -> fun (V52) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord__Int'(V51, V52)) end end, fun (V53) -> fun (V54) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord__Int'(V53, V54)) end end, fun (V55) -> fun (V56) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord__Int'(V55, V56)) end end, fun (V57) -> fun (V58) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord__Int'(V57, V58)) end end, fun (V59) -> fun (V60) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--max_Ord__Int'(V59, V60)) end end, fun (V61) -> fun (V62) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--min_Ord__Int'(V61, V62)) end end}, ('un--start'('erased', V2)), ('un--start'('erased', V3)))))) end end(E12, E13, E14, E15, E16, E17)); _ -> ('case--mergeBounds-651'('erased', 'erased', V3, V2, ('Idris.Idris2.Prelude.EqOrd':'dn--un--min_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V63) -> fun (V64) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Int'(V63, V64)) end end, fun (V65) -> fun (V66) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Int'(V65, V66)) end end}, fun (V67) -> fun (V68) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord__Int'(V67, V68)) end end, fun (V69) -> fun (V70) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord__Int'(V69, V70)) end end, fun (V71) -> fun (V72) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord__Int'(V71, V72)) end end, fun (V73) -> fun (V74) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord__Int'(V73, V74)) end end, fun (V75) -> fun (V76) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord__Int'(V75, V76)) end end, fun (V77) -> fun (V78) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--max_Ord__Int'(V77, V78)) end end, fun (V79) -> fun (V80) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--min_Ord__Int'(V79, V80)) end end}, {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V81) -> fun (V82) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Int'(V81, V82)) end end, fun (V83) -> fun (V84) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Int'(V83, V84)) end end}, fun (V85) -> fun (V86) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord__Int'(V85, V86)) end end, fun (V87) -> fun (V88) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord__Int'(V87, V88)) end end, fun (V89) -> fun (V90) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord__Int'(V89, V90)) end end, fun (V91) -> fun (V92) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord__Int'(V91, V92)) end end, fun (V93) -> fun (V94) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord__Int'(V93, V94)) end end, fun (V95) -> fun (V96) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--max_Ord__Int'(V95, V96)) end end, fun (V97) -> fun (V98) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--min_Ord__Int'(V97, V98)) end end}, ('un--start'('erased', V2)), ('un--start'('erased', V3)))))) end end end(E6, E7, E8, E9, E10, E11)); _ -> case V3 of {'Idris.Text.Bounded.MkBounded', E0, E1, E2, E3, E4, E5} -> (fun (V99, V100, V101, V102, V103, V104) -> case V100 of 0 -> ('Idris.Idris2.Prelude.Interfaces':'un--<$>'('erased', 'erased', 'erased', fun (V105) -> fun (V106) -> fun (V107) -> fun (V108) -> ('dn--un--map_Functor__WithBounds'('erased', 'erased', V107, V108)) end end end end, fun (V109) -> V99 end, V2)); _ -> ('case--mergeBounds-651'('erased', 'erased', V3, V2, ('Idris.Idris2.Prelude.EqOrd':'dn--un--min_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V110) -> fun (V111) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Int'(V110, V111)) end end, fun (V112) -> fun (V113) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Int'(V112, V113)) end end}, fun (V114) -> fun (V115) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord__Int'(V114, V115)) end end, fun (V116) -> fun (V117) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord__Int'(V116, V117)) end end, fun (V118) -> fun (V119) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord__Int'(V118, V119)) end end, fun (V120) -> fun (V121) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord__Int'(V120, V121)) end end, fun (V122) -> fun (V123) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord__Int'(V122, V123)) end end, fun (V124) -> fun (V125) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--max_Ord__Int'(V124, V125)) end end, fun (V126) -> fun (V127) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--min_Ord__Int'(V126, V127)) end end}, {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V128) -> fun (V129) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Int'(V128, V129)) end end, fun (V130) -> fun (V131) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Int'(V130, V131)) end end}, fun (V132) -> fun (V133) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord__Int'(V132, V133)) end end, fun (V134) -> fun (V135) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord__Int'(V134, V135)) end end, fun (V136) -> fun (V137) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord__Int'(V136, V137)) end end, fun (V138) -> fun (V139) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord__Int'(V138, V139)) end end, fun (V140) -> fun (V141) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord__Int'(V140, V141)) end end, fun (V142) -> fun (V143) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--max_Ord__Int'(V142, V143)) end end, fun (V144) -> fun (V145) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--min_Ord__Int'(V144, V145)) end end}, ('un--start'('erased', V2)), ('un--start'('erased', V3)))))) end end(E0, E1, E2, E3, E4, E5)); _ -> ('case--mergeBounds-651'('erased', 'erased', V3, V2, ('Idris.Idris2.Prelude.EqOrd':'dn--un--min_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V146) -> fun (V147) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Int'(V146, V147)) end end, fun (V148) -> fun (V149) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Int'(V148, V149)) end end}, fun (V150) -> fun (V151) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord__Int'(V150, V151)) end end, fun (V152) -> fun (V153) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord__Int'(V152, V153)) end end, fun (V154) -> fun (V155) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord__Int'(V154, V155)) end end, fun (V156) -> fun (V157) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord__Int'(V156, V157)) end end, fun (V158) -> fun (V159) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord__Int'(V158, V159)) end end, fun (V160) -> fun (V161) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--max_Ord__Int'(V160, V161)) end end, fun (V162) -> fun (V163) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--min_Ord__Int'(V162, V163)) end end}, {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V164) -> fun (V165) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Int'(V164, V165)) end end, fun (V166) -> fun (V167) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Int'(V166, V167)) end end}, fun (V168) -> fun (V169) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord__Int'(V168, V169)) end end, fun (V170) -> fun (V171) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord__Int'(V170, V171)) end end, fun (V172) -> fun (V173) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord__Int'(V172, V173)) end end, fun (V174) -> fun (V175) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord__Int'(V174, V175)) end end, fun (V176) -> fun (V177) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord__Int'(V176, V177)) end end, fun (V178) -> fun (V179) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--max_Ord__Int'(V178, V179)) end end, fun (V180) -> fun (V181) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--min_Ord__Int'(V180, V181)) end end}, ('un--start'('erased', V2)), ('un--start'('erased', V3)))))) end end.
'un--joinBounds'(V0, V1) -> ('un--mergeBounds'('erased', 'erased', V1, case V1 of {'Idris.Text.Bounded.MkBounded', E0, E1, E2, E3, E4, E5} -> (fun (V2, V3, V4, V5, V6, V7) -> V2 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)).
'un--irrelevantBounds'(V0, V1) -> {'Idris.Text.Bounded.MkBounded', V1, 0, ('Idris.Idris2.Prelude.Num':'dn--un--negate_Neg__Int'(1)), ('Idris.Idris2.Prelude.Num':'dn--un--negate_Neg__Int'(1)), ('Idris.Idris2.Prelude.Num':'dn--un--negate_Neg__Int'(1)), ('Idris.Idris2.Prelude.Num':'dn--un--negate_Neg__Int'(1))}.
'un--end'(V0, V1) -> {'Idris.Builtin.MkPair', case V1 of {'Idris.Text.Bounded.MkBounded', E0, E1, E2, E3, E4, E5} -> (fun (V2, V3, V4, V5, V6, V7) -> V6 end(E0, E1, E2, E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, case V1 of {'Idris.Text.Bounded.MkBounded', E6, E7, E8, E9, E10, E11} -> (fun (V8, V9, V10, V11, V12, V13) -> V13 end(E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end}.