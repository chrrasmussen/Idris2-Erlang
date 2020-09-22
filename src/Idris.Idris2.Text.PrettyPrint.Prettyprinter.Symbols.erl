-module('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Symbols').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--squotes'/2,
  'un--squote'/1,
  'un--space'/1,
  'un--slash'/1,
  'un--semi'/1,
  'un--rparen'/1,
  'un--rbracket'/1,
  'un--rbrace'/1,
  'un--rangle'/1,
  'un--pipe'/1,
  'un--parens'/2,
  'un--lparen'/1,
  'un--lbracket'/1,
  'un--lbrace'/1,
  'un--langle'/1,
  'un--equals'/1,
  'un--dquotes'/2,
  'un--dquote'/1,
  'un--dot'/1,
  'un--comma'/1,
  'un--colon'/1,
  'un--brackets'/2,
  'un--braces'/2,
  'un--backslash'/1,
  'un--angles'/2
]).
'un--squotes'(V0, V1) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'un--enclose'('erased', ('un--squote'('erased')), ('un--squote'('erased')), V1)).
'un--squote'(V0) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty__Char'('erased', $\x{27})).
'un--space'(V0) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty__Char'('erased', $ )).
'un--slash'(V0) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty__Char'('erased', $/)).
'un--semi'(V0) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty__Char'('erased', $;)).
'un--rparen'(V0) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty__Char'('erased', $))).
'un--rbracket'(V0) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty__Char'('erased', $])).
'un--rbrace'(V0) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty__Char'('erased', $})).
'un--rangle'(V0) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty__Char'('erased', $>)).
'un--pipe'(V0) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty__Char'('erased', $|)).
'un--parens'(V0, V1) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'un--enclose'('erased', ('un--lparen'('erased')), ('un--rparen'('erased')), V1)).
'un--lparen'(V0) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty__Char'('erased', $()).
'un--lbracket'(V0) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty__Char'('erased', $[)).
'un--lbrace'(V0) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty__Char'('erased', ${)).
'un--langle'(V0) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty__Char'('erased', $<)).
'un--equals'(V0) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty__Char'('erased', $=)).
'un--dquotes'(V0, V1) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'un--enclose'('erased', ('un--dquote'('erased')), ('un--dquote'('erased')), V1)).
'un--dquote'(V0) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty__Char'('erased', $\x{22})).
'un--dot'(V0) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty__Char'('erased', $.)).
'un--comma'(V0) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty__Char'('erased', $,)).
'un--colon'(V0) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty__Char'('erased', $:)).
'un--brackets'(V0, V1) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'un--enclose'('erased', ('un--lbracket'('erased')), ('un--rbracket'('erased')), V1)).
'un--braces'(V0, V1) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'un--enclose'('erased', ('un--lbrace'('erased')), ('un--rbrace'('erased')), V1)).
'un--backslash'(V0) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty__Char'('erased', $\x{5c})).
'un--angles'(V0, V1) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'un--enclose'('erased', ('un--langle'('erased')), ('un--rangle'('erased')), V1)).
