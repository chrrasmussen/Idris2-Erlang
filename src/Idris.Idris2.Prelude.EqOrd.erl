-module('Idris.Idris2.Prelude.EqOrd').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--compare-2805'/7,
  'case--max-2684'/5,
  'case--min-2642'/5,
  'case--case block in compare-2521'/3,
  'case--compare-2504'/3,
  'case--max-2490'/3,
  'case--min-2476'/3,
  'case--case block in compare-2410'/3,
  'case--compare-2393'/3,
  'case--max-2379'/3,
  'case--min-2365'/3,
  'case--case block in compare-2299'/3,
  'case--compare-2282'/3,
  'case--max-2268'/3,
  'case--min-2254'/3,
  'case--case block in compare-2188'/3,
  'case--compare-2171'/3,
  'case--max-2157'/3,
  'case--min-2143'/3,
  'case--case block in compare-2077'/3,
  'case--compare-2060'/3,
  'case--max-2046'/3,
  'case--min-2032'/3,
  'case--case block in compare-1966'/3,
  'case--compare-1949'/3,
  'case--max-1935'/3,
  'case--min-1921'/3,
  'case--case block in compare-1855'/3,
  'case--compare-1838'/3,
  'case--max-1824'/3,
  'case--min-1810'/3,
  'case--case block in compare-1744'/3,
  'case--compare-1727'/3,
  'case--max-1713'/3,
  'case--min-1699'/3,
  'case--case block in compare-1633'/3,
  'case--compare-1616'/3,
  'case--max-1602'/3,
  'case--min-1588'/3,
  'case--case block in compare-1522'/3,
  'case--compare-1505'/3,
  'case--max-1491'/3,
  'case--min-1477'/3,
  'case--case block in compare-1411'/3,
  'case--compare-1394'/3,
  'case--max-1380'/3,
  'case--min-1366'/3,
  'case--case block in compare-1297'/3,
  'case--compare-1280'/3,
  'case--max-1266'/3,
  'case--min-1252'/3,
  'case--case block in compare-1186'/3,
  'case--compare-1169'/3,
  'case--max-1155'/3,
  'case--min-1141'/3,
  'case--max-1047'/3,
  'case--min-1033'/3,
  'case--max-943'/3,
  'case--min-929'/3,
  'case--max-838'/3,
  'case--min-824'/3,
  'case--{Default implementation of min:0}-746'/4,
  'case--{Default implementation of max:0}-716'/4,
  'case--case block in {Default implementation of compare:0}-622'/4,
  'case--{Default implementation of compare:0}-591'/4,
  'dn--un--min_Ord_Void'/2,
  'dn--un--min_Ord_String'/2,
  'dn--un--min_Ord_Integer'/2,
  'dn--un--min_Ord_Int8'/2,
  'dn--un--min_Ord_Int64'/2,
  'dn--un--min_Ord_Int32'/2,
  'dn--un--min_Ord_Int16'/2,
  'dn--un--min_Ord_Int'/2,
  'dn--un--min_Ord_Double'/2,
  'dn--un--min_Ord_Char'/2,
  'dn--un--min_Ord_Bool'/2,
  'dn--un--min_Ord_Bits8'/2,
  'dn--un--min_Ord_Bits64'/2,
  'dn--un--min_Ord_Bits32'/2,
  'dn--un--min_Ord_Bits16'/2,
  'dn--un--min_Ord_(|Unit,MkUnit|)'/2,
  'dn--un--min_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/4,
  'dn--un--max_Ord_Void'/2,
  'dn--un--max_Ord_String'/2,
  'dn--un--max_Ord_Integer'/2,
  'dn--un--max_Ord_Int8'/2,
  'dn--un--max_Ord_Int64'/2,
  'dn--un--max_Ord_Int32'/2,
  'dn--un--max_Ord_Int16'/2,
  'dn--un--max_Ord_Int'/2,
  'dn--un--max_Ord_Double'/2,
  'dn--un--max_Ord_Char'/2,
  'dn--un--max_Ord_Bool'/2,
  'dn--un--max_Ord_Bits8'/2,
  'dn--un--max_Ord_Bits64'/2,
  'dn--un--max_Ord_Bits32'/2,
  'dn--un--max_Ord_Bits16'/2,
  'dn--un--max_Ord_(|Unit,MkUnit|)'/2,
  'dn--un--max_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/4,
  'dn--un--compare_Ord_Void'/2,
  'dn--un--compare_Ord_String'/2,
  'dn--un--compare_Ord_Integer'/2,
  'dn--un--compare_Ord_Int8'/2,
  'dn--un--compare_Ord_Int64'/2,
  'dn--un--compare_Ord_Int32'/2,
  'dn--un--compare_Ord_Int16'/2,
  'dn--un--compare_Ord_Int'/2,
  'dn--un--compare_Ord_Double'/2,
  'dn--un--compare_Ord_Char'/2,
  'dn--un--compare_Ord_Bool'/2,
  'dn--un--compare_Ord_Bits8'/2,
  'dn--un--compare_Ord_Bits64'/2,
  'dn--un--compare_Ord_Bits32'/2,
  'dn--un--compare_Ord_Bits16'/2,
  'dn--un--compare_Ord_(|Unit,MkUnit|)'/2,
  'dn--un--compare_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/4,
  'dn--un--__Ord_(Eq ty)'/1,
  'dn--un--__Impl_Ord_Void'/0,
  'dn--un--__Impl_Ord_String'/0,
  'dn--un--__Impl_Ord_Integer'/0,
  'dn--un--__Impl_Ord_Int8'/0,
  'dn--un--__Impl_Ord_Int64'/0,
  'dn--un--__Impl_Ord_Int32'/0,
  'dn--un--__Impl_Ord_Int16'/0,
  'dn--un--__Impl_Ord_Int'/0,
  'dn--un--__Impl_Ord_Double'/0,
  'dn--un--__Impl_Ord_Char'/0,
  'dn--un--__Impl_Ord_Bool'/0,
  'dn--un--__Impl_Ord_Bits8'/0,
  'dn--un--__Impl_Ord_Bits64'/0,
  'dn--un--__Impl_Ord_Bits32'/0,
  'dn--un--__Impl_Ord_Bits16'/0,
  'dn--un--__Impl_Ord_(|Unit,MkUnit|)'/0,
  'dn--un--__Impl_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/2,
  'dn--un--__Impl_Eq_Void'/0,
  'dn--un--__Impl_Eq_String'/0,
  'dn--un--__Impl_Eq_Ordering'/0,
  'dn--un--__Impl_Eq_Integer'/0,
  'dn--un--__Impl_Eq_Int8'/0,
  'dn--un--__Impl_Eq_Int64'/0,
  'dn--un--__Impl_Eq_Int32'/0,
  'dn--un--__Impl_Eq_Int16'/0,
  'dn--un--__Impl_Eq_Int'/0,
  'dn--un--__Impl_Eq_Double'/0,
  'dn--un--__Impl_Eq_Char'/0,
  'dn--un--__Impl_Eq_Bool'/0,
  'dn--un--__Impl_Eq_Bits8'/0,
  'dn--un--__Impl_Eq_Bits64'/0,
  'dn--un--__Impl_Eq_Bits32'/0,
  'dn--un--__Impl_Eq_Bits16'/0,
  'dn--un--__Impl_Eq_(|Unit,MkUnit|)'/0,
  'dn--un--__Impl_Eq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/2,
  'dn--un-->_Ord_Void'/2,
  'dn--un-->_Ord_String'/2,
  'dn--un-->_Ord_Integer'/2,
  'dn--un-->_Ord_Int8'/2,
  'dn--un-->_Ord_Int64'/2,
  'dn--un-->_Ord_Int32'/2,
  'dn--un-->_Ord_Int16'/2,
  'dn--un-->_Ord_Int'/2,
  'dn--un-->_Ord_Double'/2,
  'dn--un-->_Ord_Char'/2,
  'dn--un-->_Ord_Bool'/2,
  'dn--un-->_Ord_Bits8'/2,
  'dn--un-->_Ord_Bits64'/2,
  'dn--un-->_Ord_Bits32'/2,
  'dn--un-->_Ord_Bits16'/2,
  'dn--un-->_Ord_(|Unit,MkUnit|)'/2,
  'dn--un-->_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/4,
  'dn--un-->=_Ord_Void'/2,
  'dn--un-->=_Ord_String'/2,
  'dn--un-->=_Ord_Integer'/2,
  'dn--un-->=_Ord_Int8'/2,
  'dn--un-->=_Ord_Int64'/2,
  'dn--un-->=_Ord_Int32'/2,
  'dn--un-->=_Ord_Int16'/2,
  'dn--un-->=_Ord_Int'/2,
  'dn--un-->=_Ord_Double'/2,
  'dn--un-->=_Ord_Char'/2,
  'dn--un-->=_Ord_Bool'/2,
  'dn--un-->=_Ord_Bits8'/2,
  'dn--un-->=_Ord_Bits64'/2,
  'dn--un-->=_Ord_Bits32'/2,
  'dn--un-->=_Ord_Bits16'/2,
  'dn--un-->=_Ord_(|Unit,MkUnit|)'/2,
  'dn--un-->=_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/4,
  'dn--un--==_Eq_Void'/2,
  'dn--un--==_Eq_String'/2,
  'dn--un--==_Eq_Ordering'/2,
  'dn--un--==_Eq_Integer'/2,
  'dn--un--==_Eq_Int8'/2,
  'dn--un--==_Eq_Int64'/2,
  'dn--un--==_Eq_Int32'/2,
  'dn--un--==_Eq_Int16'/2,
  'dn--un--==_Eq_Int'/2,
  'dn--un--==_Eq_Double'/2,
  'dn--un--==_Eq_Char'/2,
  'dn--un--==_Eq_Bool'/2,
  'dn--un--==_Eq_Bits8'/2,
  'dn--un--==_Eq_Bits64'/2,
  'dn--un--==_Eq_Bits32'/2,
  'dn--un--==_Eq_Bits16'/2,
  'dn--un--==_Eq_(|Unit,MkUnit|)'/2,
  'dn--un--==_Eq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/4,
  'dn--un--<_Ord_Void'/2,
  'dn--un--<_Ord_String'/2,
  'dn--un--<_Ord_Integer'/2,
  'dn--un--<_Ord_Int8'/2,
  'dn--un--<_Ord_Int64'/2,
  'dn--un--<_Ord_Int32'/2,
  'dn--un--<_Ord_Int16'/2,
  'dn--un--<_Ord_Int'/2,
  'dn--un--<_Ord_Double'/2,
  'dn--un--<_Ord_Char'/2,
  'dn--un--<_Ord_Bool'/2,
  'dn--un--<_Ord_Bits8'/2,
  'dn--un--<_Ord_Bits64'/2,
  'dn--un--<_Ord_Bits32'/2,
  'dn--un--<_Ord_Bits16'/2,
  'dn--un--<_Ord_(|Unit,MkUnit|)'/2,
  'dn--un--<_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/4,
  'dn--un--<=_Ord_Void'/2,
  'dn--un--<=_Ord_String'/2,
  'dn--un--<=_Ord_Integer'/2,
  'dn--un--<=_Ord_Int8'/2,
  'dn--un--<=_Ord_Int64'/2,
  'dn--un--<=_Ord_Int32'/2,
  'dn--un--<=_Ord_Int16'/2,
  'dn--un--<=_Ord_Int'/2,
  'dn--un--<=_Ord_Double'/2,
  'dn--un--<=_Ord_Char'/2,
  'dn--un--<=_Ord_Bool'/2,
  'dn--un--<=_Ord_Bits8'/2,
  'dn--un--<=_Ord_Bits64'/2,
  'dn--un--<=_Ord_Bits32'/2,
  'dn--un--<=_Ord_Bits16'/2,
  'dn--un--<=_Ord_(|Unit,MkUnit|)'/2,
  'dn--un--<=_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/4,
  'dn--un--/=_Eq_Void'/2,
  'dn--un--/=_Eq_String'/2,
  'dn--un--/=_Eq_Ordering'/2,
  'dn--un--/=_Eq_Integer'/2,
  'dn--un--/=_Eq_Int8'/2,
  'dn--un--/=_Eq_Int64'/2,
  'dn--un--/=_Eq_Int32'/2,
  'dn--un--/=_Eq_Int16'/2,
  'dn--un--/=_Eq_Int'/2,
  'dn--un--/=_Eq_Double'/2,
  'dn--un--/=_Eq_Char'/2,
  'dn--un--/=_Eq_Bool'/2,
  'dn--un--/=_Eq_Bits8'/2,
  'dn--un--/=_Eq_Bits64'/2,
  'dn--un--/=_Eq_Bits32'/2,
  'dn--un--/=_Eq_Bits16'/2,
  'dn--un--/=_Eq_(|Unit,MkUnit|)'/2,
  'dn--un--/=_Eq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/4,
  'un--min'/3,
  'un--max'/3,
  'un--comparing'/4,
  'un--compareInteger'/2,
  'un--compare'/3,
  'un-->='/3,
  'un-->'/3,
  'un--=='/3,
  'un--<='/3,
  'un--<'/3,
  'un--/='/3
]).
'case--compare-2805'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of 1 -> case V0 of {'Idris.Prelude.EqOrd.MkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V7, V8, V9, V10, V11, V12, V13, V14) -> ((V8(V2))(V4)) end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; 0 -> case V1 of {'Idris.Prelude.EqOrd.MkOrd', E8, E9, E10, E11, E12, E13, E14, E15} -> (fun (V15, V16, V17, V18, V19, V20, V21, V22) -> ((V16(V3))(V5)) end(E8, E9, E10, E11, E12, E13, E14, E15)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-2684'(V0, V1, V2, V3, V4) -> case V4 of 1 -> V3; 0 -> V2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-2642'(V0, V1, V2, V3, V4) -> case V4 of 1 -> V3; 0 -> V2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in compare-2521'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-2504'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_Char'(V1, V0)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-2490'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-2476'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in compare-2410'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-2393'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_String'(V1, V0)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-2379'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-2365'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in compare-2299'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-2282'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_Double'(V1, V0)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-2268'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-2254'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in compare-2188'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-2171'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_Int64'(V1, V0)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-2157'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-2143'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in compare-2077'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-2060'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_Int32'(V1, V0)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-2046'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-2032'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in compare-1966'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-1949'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_Int16'(V1, V0)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-1935'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-1921'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in compare-1855'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-1838'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_Int8'(V1, V0)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-1824'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-1810'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in compare-1744'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-1727'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_Bits64'(V1, V0)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-1713'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-1699'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in compare-1633'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-1616'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_Bits32'(V1, V0)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-1602'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-1588'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in compare-1522'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-1505'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_Bits16'(V1, V0)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-1491'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-1477'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in compare-1411'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-1394'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_Bits8'(V1, V0)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-1380'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-1366'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in compare-1297'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-1280'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_Integer'(V1, V0)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-1266'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-1252'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in compare-1186'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-1169'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_Int'(V1, V0)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-1155'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-1141'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-1047'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-1033'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-943'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-929'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-838'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-824'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--{Default implementation of min:0}-746'(V0, V1, V2, V3) -> case V3 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--{Default implementation of max:0}-716'(V0, V1, V2, V3) -> case V3 of 1 -> V1; 0 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in {Default implementation of compare:0}-622'(V0, V1, V2, V3) -> case V3 of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--{Default implementation of compare:0}-591'(V0, V1, V2, V3) -> case V3 of 1 -> 0; 0 -> case case V2 of {'Idris.Prelude.EqOrd.MkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V4, V5, V6, V7, V8, V9, V10, V11) -> case V4 of {'Idris.Prelude.EqOrd.MkEq', E8, E9} -> (fun (V12, V13) -> ((V12(V0))(V1)) end(E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--min_Ord_Void'(V0, V1) -> case ('dn--un--<_Ord_Void'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--min_Ord_String'(V0, V1) -> case ('dn--un--<_Ord_String'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--min_Ord_Integer'(V0, V1) -> case ('dn--un--<_Ord_Integer'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--min_Ord_Int8'(V0, V1) -> case ('dn--un--<_Ord_Int8'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--min_Ord_Int64'(V0, V1) -> case ('dn--un--<_Ord_Int64'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--min_Ord_Int32'(V0, V1) -> case ('dn--un--<_Ord_Int32'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--min_Ord_Int16'(V0, V1) -> case ('dn--un--<_Ord_Int16'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--min_Ord_Int'(V0, V1) -> case ('dn--un--<_Ord_Int'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--min_Ord_Double'(V0, V1) -> case ('dn--un--<_Ord_Double'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--min_Ord_Char'(V0, V1) -> case ('dn--un--<_Ord_Char'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--min_Ord_Bool'(V0, V1) -> case ('dn--un--<_Ord_Bool'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--min_Ord_Bits8'(V0, V1) -> case ('dn--un--<_Ord_Bits8'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--min_Ord_Bits64'(V0, V1) -> case ('dn--un--<_Ord_Bits64'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--min_Ord_Bits32'(V0, V1) -> case ('dn--un--<_Ord_Bits32'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--min_Ord_Bits16'(V0, V1) -> case ('dn--un--<_Ord_Bits16'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--min_Ord_(|Unit,MkUnit|)'(V0, V1) -> case ('dn--un--<_Ord_(|Unit,MkUnit|)'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--min_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3) -> case ('dn--un--<_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3)) of 1 -> V2; 0 -> V3; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_Void'(V0, V1) -> case ('dn--un-->_Ord_Void'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_String'(V0, V1) -> case ('dn--un-->_Ord_String'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_Integer'(V0, V1) -> case ('dn--un-->_Ord_Integer'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_Int8'(V0, V1) -> case ('dn--un-->_Ord_Int8'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_Int64'(V0, V1) -> case ('dn--un-->_Ord_Int64'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_Int32'(V0, V1) -> case ('dn--un-->_Ord_Int32'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_Int16'(V0, V1) -> case ('dn--un-->_Ord_Int16'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_Int'(V0, V1) -> case ('dn--un-->_Ord_Int'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_Double'(V0, V1) -> case ('dn--un-->_Ord_Double'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_Char'(V0, V1) -> case ('dn--un-->_Ord_Char'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_Bool'(V0, V1) -> case ('dn--un-->_Ord_Bool'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_Bits8'(V0, V1) -> case ('dn--un-->_Ord_Bits8'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_Bits64'(V0, V1) -> case ('dn--un-->_Ord_Bits64'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_Bits32'(V0, V1) -> case ('dn--un-->_Ord_Bits32'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_Bits16'(V0, V1) -> case ('dn--un-->_Ord_Bits16'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_(|Unit,MkUnit|)'(V0, V1) -> case ('dn--un-->_Ord_(|Unit,MkUnit|)'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3) -> case ('dn--un-->_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3)) of 1 -> V2; 0 -> V3; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--compare_Ord_Void'(V0, V1) -> ('erlang':'throw'("No clauses")).
'dn--un--compare_Ord_String'(V0, V1) -> case ('dn--un--<_Ord_String'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_String'(V0, V1)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--compare_Ord_Integer'(V0, V1) -> case ('dn--un--<_Ord_Integer'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_Integer'(V0, V1)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--compare_Ord_Int8'(V0, V1) -> case ('dn--un--<_Ord_Int8'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_Int8'(V0, V1)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--compare_Ord_Int64'(V0, V1) -> case ('dn--un--<_Ord_Int64'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_Int64'(V0, V1)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--compare_Ord_Int32'(V0, V1) -> case ('dn--un--<_Ord_Int32'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_Int32'(V0, V1)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--compare_Ord_Int16'(V0, V1) -> case ('dn--un--<_Ord_Int16'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_Int16'(V0, V1)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--compare_Ord_Int'(V0, V1) -> case ('dn--un--<_Ord_Int'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_Int'(V0, V1)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--compare_Ord_Double'(V0, V1) -> case ('dn--un--<_Ord_Double'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_Double'(V0, V1)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--compare_Ord_Char'(V0, V1) -> case ('dn--un--<_Ord_Char'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_Char'(V0, V1)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--compare_Ord_Bool'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> 1; 1 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; 1 -> case V1 of 0 -> 2; 1 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--compare_Ord_Bits8'(V0, V1) -> case ('dn--un--<_Ord_Bits8'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_Bits8'(V0, V1)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--compare_Ord_Bits64'(V0, V1) -> case ('dn--un--<_Ord_Bits64'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_Bits64'(V0, V1)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--compare_Ord_Bits32'(V0, V1) -> case ('dn--un--<_Ord_Bits32'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_Bits32'(V0, V1)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--compare_Ord_Bits16'(V0, V1) -> case ('dn--un--<_Ord_Bits16'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_Bits16'(V0, V1)) of 1 -> 1; 0 -> 2; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--compare_Ord_(|Unit,MkUnit|)'(V0, V1) -> 1.
'dn--un--compare_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3) -> case V2 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V4, V5) -> case V3 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V6, V7) -> case case V0 of {'Idris.Prelude.EqOrd.MkOrd', E20, E21, E22, E23, E24, E25, E26, E27} -> (fun (V8, V9, V10, V11, V12, V13, V14, V15) -> case V8 of {'Idris.Prelude.EqOrd.MkEq', E28, E29} -> (fun (V16, V17) -> ((V17(V4))(V6)) end(E28, E29)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E20, E21, E22, E23, E24, E25, E26, E27)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of 1 -> case V0 of {'Idris.Prelude.EqOrd.MkOrd', E4, E5, E6, E7, E8, E9, E10, E11} -> (fun (V18, V19, V20, V21, V22, V23, V24, V25) -> ((V19(V4))(V6)) end(E4, E5, E6, E7, E8, E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; 0 -> case V1 of {'Idris.Prelude.EqOrd.MkOrd', E12, E13, E14, E15, E16, E17, E18, E19} -> (fun (V26, V27, V28, V29, V30, V31, V32, V33) -> ((V27(V5))(V7)) end(E12, E13, E14, E15, E16, E17, E18, E19)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Ord_(Eq ty)'(V0) -> case V0 of {'Idris.Prelude.EqOrd.MkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V1, V2, V3, V4, V5, V6, V7, V8) -> V1 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--__Impl_Ord_Void'() -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Void'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Void'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Void'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Void'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Void'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Void'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Void'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Void'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Void'(V16, V17)) end end}.
'dn--un--__Impl_Ord_String'() -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_String'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_String'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_String'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_String'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_String'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_String'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_String'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_String'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_String'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Integer'() -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Integer'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Integer'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Integer'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Integer'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Integer'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Integer'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Integer'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Integer'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Integer'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Int8'() -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Int8'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Int8'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Int8'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Int8'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Int8'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Int8'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Int8'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Int8'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Int8'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Int64'() -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Int64'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Int64'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Int64'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Int64'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Int64'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Int64'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Int64'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Int64'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Int64'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Int32'() -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Int32'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Int32'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Int32'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Int32'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Int32'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Int32'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Int32'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Int32'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Int32'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Int16'() -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Int16'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Int16'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Int16'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Int16'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Int16'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Int16'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Int16'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Int16'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Int16'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Int'() -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Int'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Int'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Int'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Int'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Int'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Int'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Int'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Int'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Int'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Double'() -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Double'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Double'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Double'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Double'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Double'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Double'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Double'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Double'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Double'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Char'() -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Char'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Char'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Char'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Char'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Char'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Char'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Char'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Char'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Char'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Bool'() -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Bool'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Bool'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Bool'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Bool'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Bool'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Bool'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Bool'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Bool'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Bool'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Bits8'() -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Bits8'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Bits8'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Bits8'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Bits8'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Bits8'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Bits8'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Bits8'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Bits8'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Bits8'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Bits64'() -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Bits64'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Bits64'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Bits64'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Bits64'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Bits64'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Bits64'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Bits64'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Bits64'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Bits64'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Bits32'() -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Bits32'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Bits32'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Bits32'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Bits32'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Bits32'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Bits32'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Bits32'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Bits32'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Bits32'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Bits16'() -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Bits16'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Bits16'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Bits16'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Bits16'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Bits16'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Bits16'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Bits16'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Bits16'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Bits16'(V16, V17)) end end}.
'dn--un--__Impl_Ord_(|Unit,MkUnit|)'() -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_(|Unit,MkUnit|)'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_(|Unit,MkUnit|)'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_(|Unit,MkUnit|)'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_(|Unit,MkUnit|)'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_(|Unit,MkUnit|)'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_(|Unit,MkUnit|)'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_(|Unit,MkUnit|)'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_(|Unit,MkUnit|)'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_(|Unit,MkUnit|)'(V16, V17)) end end}.
'dn--un--__Impl_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1) -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('dn--un--==_Eq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(case V0 of {'Idris.Prelude.EqOrd.MkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V4, V5, V6, V7, V8, V9, V10, V11) -> V4 end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, case V1 of {'Idris.Prelude.EqOrd.MkOrd', E8, E9, E10, E11, E12, E13, E14, E15} -> (fun (V12, V13, V14, V15, V16, V17, V18, V19) -> V12 end(E8, E9, E10, E11, E12, E13, E14, E15)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V2, V3)) end end, fun (V20) -> fun (V21) -> ('dn--un--/=_Eq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(case V0 of {'Idris.Prelude.EqOrd.MkOrd', E16, E17, E18, E19, E20, E21, E22, E23} -> (fun (V22, V23, V24, V25, V26, V27, V28, V29) -> V22 end(E16, E17, E18, E19, E20, E21, E22, E23)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, case V1 of {'Idris.Prelude.EqOrd.MkOrd', E24, E25, E26, E27, E28, E29, E30, E31} -> (fun (V30, V31, V32, V33, V34, V35, V36, V37) -> V30 end(E24, E25, E26, E27, E28, E29, E30, E31)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V20, V21)) end end}, fun (V38) -> fun (V39) -> ('dn--un--compare_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V38, V39)) end end, fun (V40) -> fun (V41) -> ('dn--un--<_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V40, V41)) end end, fun (V42) -> fun (V43) -> ('dn--un-->_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V42, V43)) end end, fun (V44) -> fun (V45) -> ('dn--un--<=_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V44, V45)) end end, fun (V46) -> fun (V47) -> ('dn--un-->=_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V46, V47)) end end, fun (V48) -> fun (V49) -> ('dn--un--max_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V48, V49)) end end, fun (V50) -> fun (V51) -> ('dn--un--min_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V50, V51)) end end}.
'dn--un--__Impl_Eq_Void'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Void'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Void'(V2, V3)) end end}.
'dn--un--__Impl_Eq_String'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_String'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_String'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Ordering'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Ordering'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Ordering'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Integer'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Integer'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Integer'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Int8'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Int8'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Int8'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Int64'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Int64'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Int64'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Int32'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Int32'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Int32'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Int16'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Int16'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Int16'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Int'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Int'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Int'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Double'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Double'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Double'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Char'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Char'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Char'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Bool'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Bool'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Bool'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Bits8'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Bits8'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Bits8'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Bits64'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Bits64'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Bits64'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Bits32'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Bits32'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Bits32'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Bits16'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Bits16'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Bits16'(V2, V3)) end end}.
'dn--un--__Impl_Eq_(|Unit,MkUnit|)'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_(|Unit,MkUnit|)'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_(|Unit,MkUnit|)'(V2, V3)) end end}.
'dn--un--__Impl_Eq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1) -> {'Idris.Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('dn--un--==_Eq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3)) end end, fun (V4) -> fun (V5) -> ('dn--un--/=_Eq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V4, V5)) end end}.
'dn--un-->_Ord_Void'(V0, V1) -> ('dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_Void'(V0, V1)), 2)).
'dn--un-->_Ord_String'(V0, V1) -> case case (V0 > V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->_Ord_Integer'(V0, V1) -> case case (V0 > V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->_Ord_Int8'(V0, V1) -> case case (V0 > V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->_Ord_Int64'(V0, V1) -> case case (V0 > V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->_Ord_Int32'(V0, V1) -> case case (V0 > V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->_Ord_Int16'(V0, V1) -> case case (V0 > V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->_Ord_Int'(V0, V1) -> case case (V0 > V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->_Ord_Double'(V0, V1) -> case case (V0 > V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->_Ord_Char'(V0, V1) -> case case (V0 > V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->_Ord_Bool'(V0, V1) -> ('dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_Bool'(V0, V1)), 2)).
'dn--un-->_Ord_Bits8'(V0, V1) -> case case (V0 > V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->_Ord_Bits64'(V0, V1) -> case case (V0 > V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->_Ord_Bits32'(V0, V1) -> case case (V0 > V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->_Ord_Bits16'(V0, V1) -> case case (V0 > V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->_Ord_(|Unit,MkUnit|)'(V0, V1) -> ('dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(|Unit,MkUnit|)'(V0, V1)), 2)).
'dn--un-->_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3) -> ('dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3)), 2)).
'dn--un-->=_Ord_Void'(V0, V1) -> ('dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_Void'(V0, V1)), 0)).
'dn--un-->=_Ord_String'(V0, V1) -> case case (V0 >= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->=_Ord_Integer'(V0, V1) -> case case (V0 >= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->=_Ord_Int8'(V0, V1) -> case case (V0 >= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->=_Ord_Int64'(V0, V1) -> case case (V0 >= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->=_Ord_Int32'(V0, V1) -> case case (V0 >= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->=_Ord_Int16'(V0, V1) -> case case (V0 >= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->=_Ord_Int'(V0, V1) -> case case (V0 >= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->=_Ord_Double'(V0, V1) -> case case (V0 >= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->=_Ord_Char'(V0, V1) -> case case (V0 >= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->=_Ord_Bool'(V0, V1) -> ('dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_Bool'(V0, V1)), 0)).
'dn--un-->=_Ord_Bits8'(V0, V1) -> case case (V0 >= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->=_Ord_Bits64'(V0, V1) -> case case (V0 >= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->=_Ord_Bits32'(V0, V1) -> case case (V0 >= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->=_Ord_Bits16'(V0, V1) -> case case (V0 >= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->=_Ord_(|Unit,MkUnit|)'(V0, V1) -> ('dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(|Unit,MkUnit|)'(V0, V1)), 0)).
'dn--un-->=_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3) -> ('dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3)), 0)).
'dn--un--==_Eq_Void'(V0, V1) -> ('erlang':'throw'("No clauses")).
'dn--un--==_Eq_String'(V0, V1) -> case case (V0 =:= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--==_Eq_Ordering'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> 1; _ -> 0 end; 1 -> case V1 of 1 -> 1; _ -> 0 end; 2 -> case V1 of 2 -> 1; _ -> 0 end; _ -> 0 end.
'dn--un--==_Eq_Integer'(V0, V1) -> case case (V0 =:= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--==_Eq_Int8'(V0, V1) -> case case (V0 =:= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--==_Eq_Int64'(V0, V1) -> case case (V0 =:= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--==_Eq_Int32'(V0, V1) -> case case (V0 =:= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--==_Eq_Int16'(V0, V1) -> case case (V0 =:= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--==_Eq_Int'(V0, V1) -> case case (V0 =:= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--==_Eq_Double'(V0, V1) -> case case (V0 =:= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--==_Eq_Char'(V0, V1) -> case case (V0 =:= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--==_Eq_Bool'(V0, V1) -> case V0 of 1 -> case V1 of 1 -> 1; _ -> 0 end; 0 -> case V1 of 0 -> 1; _ -> 0 end; _ -> 0 end.
'dn--un--==_Eq_Bits8'(V0, V1) -> case case (V0 =:= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--==_Eq_Bits64'(V0, V1) -> case case (V0 =:= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--==_Eq_Bits32'(V0, V1) -> case case (V0 =:= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--==_Eq_Bits16'(V0, V1) -> case case (V0 =:= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--==_Eq_(|Unit,MkUnit|)'(V0, V1) -> 1.
'dn--un--==_Eq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3) -> case V2 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V4, V5) -> case V3 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V6, V7) -> case case V0 of {'Idris.Prelude.EqOrd.MkEq', E6, E7} -> (fun (V8, V9) -> ((V8(V4))(V6)) end(E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of 1 -> case V1 of {'Idris.Prelude.EqOrd.MkEq', E4, E5} -> (fun (V10, V11) -> ((V10(V5))(V7)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--<_Ord_Void'(V0, V1) -> ('dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_Void'(V0, V1)), 0)).
'dn--un--<_Ord_String'(V0, V1) -> case case (V0 < V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<_Ord_Integer'(V0, V1) -> case case (V0 < V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<_Ord_Int8'(V0, V1) -> case case (V0 < V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<_Ord_Int64'(V0, V1) -> case case (V0 < V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<_Ord_Int32'(V0, V1) -> case case (V0 < V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<_Ord_Int16'(V0, V1) -> case case (V0 < V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<_Ord_Int'(V0, V1) -> case case (V0 < V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<_Ord_Double'(V0, V1) -> case case (V0 < V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<_Ord_Char'(V0, V1) -> case case (V0 < V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<_Ord_Bool'(V0, V1) -> ('dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_Bool'(V0, V1)), 0)).
'dn--un--<_Ord_Bits8'(V0, V1) -> case case (V0 < V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<_Ord_Bits64'(V0, V1) -> case case (V0 < V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<_Ord_Bits32'(V0, V1) -> case case (V0 < V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<_Ord_Bits16'(V0, V1) -> case case (V0 < V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<_Ord_(|Unit,MkUnit|)'(V0, V1) -> ('dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(|Unit,MkUnit|)'(V0, V1)), 0)).
'dn--un--<_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3) -> ('dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3)), 0)).
'dn--un--<=_Ord_Void'(V0, V1) -> ('dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_Void'(V0, V1)), 2)).
'dn--un--<=_Ord_String'(V0, V1) -> case case (V0 =< V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<=_Ord_Integer'(V0, V1) -> case case (V0 =< V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<=_Ord_Int8'(V0, V1) -> case case (V0 =< V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<=_Ord_Int64'(V0, V1) -> case case (V0 =< V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<=_Ord_Int32'(V0, V1) -> case case (V0 =< V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<=_Ord_Int16'(V0, V1) -> case case (V0 =< V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<=_Ord_Int'(V0, V1) -> case case (V0 =< V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<=_Ord_Double'(V0, V1) -> case case (V0 =< V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<=_Ord_Char'(V0, V1) -> case case (V0 =< V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<=_Ord_Bool'(V0, V1) -> ('dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_Bool'(V0, V1)), 2)).
'dn--un--<=_Ord_Bits8'(V0, V1) -> case case (V0 =< V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<=_Ord_Bits64'(V0, V1) -> case case (V0 =< V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<=_Ord_Bits32'(V0, V1) -> case case (V0 =< V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<=_Ord_Bits16'(V0, V1) -> case case (V0 =< V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<=_Ord_(|Unit,MkUnit|)'(V0, V1) -> ('dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(|Unit,MkUnit|)'(V0, V1)), 2)).
'dn--un--<=_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3) -> ('dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3)), 2)).
'dn--un--/=_Eq_Void'(V0, V1) -> case ('dn--un--==_Eq_Void'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--/=_Eq_String'(V0, V1) -> case ('dn--un--==_Eq_String'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--/=_Eq_Ordering'(V0, V1) -> case ('dn--un--==_Eq_Ordering'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--/=_Eq_Integer'(V0, V1) -> case ('dn--un--==_Eq_Integer'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--/=_Eq_Int8'(V0, V1) -> case ('dn--un--==_Eq_Int8'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--/=_Eq_Int64'(V0, V1) -> case ('dn--un--==_Eq_Int64'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--/=_Eq_Int32'(V0, V1) -> case ('dn--un--==_Eq_Int32'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--/=_Eq_Int16'(V0, V1) -> case ('dn--un--==_Eq_Int16'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--/=_Eq_Int'(V0, V1) -> case ('dn--un--==_Eq_Int'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--/=_Eq_Double'(V0, V1) -> case ('dn--un--==_Eq_Double'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--/=_Eq_Char'(V0, V1) -> case ('dn--un--==_Eq_Char'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--/=_Eq_Bool'(V0, V1) -> case ('dn--un--==_Eq_Bool'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--/=_Eq_Bits8'(V0, V1) -> case ('dn--un--==_Eq_Bits8'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--/=_Eq_Bits64'(V0, V1) -> case ('dn--un--==_Eq_Bits64'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--/=_Eq_Bits32'(V0, V1) -> case ('dn--un--==_Eq_Bits32'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--/=_Eq_Bits16'(V0, V1) -> case ('dn--un--==_Eq_Bits16'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--/=_Eq_(|Unit,MkUnit|)'(V0, V1) -> case ('dn--un--==_Eq_(|Unit,MkUnit|)'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--/=_Eq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3) -> case ('dn--un--==_Eq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--min'(V0, V1, V2) -> case V0 of {'Idris.Prelude.EqOrd.MkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V3, V4, V5, V6, V7, V8, V9, V10) -> ((V10(V1))(V2)) end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--max'(V0, V1, V2) -> case V0 of {'Idris.Prelude.EqOrd.MkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V3, V4, V5, V6, V7, V8, V9, V10) -> ((V9(V1))(V2)) end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--comparing'(V0, V1, V2, V3) -> case V0 of {'Idris.Prelude.EqOrd.MkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V4, V5, V6, V7, V8, V9, V10, V11) -> ((V5((V1(V2))))((V1(V3)))) end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--compareInteger'(V0, V1) -> ('dn--un--compare_Ord_Integer'(V0, V1)).
'un--compare'(V0, V1, V2) -> case V0 of {'Idris.Prelude.EqOrd.MkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V3, V4, V5, V6, V7, V8, V9, V10) -> ((V4(V1))(V2)) end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un-->='(V0, V1, V2) -> case V0 of {'Idris.Prelude.EqOrd.MkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V3, V4, V5, V6, V7, V8, V9, V10) -> ((V8(V1))(V2)) end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un-->'(V0, V1, V2) -> case V0 of {'Idris.Prelude.EqOrd.MkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V3, V4, V5, V6, V7, V8, V9, V10) -> ((V6(V1))(V2)) end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--=='(V0, V1, V2) -> case V0 of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V3, V4) -> ((V3(V1))(V2)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--<='(V0, V1, V2) -> case V0 of {'Idris.Prelude.EqOrd.MkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V3, V4, V5, V6, V7, V8, V9, V10) -> ((V7(V1))(V2)) end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--<'(V0, V1, V2) -> case V0 of {'Idris.Prelude.EqOrd.MkOrd', E0, E1, E2, E3, E4, E5, E6, E7} -> (fun (V3, V4, V5, V6, V7, V8, V9, V10) -> ((V5(V1))(V2)) end(E0, E1, E2, E3, E4, E5, E6, E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--/='(V0, V1, V2) -> case V0 of {'Idris.Prelude.EqOrd.MkEq', E0, E1} -> (fun (V3, V4) -> ((V4(V1))(V2)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
