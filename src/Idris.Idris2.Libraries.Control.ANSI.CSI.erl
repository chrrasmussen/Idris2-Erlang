-module('Idris.Idris2.Libraries.Control.ANSI.CSI').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'dn--un--cast_Cast_EraseDirection_String'/1,
  'un--scrollUp1'/0,
  'un--scrollUp'/1,
  'un--scrollDown1'/0,
  'un--scrollDown'/1,
  'un--eraseScreen'/1,
  'un--eraseLine'/1,
  'un--cursorUp1'/0,
  'un--cursorUp'/1,
  'un--cursorPrevLine1'/0,
  'un--cursorPrevLine'/1,
  'un--cursorNextLine1'/0,
  'un--cursorNextLine'/1,
  'un--cursorMove'/2,
  'un--cursorForward1'/0,
  'un--cursorForward'/1,
  'un--cursorDown1'/0,
  'un--cursorDown'/1,
  'un--cursorBack1'/0,
  'un--cursorBack'/1
]).
'dn--un--cast_Cast_EraseDirection_String'(V0) -> case V0 of 0 -> <<"1"/utf8>>; 1 -> <<"0"/utf8>>; 2 -> <<"2"/utf8>> end.
'un--scrollUp1'() -> ('un--scrollUp'(1)).
'un--scrollUp'(V0) -> <<<<"\x{1b}["/utf8>>/binary, <<('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V0))/binary, <<"S"/utf8>>/binary>>/binary>>.
'un--scrollDown1'() -> ('un--scrollDown'(1)).
'un--scrollDown'(V0) -> <<<<"\x{1b}["/utf8>>/binary, <<('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V0))/binary, <<"T"/utf8>>/binary>>/binary>>.
'un--eraseScreen'(V0) -> <<<<"\x{1b}["/utf8>>/binary, <<('dn--un--cast_Cast_EraseDirection_String'(V0))/binary, <<"J"/utf8>>/binary>>/binary>>.
'un--eraseLine'(V0) -> <<<<"\x{1b}["/utf8>>/binary, <<('dn--un--cast_Cast_EraseDirection_String'(V0))/binary, <<"K"/utf8>>/binary>>/binary>>.
'un--cursorUp1'() -> ('un--cursorUp'(1)).
'un--cursorUp'(V0) -> <<<<"\x{1b}["/utf8>>/binary, <<('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V0))/binary, <<"A"/utf8>>/binary>>/binary>>.
'un--cursorPrevLine1'() -> ('un--cursorPrevLine'(1)).
'un--cursorPrevLine'(V0) -> <<<<"\x{1b}["/utf8>>/binary, <<('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V0))/binary, <<"F"/utf8>>/binary>>/binary>>.
'un--cursorNextLine1'() -> ('un--cursorNextLine'(1)).
'un--cursorNextLine'(V0) -> <<<<"\x{1b}["/utf8>>/binary, <<('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V0))/binary, <<"E"/utf8>>/binary>>/binary>>.
'un--cursorMove'(V0, V1) -> <<<<"\x{1b}["/utf8>>/binary, <<('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V0))/binary, <<<<";"/utf8>>/binary, <<('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V1))/binary, <<"H"/utf8>>/binary>>/binary>>/binary>>/binary>>.
'un--cursorForward1'() -> ('un--cursorForward'(1)).
'un--cursorForward'(V0) -> <<<<"\x{1b}["/utf8>>/binary, <<('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V0))/binary, <<"C"/utf8>>/binary>>/binary>>.
'un--cursorDown1'() -> ('un--cursorDown'(1)).
'un--cursorDown'(V0) -> <<<<"\x{1b}["/utf8>>/binary, <<('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V0))/binary, <<"B"/utf8>>/binary>>/binary>>.
'un--cursorBack1'() -> ('un--cursorBack'(1)).
'un--cursorBack'(V0) -> <<<<"\x{1b}["/utf8>>/binary, <<('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V0))/binary, <<"D"/utf8>>/binary>>/binary>>.
