-module('Idris.Idris2.Compiler.Erlang.Utils.String').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--showDouble-878'/3,
  'case--escapeChar-797'/9,
  'un--showSep'/2,
  'un--showDouble'/1,
  'un--escapeString'/1,
  'un--escapeChar'/2
]).
'case--showDouble-878'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(V1, <<".0"/utf8>>)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--escapeChar-797'(V0, V1, V2, V3, V4, V5, V6, V7, V8) -> case V8 of 0 -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"\x{5c}x{"/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('Idris.Idris2.Utils.Hex':'un--asHex'(('Idris.Idris2.Prelude.Types':'dn--un--cast_Cast__Char_Int'(V1)))), ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"}"/utf8>>, V0)))))); 1 -> ('Idris.Idris2.Prelude.Types':'un--strCons'(V1, V0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--showSep'(V0, V1) -> case V1 of [] -> <<""/utf8>>; [E0 | E1] -> (fun (V2, V3) -> case V3 of [] -> V2; _ -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(V2, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(V0, ('un--showSep'(V0, V3)))))) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--showDouble'(V0) -> begin (V1 = ('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Double'(V0))), ('case--showDouble-878'(V0, V1, ('Idris.Idris2.Prelude.Types':'un--elem'('erased', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Char'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Char'(V4, V5)) end end}, $., ('Idris.Idris2.Prelude.Types':'un--unpack'(V1)))))) end.
'un--escapeString'(V0) -> case V0 of [] -> fun (V1) -> V1 end; [E0 | E1] -> (fun (V2, V3) -> fun (V4) -> ('un--escapeChar'(V2, (('un--escapeString'(V3))(V4)))) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--escapeChar'(V0, V1) -> begin (V2 = ('Idris.Idris2.Prelude.Types':'dn--un--cast_Cast__Char_Integer'(V0))), begin (V3 = 32), begin (V4 = 126), begin (V5 = 92), begin (V6 = 34), begin (V7 = 39), ('case--escapeChar-797'(V1, V0, V2, V3, V4, V5, V6, V7, ('Idris.Idris2.Prelude.Basics':'un--||'(('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord__Integer'(V2, V3)), fun () -> ('Idris.Idris2.Prelude.Basics':'un--||'(('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord__Integer'(V2, V4)), fun () -> ('Idris.Idris2.Prelude.Basics':'un--||'(('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Integer'(V2, V5)), fun () -> ('Idris.Idris2.Prelude.Basics':'un--||'(('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Integer'(V2, V6)), fun () -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Integer'(V2, V7)) end)) end)) end)) end)))) end end end end end end.
