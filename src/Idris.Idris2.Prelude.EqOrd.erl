-module('Idris.Idris2.Prelude.EqOrd').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--compare-2402'/9,
  'case--max-2277'/7,
  'case--min-2235'/7,
  'case--case block in compare-2099'/3,
  'case--compare-2082'/3,
  'case--max-2065'/3,
  'case--min-2051'/3,
  'case--case block in compare-1985'/3,
  'case--compare-1968'/3,
  'case--max-1951'/3,
  'case--min-1937'/3,
  'case--case block in compare-1871'/3,
  'case--compare-1854'/3,
  'case--max-1837'/3,
  'case--min-1823'/3,
  'case--case block in compare-1757'/3,
  'case--compare-1740'/3,
  'case--max-1723'/3,
  'case--min-1709'/3,
  'case--case block in compare-1643'/3,
  'case--compare-1626'/3,
  'case--max-1609'/3,
  'case--min-1595'/3,
  'case--case block in compare-1529'/3,
  'case--compare-1512'/3,
  'case--max-1495'/3,
  'case--min-1481'/3,
  'case--case block in compare-1415'/3,
  'case--compare-1398'/3,
  'case--max-1381'/3,
  'case--min-1367'/3,
  'case--case block in compare-1301'/3,
  'case--compare-1284'/3,
  'case--max-1267'/3,
  'case--min-1253'/3,
  'case--case block in compare-1187'/3,
  'case--compare-1170'/3,
  'case--max-1153'/3,
  'case--min-1139'/3,
  'case--max-1045'/3,
  'case--min-1031'/3,
  'case--max-941'/3,
  'case--min-927'/3,
  'case--max-837'/3,
  'case--min-823'/3,
  'case--{Default implementation of min:0}-737'/5,
  'case--{Default implementation of max:0}-702'/5,
  'dn--un--min_Ord__Void'/2,
  'dn--un--min_Ord__String'/2,
  'dn--un--min_Ord__Integer'/2,
  'dn--un--min_Ord__Int'/2,
  'dn--un--min_Ord__Double'/2,
  'dn--un--min_Ord__Char'/2,
  'dn--un--min_Ord__Bool'/2,
  'dn--un--min_Ord__Bits8'/2,
  'dn--un--min_Ord__Bits64'/2,
  'dn--un--min_Ord__Bits32'/2,
  'dn--un--min_Ord__Bits16'/2,
  'dn--un--min_Ord__(|Unit,MkUnit|)'/2,
  'dn--un--min_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/6,
  'dn--un--max_Ord__Void'/2,
  'dn--un--max_Ord__String'/2,
  'dn--un--max_Ord__Integer'/2,
  'dn--un--max_Ord__Int'/2,
  'dn--un--max_Ord__Double'/2,
  'dn--un--max_Ord__Char'/2,
  'dn--un--max_Ord__Bool'/2,
  'dn--un--max_Ord__Bits8'/2,
  'dn--un--max_Ord__Bits64'/2,
  'dn--un--max_Ord__Bits32'/2,
  'dn--un--max_Ord__Bits16'/2,
  'dn--un--max_Ord__(|Unit,MkUnit|)'/2,
  'dn--un--max_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/6,
  'dn--un--compare_Ord__Void'/2,
  'dn--un--compare_Ord__String'/2,
  'dn--un--compare_Ord__Integer'/2,
  'dn--un--compare_Ord__Int'/2,
  'dn--un--compare_Ord__Double'/2,
  'dn--un--compare_Ord__Char'/2,
  'dn--un--compare_Ord__Bool'/2,
  'dn--un--compare_Ord__Bits8'/2,
  'dn--un--compare_Ord__Bits64'/2,
  'dn--un--compare_Ord__Bits32'/2,
  'dn--un--compare_Ord__Bits16'/2,
  'dn--un--compare_Ord__(|Unit,MkUnit|)'/2,
  'dn--un--compare_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/6,
  'dn--un--__Ord_(Eq ty)'/2,
  'dn--un--__Impl_Ord_Void'/0,
  'dn--un--__Impl_Ord_String'/0,
  'dn--un--__Impl_Ord_Integer'/0,
  'dn--un--__Impl_Ord_Int'/0,
  'dn--un--__Impl_Ord_Double'/0,
  'dn--un--__Impl_Ord_Char'/0,
  'dn--un--__Impl_Ord_Bool'/0,
  'dn--un--__Impl_Ord_Bits8'/0,
  'dn--un--__Impl_Ord_Bits64'/0,
  'dn--un--__Impl_Ord_Bits32'/0,
  'dn--un--__Impl_Ord_Bits16'/0,
  'dn--un--__Impl_Ord_(|Unit,MkUnit|)'/0,
  'dn--un--__Impl_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/4,
  'dn--un--__Impl_Eq_Void'/0,
  'dn--un--__Impl_Eq_String'/0,
  'dn--un--__Impl_Eq_Ordering'/0,
  'dn--un--__Impl_Eq_Integer'/0,
  'dn--un--__Impl_Eq_Int'/0,
  'dn--un--__Impl_Eq_Double'/0,
  'dn--un--__Impl_Eq_Char'/0,
  'dn--un--__Impl_Eq_Bool'/0,
  'dn--un--__Impl_Eq_Bits8'/0,
  'dn--un--__Impl_Eq_Bits64'/0,
  'dn--un--__Impl_Eq_Bits32'/0,
  'dn--un--__Impl_Eq_Bits16'/0,
  'dn--un--__Impl_Eq_(|Unit,MkUnit|)'/0,
  'dn--un--__Impl_Eq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/4,
  'dn--un-->_Ord__Void'/2,
  'dn--un-->_Ord__String'/2,
  'dn--un-->_Ord__Integer'/2,
  'dn--un-->_Ord__Int'/2,
  'dn--un-->_Ord__Double'/2,
  'dn--un-->_Ord__Char'/2,
  'dn--un-->_Ord__Bool'/2,
  'dn--un-->_Ord__Bits8'/2,
  'dn--un-->_Ord__Bits64'/2,
  'dn--un-->_Ord__Bits32'/2,
  'dn--un-->_Ord__Bits16'/2,
  'dn--un-->_Ord__(|Unit,MkUnit|)'/2,
  'dn--un-->_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/6,
  'dn--un-->=_Ord__Void'/2,
  'dn--un-->=_Ord__String'/2,
  'dn--un-->=_Ord__Integer'/2,
  'dn--un-->=_Ord__Int'/2,
  'dn--un-->=_Ord__Double'/2,
  'dn--un-->=_Ord__Char'/2,
  'dn--un-->=_Ord__Bool'/2,
  'dn--un-->=_Ord__Bits8'/2,
  'dn--un-->=_Ord__Bits64'/2,
  'dn--un-->=_Ord__Bits32'/2,
  'dn--un-->=_Ord__Bits16'/2,
  'dn--un-->=_Ord__(|Unit,MkUnit|)'/2,
  'dn--un-->=_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/6,
  'dn--un--==_Eq__Void'/2,
  'dn--un--==_Eq__String'/2,
  'dn--un--==_Eq__Ordering'/2,
  'dn--un--==_Eq__Integer'/2,
  'dn--un--==_Eq__Int'/2,
  'dn--un--==_Eq__Double'/2,
  'dn--un--==_Eq__Char'/2,
  'dn--un--==_Eq__Bool'/2,
  'dn--un--==_Eq__Bits8'/2,
  'dn--un--==_Eq__Bits64'/2,
  'dn--un--==_Eq__Bits32'/2,
  'dn--un--==_Eq__Bits16'/2,
  'dn--un--==_Eq__(|Unit,MkUnit|)'/2,
  'dn--un--==_Eq__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/6,
  'dn--un--<_Ord__Void'/2,
  'dn--un--<_Ord__String'/2,
  'dn--un--<_Ord__Integer'/2,
  'dn--un--<_Ord__Int'/2,
  'dn--un--<_Ord__Double'/2,
  'dn--un--<_Ord__Char'/2,
  'dn--un--<_Ord__Bool'/2,
  'dn--un--<_Ord__Bits8'/2,
  'dn--un--<_Ord__Bits64'/2,
  'dn--un--<_Ord__Bits32'/2,
  'dn--un--<_Ord__Bits16'/2,
  'dn--un--<_Ord__(|Unit,MkUnit|)'/2,
  'dn--un--<_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/6,
  'dn--un--<=_Ord__Void'/2,
  'dn--un--<=_Ord__String'/2,
  'dn--un--<=_Ord__Integer'/2,
  'dn--un--<=_Ord__Int'/2,
  'dn--un--<=_Ord__Double'/2,
  'dn--un--<=_Ord__Char'/2,
  'dn--un--<=_Ord__Bool'/2,
  'dn--un--<=_Ord__Bits8'/2,
  'dn--un--<=_Ord__Bits64'/2,
  'dn--un--<=_Ord__Bits32'/2,
  'dn--un--<=_Ord__Bits16'/2,
  'dn--un--<=_Ord__(|Unit,MkUnit|)'/2,
  'dn--un--<=_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/6,
  'dn--un--/=_Eq__Void'/2,
  'dn--un--/=_Eq__String'/2,
  'dn--un--/=_Eq__Ordering'/2,
  'dn--un--/=_Eq__Integer'/2,
  'dn--un--/=_Eq__Int'/2,
  'dn--un--/=_Eq__Double'/2,
  'dn--un--/=_Eq__Char'/2,
  'dn--un--/=_Eq__Bool'/2,
  'dn--un--/=_Eq__Bits8'/2,
  'dn--un--/=_Eq__Bits64'/2,
  'dn--un--/=_Eq__Bits32'/2,
  'dn--un--/=_Eq__Bits16'/2,
  'dn--un--/=_Eq__(|Unit,MkUnit|)'/2,
  'dn--un--/=_Eq__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/6,
  'un--min'/2,
  'un--max'/2,
  'un--comparing'/6,
  'un--compare'/2,
  'un-->='/2,
  'un-->'/2,
  'un--=='/2,
  'un--<='/2,
  'un--<'/2,
  'un--/='/2
]).
'case--compare-2402'(V0, V1, V2, V3, V4, V5, V6, V7, V8) -> case V8 of 0 -> case V2 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V9, V10, V11, V12, V13, V14, V15, V16) -> ((V10(V4))(V6)) end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; 1 -> case V3 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E8, E9, E10, E11, E12, E13, E14, E15} -> (fun (V17, V18, V19, V20, V21, V22, V23, V24) -> ((V18(V5))(V7)) end(E8, E9, E10, E11, E12, E13, E14, E15)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-2277'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of 0 -> V5; 1 -> V4; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-2235'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of 0 -> V5; 1 -> V4; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in compare-2099'(V0, V1, V2) -> case V2 of 0 -> 1; 1 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-2082'(V0, V1, V2) -> case V2 of 0 -> 0; 1 -> ('case--case block in compare-2099'(V0, V1, ('dn--un--==_Eq__Char'(V1, V0)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-2065'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-2051'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in compare-1985'(V0, V1, V2) -> case V2 of 0 -> 1; 1 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-1968'(V0, V1, V2) -> case V2 of 0 -> 0; 1 -> ('case--case block in compare-1985'(V0, V1, ('dn--un--==_Eq__String'(V1, V0)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-1951'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-1937'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in compare-1871'(V0, V1, V2) -> case V2 of 0 -> 1; 1 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-1854'(V0, V1, V2) -> case V2 of 0 -> 0; 1 -> ('case--case block in compare-1871'(V0, V1, ('dn--un--==_Eq__Double'(V1, V0)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-1837'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-1823'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in compare-1757'(V0, V1, V2) -> case V2 of 0 -> 1; 1 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-1740'(V0, V1, V2) -> case V2 of 0 -> 0; 1 -> ('case--case block in compare-1757'(V0, V1, ('dn--un--==_Eq__Bits64'(V1, V0)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-1723'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-1709'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in compare-1643'(V0, V1, V2) -> case V2 of 0 -> 1; 1 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-1626'(V0, V1, V2) -> case V2 of 0 -> 0; 1 -> ('case--case block in compare-1643'(V0, V1, ('dn--un--==_Eq__Bits32'(V1, V0)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-1609'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-1595'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in compare-1529'(V0, V1, V2) -> case V2 of 0 -> 1; 1 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-1512'(V0, V1, V2) -> case V2 of 0 -> 0; 1 -> ('case--case block in compare-1529'(V0, V1, ('dn--un--==_Eq__Bits16'(V1, V0)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-1495'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-1481'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in compare-1415'(V0, V1, V2) -> case V2 of 0 -> 1; 1 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-1398'(V0, V1, V2) -> case V2 of 0 -> 0; 1 -> ('case--case block in compare-1415'(V0, V1, ('dn--un--==_Eq__Bits8'(V1, V0)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-1381'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-1367'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in compare-1301'(V0, V1, V2) -> case V2 of 0 -> 1; 1 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-1284'(V0, V1, V2) -> case V2 of 0 -> 0; 1 -> ('case--case block in compare-1301'(V0, V1, ('dn--un--==_Eq__Integer'(V1, V0)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-1267'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-1253'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in compare-1187'(V0, V1, V2) -> case V2 of 0 -> 1; 1 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-1170'(V0, V1, V2) -> case V2 of 0 -> 0; 1 -> ('case--case block in compare-1187'(V0, V1, ('dn--un--==_Eq__Int'(V1, V0)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-1153'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-1139'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-1045'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-1031'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-941'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-927'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-837'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-823'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--{Default implementation of min:0}-737'(V0, V1, V2, V3, V4) -> case V4 of 0 -> V2; 1 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--{Default implementation of max:0}-702'(V0, V1, V2, V3, V4) -> case V4 of 0 -> V2; 1 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--min_Ord__Void'(V0, V1) -> ('case--min-823'(V1, V0, ('dn--un--<_Ord__Void'(V0, V1)))).
'dn--un--min_Ord__String'(V0, V1) -> ('case--min-1937'(V1, V0, ('dn--un--<_Ord__String'(V0, V1)))).
'dn--un--min_Ord__Integer'(V0, V1) -> ('case--min-1253'(V1, V0, ('dn--un--<_Ord__Integer'(V0, V1)))).
'dn--un--min_Ord__Int'(V0, V1) -> ('case--min-1139'(V1, V0, ('dn--un--<_Ord__Int'(V0, V1)))).
'dn--un--min_Ord__Double'(V0, V1) -> ('case--min-1823'(V1, V0, ('dn--un--<_Ord__Double'(V0, V1)))).
'dn--un--min_Ord__Char'(V0, V1) -> ('case--min-2051'(V1, V0, ('dn--un--<_Ord__Char'(V0, V1)))).
'dn--un--min_Ord__Bool'(V0, V1) -> ('case--min-1031'(V1, V0, ('dn--un--<_Ord__Bool'(V0, V1)))).
'dn--un--min_Ord__Bits8'(V0, V1) -> ('case--min-1367'(V1, V0, ('dn--un--<_Ord__Bits8'(V0, V1)))).
'dn--un--min_Ord__Bits64'(V0, V1) -> ('case--min-1709'(V1, V0, ('dn--un--<_Ord__Bits64'(V0, V1)))).
'dn--un--min_Ord__Bits32'(V0, V1) -> ('case--min-1595'(V1, V0, ('dn--un--<_Ord__Bits32'(V0, V1)))).
'dn--un--min_Ord__Bits16'(V0, V1) -> ('case--min-1481'(V1, V0, ('dn--un--<_Ord__Bits16'(V0, V1)))).
'dn--un--min_Ord__(|Unit,MkUnit|)'(V0, V1) -> ('case--min-927'(V1, V0, ('dn--un--<_Ord__(|Unit,MkUnit|)'(V0, V1)))).
'dn--un--min_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3, V4, V5) -> ('case--min-2235'('erased', 'erased', V2, V3, V5, V4, ('dn--un--<_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', V2, V3, V4, V5)))).
'dn--un--max_Ord__Void'(V0, V1) -> ('case--max-837'(V1, V0, ('dn--un-->_Ord__Void'(V0, V1)))).
'dn--un--max_Ord__String'(V0, V1) -> ('case--max-1951'(V1, V0, ('dn--un-->_Ord__String'(V0, V1)))).
'dn--un--max_Ord__Integer'(V0, V1) -> ('case--max-1267'(V1, V0, ('dn--un-->_Ord__Integer'(V0, V1)))).
'dn--un--max_Ord__Int'(V0, V1) -> ('case--max-1153'(V1, V0, ('dn--un-->_Ord__Int'(V0, V1)))).
'dn--un--max_Ord__Double'(V0, V1) -> ('case--max-1837'(V1, V0, ('dn--un-->_Ord__Double'(V0, V1)))).
'dn--un--max_Ord__Char'(V0, V1) -> ('case--max-2065'(V1, V0, ('dn--un-->_Ord__Char'(V0, V1)))).
'dn--un--max_Ord__Bool'(V0, V1) -> ('case--max-1045'(V1, V0, ('dn--un-->_Ord__Bool'(V0, V1)))).
'dn--un--max_Ord__Bits8'(V0, V1) -> ('case--max-1381'(V1, V0, ('dn--un-->_Ord__Bits8'(V0, V1)))).
'dn--un--max_Ord__Bits64'(V0, V1) -> ('case--max-1723'(V1, V0, ('dn--un-->_Ord__Bits64'(V0, V1)))).
'dn--un--max_Ord__Bits32'(V0, V1) -> ('case--max-1609'(V1, V0, ('dn--un-->_Ord__Bits32'(V0, V1)))).
'dn--un--max_Ord__Bits16'(V0, V1) -> ('case--max-1495'(V1, V0, ('dn--un-->_Ord__Bits16'(V0, V1)))).
'dn--un--max_Ord__(|Unit,MkUnit|)'(V0, V1) -> ('case--max-941'(V1, V0, ('dn--un-->_Ord__(|Unit,MkUnit|)'(V0, V1)))).
'dn--un--max_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3, V4, V5) -> ('case--max-2277'('erased', 'erased', V2, V3, V5, V4, ('dn--un-->_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', V2, V3, V4, V5)))).
'dn--un--compare_Ord__Void'(V0, V1) -> ('erlang':'throw'("No clauses")).
'dn--un--compare_Ord__String'(V0, V1) -> ('case--compare-1968'(V1, V0, ('dn--un--<_Ord__String'(V0, V1)))).
'dn--un--compare_Ord__Integer'(V0, V1) -> ('case--compare-1284'(V1, V0, ('dn--un--<_Ord__Integer'(V0, V1)))).
'dn--un--compare_Ord__Int'(V0, V1) -> ('case--compare-1170'(V1, V0, ('dn--un--<_Ord__Int'(V0, V1)))).
'dn--un--compare_Ord__Double'(V0, V1) -> ('case--compare-1854'(V1, V0, ('dn--un--<_Ord__Double'(V0, V1)))).
'dn--un--compare_Ord__Char'(V0, V1) -> ('case--compare-2082'(V1, V0, ('dn--un--<_Ord__Char'(V0, V1)))).
'dn--un--compare_Ord__Bool'(V0, V1) -> case V0 of 1 -> case V1 of 1 -> 1; 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; 0 -> case V1 of 1 -> 2; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--compare_Ord__Bits8'(V0, V1) -> ('case--compare-1398'(V1, V0, ('dn--un--<_Ord__Bits8'(V0, V1)))).
'dn--un--compare_Ord__Bits64'(V0, V1) -> ('case--compare-1740'(V1, V0, ('dn--un--<_Ord__Bits64'(V0, V1)))).
'dn--un--compare_Ord__Bits32'(V0, V1) -> ('case--compare-1626'(V1, V0, ('dn--un--<_Ord__Bits32'(V0, V1)))).
'dn--un--compare_Ord__Bits16'(V0, V1) -> ('case--compare-1512'(V1, V0, ('dn--un--<_Ord__Bits16'(V0, V1)))).
'dn--un--compare_Ord__(|Unit,MkUnit|)'(V0, V1) -> 1.
'dn--un--compare_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3, V4, V5) -> case V4 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V6, V7) -> case V5 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V8, V9) -> ('case--compare-2402'('erased', 'erased', V2, V3, V6, V7, V8, V9, case case V2 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E6, E7, E8, E9, E10, E11, E12, E13} -> (fun (V10, V11, V12, V13, V14, V15, V16, V17) -> V10 end(E6, E7, E8, E9, E10, E11, E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E4, E5} -> (fun (V18, V19) -> ((V19(V6))(V8)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Ord_(Eq ty)'(V0, V1) -> case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9) -> V2 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Impl_Ord_Void'() -> {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Void'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Void'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord__Void'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord__Void'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord__Void'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord__Void'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord__Void'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord__Void'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord__Void'(V16, V17)) end end}.
'dn--un--__Impl_Ord_String'() -> {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__String'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__String'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord__String'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord__String'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord__String'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord__String'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord__String'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord__String'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord__String'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Integer'() -> {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Integer'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Integer'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord__Integer'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord__Integer'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord__Integer'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord__Integer'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord__Integer'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord__Integer'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord__Integer'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Int'() -> {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Int'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Int'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord__Int'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord__Int'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord__Int'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord__Int'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord__Int'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord__Int'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord__Int'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Double'() -> {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Double'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Double'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord__Double'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord__Double'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord__Double'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord__Double'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord__Double'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord__Double'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord__Double'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Char'() -> {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Char'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Char'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord__Char'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord__Char'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord__Char'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord__Char'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord__Char'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord__Char'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord__Char'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Bool'() -> {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Bool'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Bool'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord__Bool'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord__Bool'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord__Bool'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord__Bool'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord__Bool'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord__Bool'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord__Bool'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Bits8'() -> {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Bits8'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Bits8'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord__Bits8'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord__Bits8'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord__Bits8'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord__Bits8'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord__Bits8'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord__Bits8'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord__Bits8'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Bits64'() -> {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Bits64'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Bits64'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord__Bits64'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord__Bits64'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord__Bits64'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord__Bits64'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord__Bits64'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord__Bits64'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord__Bits64'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Bits32'() -> {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Bits32'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Bits32'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord__Bits32'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord__Bits32'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord__Bits32'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord__Bits32'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord__Bits32'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord__Bits32'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord__Bits32'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Bits16'() -> {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Bits16'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Bits16'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord__Bits16'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord__Bits16'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord__Bits16'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord__Bits16'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord__Bits16'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord__Bits16'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord__Bits16'(V16, V17)) end end}.
'dn--un--__Impl_Ord_(|Unit,MkUnit|)'() -> {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__(|Unit,MkUnit|)'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__(|Unit,MkUnit|)'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord__(|Unit,MkUnit|)'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord__(|Unit,MkUnit|)'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord__(|Unit,MkUnit|)'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord__(|Unit,MkUnit|)'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord__(|Unit,MkUnit|)'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord__(|Unit,MkUnit|)'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord__(|Unit,MkUnit|)'(V16, V17)) end end}.
'dn--un--__Impl_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3) -> {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V4) -> fun (V5) -> ('dn--un--==_Eq__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', case V2 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V6, V7, V8, V9, V10, V11, V12, V13) -> V6 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, case V3 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E8, E9, E10, E11, E12, E13, E14, E15} -> (fun (V14, V15, V16, V17, V18, V19, V20, V21) -> V14 end(E8, E9, E10, E11, E12, E13, E14, E15)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V4, V5)) end end, fun (V22) -> fun (V23) -> ('dn--un--/=_Eq__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', case V2 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E16, E17, E18, E19, E20, E21, E22, E23} -> (fun (V24, V25, V26, V27, V28, V29, V30, V31) -> V24 end(E16, E17, E18, E19, E20, E21, E22, E23)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, case V3 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E24, E25, E26, E27, E28, E29, E30, E31} -> (fun (V32, V33, V34, V35, V36, V37, V38, V39) -> V32 end(E24, E25, E26, E27, E28, E29, E30, E31)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V22, V23)) end end}, fun (V40) -> fun (V41) -> ('dn--un--compare_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', V2, V3, V40, V41)) end end, fun (V42) -> fun (V43) -> ('dn--un--<_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', V2, V3, V42, V43)) end end, fun (V44) -> fun (V45) -> ('dn--un-->_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', V2, V3, V44, V45)) end end, fun (V46) -> fun (V47) -> ('dn--un--<=_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', V2, V3, V46, V47)) end end, fun (V48) -> fun (V49) -> ('dn--un-->=_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', V2, V3, V48, V49)) end end, fun (V50) -> fun (V51) -> ('dn--un--max_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', V2, V3, V50, V51)) end end, fun (V52) -> fun (V53) -> ('dn--un--min_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', V2, V3, V52, V53)) end end}.
'dn--un--__Impl_Eq_Void'() -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Void'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Void'(V2, V3)) end end}.
'dn--un--__Impl_Eq_String'() -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__String'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__String'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Ordering'() -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Ordering'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Ordering'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Integer'() -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Integer'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Integer'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Int'() -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Int'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Int'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Double'() -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Double'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Double'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Char'() -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Char'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Char'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Bool'() -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Bool'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Bool'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Bits8'() -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Bits8'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Bits8'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Bits64'() -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Bits64'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Bits64'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Bits32'() -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Bits32'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Bits32'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Bits16'() -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Bits16'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Bits16'(V2, V3)) end end}.
'dn--un--__Impl_Eq_(|Unit,MkUnit|)'() -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__(|Unit,MkUnit|)'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__(|Unit,MkUnit|)'(V2, V3)) end end}.
'dn--un--__Impl_Eq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3) -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V4) -> fun (V5) -> ('dn--un--==_Eq__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', V2, V3, V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--/=_Eq__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', V2, V3, V6, V7)) end end}.
'dn--un-->_Ord__Void'(V0, V1) -> ('dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__Void'(V0, V1)), 2)).
'dn--un-->_Ord__String'(V0, V1) -> case case (V0 > V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un-->_Ord__Integer'(V0, V1) -> case case (V0 > V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un-->_Ord__Int'(V0, V1) -> case case (V0 > V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un-->_Ord__Double'(V0, V1) -> case case (V0 > V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un-->_Ord__Char'(V0, V1) -> case case (V0 > V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un-->_Ord__Bool'(V0, V1) -> ('dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__Bool'(V0, V1)), 2)).
'dn--un-->_Ord__Bits8'(V0, V1) -> case case (V0 > V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un-->_Ord__Bits64'(V0, V1) -> case case (V0 > V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un-->_Ord__Bits32'(V0, V1) -> case case (V0 > V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un-->_Ord__Bits16'(V0, V1) -> case case (V0 > V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un-->_Ord__(|Unit,MkUnit|)'(V0, V1) -> ('dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__(|Unit,MkUnit|)'(V0, V1)), 2)).
'dn--un-->_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3, V4, V5) -> ('dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', V2, V3, V4, V5)), 2)).
'dn--un-->=_Ord__Void'(V0, V1) -> ('dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__Void'(V0, V1)), 0)).
'dn--un-->=_Ord__String'(V0, V1) -> case case (V0 >= V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un-->=_Ord__Integer'(V0, V1) -> case case (V0 >= V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un-->=_Ord__Int'(V0, V1) -> case case (V0 >= V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un-->=_Ord__Double'(V0, V1) -> case case (V0 >= V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un-->=_Ord__Char'(V0, V1) -> case case (V0 >= V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un-->=_Ord__Bool'(V0, V1) -> ('dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__Bool'(V0, V1)), 0)).
'dn--un-->=_Ord__Bits8'(V0, V1) -> case case (V0 >= V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un-->=_Ord__Bits64'(V0, V1) -> case case (V0 >= V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un-->=_Ord__Bits32'(V0, V1) -> case case (V0 >= V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un-->=_Ord__Bits16'(V0, V1) -> case case (V0 >= V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un-->=_Ord__(|Unit,MkUnit|)'(V0, V1) -> ('dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__(|Unit,MkUnit|)'(V0, V1)), 0)).
'dn--un-->=_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3, V4, V5) -> ('dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', V2, V3, V4, V5)), 0)).
'dn--un--==_Eq__Void'(V0, V1) -> ('erlang':'throw'("No clauses")).
'dn--un--==_Eq__String'(V0, V1) -> case case (V0 =:= V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--==_Eq__Ordering'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> 0; _ -> 1 end; 1 -> case V1 of 1 -> 0; _ -> 1 end; 2 -> case V1 of 2 -> 0; _ -> 1 end; _ -> 1 end.
'dn--un--==_Eq__Integer'(V0, V1) -> case case (V0 =:= V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--==_Eq__Int'(V0, V1) -> case case (V0 =:= V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--==_Eq__Double'(V0, V1) -> case case (V0 =:= V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--==_Eq__Char'(V0, V1) -> case case (V0 =:= V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--==_Eq__Bool'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> 0; _ -> 1 end; 1 -> case V1 of 1 -> 0; _ -> 1 end; _ -> 1 end.
'dn--un--==_Eq__Bits8'(V0, V1) -> case case (V0 =:= V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--==_Eq__Bits64'(V0, V1) -> case case (V0 =:= V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--==_Eq__Bits32'(V0, V1) -> case case (V0 =:= V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--==_Eq__Bits16'(V0, V1) -> case case (V0 =:= V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--==_Eq__(|Unit,MkUnit|)'(V0, V1) -> 0.
'dn--un--==_Eq__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3, V4, V5) -> case V4 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V6, V7) -> case V5 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V8, V9) -> ('Idris.Idris2.Prelude.Basics':'un--&&'(case V2 of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E4, E5} -> (fun (V10, V11) -> ((V10(V6))(V8)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, fun () -> case V3 of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E6, E7} -> (fun (V12, V13) -> ((V12(V7))(V9)) end(E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--<_Ord__Void'(V0, V1) -> ('dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__Void'(V0, V1)), 0)).
'dn--un--<_Ord__String'(V0, V1) -> case case (V0 < V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--<_Ord__Integer'(V0, V1) -> case case (V0 < V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--<_Ord__Int'(V0, V1) -> case case (V0 < V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--<_Ord__Double'(V0, V1) -> case case (V0 < V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--<_Ord__Char'(V0, V1) -> case case (V0 < V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--<_Ord__Bool'(V0, V1) -> ('dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__Bool'(V0, V1)), 0)).
'dn--un--<_Ord__Bits8'(V0, V1) -> case case (V0 < V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--<_Ord__Bits64'(V0, V1) -> case case (V0 < V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--<_Ord__Bits32'(V0, V1) -> case case (V0 < V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--<_Ord__Bits16'(V0, V1) -> case case (V0 < V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--<_Ord__(|Unit,MkUnit|)'(V0, V1) -> ('dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__(|Unit,MkUnit|)'(V0, V1)), 0)).
'dn--un--<_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3, V4, V5) -> ('dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', V2, V3, V4, V5)), 0)).
'dn--un--<=_Ord__Void'(V0, V1) -> ('dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__Void'(V0, V1)), 2)).
'dn--un--<=_Ord__String'(V0, V1) -> case case (V0 =< V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--<=_Ord__Integer'(V0, V1) -> case case (V0 =< V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--<=_Ord__Int'(V0, V1) -> case case (V0 =< V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--<=_Ord__Double'(V0, V1) -> case case (V0 =< V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--<=_Ord__Char'(V0, V1) -> case case (V0 =< V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--<=_Ord__Bool'(V0, V1) -> ('dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__Bool'(V0, V1)), 2)).
'dn--un--<=_Ord__Bits8'(V0, V1) -> case case (V0 =< V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--<=_Ord__Bits64'(V0, V1) -> case case (V0 =< V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--<=_Ord__Bits32'(V0, V1) -> case case (V0 =< V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--<=_Ord__Bits16'(V0, V1) -> case case (V0 =< V1) of 'false' -> 0; _ -> 1 end of 0 -> 1; _ -> 0 end.
'dn--un--<=_Ord__(|Unit,MkUnit|)'(V0, V1) -> ('dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__(|Unit,MkUnit|)'(V0, V1)), 2)).
'dn--un--<=_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3, V4, V5) -> ('dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', V2, V3, V4, V5)), 2)).
'dn--un--/=_Eq__Void'(V0, V1) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__Void'(V0, V1)))).
'dn--un--/=_Eq__String'(V0, V1) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__String'(V0, V1)))).
'dn--un--/=_Eq__Ordering'(V0, V1) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__Ordering'(V0, V1)))).
'dn--un--/=_Eq__Integer'(V0, V1) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__Integer'(V0, V1)))).
'dn--un--/=_Eq__Int'(V0, V1) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__Int'(V0, V1)))).
'dn--un--/=_Eq__Double'(V0, V1) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__Double'(V0, V1)))).
'dn--un--/=_Eq__Char'(V0, V1) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__Char'(V0, V1)))).
'dn--un--/=_Eq__Bool'(V0, V1) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__Bool'(V0, V1)))).
'dn--un--/=_Eq__Bits8'(V0, V1) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__Bits8'(V0, V1)))).
'dn--un--/=_Eq__Bits64'(V0, V1) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__Bits64'(V0, V1)))).
'dn--un--/=_Eq__Bits32'(V0, V1) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__Bits32'(V0, V1)))).
'dn--un--/=_Eq__Bits16'(V0, V1) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__Bits16'(V0, V1)))).
'dn--un--/=_Eq__(|Unit,MkUnit|)'(V0, V1) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__(|Unit,MkUnit|)'(V0, V1)))).
'dn--un--/=_Eq__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3, V4, V5) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', V2, V3, V4, V5)))).
'un--min'(V0, V1) -> case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9) -> fun (V10) -> fun (V11) -> ((V9(V10))(V11)) end end end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--max'(V0, V1) -> case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9) -> fun (V10) -> fun (V11) -> ((V8(V10))(V11)) end end end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--comparing'(V0, V1, V2, V3, V4, V5) -> case V2 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V6, V7, V8, V9, V10, V11, V12, V13) -> ((V7((V3(V4))))((V3(V5)))) end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--compare'(V0, V1) -> case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9) -> fun (V10) -> fun (V11) -> ((V3(V10))(V11)) end end end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un-->='(V0, V1) -> case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9) -> fun (V10) -> fun (V11) -> ((V7(V10))(V11)) end end end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un-->'(V0, V1) -> case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9) -> fun (V10) -> fun (V11) -> ((V5(V10))(V11)) end end end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--=='(V0, V1) -> case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E0, E1} -> (fun (V2, V3) -> fun (V4) -> fun (V5) -> ((V2(V4))(V5)) end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--<='(V0, V1) -> case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9) -> fun (V10) -> fun (V11) -> ((V6(V10))(V11)) end end end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--<'(V0, V1) -> case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V2, V3, V4, V5, V6, V7, V8, V9) -> fun (V10) -> fun (V11) -> ((V4(V10))(V11)) end end end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--/='(V0, V1) -> case V1 of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E0, E1} -> (fun (V2, V3) -> fun (V4) -> fun (V5) -> ((V3(V4))(V5)) end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
