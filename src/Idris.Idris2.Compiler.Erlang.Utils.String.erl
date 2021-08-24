-module('Idris.Idris2.Compiler.Erlang.Utils.String').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--showSep'/2,
  'un--showDouble'/1,
  'un--escapeString'/2,
  'un--escapeChar'/2
]).
'un--showSep'(V0, V1) -> case V1 of [] -> <<""/utf8>>; [E0 | E1] -> (fun (V2, V3) -> case V3 of [] -> V2; _ -> ('Idris.Idris2.Prelude.Types.String':'un--++'(V2, ('Idris.Idris2.Prelude.Types.String':'un--++'(V0, ('un--showSep'(V0, V3)))))) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--showDouble'(V0) -> begin (V1 = ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Double'(V0))), case ('Idris.Idris2.Prelude.Types':'un--elem'({'Idris.Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Char'(V4, V5)) end end}, $., ('Idris.Idris2.Prelude.Types':'un--fastUnpack'(V1)))) of 1 -> V1; 0 -> ('Idris.Idris2.Prelude.Types.String':'un--++'(V1, <<".0"/utf8>>)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.
'un--escapeString'(V0, V1) -> case V0 of [] -> V1; [E0 | E1] -> (fun (V2, V3) -> ('un--escapeChar'(V2, ('un--escapeString'(V3, V1)))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--escapeChar'(V0, V1) -> begin (V2 = ('Idris.Idris2.Prelude.Cast':'dn--un--cast_Cast_Char_Integer'(V0))), begin (V3 = 32), begin (V4 = 126), begin (V5 = 92), begin (V6 = 34), begin (V7 = 39), case case ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_Integer'(V2, V3)) of 1 -> 1; 0 -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord_Integer'(V2, V4)) of 1 -> 1; 0 -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Integer'(V2, V5)) of 1 -> 1; 0 -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Integer'(V2, V6)) of 1 -> 1; 0 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Integer'(V2, V7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end of 1 -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"\x{5c}x{"/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(('Idris.Idris2.Libraries.Utils.Hex':'un--asHex'(('Idris.Idris2.Prelude.Cast':'dn--un--cast_Cast_Char_Int'(V0)))), ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"}"/utf8>>, V1)))))); 0 -> ('Idris.Idris2.Prelude.Types':'un--strCons'(V0, V1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end end end end.
