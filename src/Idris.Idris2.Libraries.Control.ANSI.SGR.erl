-module('Idris.Idris2.Libraries.Control.ANSI.SGR').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--3255-2726--in--un--toCode'/2,
  'dn--un--cast_Cast_Style_String'/1,
  'dn--un--cast_Cast_Color_String'/1,
  'dn--un--cast_Cast_Blink_String'/1,
  'un--escapeSGR'/1
]).
'nested--3255-2726--in--un--toCode'(V0, V1) -> case V1 of {'Libraries.Control.ANSI.SGR.Reset'} -> <<"0"/utf8>>; {'Libraries.Control.ANSI.SGR.SetForeground', V2} -> <<<<"38;5;"/utf8>>/binary, ('dn--un--cast_Cast_Color_String'(V2))/binary>>; {'Libraries.Control.ANSI.SGR.SetBackground', V3} -> <<<<"48;5;"/utf8>>/binary, ('dn--un--cast_Cast_Color_String'(V3))/binary>>; {'Libraries.Control.ANSI.SGR.SetStyle', V4} -> ('dn--un--cast_Cast_Style_String'(V4)); {'Libraries.Control.ANSI.SGR.SetBlink', V5} -> ('dn--un--cast_Cast_Blink_String'(V5)) end.
'dn--un--cast_Cast_Style_String'(V0) -> case V0 of 0 -> <<"1"/utf8>>; 1 -> <<"2"/utf8>>; 2 -> <<"22"/utf8>>; 3 -> <<"3"/utf8>>; 4 -> <<"4"/utf8>>; 5 -> <<"21"/utf8>>; 6 -> <<"24"/utf8>>; 7 -> <<"9"/utf8>>; 8 -> <<"29"/utf8>> end.
'dn--un--cast_Cast_Color_String'(V0) -> case V0 of 0 -> <<"0"/utf8>>; 1 -> <<"1"/utf8>>; 2 -> <<"2"/utf8>>; 3 -> <<"3"/utf8>>; 4 -> <<"4"/utf8>>; 5 -> <<"5"/utf8>>; 6 -> <<"6"/utf8>>; 7 -> <<"7"/utf8>>; 8 -> <<"8"/utf8>>; 9 -> <<"9"/utf8>>; 10 -> <<"10"/utf8>>; 11 -> <<"11"/utf8>>; 12 -> <<"12"/utf8>>; 13 -> <<"13"/utf8>>; 14 -> <<"14"/utf8>>; 15 -> <<"15"/utf8>> end.
'dn--un--cast_Cast_Blink_String'(V0) -> case V0 of 0 -> <<"5"/utf8>>; 1 -> <<"6"/utf8>>; 2 -> <<"25"/utf8>> end.
'un--escapeSGR'(V0) -> <<<<"\x{1b}["/utf8>>/binary, <<('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V1) -> fun (V2) -> <<V1/binary, V2/binary>> end end, <<""/utf8>>}, fun (V3) -> V3 end, ('Idris.Idris2.Data.List':'un--intersperse'(<<";"/utf8>>, ((begin (V9 = fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V7, V8)) end end end end), fun (V10) -> fun (V11) -> ((((V9('erased'))('erased'))(V10))(V11)) end end end(fun (V4) -> ('nested--3255-2726--in--un--toCode'(V0, V4)) end))(V0))))))/binary, <<"m"/utf8>>/binary>>/binary>>.
