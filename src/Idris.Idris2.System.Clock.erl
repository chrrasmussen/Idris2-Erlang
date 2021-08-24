-module('Idris.Idris2.System.Clock').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--clockTime-4296'/3,
  'with--clockTimeReturnType-4293'/2,
  'case--with block in clockTime-4333'/4,
  'case--compare-3998'/6,
  'case--max-3935'/3,
  'case--min-3914'/3,
  'dn--un--show_Show_ClockType'/1,
  'dn--un--show_Show_(Clock $type)'/1,
  'dn--un--showPrec_Show_ClockType'/2,
  'dn--un--showPrec_Show_(Clock $type)'/2,
  'dn--un--min_Ord_(Clock $type)'/2,
  'dn--un--max_Ord_(Clock $type)'/2,
  'dn--un--compare_Ord_(Clock $type)'/2,
  'dn--un--__Impl_Show_ClockType'/0,
  'dn--un--__Impl_Show_(Clock $type)'/0,
  'dn--un--__Impl_Ord_(Clock $type)'/0,
  'dn--un--__Impl_Eq_(Clock $type)'/0,
  'dn--un-->_Ord_(Clock $type)'/2,
  'dn--un-->=_Ord_(Clock $type)'/2,
  'dn--un--==_Eq_(Clock $type)'/2,
  'dn--un--<_Ord_(Clock $type)'/2,
  'dn--un--<=_Ord_(Clock $type)'/2,
  'dn--un--/=_Eq_(Clock $type)'/2,
  'un--toNano'/1,
  'un--timeDifference'/2,
  'un--subtractDuration'/3,
  'un--showTime'/3,
  'un--seconds'/1,
  'un--prim__osClockValid'/2,
  'un--prim__osClockSecond'/2,
  'un--prim__osClockNanosecond'/2,
  'un--prim__clockTimeUtc'/1,
  'un--prim__clockTimeThread'/1,
  'un--prim__clockTimeProcess'/1,
  'un--prim__clockTimeMonotonic'/1,
  'un--prim__clockTimeGcReal'/1,
  'un--prim__clockTimeGcCpu'/1,
  'un--osClockValid'/2,
  'un--osClockSecond'/2,
  'un--osClockNanosecond'/2,
  'un--nanoseconds'/1,
  'un--makeDuration'/2,
  'un--isClockMandatory'/1,
  'un--fromOSClock'/3,
  'un--fromNano'/2,
  'un--fetchOSClock'/2,
  'un--clockTimeUtc'/1,
  'un--clockTimeThread'/1,
  'un--clockTimeReturnType'/1,
  'un--clockTimeProcess'/1,
  'un--clockTimeMonotonic'/1,
  'un--clockTimeGcReal'/1,
  'un--clockTimeGcCpu'/1,
  'un--clockTime'/2,
  'un--addDuration'/3
]).
'with--clockTime-4296'(V0, V1, V2) -> case V1 of 0 -> begin (V3 = ('un--fetchOSClock'(V0, V2))), ('un--fromOSClock'(V0, V3, V2)) end; 1 -> begin (V4 = ('un--fetchOSClock'(V0, V2))), begin (V7 = ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(V5, 1)) end, fun (V6) -> ('un--osClockValid'(V4, V6)) end, V2))), case V7 of 1 -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(fun (V8) -> {'Idris.Prelude.Types.Just', V8} end, fun (V9) -> ('un--fromOSClock'(V0, V4, V9)) end, V2)); 0 -> {'Idris.Prelude.Types.Nothing'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--clockTimeReturnType-4293'(V0, V1) -> case V1 of 1 -> {'Idris.Prelude.Types.Maybe', {'Idris.System.Clock.Clock', V0}}; 0 -> {'Idris.System.Clock.Clock', V0}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--with block in clockTime-4333'(V0, V1, V2, V3) -> case V2 of 1 -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(fun (V4) -> {'Idris.Prelude.Types.Just', V4} end, fun (V5) -> ('un--fromOSClock'(V0, V1, V5)) end, V3)); 0 -> {'Idris.Prelude.Types.Nothing'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-3998'(V0, V1, V2, V3, V4, V5) -> case V5 of 0 -> 0; 2 -> 2; 1 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Integer'(V1, V3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-3935'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-3914'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show_ClockType'(V0) -> case V0 of 0 -> <<"UTC"/utf8>>; 1 -> <<"monotonic"/utf8>>; 2 -> <<"duration"/utf8>>; 3 -> <<"process"/utf8>>; 4 -> <<"thread"/utf8>>; 5 -> <<"gcCPU"/utf8>>; 6 -> <<"gcReal"/utf8>>; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show_(Clock $type)'(V0) -> case V0 of {'Idris.System.Clock.MkClock', E0, E1, E2} -> (fun (V1, V2, V3) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(('dn--un--show_Show_ClockType'(V1)), ('Idris.Idris2.Prelude.Types.String':'un--++'(<<": "/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Integer'(V2)), ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"s "/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Integer'(V3)), <<"ns"/utf8>>)))))))))) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--showPrec_Show_ClockType'(V0, V1) -> ('dn--un--show_Show_ClockType'(V1)).
'dn--un--showPrec_Show_(Clock $type)'(V0, V1) -> ('dn--un--show_Show_(Clock $type)'(V1)).
'dn--un--min_Ord_(Clock $type)'(V0, V1) -> case ('dn--un--<_Ord_(Clock $type)'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_(Clock $type)'(V0, V1) -> case ('dn--un-->_Ord_(Clock $type)'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--compare_Ord_(Clock $type)'(V0, V1) -> case V0 of {'Idris.System.Clock.MkClock', E0, E1, E2} -> (fun (V2, V3, V4) -> case V1 of {'Idris.System.Clock.MkClock', E3, E4, E5} -> (fun (V5, V6, V7) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Integer'(V3, V6)) of 0 -> 0; 2 -> 2; 1 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Integer'(V4, V7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Impl_Show_ClockType'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_ClockType'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_ClockType'(V1, V2)) end end}.
'dn--un--__Impl_Show_(Clock $type)'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_(Clock $type)'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_(Clock $type)'(V1, V2)) end end}.
'dn--un--__Impl_Ord_(Clock $type)'() -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_(Clock $type)'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_(Clock $type)'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_(Clock $type)'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_(Clock $type)'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_(Clock $type)'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_(Clock $type)'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_(Clock $type)'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_(Clock $type)'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_(Clock $type)'(V16, V17)) end end}.
'dn--un--__Impl_Eq_(Clock $type)'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_(Clock $type)'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_(Clock $type)'(V2, V3)) end end}.
'dn--un-->_Ord_(Clock $type)'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(Clock $type)'(V0, V1)), 2)).
'dn--un-->=_Ord_(Clock $type)'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(Clock $type)'(V0, V1)), 0)).
'dn--un--==_Eq_(Clock $type)'(V0, V1) -> case V0 of {'Idris.System.Clock.MkClock', E0, E1, E2} -> (fun (V2, V3, V4) -> case V1 of {'Idris.System.Clock.MkClock', E3, E4, E5} -> (fun (V5, V6, V7) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Integer'(V3, V6)) of 1 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Integer'(V4, V7)); 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--<_Ord_(Clock $type)'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(Clock $type)'(V0, V1)), 0)).
'dn--un--<=_Ord_(Clock $type)'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(Clock $type)'(V0, V1)), 2)).
'dn--un--/=_Eq_(Clock $type)'(V0, V1) -> case ('dn--un--==_Eq_(Clock $type)'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--toNano'(V0) -> case V0 of {'Idris.System.Clock.MkClock', E0, E1, E2} -> (fun (V1, V2, V3) -> begin (V4 = 1000000000), ((V4 * V2) + V3) end end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--timeDifference'(V0, V1) -> ('un--fromNano'(2, (('un--toNano'(V0)) - ('un--toNano'(V1))))).
'un--subtractDuration'(V0, V1, V2) -> ('un--fromNano'(V0, (('un--toNano'(V1)) - ('un--toNano'(V2))))).
'un--showTime'(V0, V1, V2) -> case V2 of {'Idris.System.Clock.MkClock', E0, E1, E2} -> (fun (V3, V4, V5) -> begin (V6 = ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Integer'(V4))), begin (V7 = ('Idris.Idris2.Prelude.Cast':'dn--un--cast_Cast_Nat_Integer'(('Idris.Idris2.Data.Nat':'un--power'((1 + (1 + (1 + (1 + (1 + (1 + (1 + (1 + (1 + (1 + 0)))))))))), ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(((1 + (1 + (1 + (1 + (1 + (1 + (1 + (1 + (1 + 0))))))))) - V1)))))))), begin (V8 = ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Integer'(('Idris.Idris2.Prelude.Num':'dn--un--div_Integral_Integer'(('Idris.Idris2.Prelude.Cast':'dn--un--cast_Cast_$a_$a'(V5)), V7))))), ('Idris.Idris2.Prelude.Interfaces':'un--concat'({'Idris.Builtin.MkPair', {'Idris.Prelude.Interfaces.MkFoldable', fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V11, V12, V13)) end end end end end, fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V16, V17, V18)) end end end end end, fun (V19) -> fun (V20) -> ('Idris.Idris2.Prelude.Types':'dn--un--null_Foldable_List'(V20)) end end, fun (V21) -> fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldlM_Foldable_List'(V24, V25, V26, V27)) end end end end end end end, fun (V28) -> fun (V29) -> ('Idris.Idris2.Prelude.Types':'dn--un--toList_Foldable_List'(V29)) end end, fun (V30) -> fun (V31) -> fun (V32) -> fun (V33) -> fun (V34) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V32, V33, V34)) end end end end end}, {'Idris.Prelude.Interfaces.MkMonoid', fun (V35) -> fun (V36) -> ('Idris.Idris2.Prelude.Types':'dn--un--<+>_Semigroup_String'(V35, V36)) end end, ('Idris.Idris2.Prelude.Types':'dn--un--neutral_Monoid_String'())}}, [('Idris.Idris2.Data.String':'un--padLeft'(V0, $0, V6)) | [<<"."/utf8>> | [('Idris.Idris2.Data.String':'un--padRight'(V1, $0, V8)) | [<<"s"/utf8>> | []]]]])) end end end end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--seconds'(V0) -> case V0 of {'Idris.System.Clock.MkClock', E0, E1, E2} -> (fun (V1, V2, V3) -> V2 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--prim__osClockValid'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive System.Clock.prim__osClockValid")).
'un--prim__osClockSecond'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive System.Clock.prim__osClockSecond")).
'un--prim__osClockNanosecond'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive System.Clock.prim__osClockNanosecond")).
'un--prim__clockTimeUtc'(V0) -> ('erlang':'throw'("Error: Unsupported %foreign primitive System.Clock.prim__clockTimeUtc")).
'un--prim__clockTimeThread'(V0) -> ('erlang':'throw'("Error: Unsupported %foreign primitive System.Clock.prim__clockTimeThread")).
'un--prim__clockTimeProcess'(V0) -> ('erlang':'throw'("Error: Unsupported %foreign primitive System.Clock.prim__clockTimeProcess")).
'un--prim__clockTimeMonotonic'(V0) -> ('erlang':'throw'("Error: Unsupported %foreign primitive System.Clock.prim__clockTimeMonotonic")).
'un--prim__clockTimeGcReal'(V0) -> ('erlang':'throw'("Error: Unsupported %foreign primitive System.Clock.prim__clockTimeGcReal")).
'un--prim__clockTimeGcCpu'(V0) -> ('erlang':'throw'("Error: Unsupported %foreign primitive System.Clock.prim__clockTimeGcCpu")).
'un--osClockValid'(V0, V1) -> ('un--prim__osClockValid'(V0, V1)).
'un--osClockSecond'(V0, V1) -> ('un--prim__osClockSecond'(V0, V1)).
'un--osClockNanosecond'(V0, V1) -> ('un--prim__osClockNanosecond'(V0, V1)).
'un--nanoseconds'(V0) -> case V0 of {'Idris.System.Clock.MkClock', E0, E1, E2} -> (fun (V1, V2, V3) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--makeDuration'(V0, V1) -> {'Idris.System.Clock.MkClock', 2, V0, V1}.
'un--isClockMandatory'(V0) -> case V0 of 5 -> 1; 6 -> 1; _ -> 0 end.
'un--fromOSClock'(V0, V1, V2) -> begin (V3 = ('un--osClockSecond'(V1, V2))), begin (V4 = ('un--osClockNanosecond'(V1, V2))), {'Idris.System.Clock.MkClock', V0, ('Idris.Idris2.Prelude.Cast':'dn--un--cast_Cast_Bits64_Integer'(V3)), ('Idris.Idris2.Prelude.Cast':'dn--un--cast_Cast_Bits64_Integer'(V4))} end end.
'un--fromNano'(V0, V1) -> begin (V2 = 1000000000), begin (V3 = ('Idris.Idris2.Prelude.Num':'dn--un--div_Integral_Integer'(V1, V2))), begin (V4 = ('Idris.Idris2.Prelude.Num':'dn--un--mod_Integral_Integer'(V1, V2))), {'Idris.System.Clock.MkClock', V0, V3, V4} end end end.
'un--fetchOSClock'(V0, V1) -> case V0 of 0 -> ('un--clockTimeUtc'(V1)); 1 -> ('un--clockTimeMonotonic'(V1)); 3 -> ('un--clockTimeProcess'(V1)); 4 -> ('un--clockTimeThread'(V1)); 5 -> ('un--clockTimeGcCpu'(V1)); 6 -> ('un--clockTimeGcReal'(V1)); 2 -> ('un--clockTimeMonotonic'(V1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--clockTimeUtc'(V0) -> ('un--prim__clockTimeUtc'(V0)).
'un--clockTimeThread'(V0) -> ('un--prim__clockTimeThread'(V0)).
'un--clockTimeReturnType'(V0) -> ('with--clockTimeReturnType-4293'(V0, ('un--isClockMandatory'(V0)))).
'un--clockTimeProcess'(V0) -> ('un--prim__clockTimeProcess'(V0)).
'un--clockTimeMonotonic'(V0) -> ('un--prim__clockTimeMonotonic'(V0)).
'un--clockTimeGcReal'(V0) -> ('un--prim__clockTimeGcReal'(V0)).
'un--clockTimeGcCpu'(V0) -> ('un--prim__clockTimeGcCpu'(V0)).
'un--clockTime'(V0, V1) -> ('with--clockTime-4296'(V0, ('un--isClockMandatory'(V0)), V1)).
'un--addDuration'(V0, V1, V2) -> ('un--fromNano'(V0, (('un--toNano'(V1)) + ('un--toNano'(V2))))).
