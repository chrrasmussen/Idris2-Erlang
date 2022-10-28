-module('Idris.Idris2.Data.List.Quantifiers.All').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--all-4442'/6,
  'case--case block in with block in all-4561'/6,
  'case--with block in all-4506'/5,
  'case--with block in all-4463'/5,
  'nested--3863-4825--in--un--show\x{27}'/5,
  'dn--un--show_Show_((All $p) $xs)'/2,
  'dn--un--showPrec_Show_((All $p) $xs)'/3,
  'dn--un--__Impl_Show_((All $p) $xs)'/1,
  'un--zipPropertyWith'/3,
  'un--mapProperty'/2,
  'un--imapProperty'/3,
  'un--forget'/1,
  'un--all'/2,
  'un--HList'/1
]).
'with--all-4442'(V0, V1, V2, V3, V4, V5) -> case V4 of {'Prelude.Types.No', V6} -> {'Prelude.Types.No', fun (V7) -> case V7 of {'Data.List.Quantifiers.All.::', V8, V9} -> (V6(V8)) end end}; {'Prelude.Types.Yes', V10} -> case ('un--all'(V3, V5)) of {'Prelude.Types.Yes', V11} -> {'Prelude.Types.Yes', {'Data.List.Quantifiers.All.::', V10, V11}}; {'Prelude.Types.No', V12} -> {'Prelude.Types.No', fun (V13) -> case V13 of {'Data.List.Quantifiers.All.::', V14, V15} -> (V12(V15)) end end} end end.
'case--case block in with block in all-4561'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Data.List.Quantifiers.All.::', V6, V7} -> (V4(V7)) end.
'case--with block in all-4506'(V0, V1, V2, V3, V4) -> case V4 of {'Prelude.Types.Yes', V5} -> {'Prelude.Types.Yes', {'Data.List.Quantifiers.All.::', V1, V5}}; {'Prelude.Types.No', V6} -> {'Prelude.Types.No', fun (V7) -> case V7 of {'Data.List.Quantifiers.All.::', V8, V9} -> (V6(V9)) end end} end.
'case--with block in all-4463'(V0, V1, V2, V3, V4) -> case V4 of {'Data.List.Quantifiers.All.::', V5, V6} -> (V1(V5)) end.
'nested--3863-4825--in--un--show\x{27}'(V0, V1, V2, V3, V4) -> case V3 of {'Data.List.Quantifiers.All.Nil'} -> case V4 of {'Data.List.Quantifiers.All.Nil'} -> V2 end; {'Data.List.Quantifiers.All.::', V5, V6} -> case V6 of {'Data.List.Quantifiers.All.Nil'} -> case V4 of {'Data.List.Quantifiers.All.::', V7, V8} -> case V8 of {'Data.List.Quantifiers.All.Nil'} -> <<V2/binary, case V5 of {'Prelude.Show.MkShow', V9, V10} -> (V9(V7)) end/binary>>; _ -> case V4 of {'Data.List.Quantifiers.All.::', V11, V12} -> ('nested--3863-4825--in--un--show\x{27}'(V0, V1, <<V2/binary, <<case V5 of {'Prelude.Show.MkShow', V13, V14} -> (V13(V11)) end/binary, <<", "/utf8>>/binary>>/binary>>, V6, V12)) end end; _ -> case V4 of {'Data.List.Quantifiers.All.::', V15, V16} -> ('nested--3863-4825--in--un--show\x{27}'(V0, V1, <<V2/binary, <<case V5 of {'Prelude.Show.MkShow', V17, V18} -> (V17(V15)) end/binary, <<", "/utf8>>/binary>>/binary>>, V6, V16)) end end; _ -> case V4 of {'Data.List.Quantifiers.All.::', V19, V20} -> ('nested--3863-4825--in--un--show\x{27}'(V0, V1, <<V2/binary, <<case V5 of {'Prelude.Show.MkShow', V21, V22} -> (V21(V19)) end/binary, <<", "/utf8>>/binary>>/binary>>, V6, V20)) end end end.
'dn--un--show_Show_((All $p) $xs)'(V0, V1) -> <<<<"["/utf8>>/binary, <<('nested--3863-4825--in--un--show\x{27}'(V0, V1, <<""/utf8>>, V0, V1))/binary, <<"]"/utf8>>/binary>>/binary>>.
'dn--un--showPrec_Show_((All $p) $xs)'(V0, V1, V2) -> ('dn--un--show_Show_((All $p) $xs)'(V0, V2)).
'dn--un--__Impl_Show_((All $p) $xs)'(V0) -> {'Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_((All $p) $xs)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_((All $p) $xs)'(V0, V2, V3)) end end}.
'un--zipPropertyWith'(V0, V1, V2) -> case V1 of {'Data.List.Quantifiers.All.Nil'} -> case V2 of {'Data.List.Quantifiers.All.Nil'} -> {'Data.List.Quantifiers.All.Nil'} end; {'Data.List.Quantifiers.All.::', V3, V4} -> case V2 of {'Data.List.Quantifiers.All.::', V5, V6} -> {'Data.List.Quantifiers.All.::', (((V0('erased'))(V3))(V5)), ('un--zipPropertyWith'(fun (V7) -> (V0('erased')) end, V4, V6))} end end.
'un--mapProperty'(V0, V1) -> case V1 of {'Data.List.Quantifiers.All.Nil'} -> {'Data.List.Quantifiers.All.Nil'}; {'Data.List.Quantifiers.All.::', V2, V3} -> {'Data.List.Quantifiers.All.::', ((V0('erased'))(V2)), ('un--mapProperty'(fun (V4) -> (V0('erased')) end, V3))} end.
'un--imapProperty'(V0, V1, V2) -> case V1 of {'Data.List.Quantifiers.All.Nil'} -> case V2 of {'Data.List.Quantifiers.All.Nil'} -> {'Data.List.Quantifiers.All.Nil'} end; {'Data.List.Quantifiers.All.::', V3, V4} -> case V2 of {'Data.List.Quantifiers.All.::', V5, V6} -> {'Data.List.Quantifiers.All.::', (((V0('erased'))(V3))(V5)), ('un--imapProperty'(fun (V7) -> fun (V8) -> ((V0('erased'))(V8)) end end, V4, V6))} end end.
'un--forget'(V0) -> case V0 of {'Data.List.Quantifiers.All.Nil'} -> []; {'Data.List.Quantifiers.All.::', V1, V2} -> [V1 | ('un--forget'(V2))] end.
'un--all'(V0, V1) -> case V1 of [] -> {'Prelude.Types.Yes', {'Data.List.Quantifiers.All.Nil'}}; [E0 | E1] -> (fun (V2, V3) -> ('with--all-4442'('erased', 'erased', V2, V0, (V0(V2)), V3)) end(E0, E1)) end.
'un--HList'(V0) -> {'Data.List.Quantifiers.All.All', 'erased', 'erased', V0}.
