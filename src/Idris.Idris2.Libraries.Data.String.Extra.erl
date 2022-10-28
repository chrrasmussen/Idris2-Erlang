-module('Idris.Idris2.Libraries.Data.String.Extra').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--index-7755'/3,
  'with--with block in takeLast-7685'/4,
  'with--takeLast-7683'/3,
  'un--takeLast'/2,
  'un--take'/2,
  'un--strSnoc'/2,
  'un--shrink'/2,
  'un--join'/3,
  'un--index'/2,
  'un--indentLines'/2,
  'un--indent'/2,
  'un--dropLast'/2,
  'un--drop'/2,
  'un--<+'/2,
  'un--+>'/2
]).
'with--index-7755'(V0, V1, V2) -> case V1 of [] -> {'Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V3, V4) -> case V2 of 0 -> {'Prelude.Types.Just', V3}; _ -> begin (V5 = (V2 - 1)), ('with--index-7755'(V0, V4, V5)) end end end(E0, E1)) end.
'with--with block in takeLast-7685'(V0, V1, V2, V3) -> case V2 of {'Prelude.Types.Yes', V4} -> ('Idris.Idris2.Prelude.Types':'un--substr'(('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'((V1 - V0))), V1, V3)); {'Prelude.Types.No', V5} -> V3 end.
'with--takeLast-7683'(V0, V1, V2) -> ('with--with block in takeLast-7685'(V2, V1, ('Idris.Idris2.Data.Nat':'un--isLTE'(V2, V1)), V0)).
'un--takeLast'(V0, V1) -> ('with--takeLast-7683'(V1, ('Idris.Idris2.Prelude.Types.String':'un--length'(V1)), V0)).
'un--take'(V0, V1) -> ('Idris.Idris2.Prelude.Types':'un--substr'(0, V0, V1)).
'un--strSnoc'(V0, V1) -> <<V0/binary, ('Idris.Idris2.Data.String':'un--singleton'(V1))/binary>>.
'un--shrink'(V0, V1) -> ('un--dropLast'(V0, ('un--drop'(V0, V1)))).
'un--join'(V0, V1, V2) -> ('un--drop'(('Idris.Idris2.Prelude.Types.String':'un--length'(V0)), case V1 of {'Prelude.Interfaces.MkFoldable', V3, V4, V5, V6, V7, V8} -> (((((V4('erased'))('erased'))(fun (V9) -> fun (V10) -> <<V9/binary, <<V0/binary, V10/binary>>/binary>> end end))(<<""/utf8>>))(V2)) end)).
'un--index'(V0, V1) -> ('with--index-7755'(V1, ('Idris.Idris2.Prelude.Types':'un--fastUnpack'(V1)), V0)).
'un--indentLines'(V0, V1) -> ('un--join'(<<"\x{a}"/utf8>>, {'Prelude.Interfaces.MkFoldable', fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V4, V5, V6)) end end end end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V9, V10, V11)) end end end end end, fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.Types':'dn--un--null_Foldable_List'(V13)) end end, fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldlM_Foldable_List'(V17, V18, V19, V20)) end end end end end end end, fun (V21) -> fun (V22) -> V22 end end, fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V25, V26, V27)) end end end end end}, ((begin (V33 = fun (V29) -> fun (V30) -> fun (V31) -> fun (V32) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V31, V32)) end end end end), fun (V34) -> fun (V35) -> ((((V33('erased'))('erased'))(V34))(V35)) end end end(fun (V28) -> ('un--indent'(V0, V28)) end))(('Idris.Idris2.Data.String':'un--lines'(V1)))))).
'un--indent'(V0, V1) -> <<('Idris.Idris2.Data.String':'un--replicate'(V0, $ ))/binary, V1/binary>>.
'un--dropLast'(V0, V1) -> ('unicode':'characters_to_binary'(('string':'reverse'(('un--drop'(V0, ('unicode':'characters_to_binary'(('string':'reverse'(V1)))))))))).
'un--drop'(V0, V1) -> ('Idris.Idris2.Prelude.Types':'un--substr'(V0, ('Idris.Idris2.Prelude.Types.String':'un--length'(V1)), V1)).
'un--<+'(V0, V1) -> <<('unicode':'characters_to_binary'([V0 | []]))/binary, V1/binary>>.
'un--+>'(V0, V1) -> ('un--strSnoc'(V0, V1)).
