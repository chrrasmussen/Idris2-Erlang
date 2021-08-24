-module('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Render.HTML').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--htmlEscape,go-3878'/4,
  'nested--2801-3795--in--un--isSafe'/2,
  'nested--2801-3796--in--un--htmlQuote'/2,
  'nested--2801-3797--in--un--go'/3,
  'un--htmlEscape'/1
]).
'case--htmlEscape,go-3878'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V4, V5) -> case V5 of <<""/utf8>> -> [V4 | V2]; _ -> begin (V6 = ('Idris.Idris2.Data.String':'un--strIndex'(V5, 0))), begin (V7 = ('nested--2801-3796--in--un--htmlQuote'(V0, V6))), ('nested--2801-3797--in--un--go'(V0, [V7 | [V4 | V2]], ('Idris.Idris2.Data.String':'un--strTail'(V5)))) end end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--2801-3795--in--un--isSafe'(V0, V1) -> case V1 of $\x{22} -> 0; $< -> 0; $> -> 0; $& -> 0; $\x{27} -> 0; $\x{9} -> 1; $\x{a} -> 1; $\x{d} -> 1; _ -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord_Char'(V1, $ )) of 1 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord_Char'(V1, $~)); 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.
'nested--2801-3796--in--un--htmlQuote'(V0, V1) -> case V1 of $\x{22} -> <<"&quot;"/utf8>>; $< -> <<"&lt;"/utf8>>; $> -> <<"&gt;"/utf8>>; $& -> <<"&amp;"/utf8>>; $\x{27} -> <<"&apos;"/utf8>>; _ -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"&#"/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(('Idris.Idris2.Prelude.Types':'un--ord'(V1)))), <<";"/utf8>>)))) end.
'nested--2801-3797--in--un--go'(V0, V1, V2) -> case V2 of <<""/utf8>> -> V1; _ -> ('case--htmlEscape,go-3878'(V0, V2, V1, ('Idris.Idris2.Data.String':'un--span'(fun (V3) -> ('nested--2801-3795--in--un--isSafe'(V0, V3)) end, V2)))) end.
'un--htmlEscape'(V0) -> ('Idris.Idris2.Data.String':'un--fastAppend'(('Idris.Idris2.Data.List':'un--reverse'(('nested--2801-3797--in--un--go'(V0, [], V0)))))).
