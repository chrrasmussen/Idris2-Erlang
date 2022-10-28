-module('Idris.Idris2.System.Clock').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--clockTime-2303'/3,
  'with--clockTimeReturnType-2296'/2,
  'case--with block in clockTime-2344'/3,
  'case--compare-1858'/6,
  'case--max-1793'/3,
  'case--min-1770'/3,
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
'with--clockTime-2303'(V0, V1, V2) -> case V1 of 0 -> begin (V3 = ('un--fetchOSClock'(V0, V2))), ('un--fromOSClock'(V0, V3, V2)) end; 1 -> begin (V4 = ('un--fetchOSClock'(V0, V2))), begin (V16 = (((begin (V13 = fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V10, V11, V12)) end end end end end), fun (V14) -> fun (V15) -> ((((V13('erased'))('erased'))(V14))(V15)) end end end(fun (V6) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Int'(V6, begin (V7 = 1), case ((V7 band 9223372036854775808) =/= 0) of 'true' -> (V7 bor -9223372036854775808); _ -> (V7 band 9223372036854775807) end end)) end))(fun (V5) -> ('un--osClockValid'(V4, V5)) end))(V2))), case V16 of 1 -> (((begin (V24 = fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V21, V22, V23)) end end end end end), fun (V25) -> fun (V26) -> ((((V24('erased'))('erased'))(V25))(V26)) end end end(fun (V18) -> {'Prelude.Types.Just', V18} end))(fun (V17) -> ('un--fromOSClock'(V0, V4, V17)) end))(V2)); 0 -> {'Prelude.Types.Nothing'} end end end end.
'with--clockTimeReturnType-2296'(V0, V1) -> case V1 of 1 -> {'Prelude.Types.Maybe', {'System.Clock.Clock', V0}}; 0 -> {'System.Clock.Clock', V0} end.
'case--with block in clockTime-2344'(V0, V1, V2) -> case V2 of 1 -> ((begin (V10 = fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor_IO'(V7, V8, V9)) end end end end end), fun (V11) -> fun (V12) -> ((((V10('erased'))('erased'))(V11))(V12)) end end end(fun (V4) -> {'Prelude.Types.Just', V4} end))(fun (V3) -> ('un--fromOSClock'(V0, V1, V3)) end)); 0 -> fun (V13) -> {'Prelude.Types.Nothing'} end end.
'case--compare-1858'(V0, V1, V2, V3, V4, V5) -> case V5 of 0 -> 0; 2 -> 2; 1 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Integer'(V1, V3)) end.
'case--max-1793'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--min-1770'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'dn--un--show_Show_ClockType'(V0) -> case V0 of 0 -> <<"UTC"/utf8>>; 1 -> <<"monotonic"/utf8>>; 2 -> <<"duration"/utf8>>; 3 -> <<"process"/utf8>>; 4 -> <<"thread"/utf8>>; 5 -> <<"gcCPU"/utf8>>; 6 -> <<"gcReal"/utf8>> end.
'dn--un--show_Show_(Clock $type)'(V0) -> case V0 of {'System.Clock.MkClock', V1, V2, V3} -> <<('dn--un--show_Show_ClockType'(V1))/binary, <<<<": "/utf8>>/binary, <<('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Integer'(V2))/binary, <<<<"s "/utf8>>/binary, <<('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Integer'(V3))/binary, <<"ns"/utf8>>/binary>>/binary>>/binary>>/binary>>/binary>> end.
'dn--un--showPrec_Show_ClockType'(V0, V1) -> ('dn--un--show_Show_ClockType'(V1)).
'dn--un--showPrec_Show_(Clock $type)'(V0, V1) -> ('dn--un--show_Show_(Clock $type)'(V1)).
'dn--un--min_Ord_(Clock $type)'(V0, V1) -> case ('dn--un--<_Ord_(Clock $type)'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--max_Ord_(Clock $type)'(V0, V1) -> case ('dn--un-->_Ord_(Clock $type)'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--compare_Ord_(Clock $type)'(V0, V1) -> case V0 of {'System.Clock.MkClock', V2, V3, V4} -> case V1 of {'System.Clock.MkClock', V5, V6, V7} -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Integer'(V3, V6)) of 0 -> 0; 2 -> 2; 1 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Integer'(V4, V7)) end end end.
'dn--un--__Impl_Show_ClockType'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_ClockType'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_ClockType'(V1, V2)) end end}.
'dn--un--__Impl_Show_(Clock $type)'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_(Clock $type)'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--show_Show_(Clock $type)'(V2)) end end}.
'dn--un--__Impl_Ord_(Clock $type)'() -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_(Clock $type)'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_(Clock $type)'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_(Clock $type)'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_(Clock $type)'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_(Clock $type)'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_(Clock $type)'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_(Clock $type)'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_(Clock $type)'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_(Clock $type)'(V16, V17)) end end}.
'dn--un--__Impl_Eq_(Clock $type)'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_(Clock $type)'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_(Clock $type)'(V2, V3)) end end}.
'dn--un-->_Ord_(Clock $type)'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(Clock $type)'(V0, V1)), 2)).
'dn--un-->=_Ord_(Clock $type)'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(Clock $type)'(V0, V1)), 0)).
'dn--un--==_Eq_(Clock $type)'(V0, V1) -> case V0 of {'System.Clock.MkClock', V2, V3, V4} -> case V1 of {'System.Clock.MkClock', V5, V6, V7} -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Integer'(V3, V6)) of 1 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Integer'(V4, V7)); 0 -> 0 end end end.
'dn--un--<_Ord_(Clock $type)'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(Clock $type)'(V0, V1)), 0)).
'dn--un--<=_Ord_(Clock $type)'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(Clock $type)'(V0, V1)), 2)).
'dn--un--/=_Eq_(Clock $type)'(V0, V1) -> case ('dn--un--==_Eq_(Clock $type)'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'un--toNano'(V0) -> case V0 of {'System.Clock.MkClock', V1, V2, V3} -> ((V2 * 1000000000) + V3) end.
'un--timeDifference'(V0, V1) -> ('un--fromNano'(2, (('un--toNano'(V0)) - ('un--toNano'(V1))))).
'un--subtractDuration'(V0, V1, V2) -> ('un--fromNano'(V0, (('un--toNano'(V1)) - ('un--toNano'(V2))))).
'un--showTime'(V0, V1, V2) -> case V2 of {'System.Clock.MkClock', V3, V4, V5} -> begin (V6 = ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Integer'(V4))), begin (V7 = ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Integer'(V5))), ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V8) -> fun (V9) -> <<V8/binary, V9/binary>> end end, <<""/utf8>>}, fun (V10) -> V10 end, [('Idris.Idris2.Data.String':'un--padLeft'(V0, $0, V6)) | [case case (V1 =:= 0) of 'false' -> 0; _ -> 1 end of 1 -> <<""/utf8>>; 0 -> <<"."/utf8>> end | [('Idris.Idris2.Data.String':'un--padRight'(V1, $0, ('Idris.Idris2.Prelude.Types':'un--substr'(0, V1, ('Idris.Idris2.Data.String':'un--padLeft'(9, $0, V7)))))) | [<<"s"/utf8>> | []]]]])) end end end.
'un--seconds'(V0) -> case V0 of {'System.Clock.MkClock', V1, V2, V3} -> V2 end.
'un--prim__osClockValid'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive System.Clock.prim__osClockValid"/utf8>>})).
'un--prim__osClockSecond'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive System.Clock.prim__osClockSecond"/utf8>>})).
'un--prim__osClockNanosecond'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive System.Clock.prim__osClockNanosecond"/utf8>>})).
'un--prim__clockTimeUtc'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive System.Clock.prim__clockTimeUtc"/utf8>>})).
'un--prim__clockTimeThread'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive System.Clock.prim__clockTimeThread"/utf8>>})).
'un--prim__clockTimeProcess'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive System.Clock.prim__clockTimeProcess"/utf8>>})).
'un--prim__clockTimeMonotonic'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive System.Clock.prim__clockTimeMonotonic"/utf8>>})).
'un--prim__clockTimeGcReal'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive System.Clock.prim__clockTimeGcReal"/utf8>>})).
'un--prim__clockTimeGcCpu'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive System.Clock.prim__clockTimeGcCpu"/utf8>>})).
'un--osClockValid'(V0, V1) -> ('un--prim__osClockValid'(V0, V1)).
'un--osClockSecond'(V0, V1) -> ('un--prim__osClockSecond'(V0, V1)).
'un--osClockNanosecond'(V0, V1) -> ('un--prim__osClockNanosecond'(V0, V1)).
'un--nanoseconds'(V0) -> case V0 of {'System.Clock.MkClock', V1, V2, V3} -> V3 end.
'un--makeDuration'(V0, V1) -> {'System.Clock.MkClock', 2, V0, V1}.
'un--isClockMandatory'(V0) -> case V0 of 5 -> 1; 6 -> 1; _ -> 0 end.
'un--fromOSClock'(V0, V1, V2) -> begin (V3 = ('un--osClockSecond'(V1, V2))), begin (V4 = ('un--osClockNanosecond'(V1, V2))), {'System.Clock.MkClock', V0, V3, V4} end end.
'un--fromNano'(V0, V1) -> begin (V2 = ('Idris.Idris2.Prelude.Num':'dn--un--div_Integral_Integer'(V1, 1000000000))), begin (V3 = ('Idris.Idris2.Prelude.Num':'dn--un--mod_Integral_Integer'(V1, 1000000000))), {'System.Clock.MkClock', V0, V2, V3} end end.
'un--fetchOSClock'(V0, V1) -> case V0 of 0 -> ('un--clockTimeUtc'(V1)); 1 -> ('un--clockTimeMonotonic'(V1)); 3 -> ('un--clockTimeProcess'(V1)); 4 -> ('un--clockTimeThread'(V1)); 5 -> ('un--clockTimeGcCpu'(V1)); 6 -> ('un--clockTimeGcReal'(V1)); 2 -> ('un--clockTimeMonotonic'(V1)) end.
'un--clockTimeUtc'(V0) -> ('un--prim__clockTimeUtc'(V0)).
'un--clockTimeThread'(V0) -> ('un--prim__clockTimeThread'(V0)).
'un--clockTimeReturnType'(V0) -> ('with--clockTimeReturnType-2296'(V0, ('un--isClockMandatory'(V0)))).
'un--clockTimeProcess'(V0) -> ('un--prim__clockTimeProcess'(V0)).
'un--clockTimeMonotonic'(V0) -> ('un--prim__clockTimeMonotonic'(V0)).
'un--clockTimeGcReal'(V0) -> ('un--prim__clockTimeGcReal'(V0)).
'un--clockTimeGcCpu'(V0) -> ('un--prim__clockTimeGcCpu'(V0)).
'un--clockTime'(V0, V1) -> ('with--clockTime-2303'(V0, ('un--isClockMandatory'(V0)), V1)).
'un--addDuration'(V0, V1, V2) -> ('un--fromNano'(V0, (('un--toNano'(V1)) + ('un--toNano'(V2))))).
