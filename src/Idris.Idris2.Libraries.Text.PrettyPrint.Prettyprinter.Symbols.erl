-module('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Symbols').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--squotes'/1,
  'un--squote'/0,
  'un--space'/0,
  'un--slash'/0,
  'un--semi'/0,
  'un--rparen'/0,
  'un--rbracket'/0,
  'un--rbrace'/0,
  'un--rangle'/0,
  'un--pipe'/0,
  'un--parenthesise'/2,
  'un--parens'/1,
  'un--lparen'/0,
  'un--lbracket'/0,
  'un--lbrace'/0,
  'un--langle'/0,
  'un--equals'/0,
  'un--dquotes'/1,
  'un--dquote'/0,
  'un--dot'/0,
  'un--comma'/0,
  'un--colon'/0,
  'un--brackets'/3,
  'un--braces'/1,
  'un--backslash'/0,
  'un--angles'/1
]).
'un--squotes'(V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--enclose'(('un--squote'()), ('un--squote'()), V0)).
'un--squote'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Char'($\x{27})).
'un--space'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Char'($ )).
'un--slash'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Char'($/)).
'un--semi'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Char'($;)).
'un--rparen'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Char'($))).
'un--rbracket'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Char'($])).
'un--rbrace'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Char'($})).
'un--rangle'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Char'($>)).
'un--pipe'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Char'($|)).
'un--parenthesise'(V0, V1) -> case V0 of 1 -> ('un--parens'(V1)); 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--parens'(V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--enclose'(('un--lparen'()), ('un--rparen'()), V0)).
'un--lparen'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Char'($()).
'un--lbracket'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Char'($[)).
'un--lbrace'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Char'(${)).
'un--langle'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Char'($<)).
'un--equals'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Char'($=)).
'un--dquotes'(V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--enclose'(('un--dquote'()), ('un--dquote'()), V0)).
'un--dquote'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Char'($\x{22})).
'un--dot'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Char'($.)).
'un--comma'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Char'($,)).
'un--colon'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Char'($:)).
'un--brackets'(V0, V1, V2) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--enclose'(V0, V1, V2)).
'un--braces'(V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--enclose'(('un--lbrace'()), ('un--rbrace'()), V0)).
'un--backslash'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Char'($\x{5c})).
'un--angles'(V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--enclose'(('un--langle'()), ('un--rangle'()), V0)).
