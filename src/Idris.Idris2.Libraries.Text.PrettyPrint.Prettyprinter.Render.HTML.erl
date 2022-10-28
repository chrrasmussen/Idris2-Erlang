-module('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Render.HTML').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--htmlEscape,go-2645'/4,
  'nested--3624-2546--in--un--isSafe'/2,
  'nested--3624-2547--in--un--htmlQuote'/2,
  'nested--3624-2548--in--un--go'/3,
  'un--htmlEscape'/1
]).
'case--htmlEscape,go-2645'(V0, V1, V2, V3) -> case V3 of {'Builtin.MkPair', V4, V5} -> case V5 of <<""/utf8>> -> [V4 | V2]; _ -> begin (V6 = ('erlang':'hd'(('string':'next_grapheme'(('string':'slice'(V5, 0, 1))))))), begin (V7 = ('nested--3624-2547--in--un--htmlQuote'(V0, V6))), ('nested--3624-2548--in--un--go'(V0, [V7 | [V4 | V2]], case ('string':'next_grapheme'(V5)) of [E0 | E1] when (erlang:'is_binary'(E1)) -> (fun (V8, V9) -> V9 end(E0, E1)); _ -> <<""/utf8>> end)) end end end end.
'nested--3624-2546--in--un--isSafe'(V0, V1) -> case V1 of $\x{22} -> 0; $< -> 0; $> -> 0; $& -> 0; $\x{27} -> 0; $\x{9} -> 1; $\x{a} -> 1; $\x{d} -> 1; _ -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord_Char'(V1, $ )) of 1 -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord_Char'(V1, $~)); 0 -> 0 end end.
'nested--3624-2547--in--un--htmlQuote'(V0, V1) -> case V1 of $\x{22} -> <<"&quot;"/utf8>>; $< -> <<"&lt;"/utf8>>; $> -> <<"&gt;"/utf8>>; $& -> <<"&amp;"/utf8>>; $\x{27} -> <<"&apos;"/utf8>>; _ -> <<<<"&#"/utf8>>/binary, <<('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(case V1 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end))/binary, <<";"/utf8>>/binary>>/binary>> end.
'nested--3624-2548--in--un--go'(V0, V1, V2) -> case V2 of <<""/utf8>> -> V1; _ -> ('case--htmlEscape,go-2645'(V0, V2, V1, ('Idris.Idris2.Data.String':'un--span'(fun (V3) -> ('nested--3624-2546--in--un--isSafe'(V0, V3)) end, V2)))) end.
'un--htmlEscape'(V0) -> ('Idris.Idris2.Prelude.Types':'un--fastConcat'(('Idris.Idris2.Prelude.Types.List':'un--reverse'(('nested--3624-2548--in--un--go'(V0, [], V0)))))).
