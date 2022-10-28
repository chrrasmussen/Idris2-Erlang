-module('Idris.Idris2.Libraries.Text.Quantity').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--case block in show,showMax-917'/4,
  'case--show,showMax-897'/2,
  'nested--2563-891--in--un--showMax'/2,
  'dn--un--show_Show_Quantity'/1,
  'dn--un--showPrec_Show_Quantity'/2,
  'dn--un--__Impl_Show_Quantity'/0,
  'un--inOrder'/1,
  'un--exactly'/1,
  'un--between'/2,
  'un--atMost'/1,
  'un--atLeast'/1
]).
'case--case block in show,showMax-917'(V0, V1, V2, V3) -> case V3 of 1 -> <<""/utf8>>; 0 -> <<<<","/utf8>>/binary, ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V1))/binary>> end.
'case--show,showMax-897'(V0, V1) -> case V0 of {'Prelude.Types.Nothing'} -> <<","/utf8>>; {'Prelude.Types.Just', V2} -> case case (V1 =:= V2) of 'false' -> 0; _ -> 1 end of 1 -> <<""/utf8>>; 0 -> <<<<","/utf8>>/binary, ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V2))/binary>> end end.
'nested--2563-891--in--un--showMax'(V0, V1) -> case V0 of {'Prelude.Types.Nothing'} -> <<","/utf8>>; {'Prelude.Types.Just', V2} -> case case (V1 =:= V2) of 'false' -> 0; _ -> 1 end of 1 -> <<""/utf8>>; 0 -> <<<<","/utf8>>/binary, ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V2))/binary>> end end.
'dn--un--show_Show_Quantity'(V0) -> case V0 of {'Libraries.Text.Quantity.Qty', V1, V2} -> case V1 of 0 -> case V2 of {'Prelude.Types.Nothing'} -> <<"*"/utf8>>; {'Prelude.Types.Just', V3} -> case V3 of 0 -> <<<<"{"/utf8>>/binary, <<('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V1))/binary, <<('nested--2563-891--in--un--showMax'(V2, V1))/binary, <<"}"/utf8>>/binary>>/binary>>/binary>>; _ -> begin (V4 = (V3 - 1)), case V4 of 0 -> <<"?"/utf8>>; _ -> <<<<"{"/utf8>>/binary, <<('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V1))/binary, <<('nested--2563-891--in--un--showMax'(V2, V1))/binary, <<"}"/utf8>>/binary>>/binary>>/binary>> end end end; _ -> <<<<"{"/utf8>>/binary, <<('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V1))/binary, <<('nested--2563-891--in--un--showMax'(V2, V1))/binary, <<"}"/utf8>>/binary>>/binary>>/binary>> end; _ -> begin (V5 = (V1 - 1)), case V5 of 0 -> case V2 of {'Prelude.Types.Nothing'} -> <<"+"/utf8>>; _ -> <<<<"{"/utf8>>/binary, <<('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V1))/binary, <<('nested--2563-891--in--un--showMax'(V2, V1))/binary, <<"}"/utf8>>/binary>>/binary>>/binary>> end; _ -> <<<<"{"/utf8>>/binary, <<('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V1))/binary, <<('nested--2563-891--in--un--showMax'(V2, V1))/binary, <<"}"/utf8>>/binary>>/binary>>/binary>> end end end end.
'dn--un--showPrec_Show_Quantity'(V0, V1) -> ('dn--un--show_Show_Quantity'(V1)).
'dn--un--__Impl_Show_Quantity'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Quantity'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--show_Show_Quantity'(V2)) end end}.
'un--inOrder'(V0) -> case V0 of {'Libraries.Text.Quantity.Qty', V1, V2} -> case V2 of {'Prelude.Types.Nothing'} -> 1; {'Prelude.Types.Just', V3} -> ('Idris.Idris2.Prelude.Types':'dn--un--<=_Ord_Nat'(V1, V3)) end end.
'un--exactly'(V0) -> {'Libraries.Text.Quantity.Qty', V0, {'Prelude.Types.Just', V0}}.
'un--between'(V0, V1) -> {'Libraries.Text.Quantity.Qty', V0, {'Prelude.Types.Just', V1}}.
'un--atMost'(V0) -> {'Libraries.Text.Quantity.Qty', 0, {'Prelude.Types.Just', V0}}.
'un--atLeast'(V0) -> {'Libraries.Text.Quantity.Qty', V0, {'Prelude.Types.Nothing'}}.
