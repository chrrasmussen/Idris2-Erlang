-module('Idris.Idris2.System.Clock').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--clockTime-676'/2,
  'with--clockTimeReturnType-673'/2,
  'case--with block in clockTime-713'/3,
  'case--compare-453'/6,
  'case--max-394'/4,
  'case--min-373'/4,
  'dn--un--show_Show__ClockType'/1,
  'dn--un--show_Show__(Clock $type)'/2,
  'dn--un--showPrec_Show__ClockType'/2,
  'dn--un--showPrec_Show__(Clock $type)'/3,
  'dn--un--min_Ord__(Clock $type)'/3,
  'dn--un--max_Ord__(Clock $type)'/3,
  'dn--un--compare_Ord__(Clock $type)'/3,
  'dn--un--__Impl_Show_ClockType'/0,
  'dn--un--__Impl_Show_(Clock $type)'/1,
  'dn--un--__Impl_Ord_(Clock $type)'/1,
  'dn--un--__Impl_Eq_(Clock $type)'/1,
  'dn--un-->_Ord__(Clock $type)'/3,
  'dn--un-->=_Ord__(Clock $type)'/3,
  'dn--un--==_Eq__(Clock $type)'/3,
  'dn--un--<_Ord__(Clock $type)'/3,
  'dn--un--<=_Ord__(Clock $type)'/3,
  'dn--un--/=_Eq__(Clock $type)'/3,
  'un--toNano'/2,
  'un--timeDifference'/3,
  'un--subtractDuration'/3,
  'un--seconds'/2,
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
  'un--nanoseconds'/2,
  'un--makeDuration'/2,
  'un--isClockMandatory'/1,
  'un--fromOSClock'/3,
  'un--fromNano'/2,
  'un--fetchOSClock'/1,
  'un--clockTimeUtc'/1,
  'un--clockTimeThread'/1,
  'un--clockTimeReturnType'/1,
  'un--clockTimeProcess'/1,
  'un--clockTimeMonotonic'/1,
  'un--clockTimeGcReal'/1,
  'un--clockTimeGcCpu'/1,
  'un--clockTime'/1,
  'un--addDuration'/3
]).
'with--clockTime-676'(V0, V1) -> case V1 of {'Idris.System.Clock.Mandatory'} -> (fun () -> fun (V2) -> begin (V3 = (('un--fetchOSClock'(V0))(V2))), ('un--fromOSClock'(V0, V3, V2)) end end end()); {'Idris.System.Clock.Optional'} -> (fun () -> fun (V4) -> begin (V5 = (('un--fetchOSClock'(V0))(V4))), begin (V8 = ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor__IO'('erased', 'erased', fun (V6) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Int'(V6, 1)) end, fun (V7) -> ('un--osClockValid'(V5, V7)) end, V4))), case V8 of 0 -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor__IO'('erased', 'erased', fun (V9) -> {'Idris.Prelude.Types.Just', V9} end, fun (V10) -> ('un--fromOSClock'(V0, V5, V10)) end, V4)); 1 -> {'Idris.Prelude.Types.Nothing'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'with--clockTimeReturnType-673'(V0, V1) -> case V1 of {'Idris.System.Clock.Optional'} -> (fun () -> {'Idris.Prelude.Types.Maybe', {'Idris.System.Clock.Clock', V0}} end()); {'Idris.System.Clock.Mandatory'} -> (fun () -> {'Idris.System.Clock.Clock', V0} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--with block in clockTime-713'(V0, V1, V2) -> case V2 of 0 -> fun (V3) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor__IO'('erased', 'erased', fun (V4) -> {'Idris.Prelude.Types.Just', V4} end, fun (V5) -> ('un--fromOSClock'(V0, V1, V5)) end, V3)) end; 1 -> fun (V6) -> {'Idris.Prelude.Types.Nothing'} end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-453'(V0, V1, V2, V3, V4, V5) -> case V5 of 0 -> 0; 2 -> 2; 1 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord__Integer'(V1, V3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-394'(V0, V1, V2, V3) -> case V3 of 0 -> V2; 1 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-373'(V0, V1, V2, V3) -> case V3 of 0 -> V2; 1 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show__ClockType'(V0) -> case V0 of {'Idris.System.Clock.UTC'} -> (fun () -> <<"UTC"/utf8>> end()); {'Idris.System.Clock.Monotonic'} -> (fun () -> <<"monotonic"/utf8>> end()); {'Idris.System.Clock.Duration'} -> (fun () -> <<"duration"/utf8>> end()); {'Idris.System.Clock.Process'} -> (fun () -> <<"process"/utf8>> end()); {'Idris.System.Clock.Thread'} -> (fun () -> <<"thread"/utf8>> end()); {'Idris.System.Clock.GCCPU'} -> (fun () -> <<"gcCPU"/utf8>> end()); {'Idris.System.Clock.GCReal'} -> (fun () -> <<"gcReal"/utf8>> end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show__(Clock $type)'(V0, V1) -> case V1 of {'Idris.System.Clock.MkClock', E0, E1, E2} -> (fun (V2, V3, V4) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('dn--un--show_Show__ClockType'(V2)), ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<": "/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Integer'(V3)), ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"s "/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Integer'(V4)), <<"ns"/utf8>>)))))))))) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--showPrec_Show__ClockType'(V0, V1) -> ('dn--un--show_Show__ClockType'(V1)).
'dn--un--showPrec_Show__(Clock $type)'(V0, V1, V2) -> ('dn--un--show_Show__(Clock $type)'('erased', V2)).
'dn--un--min_Ord__(Clock $type)'(V0, V1, V2) -> ('case--min-373'('erased', V2, V1, ('dn--un--<_Ord__(Clock $type)'('erased', V1, V2)))).
'dn--un--max_Ord__(Clock $type)'(V0, V1, V2) -> ('case--max-394'('erased', V2, V1, ('dn--un-->_Ord__(Clock $type)'('erased', V1, V2)))).
'dn--un--compare_Ord__(Clock $type)'(V0, V1, V2) -> case V1 of {'Idris.System.Clock.MkClock', E0, E1, E2} -> (fun (V3, V4, V5) -> case V2 of {'Idris.System.Clock.MkClock', E3, E4, E5} -> (fun (V6, V7, V8) -> ('case--compare-453'(V3, V5, V4, V8, V7, ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord__Integer'(V4, V7)))) end(E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Impl_Show_ClockType'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__ClockType'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__ClockType'(V1, V2)) end end}.
'dn--un--__Impl_Show_(Clock $type)'(V0) -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V1) -> ('dn--un--show_Show__(Clock $type)'('erased', V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show__(Clock $type)'('erased', V2, V3)) end end}.
'dn--un--__Impl_Ord_(Clock $type)'(V0) -> {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq__(Clock $type)'('erased', V1, V2)) end end, fun (V3) -> fun (V4) -> ('dn--un--/=_Eq__(Clock $type)'('erased', V3, V4)) end end}, fun (V5) -> fun (V6) -> ('dn--un--compare_Ord__(Clock $type)'('erased', V5, V6)) end end, fun (V7) -> fun (V8) -> ('dn--un--<_Ord__(Clock $type)'('erased', V7, V8)) end end, fun (V9) -> fun (V10) -> ('dn--un-->_Ord__(Clock $type)'('erased', V9, V10)) end end, fun (V11) -> fun (V12) -> ('dn--un--<=_Ord__(Clock $type)'('erased', V11, V12)) end end, fun (V13) -> fun (V14) -> ('dn--un-->=_Ord__(Clock $type)'('erased', V13, V14)) end end, fun (V15) -> fun (V16) -> ('dn--un--max_Ord__(Clock $type)'('erased', V15, V16)) end end, fun (V17) -> fun (V18) -> ('dn--un--min_Ord__(Clock $type)'('erased', V17, V18)) end end}.
'dn--un--__Impl_Eq_(Clock $type)'(V0) -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V1) -> fun (V2) -> ('dn--un--==_Eq__(Clock $type)'('erased', V1, V2)) end end, fun (V3) -> fun (V4) -> ('dn--un--/=_Eq__(Clock $type)'('erased', V3, V4)) end end}.
'dn--un-->_Ord__(Clock $type)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__(Clock $type)'('erased', V1, V2)), 2)).
'dn--un-->=_Ord__(Clock $type)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__(Clock $type)'('erased', V1, V2)), 0)).
'dn--un--==_Eq__(Clock $type)'(V0, V1, V2) -> case V1 of {'Idris.System.Clock.MkClock', E0, E1, E2} -> (fun (V3, V4, V5) -> case V2 of {'Idris.System.Clock.MkClock', E3, E4, E5} -> (fun (V6, V7, V8) -> ('Idris.Idris2.Prelude.Basics':'un--&&'(('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Integer'(V4, V7)), fun () -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Integer'(V5, V8)) end)) end(E3, E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--<_Ord__(Clock $type)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__(Clock $type)'('erased', V1, V2)), 0)).
'dn--un--<=_Ord__(Clock $type)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__(Clock $type)'('erased', V1, V2)), 2)).
'dn--un--/=_Eq__(Clock $type)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__(Clock $type)'('erased', V1, V2)))).
'un--toNano'(V0, V1) -> case V1 of {'Idris.System.Clock.MkClock', E0, E1, E2} -> (fun (V2, V3, V4) -> begin (V5 = 1000000000), ((V5 * V3) + V4) end end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--timeDifference'(V0, V1, V2) -> ('un--fromNano'({'Idris.System.Clock.Duration'}, ('Idris.Idris2.Prelude.Num':'dn--un---_Neg__Integer'(('un--toNano'('erased', V1)), ('un--toNano'('erased', V2)))))).
'un--subtractDuration'(V0, V1, V2) -> ('un--fromNano'(V0, ('Idris.Idris2.Prelude.Num':'dn--un---_Neg__Integer'(('un--toNano'('erased', V1)), ('un--toNano'('erased', V2)))))).
'un--seconds'(V0, V1) -> case V1 of {'Idris.System.Clock.MkClock', E0, E1, E2} -> (fun (V2, V3, V4) -> V3 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
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
'un--nanoseconds'(V0, V1) -> case V1 of {'Idris.System.Clock.MkClock', E0, E1, E2} -> (fun (V2, V3, V4) -> V4 end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--makeDuration'(V0, V1) -> {'Idris.System.Clock.MkClock', {'Idris.System.Clock.Duration'}, V0, V1}.
'un--isClockMandatory'(V0) -> case V0 of {'Idris.System.Clock.GCCPU'} -> (fun () -> {'Idris.System.Clock.Optional'} end()); {'Idris.System.Clock.GCReal'} -> (fun () -> {'Idris.System.Clock.Optional'} end()); _ -> {'Idris.System.Clock.Mandatory'} end.
'un--fromOSClock'(V0, V1, V2) -> begin (V3 = ('un--osClockSecond'(V1, V2))), begin (V4 = ('un--osClockNanosecond'(V1, V2))), {'Idris.System.Clock.MkClock', V0, ('Idris.Idris2.Prelude.Types':'dn--un--cast_Cast__Bits64_Integer'(V3)), ('Idris.Idris2.Prelude.Types':'dn--un--cast_Cast__Bits64_Integer'(V4))} end end.
'un--fromNano'(V0, V1) -> begin (V2 = 1000000000), begin (V3 = ('Idris.Idris2.Prelude.Num':'dn--un--div_Integral__Integer'(V1, V2))), begin (V4 = ('Idris.Idris2.Prelude.Num':'dn--un--mod_Integral__Integer'(V1, V2))), {'Idris.System.Clock.MkClock', V0, V3, V4} end end end.
'un--fetchOSClock'(V0) -> case V0 of {'Idris.System.Clock.UTC'} -> (fun () -> fun (V1) -> ('un--clockTimeUtc'(V1)) end end()); {'Idris.System.Clock.Monotonic'} -> (fun () -> fun (V2) -> ('un--clockTimeMonotonic'(V2)) end end()); {'Idris.System.Clock.Process'} -> (fun () -> fun (V3) -> ('un--clockTimeProcess'(V3)) end end()); {'Idris.System.Clock.Thread'} -> (fun () -> fun (V4) -> ('un--clockTimeThread'(V4)) end end()); {'Idris.System.Clock.GCCPU'} -> (fun () -> fun (V5) -> ('un--clockTimeGcCpu'(V5)) end end()); {'Idris.System.Clock.GCReal'} -> (fun () -> fun (V6) -> ('un--clockTimeGcReal'(V6)) end end()); {'Idris.System.Clock.Duration'} -> (fun () -> fun (V7) -> ('un--clockTimeMonotonic'(V7)) end end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--clockTimeUtc'(V0) -> ('un--prim__clockTimeUtc'(V0)).
'un--clockTimeThread'(V0) -> ('un--prim__clockTimeThread'(V0)).
'un--clockTimeReturnType'(V0) -> ('with--clockTimeReturnType-673'(V0, ('un--isClockMandatory'(V0)))).
'un--clockTimeProcess'(V0) -> ('un--prim__clockTimeProcess'(V0)).
'un--clockTimeMonotonic'(V0) -> ('un--prim__clockTimeMonotonic'(V0)).
'un--clockTimeGcReal'(V0) -> ('un--prim__clockTimeGcReal'(V0)).
'un--clockTimeGcCpu'(V0) -> ('un--prim__clockTimeGcCpu'(V0)).
'un--clockTime'(V0) -> ('with--clockTime-676'(V0, ('un--isClockMandatory'(V0)))).
'un--addDuration'(V0, V1, V2) -> ('un--fromNano'(V0, (('un--toNano'('erased', V1)) + ('un--toNano'('erased', V2))))).
