-module('Idris.Idris2.Libraries.Utils.String').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--2593-891--in--un--escape'/4,
  'un--stripSurrounds'/3,
  'un--stripQuotes'/1,
  'un--lowerFirst'/1,
  'un--escapeStringUnix'/1,
  'un--escapeStringChez'/1,
  'un--escapeGeneric'/3,
  'un--dotSep'/1
]).
'nested--2593-891--in--un--escape'(V0, V1, V2, V3) -> case ('Idris.Idris2.Prelude.Types':'un--elem'({'Prelude.Interfaces.MkFoldable', fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V6, V7, V8)) end end end end end, fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V11, V12, V13)) end end end end end, fun (V14) -> fun (V15) -> ('Idris.Idris2.Prelude.Types':'dn--un--null_Foldable_List'(V15)) end end, fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldlM_Foldable_List'(V19, V20, V21, V22)) end end end end end end end, fun (V23) -> fun (V24) -> V24 end end, fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> fun (V29) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V27, V28, V29)) end end end end end}, {'Prelude.EqOrd.MkEq', fun (V30) -> fun (V31) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V30, V31)) end end, fun (V32) -> fun (V33) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Char'(V32, V33)) end end}, V2, V0)) of 1 -> [V1 | [V2 | V3]]; 0 -> [V2 | V3] end.
'un--stripSurrounds'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types':'un--substr'(V0, ('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'((('Idris.Idris2.Prelude.Types.String':'un--length'(V2)) - (V0 + V1)))), V2)).
'un--stripQuotes'(V0) -> ('un--stripSurrounds'(1, 1, V0)).
'un--lowerFirst'(V0) -> case V0 of <<""/utf8>> -> 0; _ -> ('Idris.Idris2.Prelude.Types':'un--isLower'(('erlang':'hd'(('string':'next_grapheme'(V0)))))) end.
'un--escapeStringUnix'(V0) -> ('un--escapeGeneric'($\x{5c}, [$\x{22} | [$\x{5c} | []]], V0)).
'un--escapeStringChez'(V0) -> ('un--escapeGeneric'($\x{5c}, [$\x{27} | [$\x{5c} | []]], V0)).
'un--escapeGeneric'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types':'un--fastPack'(('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(fun (V3) -> fun (V4) -> ('nested--2593-891--in--un--escape'(V1, V0, V3, V4)) end end, [], ('Idris.Idris2.Prelude.Types':'un--fastUnpack'(V2)))))).
'un--dotSep'(V0) -> case V0 of [] -> <<""/utf8>>; [E0 | E1] -> (fun (V1, V2) -> case V2 of [] -> V1; _ -> <<V1/binary, ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V3) -> fun (V4) -> <<V3/binary, V4/binary>> end end, <<""/utf8>>}, fun (V5) -> V5 end, ('Idris.Idris2.Prelude.Types':'un--listBind'(V2, fun (V6) -> ('Idris.Idris2.Prelude.Types':'dn--un--pure_Applicative_List'(<<<<"."/utf8>>/binary, V6/binary>>)) end))))/binary>> end end(E0, E1)) end.
