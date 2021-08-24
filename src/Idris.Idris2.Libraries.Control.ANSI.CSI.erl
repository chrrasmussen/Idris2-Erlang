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
'dn--un--cast_Cast_EraseDirection_String'(V0) -> case V0 of 0 -> <<"1"/utf8>>; 1 -> <<"0"/utf8>>; 2 -> <<"2"/utf8>>; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--scrollUp1'() -> ('un--scrollUp'((1 + 0))).
'un--scrollUp'(V0) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"\x{1b}["/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V0)), <<"S"/utf8>>)))).
'un--scrollDown1'() -> ('un--scrollDown'((1 + 0))).
'un--scrollDown'(V0) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"\x{1b}["/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V0)), <<"T"/utf8>>)))).
'un--eraseScreen'(V0) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"\x{1b}["/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(('dn--un--cast_Cast_EraseDirection_String'(V0)), <<"J"/utf8>>)))).
'un--eraseLine'(V0) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"\x{1b}["/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(('dn--un--cast_Cast_EraseDirection_String'(V0)), <<"K"/utf8>>)))).
'un--cursorUp1'() -> ('un--cursorUp'((1 + 0))).
'un--cursorUp'(V0) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"\x{1b}["/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V0)), <<"A"/utf8>>)))).
'un--cursorPrevLine1'() -> ('un--cursorPrevLine'((1 + 0))).
'un--cursorPrevLine'(V0) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"\x{1b}["/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V0)), <<"F"/utf8>>)))).
'un--cursorNextLine1'() -> ('un--cursorNextLine'((1 + 0))).
'un--cursorNextLine'(V0) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"\x{1b}["/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V0)), <<"E"/utf8>>)))).
'un--cursorMove'(V0, V1) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"\x{1b}["/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V0)), ('Idris.Idris2.Prelude.Types.String':'un--++'(<<";"/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V1)), <<"H"/utf8>>)))))))).
'un--cursorForward1'() -> ('un--cursorForward'((1 + 0))).
'un--cursorForward'(V0) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"\x{1b}["/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V0)), <<"C"/utf8>>)))).
'un--cursorDown1'() -> ('un--cursorDown'((1 + 0))).
'un--cursorDown'(V0) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"\x{1b}["/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V0)), <<"B"/utf8>>)))).
'un--cursorBack1'() -> ('un--cursorBack'((1 + 0))).
'un--cursorBack'(V0) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"\x{1b}["/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Nat'(V0)), <<"D"/utf8>>)))).
