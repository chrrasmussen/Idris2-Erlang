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
'un--squote'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Void_Char'(V0)) end, fun (V1) -> fun (V2) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--prettyPrec_Pretty_Void_Char'(V1, V2)) end end}, (begin (V4 = fun (V3) -> V3 end), fun (V5) -> (V4(V5)) end end($\x{27})))).
'un--space'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Void_Char'(V0)) end, fun (V1) -> fun (V2) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--prettyPrec_Pretty_Void_Char'(V1, V2)) end end}, (begin (V4 = fun (V3) -> V3 end), fun (V5) -> (V4(V5)) end end($ )))).
'un--slash'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Void_Char'(V0)) end, fun (V1) -> fun (V2) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--prettyPrec_Pretty_Void_Char'(V1, V2)) end end}, (begin (V4 = fun (V3) -> V3 end), fun (V5) -> (V4(V5)) end end($/)))).
'un--semi'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Void_Char'(V0)) end, fun (V1) -> fun (V2) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--prettyPrec_Pretty_Void_Char'(V1, V2)) end end}, (begin (V4 = fun (V3) -> V3 end), fun (V5) -> (V4(V5)) end end($;)))).
'un--rparen'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Void_Char'(V0)) end, fun (V1) -> fun (V2) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--prettyPrec_Pretty_Void_Char'(V1, V2)) end end}, (begin (V4 = fun (V3) -> V3 end), fun (V5) -> (V4(V5)) end end($))))).
'un--rbracket'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Void_Char'(V0)) end, fun (V1) -> fun (V2) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--prettyPrec_Pretty_Void_Char'(V1, V2)) end end}, (begin (V4 = fun (V3) -> V3 end), fun (V5) -> (V4(V5)) end end($])))).
'un--rbrace'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Void_Char'(V0)) end, fun (V1) -> fun (V2) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--prettyPrec_Pretty_Void_Char'(V1, V2)) end end}, (begin (V4 = fun (V3) -> V3 end), fun (V5) -> (V4(V5)) end end($})))).
'un--rangle'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Void_Char'(V0)) end, fun (V1) -> fun (V2) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--prettyPrec_Pretty_Void_Char'(V1, V2)) end end}, (begin (V4 = fun (V3) -> V3 end), fun (V5) -> (V4(V5)) end end($>)))).
'un--pipe'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Void_Char'(V0)) end, fun (V1) -> fun (V2) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--prettyPrec_Pretty_Void_Char'(V1, V2)) end end}, (begin (V4 = fun (V3) -> V3 end), fun (V5) -> (V4(V5)) end end($|)))).
'un--parenthesise'(V0, V1) -> case V0 of 1 -> ('un--parens'(V1)); 0 -> V1 end.
'un--parens'(V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--enclose'(('un--lparen'()), ('un--rparen'()), V0)).
'un--lparen'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Void_Char'(V0)) end, fun (V1) -> fun (V2) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--prettyPrec_Pretty_Void_Char'(V1, V2)) end end}, (begin (V4 = fun (V3) -> V3 end), fun (V5) -> (V4(V5)) end end($()))).
'un--lbracket'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Void_Char'(V0)) end, fun (V1) -> fun (V2) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--prettyPrec_Pretty_Void_Char'(V1, V2)) end end}, (begin (V4 = fun (V3) -> V3 end), fun (V5) -> (V4(V5)) end end($[)))).
'un--lbrace'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Void_Char'(V0)) end, fun (V1) -> fun (V2) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--prettyPrec_Pretty_Void_Char'(V1, V2)) end end}, (begin (V4 = fun (V3) -> V3 end), fun (V5) -> (V4(V5)) end end(${)))).
'un--langle'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Void_Char'(V0)) end, fun (V1) -> fun (V2) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--prettyPrec_Pretty_Void_Char'(V1, V2)) end end}, (begin (V4 = fun (V3) -> V3 end), fun (V5) -> (V4(V5)) end end($<)))).
'un--equals'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Void_Char'(V0)) end, fun (V1) -> fun (V2) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--prettyPrec_Pretty_Void_Char'(V1, V2)) end end}, (begin (V4 = fun (V3) -> V3 end), fun (V5) -> (V4(V5)) end end($=)))).
'un--dquotes'(V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--enclose'(('un--dquote'()), ('un--dquote'()), V0)).
'un--dquote'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Void_Char'(V0)) end, fun (V1) -> fun (V2) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--prettyPrec_Pretty_Void_Char'(V1, V2)) end end}, (begin (V4 = fun (V3) -> V3 end), fun (V5) -> (V4(V5)) end end($\x{22})))).
'un--dot'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Void_Char'(V0)) end, fun (V1) -> fun (V2) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--prettyPrec_Pretty_Void_Char'(V1, V2)) end end}, (begin (V4 = fun (V3) -> V3 end), fun (V5) -> (V4(V5)) end end($.)))).
'un--comma'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Void_Char'(V0)) end, fun (V1) -> fun (V2) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--prettyPrec_Pretty_Void_Char'(V1, V2)) end end}, (begin (V4 = fun (V3) -> V3 end), fun (V5) -> (V4(V5)) end end($,)))).
'un--colon'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Void_Char'(V0)) end, fun (V1) -> fun (V2) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--prettyPrec_Pretty_Void_Char'(V1, V2)) end end}, (begin (V4 = fun (V3) -> V3 end), fun (V5) -> (V4(V5)) end end($:)))).
'un--brackets'(V0, V1, V2) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--enclose'(V0, V1, V2)).
'un--braces'(V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--enclose'(('un--lbrace'()), ('un--rbrace'()), V0)).
'un--backslash'() -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--pretty0'({'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Void_Char'(V0)) end, fun (V1) -> fun (V2) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--prettyPrec_Pretty_Void_Char'(V1, V2)) end end}, (begin (V4 = fun (V3) -> V3 end), fun (V5) -> (V4(V5)) end end($\x{5c})))).
'un--angles'(V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--enclose'(('un--langle'()), ('un--rangle'()), V0)).
