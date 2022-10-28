-module('Idris.Idris2.Prelude.EqOrd').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--compare-5693'/7,
  'case--max-5570'/5,
  'case--min-5526'/5,
  'case--case block in compare-5235'/3,
  'case--compare-5216'/3,
  'case--max-5200'/3,
  'case--min-5184'/3,
  'case--case block in compare-5052'/3,
  'case--compare-5033'/3,
  'case--max-5017'/3,
  'case--min-5001'/3,
  'case--case block in compare-4869'/3,
  'case--compare-4850'/3,
  'case--max-4834'/3,
  'case--min-4818'/3,
  'case--case block in compare-4686'/3,
  'case--compare-4667'/3,
  'case--max-4651'/3,
  'case--min-4635'/3,
  'case--case block in compare-4503'/3,
  'case--compare-4484'/3,
  'case--max-4468'/3,
  'case--min-4452'/3,
  'case--case block in compare-4320'/3,
  'case--compare-4301'/3,
  'case--max-4285'/3,
  'case--min-4269'/3,
  'case--case block in compare-4137'/3,
  'case--compare-4118'/3,
  'case--max-4102'/3,
  'case--min-4086'/3,
  'case--case block in compare-3954'/3,
  'case--compare-3935'/3,
  'case--max-3919'/3,
  'case--min-3903'/3,
  'case--case block in compare-3771'/3,
  'case--compare-3752'/3,
  'case--max-3736'/3,
  'case--min-3720'/3,
  'case--case block in compare-3588'/3,
  'case--compare-3569'/3,
  'case--max-3553'/3,
  'case--min-3537'/3,
  'case--case block in compare-3405'/3,
  'case--compare-3386'/3,
  'case--max-3370'/3,
  'case--min-3354'/3,
  'case--case block in compare-3212'/3,
  'case--compare-3193'/3,
  'case--max-3177'/3,
  'case--min-3161'/3,
  'case--case block in compare-3029'/3,
  'case--compare-3010'/3,
  'case--max-2994'/3,
  'case--min-2978'/3,
  'case--max-2818'/3,
  'case--min-2802'/3,
  'case--max-2646'/3,
  'case--min-2630'/3,
  'case--max-2473'/3,
  'case--min-2457'/3,
  'case--max-2274'/4,
  'case--min-2244'/4,
  'case--{Default implementation of min:0}-2017'/4,
  'case--{Default implementation of max:0}-1972'/4,
  'case--case block in {Default implementation of compare:0}-1811'/4,
  'case--{Default implementation of compare:0}-1778'/4,
  'dn--un--min_Ord_Void'/2,
  'dn--un--min_Ord_String'/2,
  'dn--un--min_Ord_Reverse$a'/3,
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
  'dn--un--max_Ord_Reverse$a'/3,
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
  'dn--un--compare_Ord_Reverse$a'/3,
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
  'dn--un-->_Ord_Reverse$a'/3,
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
  'dn--un-->=_Ord_Reverse$a'/3,
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
  'dn--un--<_Ord_Reverse$a'/3,
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
  'dn--un--<=_Ord_Reverse$a'/3,
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
  'un--contra'/1,
  'un--comparing'/4,
  'un--compareInteger'/2,
  'un--compare'/3,
  'un--Reverse'/1,
  'un-->='/3,
  'un-->'/3,
  'un--=='/3,
  'un--<='/3,
  'un--<'/3,
  'un--/='/3
]).
'case--compare-5693'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of 1 -> case V0 of {'Prelude.EqOrd.MkOrd', V7, V8, V9, V10, V11, V12, V13, V14} -> ((V8(V2))(V4)) end; 0 -> case V1 of {'Prelude.EqOrd.MkOrd', V15, V16, V17, V18, V19, V20, V21, V22} -> ((V16(V3))(V5)) end end.
'case--max-5570'(V0, V1, V2, V3, V4) -> case V4 of 1 -> V3; 0 -> V2 end.
'case--min-5526'(V0, V1, V2, V3, V4) -> case V4 of 1 -> V3; 0 -> V2 end.
'case--case block in compare-5235'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2 end.
'case--compare-5216'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_Char'(V1, V0)) of 1 -> 1; 0 -> 2 end end.
'case--max-5200'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--min-5184'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--case block in compare-5052'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2 end.
'case--compare-5033'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_String'(V1, V0)) of 1 -> 1; 0 -> 2 end end.
'case--max-5017'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--min-5001'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--case block in compare-4869'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2 end.
'case--compare-4850'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_Double'(V1, V0)) of 1 -> 1; 0 -> 2 end end.
'case--max-4834'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--min-4818'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--case block in compare-4686'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2 end.
'case--compare-4667'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_Int64'(V1, V0)) of 1 -> 1; 0 -> 2 end end.
'case--max-4651'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--min-4635'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--case block in compare-4503'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2 end.
'case--compare-4484'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_Int32'(V1, V0)) of 1 -> 1; 0 -> 2 end end.
'case--max-4468'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--min-4452'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--case block in compare-4320'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2 end.
'case--compare-4301'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_Int16'(V1, V0)) of 1 -> 1; 0 -> 2 end end.
'case--max-4285'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--min-4269'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--case block in compare-4137'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2 end.
'case--compare-4118'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_Int8'(V1, V0)) of 1 -> 1; 0 -> 2 end end.
'case--max-4102'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--min-4086'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--case block in compare-3954'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2 end.
'case--compare-3935'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_Bits64'(V1, V0)) of 1 -> 1; 0 -> 2 end end.
'case--max-3919'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--min-3903'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--case block in compare-3771'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2 end.
'case--compare-3752'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_Bits32'(V1, V0)) of 1 -> 1; 0 -> 2 end end.
'case--max-3736'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--min-3720'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--case block in compare-3588'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2 end.
'case--compare-3569'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_Bits16'(V1, V0)) of 1 -> 1; 0 -> 2 end end.
'case--max-3553'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--min-3537'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--case block in compare-3405'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2 end.
'case--compare-3386'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_Bits8'(V1, V0)) of 1 -> 1; 0 -> 2 end end.
'case--max-3370'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--min-3354'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--case block in compare-3212'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2 end.
'case--compare-3193'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_Integer'(V1, V0)) of 1 -> 1; 0 -> 2 end end.
'case--max-3177'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--min-3161'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--case block in compare-3029'(V0, V1, V2) -> case V2 of 1 -> 1; 0 -> 2 end.
'case--compare-3010'(V0, V1, V2) -> case V2 of 1 -> 0; 0 -> case ('dn--un--==_Eq_Int'(V1, V0)) of 1 -> 1; 0 -> 2 end end.
'case--max-2994'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--min-2978'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--max-2818'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--min-2802'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--max-2646'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--min-2630'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--max-2473'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--min-2457'(V0, V1, V2) -> case V2 of 1 -> V1; 0 -> V0 end.
'case--max-2274'(V0, V1, V2, V3) -> case V3 of 1 -> V1; 0 -> V0 end.
'case--min-2244'(V0, V1, V2, V3) -> case V3 of 1 -> V1; 0 -> V0 end.
'case--{Default implementation of min:0}-2017'(V0, V1, V2, V3) -> case V3 of 1 -> V1; 0 -> V0 end.
'case--{Default implementation of max:0}-1972'(V0, V1, V2, V3) -> case V3 of 1 -> V1; 0 -> V0 end.
'case--case block in {Default implementation of compare:0}-1811'(V0, V1, V2, V3) -> case V3 of 1 -> 1; 0 -> 2 end.
'case--{Default implementation of compare:0}-1778'(V0, V1, V2, V3) -> case V3 of 1 -> 0; 0 -> case case V2 of {'Prelude.EqOrd.MkOrd', V4, V5, V6, V7, V8, V9, V10, V11} -> case V4 of {'Prelude.EqOrd.MkEq', V12, V13} -> ((V12(V0))(V1)) end end of 1 -> 1; 0 -> 2 end end.
'dn--un--min_Ord_Void'(V0, V1) -> case ('dn--un--<_Ord_Void'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--min_Ord_String'(V0, V1) -> case ('dn--un--<_Ord_String'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--min_Ord_Reverse$a'(V0, V1, V2) -> case ('dn--un--<_Ord_Reverse$a'(V0, V1, V2)) of 1 -> V1; 0 -> V2 end.
'dn--un--min_Ord_Integer'(V0, V1) -> case ('dn--un--<_Ord_Integer'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--min_Ord_Int8'(V0, V1) -> case ('dn--un--<_Ord_Int8'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--min_Ord_Int64'(V0, V1) -> case ('dn--un--<_Ord_Int64'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--min_Ord_Int32'(V0, V1) -> case ('dn--un--<_Ord_Int32'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--min_Ord_Int16'(V0, V1) -> case ('dn--un--<_Ord_Int16'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--min_Ord_Int'(V0, V1) -> case ('dn--un--<_Ord_Int'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--min_Ord_Double'(V0, V1) -> case ('dn--un--<_Ord_Double'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--min_Ord_Char'(V0, V1) -> case ('dn--un--<_Ord_Char'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--min_Ord_Bool'(V0, V1) -> case ('dn--un--<_Ord_Bool'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--min_Ord_Bits8'(V0, V1) -> case ('dn--un--<_Ord_Bits8'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--min_Ord_Bits64'(V0, V1) -> case ('dn--un--<_Ord_Bits64'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--min_Ord_Bits32'(V0, V1) -> case ('dn--un--<_Ord_Bits32'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--min_Ord_Bits16'(V0, V1) -> case ('dn--un--<_Ord_Bits16'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--min_Ord_(|Unit,MkUnit|)'(V0, V1) -> case ('dn--un--<_Ord_(|Unit,MkUnit|)'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--min_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3) -> case ('dn--un--<_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3)) of 1 -> V2; 0 -> V3 end.
'dn--un--max_Ord_Void'(V0, V1) -> case ('dn--un-->_Ord_Void'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--max_Ord_String'(V0, V1) -> case ('dn--un-->_Ord_String'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--max_Ord_Reverse$a'(V0, V1, V2) -> case ('dn--un-->_Ord_Reverse$a'(V0, V1, V2)) of 1 -> V1; 0 -> V2 end.
'dn--un--max_Ord_Integer'(V0, V1) -> case ('dn--un-->_Ord_Integer'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--max_Ord_Int8'(V0, V1) -> case ('dn--un-->_Ord_Int8'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--max_Ord_Int64'(V0, V1) -> case ('dn--un-->_Ord_Int64'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--max_Ord_Int32'(V0, V1) -> case ('dn--un-->_Ord_Int32'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--max_Ord_Int16'(V0, V1) -> case ('dn--un-->_Ord_Int16'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--max_Ord_Int'(V0, V1) -> case ('dn--un-->_Ord_Int'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--max_Ord_Double'(V0, V1) -> case ('dn--un-->_Ord_Double'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--max_Ord_Char'(V0, V1) -> case ('dn--un-->_Ord_Char'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--max_Ord_Bool'(V0, V1) -> case ('dn--un-->_Ord_Bool'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--max_Ord_Bits8'(V0, V1) -> case ('dn--un-->_Ord_Bits8'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--max_Ord_Bits64'(V0, V1) -> case ('dn--un-->_Ord_Bits64'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--max_Ord_Bits32'(V0, V1) -> case ('dn--un-->_Ord_Bits32'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--max_Ord_Bits16'(V0, V1) -> case ('dn--un-->_Ord_Bits16'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--max_Ord_(|Unit,MkUnit|)'(V0, V1) -> case ('dn--un-->_Ord_(|Unit,MkUnit|)'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--max_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3) -> case ('dn--un-->_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3)) of 1 -> V2; 0 -> V3 end.
'dn--un--compare_Ord_Void'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--compare_Ord_String'(V0, V1) -> case ('dn--un--<_Ord_String'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_String'(V0, V1)) of 1 -> 1; 0 -> 2 end end.
'dn--un--compare_Ord_Reverse$a'(V0, V1, V2) -> ('un--contra'(case V0 of {'Prelude.EqOrd.MkOrd', V3, V4, V5, V6, V7, V8, V9, V10} -> ((V4(V1))(V2)) end)).
'dn--un--compare_Ord_Integer'(V0, V1) -> case ('dn--un--<_Ord_Integer'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_Integer'(V0, V1)) of 1 -> 1; 0 -> 2 end end.
'dn--un--compare_Ord_Int8'(V0, V1) -> case ('dn--un--<_Ord_Int8'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_Int8'(V0, V1)) of 1 -> 1; 0 -> 2 end end.
'dn--un--compare_Ord_Int64'(V0, V1) -> case ('dn--un--<_Ord_Int64'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_Int64'(V0, V1)) of 1 -> 1; 0 -> 2 end end.
'dn--un--compare_Ord_Int32'(V0, V1) -> case ('dn--un--<_Ord_Int32'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_Int32'(V0, V1)) of 1 -> 1; 0 -> 2 end end.
'dn--un--compare_Ord_Int16'(V0, V1) -> case ('dn--un--<_Ord_Int16'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_Int16'(V0, V1)) of 1 -> 1; 0 -> 2 end end.
'dn--un--compare_Ord_Int'(V0, V1) -> case ('dn--un--<_Ord_Int'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_Int'(V0, V1)) of 1 -> 1; 0 -> 2 end end.
'dn--un--compare_Ord_Double'(V0, V1) -> case ('dn--un--<_Ord_Double'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_Double'(V0, V1)) of 1 -> 1; 0 -> 2 end end.
'dn--un--compare_Ord_Char'(V0, V1) -> case ('dn--un--<_Ord_Char'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_Char'(V0, V1)) of 1 -> 1; 0 -> 2 end end.
'dn--un--compare_Ord_Bool'(V0, V1) -> case V0 of 0 -> case V1 of 0 -> 1; 1 -> 0 end; 1 -> case V1 of 0 -> 2; 1 -> 1 end end.
'dn--un--compare_Ord_Bits8'(V0, V1) -> case ('dn--un--<_Ord_Bits8'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_Bits8'(V0, V1)) of 1 -> 1; 0 -> 2 end end.
'dn--un--compare_Ord_Bits64'(V0, V1) -> case ('dn--un--<_Ord_Bits64'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_Bits64'(V0, V1)) of 1 -> 1; 0 -> 2 end end.
'dn--un--compare_Ord_Bits32'(V0, V1) -> case ('dn--un--<_Ord_Bits32'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_Bits32'(V0, V1)) of 1 -> 1; 0 -> 2 end end.
'dn--un--compare_Ord_Bits16'(V0, V1) -> case ('dn--un--<_Ord_Bits16'(V0, V1)) of 1 -> 0; 0 -> case ('dn--un--==_Eq_Bits16'(V0, V1)) of 1 -> 1; 0 -> 2 end end.
'dn--un--compare_Ord_(|Unit,MkUnit|)'(V0, V1) -> 1.
'dn--un--compare_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3) -> case V2 of {'Builtin.MkPair', V4, V5} -> case V3 of {'Builtin.MkPair', V6, V7} -> case case V0 of {'Prelude.EqOrd.MkOrd', V8, V9, V10, V11, V12, V13, V14, V15} -> case V8 of {'Prelude.EqOrd.MkEq', V16, V17} -> ((V17(V4))(V6)) end end of 1 -> case V0 of {'Prelude.EqOrd.MkOrd', V18, V19, V20, V21, V22, V23, V24, V25} -> ((V19(V4))(V6)) end; 0 -> case V1 of {'Prelude.EqOrd.MkOrd', V26, V27, V28, V29, V30, V31, V32, V33} -> ((V27(V5))(V7)) end end end end.
'dn--un--__Ord_(Eq ty)'(V0) -> case V0 of {'Prelude.EqOrd.MkOrd', V1, V2, V3, V4, V5, V6, V7, V8} -> V1 end.
'dn--un--__Impl_Ord_Void'() -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Void'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Void'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Void'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Void'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Void'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Void'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Void'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Void'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Void'(V16, V17)) end end}.
'dn--un--__Impl_Ord_String'() -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_String'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_String'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_String'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_String'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_String'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_String'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_String'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_String'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_String'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Integer'() -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Integer'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Integer'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Integer'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Integer'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Integer'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Integer'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Integer'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Integer'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Integer'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Int8'() -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Int8'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Int8'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Int8'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Int8'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Int8'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Int8'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Int8'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Int8'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Int8'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Int64'() -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Int64'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Int64'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Int64'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Int64'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Int64'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Int64'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Int64'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Int64'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Int64'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Int32'() -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Int32'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Int32'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Int32'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Int32'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Int32'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Int32'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Int32'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Int32'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Int32'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Int16'() -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Int16'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Int16'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Int16'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Int16'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Int16'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Int16'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Int16'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Int16'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Int16'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Int'() -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Int'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Int'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Int'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Int'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Int'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Int'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Int'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Int'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Int'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Double'() -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Double'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Double'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Double'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Double'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Double'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Double'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Double'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Double'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Double'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Char'() -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Char'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Char'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Char'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Char'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Char'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Char'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Char'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Char'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Char'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Bool'() -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Bool'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Bool'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Bool'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Bool'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Bool'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Bool'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Bool'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Bool'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Bool'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Bits8'() -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Bits8'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Bits8'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Bits8'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Bits8'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Bits8'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Bits8'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Bits8'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Bits8'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Bits8'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Bits64'() -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Bits64'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Bits64'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Bits64'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Bits64'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Bits64'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Bits64'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Bits64'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Bits64'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Bits64'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Bits32'() -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Bits32'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Bits32'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Bits32'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Bits32'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Bits32'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Bits32'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Bits32'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Bits32'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Bits32'(V16, V17)) end end}.
'dn--un--__Impl_Ord_Bits16'() -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Bits16'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Bits16'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Bits16'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Bits16'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Bits16'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Bits16'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Bits16'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Bits16'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Bits16'(V16, V17)) end end}.
'dn--un--__Impl_Ord_(|Unit,MkUnit|)'() -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> 1 end end, fun (V2) -> fun (V3) -> 0 end end}, fun (V4) -> fun (V5) -> 1 end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_(|Unit,MkUnit|)'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_(|Unit,MkUnit|)'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_(|Unit,MkUnit|)'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_(|Unit,MkUnit|)'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_(|Unit,MkUnit|)'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_(|Unit,MkUnit|)'(V16, V17)) end end}.
'dn--un--__Impl_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1) -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('dn--un--==_Eq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(case V0 of {'Prelude.EqOrd.MkOrd', V4, V5, V6, V7, V8, V9, V10, V11} -> V4 end, case V1 of {'Prelude.EqOrd.MkOrd', V12, V13, V14, V15, V16, V17, V18, V19} -> V12 end, V2, V3)) end end, fun (V20) -> fun (V21) -> ('dn--un--/=_Eq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(case V0 of {'Prelude.EqOrd.MkOrd', V22, V23, V24, V25, V26, V27, V28, V29} -> V22 end, case V1 of {'Prelude.EqOrd.MkOrd', V30, V31, V32, V33, V34, V35, V36, V37} -> V30 end, V20, V21)) end end}, fun (V38) -> fun (V39) -> ('dn--un--compare_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V38, V39)) end end, fun (V40) -> fun (V41) -> ('dn--un--<_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V40, V41)) end end, fun (V42) -> fun (V43) -> ('dn--un-->_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V42, V43)) end end, fun (V44) -> fun (V45) -> ('dn--un--<=_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V44, V45)) end end, fun (V46) -> fun (V47) -> ('dn--un-->=_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V46, V47)) end end, fun (V48) -> fun (V49) -> ('dn--un--max_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V48, V49)) end end, fun (V50) -> fun (V51) -> ('dn--un--min_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V50, V51)) end end}.
'dn--un--__Impl_Eq_Void'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Void'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Void'(V2, V3)) end end}.
'dn--un--__Impl_Eq_String'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_String'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_String'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Ordering'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Ordering'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Ordering'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Integer'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Integer'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Integer'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Int8'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Int8'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Int8'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Int64'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Int64'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Int64'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Int32'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Int32'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Int32'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Int16'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Int16'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Int16'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Int'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Int'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Int'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Double'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Double'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Double'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Char'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Char'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Char'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Bool'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Bool'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Bool'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Bits8'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Bits8'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Bits8'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Bits64'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Bits64'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Bits64'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Bits32'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Bits32'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Bits32'(V2, V3)) end end}.
'dn--un--__Impl_Eq_Bits16'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Bits16'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Bits16'(V2, V3)) end end}.
'dn--un--__Impl_Eq_(|Unit,MkUnit|)'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> 1 end end, fun (V2) -> fun (V3) -> 0 end end}.
'dn--un--__Impl_Eq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1) -> {'Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('dn--un--==_Eq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3)) end end, fun (V4) -> fun (V5) -> ('dn--un--/=_Eq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V4, V5)) end end}.
'dn--un-->_Ord_Void'(V0, V1) -> ('dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_Void'(V0, V1)), 2)).
'dn--un-->_Ord_String'(V0, V1) -> case case (V0 > V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->_Ord_Reverse$a'(V0, V1, V2) -> ('dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_Reverse$a'(V0, V1, V2)), 2)).
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
'dn--un-->_Ord_(|Unit,MkUnit|)'(V0, V1) -> ('dn--un--==_Eq_Ordering'(1, 2)).
'dn--un-->_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3) -> ('dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3)), 2)).
'dn--un-->=_Ord_Void'(V0, V1) -> ('dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_Void'(V0, V1)), 0)).
'dn--un-->=_Ord_String'(V0, V1) -> case case (V0 >= V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un-->=_Ord_Reverse$a'(V0, V1, V2) -> ('dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_Reverse$a'(V0, V1, V2)), 0)).
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
'dn--un-->=_Ord_(|Unit,MkUnit|)'(V0, V1) -> ('dn--un--/=_Eq_Ordering'(1, 0)).
'dn--un-->=_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3) -> ('dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3)), 0)).
'dn--un--==_Eq_Void'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
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
'dn--un--==_Eq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3) -> case V2 of {'Builtin.MkPair', V4, V5} -> case V3 of {'Builtin.MkPair', V6, V7} -> case case V0 of {'Prelude.EqOrd.MkEq', V8, V9} -> ((V8(V4))(V6)) end of 1 -> case V1 of {'Prelude.EqOrd.MkEq', V10, V11} -> ((V10(V5))(V7)) end; 0 -> 0 end end end.
'dn--un--<_Ord_Void'(V0, V1) -> ('dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_Void'(V0, V1)), 0)).
'dn--un--<_Ord_String'(V0, V1) -> case case (V0 < V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<_Ord_Reverse$a'(V0, V1, V2) -> ('dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_Reverse$a'(V0, V1, V2)), 0)).
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
'dn--un--<_Ord_(|Unit,MkUnit|)'(V0, V1) -> ('dn--un--==_Eq_Ordering'(1, 0)).
'dn--un--<_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3) -> ('dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3)), 0)).
'dn--un--<=_Ord_Void'(V0, V1) -> ('dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_Void'(V0, V1)), 2)).
'dn--un--<=_Ord_String'(V0, V1) -> case case (V0 =< V1) of 'false' -> 0; _ -> 1 end of 0 -> 0; _ -> 1 end.
'dn--un--<=_Ord_Reverse$a'(V0, V1, V2) -> ('dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_Reverse$a'(V0, V1, V2)), 2)).
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
'dn--un--<=_Ord_(|Unit,MkUnit|)'(V0, V1) -> ('dn--un--/=_Eq_Ordering'(1, 2)).
'dn--un--<=_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3) -> ('dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3)), 2)).
'dn--un--/=_Eq_Void'(V0, V1) -> case ('dn--un--==_Eq_Void'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_String'(V0, V1) -> case ('dn--un--==_Eq_String'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_Ordering'(V0, V1) -> case ('dn--un--==_Eq_Ordering'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_Integer'(V0, V1) -> case ('dn--un--==_Eq_Integer'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_Int8'(V0, V1) -> case ('dn--un--==_Eq_Int8'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_Int64'(V0, V1) -> case ('dn--un--==_Eq_Int64'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_Int32'(V0, V1) -> case ('dn--un--==_Eq_Int32'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_Int16'(V0, V1) -> case ('dn--un--==_Eq_Int16'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_Int'(V0, V1) -> case ('dn--un--==_Eq_Int'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_Double'(V0, V1) -> case ('dn--un--==_Eq_Double'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_Char'(V0, V1) -> case ('dn--un--==_Eq_Char'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_Bool'(V0, V1) -> case ('dn--un--==_Eq_Bool'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_Bits8'(V0, V1) -> case ('dn--un--==_Eq_Bits8'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_Bits64'(V0, V1) -> case ('dn--un--==_Eq_Bits64'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_Bits32'(V0, V1) -> case ('dn--un--==_Eq_Bits32'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_Bits16'(V0, V1) -> case ('dn--un--==_Eq_Bits16'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_(|Unit,MkUnit|)'(V0, V1) -> 0.
'dn--un--/=_Eq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3) -> case ('dn--un--==_Eq_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3)) of 1 -> 0; 0 -> 1 end.
'un--min'(V0, V1, V2) -> case V0 of {'Prelude.EqOrd.MkOrd', V3, V4, V5, V6, V7, V8, V9, V10} -> ((V10(V1))(V2)) end.
'un--max'(V0, V1, V2) -> case V0 of {'Prelude.EqOrd.MkOrd', V3, V4, V5, V6, V7, V8, V9, V10} -> ((V9(V1))(V2)) end.
'un--contra'(V0) -> case V0 of 0 -> 2; 1 -> 1; 2 -> 0 end.
'un--comparing'(V0, V1, V2, V3) -> case V0 of {'Prelude.EqOrd.MkOrd', V4, V5, V6, V7, V8, V9, V10, V11} -> ((V5((V1(V2))))((V1(V3)))) end.
'un--compareInteger'(V0, V1) -> ('dn--un--compare_Ord_Integer'(V0, V1)).
'un--compare'(V0, V1, V2) -> case V0 of {'Prelude.EqOrd.MkOrd', V3, V4, V5, V6, V7, V8, V9, V10} -> ((V4(V1))(V2)) end.
'un--Reverse'(V0) -> {'Prelude.EqOrd.MkOrd', case V0 of {'Prelude.EqOrd.MkOrd', V1, V2, V3, V4, V5, V6, V7, V8} -> V1 end, fun (V9) -> fun (V10) -> ('dn--un--compare_Ord_Reverse$a'(V0, V9, V10)) end end, fun (V11) -> fun (V12) -> ('dn--un--<_Ord_Reverse$a'(V0, V11, V12)) end end, fun (V13) -> fun (V14) -> ('dn--un-->_Ord_Reverse$a'(V0, V13, V14)) end end, fun (V15) -> fun (V16) -> ('dn--un--<=_Ord_Reverse$a'(V0, V15, V16)) end end, fun (V17) -> fun (V18) -> ('dn--un-->=_Ord_Reverse$a'(V0, V17, V18)) end end, fun (V19) -> fun (V20) -> ('dn--un--max_Ord_Reverse$a'(V0, V19, V20)) end end, fun (V21) -> fun (V22) -> ('dn--un--min_Ord_Reverse$a'(V0, V21, V22)) end end}.
'un-->='(V0, V1, V2) -> case V0 of {'Prelude.EqOrd.MkOrd', V3, V4, V5, V6, V7, V8, V9, V10} -> ((V8(V1))(V2)) end.
'un-->'(V0, V1, V2) -> case V0 of {'Prelude.EqOrd.MkOrd', V3, V4, V5, V6, V7, V8, V9, V10} -> ((V6(V1))(V2)) end.
'un--=='(V0, V1, V2) -> case V0 of {'Prelude.EqOrd.MkEq', V3, V4} -> ((V3(V1))(V2)) end.
'un--<='(V0, V1, V2) -> case V0 of {'Prelude.EqOrd.MkOrd', V3, V4, V5, V6, V7, V8, V9, V10} -> ((V7(V1))(V2)) end.
'un--<'(V0, V1, V2) -> case V0 of {'Prelude.EqOrd.MkOrd', V3, V4, V5, V6, V7, V8, V9, V10} -> ((V5(V1))(V2)) end.
'un--/='(V0, V1, V2) -> case V0 of {'Prelude.EqOrd.MkEq', V3, V4} -> ((V4(V1))(V2)) end.
