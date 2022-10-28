-module('Idris.Idris2.Prelude.Show').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--3191-12093--in--un--show\x{27}'/4,
  'nested--2409-11372--in--un--asciiTab'/1,
  'dn--un--show_Show_Void'/1,
  'dn--un--show_Show_String'/1,
  'dn--un--show_Show_Ordering'/1,
  'dn--un--show_Show_Nat'/1,
  'dn--un--show_Show_Integer'/1,
  'dn--un--show_Show_Int8'/1,
  'dn--un--show_Show_Int64'/1,
  'dn--un--show_Show_Int32'/1,
  'dn--un--show_Show_Int16'/1,
  'dn--un--show_Show_Int'/1,
  'dn--un--show_Show_Double'/1,
  'dn--un--show_Show_Char'/1,
  'dn--un--show_Show_Bool'/1,
  'dn--un--show_Show_Bits8'/1,
  'dn--un--show_Show_Bits64'/1,
  'dn--un--show_Show_Bits32'/1,
  'dn--un--show_Show_Bits16'/1,
  'dn--un--show_Show_(|Unit,MkUnit|)'/1,
  'dn--un--show_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/2,
  'dn--un--show_Show_(Maybe $a)'/2,
  'dn--un--show_Show_(List $a)'/2,
  'dn--un--show_Show_((Either $a) $b)'/2,
  'dn--un--show_Show_((DPair $a) $p)'/2,
  'dn--un--showPrec_Show_Void'/2,
  'dn--un--showPrec_Show_String'/2,
  'dn--un--showPrec_Show_Ordering'/2,
  'dn--un--showPrec_Show_Nat'/2,
  'dn--un--showPrec_Show_Integer'/2,
  'dn--un--showPrec_Show_Int8'/2,
  'dn--un--showPrec_Show_Int64'/2,
  'dn--un--showPrec_Show_Int32'/2,
  'dn--un--showPrec_Show_Int16'/2,
  'dn--un--showPrec_Show_Int'/2,
  'dn--un--showPrec_Show_Double'/2,
  'dn--un--showPrec_Show_Char'/2,
  'dn--un--showPrec_Show_Bool'/2,
  'dn--un--showPrec_Show_Bits8'/2,
  'dn--un--showPrec_Show_Bits64'/2,
  'dn--un--showPrec_Show_Bits32'/2,
  'dn--un--showPrec_Show_Bits16'/2,
  'dn--un--showPrec_Show_(|Unit,MkUnit|)'/2,
  'dn--un--showPrec_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/3,
  'dn--un--showPrec_Show_(Maybe $a)'/3,
  'dn--un--showPrec_Show_(List $a)'/3,
  'dn--un--showPrec_Show_((Either $a) $b)'/3,
  'dn--un--showPrec_Show_((DPair $a) $p)'/3,
  'dn--un--min_Ord_Prec'/2,
  'dn--un--max_Ord_Prec'/2,
  'dn--un--compare_Ord_Prec'/2,
  'dn--un--__Impl_Show_Void'/0,
  'dn--un--__Impl_Show_String'/0,
  'dn--un--__Impl_Show_Ordering'/0,
  'dn--un--__Impl_Show_Nat'/0,
  'dn--un--__Impl_Show_Integer'/0,
  'dn--un--__Impl_Show_Int8'/0,
  'dn--un--__Impl_Show_Int64'/0,
  'dn--un--__Impl_Show_Int32'/0,
  'dn--un--__Impl_Show_Int16'/0,
  'dn--un--__Impl_Show_Int'/0,
  'dn--un--__Impl_Show_Double'/0,
  'dn--un--__Impl_Show_Char'/0,
  'dn--un--__Impl_Show_Bool'/0,
  'dn--un--__Impl_Show_Bits8'/0,
  'dn--un--__Impl_Show_Bits64'/0,
  'dn--un--__Impl_Show_Bits32'/0,
  'dn--un--__Impl_Show_Bits16'/0,
  'dn--un--__Impl_Show_(|Unit,MkUnit|)'/0,
  'dn--un--__Impl_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/1,
  'dn--un--__Impl_Show_(Maybe $a)'/1,
  'dn--un--__Impl_Show_(List $a)'/1,
  'dn--un--__Impl_Show_((Either $a) $b)'/1,
  'dn--un--__Impl_Show_((DPair $a) $p)'/1,
  'dn--un--__Impl_Ord_Prec'/0,
  'dn--un--__Impl_Eq_Prec'/0,
  'dn--un-->_Ord_Prec'/2,
  'dn--un-->=_Ord_Prec'/2,
  'dn--un--==_Eq_Prec'/2,
  'dn--un--<_Ord_Prec'/2,
  'dn--un--<=_Ord_Prec'/2,
  'dn--un--/=_Eq_Prec'/2,
  'un--showPrec'/3,
  'un--showParens'/2,
  'un--showLitString'/2,
  'un--showLitChar'/1,
  'un--showCon'/3,
  'un--showArg'/2,
  'un--show'/2,
  'un--protectEsc'/3,
  'un--primNumShow'/3,
  'un--precCon'/1,
  'un--firstCharIs'/2
]).
'nested--3191-12093--in--un--show\x{27}'(V0, V1, V2, V3) -> case V3 of [] -> V2; [E0 | E1] -> (fun (V4, V5) -> case V5 of [] -> <<V2/binary, case V0 of {'Prelude.Show.MkShow', V6, V7} -> (V6(V4)) end/binary>>; _ -> ('nested--3191-12093--in--un--show\x{27}'(V0, V1, <<V2/binary, <<case V0 of {'Prelude.Show.MkShow', V8, V9} -> (V8(V4)) end/binary, <<", "/utf8>>/binary>>/binary>>, V5)) end end(E0, E1)) end.
'nested--2409-11372--in--un--asciiTab'(V0) -> [<<"NUL"/utf8>> | [<<"SOH"/utf8>> | [<<"STX"/utf8>> | [<<"ETX"/utf8>> | [<<"EOT"/utf8>> | [<<"ENQ"/utf8>> | [<<"ACK"/utf8>> | [<<"BEL"/utf8>> | [<<"BS"/utf8>> | [<<"HT"/utf8>> | [<<"LF"/utf8>> | [<<"VT"/utf8>> | [<<"FF"/utf8>> | [<<"CR"/utf8>> | [<<"SO"/utf8>> | [<<"SI"/utf8>> | [<<"DLE"/utf8>> | [<<"DC1"/utf8>> | [<<"DC2"/utf8>> | [<<"DC3"/utf8>> | [<<"DC4"/utf8>> | [<<"NAK"/utf8>> | [<<"SYN"/utf8>> | [<<"ETB"/utf8>> | [<<"CAN"/utf8>> | [<<"EM"/utf8>> | [<<"SUB"/utf8>> | [<<"ESC"/utf8>> | [<<"FS"/utf8>> | [<<"GS"/utf8>> | [<<"RS"/utf8>> | [<<"US"/utf8>> | []]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]].
'dn--un--show_Show_Void'(V0) -> ('erlang':'throw'({'$idris_error', <<"No clauses"/utf8>>})).
'dn--un--show_Show_String'(V0) -> <<('unicode':'characters_to_binary'([$\x{22} | []]))/binary, ('un--showLitString'(('Idris.Idris2.Prelude.Types':'un--fastUnpack'(V0)), <<"\x{22}"/utf8>>))/binary>>.
'dn--un--show_Show_Ordering'(V0) -> case V0 of 0 -> <<"LT"/utf8>>; 1 -> <<"EQ"/utf8>>; 2 -> <<"GT"/utf8>> end.
'dn--un--show_Show_Nat'(V0) -> ('dn--un--show_Show_Integer'(V0)).
'dn--un--show_Show_Integer'(V0) -> ('dn--un--showPrec_Show_Integer'({'Prelude.Show.Open'}, V0)).
'dn--un--show_Show_Int8'(V0) -> ('dn--un--showPrec_Show_Int8'({'Prelude.Show.Open'}, V0)).
'dn--un--show_Show_Int64'(V0) -> ('dn--un--showPrec_Show_Int64'({'Prelude.Show.Open'}, V0)).
'dn--un--show_Show_Int32'(V0) -> ('dn--un--showPrec_Show_Int32'({'Prelude.Show.Open'}, V0)).
'dn--un--show_Show_Int16'(V0) -> ('dn--un--showPrec_Show_Int16'({'Prelude.Show.Open'}, V0)).
'dn--un--show_Show_Int'(V0) -> ('dn--un--showPrec_Show_Int'({'Prelude.Show.Open'}, V0)).
'dn--un--show_Show_Double'(V0) -> ('dn--un--showPrec_Show_Double'({'Prelude.Show.Open'}, V0)).
'dn--un--show_Show_Char'(V0) -> case V0 of $\x{27} -> <<"\x{27}\x{5c}\x{27}\x{27}"/utf8>>; _ -> <<('unicode':'characters_to_binary'([$\x{27} | []]))/binary, (('un--showLitChar'(V0))(<<"\x{27}"/utf8>>))/binary>> end.
'dn--un--show_Show_Bool'(V0) -> case V0 of 1 -> <<"True"/utf8>>; 0 -> <<"False"/utf8>> end.
'dn--un--show_Show_Bits8'(V0) -> ('dn--un--showPrec_Show_Bits8'({'Prelude.Show.Open'}, V0)).
'dn--un--show_Show_Bits64'(V0) -> ('dn--un--showPrec_Show_Bits64'({'Prelude.Show.Open'}, V0)).
'dn--un--show_Show_Bits32'(V0) -> ('dn--un--showPrec_Show_Bits32'({'Prelude.Show.Open'}, V0)).
'dn--un--show_Show_Bits16'(V0) -> ('dn--un--showPrec_Show_Bits16'({'Prelude.Show.Open'}, V0)).
'dn--un--show_Show_(|Unit,MkUnit|)'(V0) -> <<"()"/utf8>>.
'dn--un--show_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1) -> case V1 of {'Builtin.MkPair', V2, V3} -> <<<<"("/utf8>>/binary, <<case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Show.MkShow', V4, V5} -> (V4(V2)) end/binary, <<<<", "/utf8>>/binary, <<case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Prelude.Show.MkShow', V6, V7} -> (V6(V3)) end/binary, <<")"/utf8>>/binary>>/binary>>/binary>>/binary>> end.
'dn--un--show_Show_(Maybe $a)'(V0, V1) -> ('dn--un--showPrec_Show_(Maybe $a)'(V0, {'Prelude.Show.Open'}, V1)).
'dn--un--show_Show_(List $a)'(V0, V1) -> <<<<"["/utf8>>/binary, <<('nested--3191-12093--in--un--show\x{27}'(V0, V1, <<""/utf8>>, V1))/binary, <<"]"/utf8>>/binary>>/binary>>.
'dn--un--show_Show_((Either $a) $b)'(V0, V1) -> ('dn--un--showPrec_Show_((Either $a) $b)'(V0, {'Prelude.Show.Open'}, V1)).
'dn--un--show_Show_((DPair $a) $p)'(V0, V1) -> case V1 of {'Builtin.DPair.MkDPair', V2, V3} -> <<<<"("/utf8>>/binary, <<case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Prelude.Show.MkShow', V4, V5} -> (V4(V2)) end/binary, <<<<" ** "/utf8>>/binary, <<case (('Idris.Idris2.Builtin':'un--snd'(V0))(V2)) of {'Prelude.Show.MkShow', V6, V7} -> (V6(V3)) end/binary, <<")"/utf8>>/binary>>/binary>>/binary>>/binary>> end.
'dn--un--showPrec_Show_Void'(V0, V1) -> ('dn--un--show_Show_Void'(V1)).
'dn--un--showPrec_Show_String'(V0, V1) -> ('dn--un--show_Show_String'(V1)).
'dn--un--showPrec_Show_Ordering'(V0, V1) -> ('dn--un--show_Show_Ordering'(V1)).
'dn--un--showPrec_Show_Nat'(V0, V1) -> ('dn--un--show_Show_Nat'(V1)).
'dn--un--showPrec_Show_Integer'(V0, V1) -> ('un--primNumShow'(fun (V2) -> ('erlang':'integer_to_binary'(V2)) end, V0, V1)).
'dn--un--showPrec_Show_Int8'(V0, V1) -> ('un--primNumShow'(fun (V2) -> ('erlang':'integer_to_binary'(V2)) end, V0, V1)).
'dn--un--showPrec_Show_Int64'(V0, V1) -> ('un--primNumShow'(fun (V2) -> ('erlang':'integer_to_binary'(V2)) end, V0, V1)).
'dn--un--showPrec_Show_Int32'(V0, V1) -> ('un--primNumShow'(fun (V2) -> ('erlang':'integer_to_binary'(V2)) end, V0, V1)).
'dn--un--showPrec_Show_Int16'(V0, V1) -> ('un--primNumShow'(fun (V2) -> ('erlang':'integer_to_binary'(V2)) end, V0, V1)).
'dn--un--showPrec_Show_Int'(V0, V1) -> ('un--primNumShow'(fun (V2) -> ('erlang':'integer_to_binary'(V2)) end, V0, V1)).
'dn--un--showPrec_Show_Double'(V0, V1) -> ('un--primNumShow'(fun (V2) -> ('erlang':'float_to_binary'(V2, [{'decimals', 10} | ['compact' | []]])) end, V0, V1)).
'dn--un--showPrec_Show_Char'(V0, V1) -> ('dn--un--show_Show_Char'(V1)).
'dn--un--showPrec_Show_Bool'(V0, V1) -> ('dn--un--show_Show_Bool'(V1)).
'dn--un--showPrec_Show_Bits8'(V0, V1) -> ('un--primNumShow'(fun (V2) -> ('erlang':'integer_to_binary'(V2)) end, V0, V1)).
'dn--un--showPrec_Show_Bits64'(V0, V1) -> ('un--primNumShow'(fun (V2) -> ('erlang':'integer_to_binary'(V2)) end, V0, V1)).
'dn--un--showPrec_Show_Bits32'(V0, V1) -> ('un--primNumShow'(fun (V2) -> ('erlang':'integer_to_binary'(V2)) end, V0, V1)).
'dn--un--showPrec_Show_Bits16'(V0, V1) -> ('un--primNumShow'(fun (V2) -> ('erlang':'integer_to_binary'(V2)) end, V0, V1)).
'dn--un--showPrec_Show_(|Unit,MkUnit|)'(V0, V1) -> ('dn--un--show_Show_(|Unit,MkUnit|)'(V1)).
'dn--un--showPrec_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2) -> ('dn--un--show_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V2)).
'dn--un--showPrec_Show_(Maybe $a)'(V0, V1, V2) -> case V2 of {'Prelude.Types.Nothing'} -> <<"Nothing"/utf8>>; {'Prelude.Types.Just', V3} -> ('un--showCon'(V1, <<"Just"/utf8>>, ('un--showArg'(V0, V3)))) end.
'dn--un--showPrec_Show_(List $a)'(V0, V1, V2) -> ('dn--un--show_Show_(List $a)'(V0, V2)).
'dn--un--showPrec_Show_((Either $a) $b)'(V0, V1, V2) -> case V2 of {'Prelude.Types.Left', V3} -> ('un--showCon'(V1, <<"Left"/utf8>>, ('un--showArg'(('Idris.Idris2.Builtin':'un--fst'(V0)), V3)))); {'Prelude.Types.Right', V4} -> ('un--showCon'(V1, <<"Right"/utf8>>, ('un--showArg'(('Idris.Idris2.Builtin':'un--snd'(V0)), V4)))) end.
'dn--un--showPrec_Show_((DPair $a) $p)'(V0, V1, V2) -> ('dn--un--show_Show_((DPair $a) $p)'(V0, V2)).
'dn--un--min_Ord_Prec'(V0, V1) -> case ('dn--un--<_Ord_Prec'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--max_Ord_Prec'(V0, V1) -> case ('dn--un-->_Ord_Prec'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--compare_Ord_Prec'(V0, V1) -> case V0 of {'Prelude.Show.User', V2} -> case V1 of {'Prelude.Show.User', V3} -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Integer'(V2, V3)); _ -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Integer'(('un--precCon'(V0)), ('un--precCon'(V1)))) end; _ -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Integer'(('un--precCon'(V0)), ('un--precCon'(V1)))) end.
'dn--un--__Impl_Show_Void'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Void'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Void'(V1, V2)) end end}.
'dn--un--__Impl_Show_String'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_String'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_String'(V1, V2)) end end}.
'dn--un--__Impl_Show_Ordering'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Ordering'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Ordering'(V1, V2)) end end}.
'dn--un--__Impl_Show_Nat'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Nat'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Nat'(V1, V2)) end end}.
'dn--un--__Impl_Show_Integer'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Integer'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Integer'(V1, V2)) end end}.
'dn--un--__Impl_Show_Int8'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Int8'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Int8'(V1, V2)) end end}.
'dn--un--__Impl_Show_Int64'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Int64'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Int64'(V1, V2)) end end}.
'dn--un--__Impl_Show_Int32'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Int32'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Int32'(V1, V2)) end end}.
'dn--un--__Impl_Show_Int16'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Int16'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Int16'(V1, V2)) end end}.
'dn--un--__Impl_Show_Int'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Int'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Int'(V1, V2)) end end}.
'dn--un--__Impl_Show_Double'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Double'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Double'(V1, V2)) end end}.
'dn--un--__Impl_Show_Char'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Char'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Char'(V1, V2)) end end}.
'dn--un--__Impl_Show_Bool'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Bool'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Bool'(V1, V2)) end end}.
'dn--un--__Impl_Show_Bits8'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Bits8'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Bits8'(V1, V2)) end end}.
'dn--un--__Impl_Show_Bits64'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Bits64'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Bits64'(V1, V2)) end end}.
'dn--un--__Impl_Show_Bits32'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Bits32'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Bits32'(V1, V2)) end end}.
'dn--un--__Impl_Show_Bits16'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Bits16'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Bits16'(V1, V2)) end end}.
'dn--un--__Impl_Show_(|Unit,MkUnit|)'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_(|Unit,MkUnit|)'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_(|Unit,MkUnit|)'(V1, V2)) end end}.
'dn--un--__Impl_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0) -> {'Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Show_(Maybe $a)'(V0) -> {'Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_(Maybe $a)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_(Maybe $a)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Show_(List $a)'(V0) -> {'Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_(List $a)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_(List $a)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Show_((Either $a) $b)'(V0) -> {'Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_((Either $a) $b)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_((Either $a) $b)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Show_((DPair $a) $p)'(V0) -> {'Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_((DPair $a) $p)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_((DPair $a) $p)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Ord_Prec'() -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Prec'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Prec'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Prec'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Prec'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Prec'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Prec'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Prec'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Prec'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Prec'(V16, V17)) end end}.
'dn--un--__Impl_Eq_Prec'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Prec'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Prec'(V2, V3)) end end}.
'dn--un-->_Ord_Prec'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_Prec'(V0, V1)), 2)).
'dn--un-->=_Ord_Prec'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_Prec'(V0, V1)), 0)).
'dn--un--==_Eq_Prec'(V0, V1) -> case V0 of {'Prelude.Show.User', V2} -> case V1 of {'Prelude.Show.User', V3} -> case (V2 =:= V3) of 'false' -> 0; _ -> 1 end; _ -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Integer'(('un--precCon'(V0)), ('un--precCon'(V1)))) end; _ -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Integer'(('un--precCon'(V0)), ('un--precCon'(V1)))) end.
'dn--un--<_Ord_Prec'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_Prec'(V0, V1)), 0)).
'dn--un--<=_Ord_Prec'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_Prec'(V0, V1)), 2)).
'dn--un--/=_Eq_Prec'(V0, V1) -> case ('dn--un--==_Eq_Prec'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'un--showPrec'(V0, V1, V2) -> case V0 of {'Prelude.Show.MkShow', V3, V4} -> ((V4(V1))(V2)) end.
'un--showParens'(V0, V1) -> case V0 of 0 -> V1; 1 -> <<<<"("/utf8>>/binary, <<V1/binary, <<")"/utf8>>/binary>>/binary>> end.
'un--showLitString'(V0, V1) -> case V0 of [] -> V1; [E0 | E1] -> (fun (V2, V3) -> case V2 of $\x{22} -> <<<<"\x{5c}\x{22}"/utf8>>/binary, ('un--showLitString'(V3, V1))/binary>>; _ -> (('un--showLitChar'(V2))(('un--showLitString'(V3, V1)))) end end(E0, E1)) end.
'un--showLitChar'(V0) -> case V0 of $\x{7} -> fun (V1) -> <<<<"\x{5c}a"/utf8>>/binary, V1/binary>> end; $\x{8} -> fun (V2) -> <<<<"\x{5c}b"/utf8>>/binary, V2/binary>> end; $\x{c} -> fun (V3) -> <<<<"\x{5c}f"/utf8>>/binary, V3/binary>> end; $\x{a} -> fun (V4) -> <<<<"\x{5c}n"/utf8>>/binary, V4/binary>> end; $\x{d} -> fun (V5) -> <<<<"\x{5c}r"/utf8>>/binary, V5/binary>> end; $\x{9} -> fun (V6) -> <<<<"\x{5c}t"/utf8>>/binary, V6/binary>> end; $\x{b} -> fun (V7) -> <<<<"\x{5c}v"/utf8>>/binary, V7/binary>> end; $\x{e} -> fun (V8) -> ('un--protectEsc'(fun (V9) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V9, $H)) end, <<"\x{5c}SO"/utf8>>, V8)) end; $\x{7f} -> fun (V10) -> <<<<"\x{5c}DEL"/utf8>>/binary, V10/binary>> end; $\x{5c} -> fun (V11) -> <<<<"\x{5c}\x{5c}"/utf8>>/binary, V11/binary>> end; _ -> fun (V12) -> case ('Idris.Idris2.Prelude.Types':'un--getAt'(('Idris.Idris2.Prelude.Types':'un--prim__integerToNat'(case V0 of E1 when ((erlang:'is_integer'(E1)) andalso (((E1 >= 0) andalso (E1 =< 55295)) orelse ((E1 >= 57344) andalso (E1 =< 1114111)))) -> E1; _ -> 65533 end)), ('nested--2409-11372--in--un--asciiTab'(V0)))) of {'Prelude.Types.Just', V13} -> <<('unicode':'characters_to_binary'([$\x{5c} | []]))/binary, <<V13/binary, V12/binary>>/binary>>; {'Prelude.Types.Nothing'} -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord_Char'(V0, $\x{7f})) of 1 -> <<('unicode':'characters_to_binary'([$\x{5c} | []]))/binary, ('un--protectEsc'(fun (V14) -> ('Idris.Idris2.Prelude.Types':'un--isDigit'(V14)) end, ('dn--un--show_Show_Int'(case V0 of E0 when ((erlang:'is_integer'(E0)) andalso (((E0 >= 0) andalso (E0 =< 55295)) orelse ((E0 >= 57344) andalso (E0 =< 1114111)))) -> E0; _ -> 65533 end)), V12))/binary>>; 0 -> <<('unicode':'characters_to_binary'([V0 | []]))/binary, V12/binary>> end end end end.
'un--showCon'(V0, V1, V2) -> ('un--showParens'(('dn--un-->=_Ord_Prec'(V0, {'Prelude.Show.App'})), <<V1/binary, V2/binary>>)).
'un--showArg'(V0, V1) -> <<<<" "/utf8>>/binary, case V0 of {'Prelude.Show.MkShow', V2, V3} -> ((V3({'Prelude.Show.App'}))(V1)) end/binary>>.
'un--show'(V0, V1) -> case V0 of {'Prelude.Show.MkShow', V2, V3} -> (V2(V1)) end.
'un--protectEsc'(V0, V1, V2) -> <<V1/binary, <<case ('un--firstCharIs'(V0, V2)) of 1 -> <<"\x{5c}&"/utf8>>; 0 -> <<""/utf8>> end/binary, V2/binary>>/binary>>.
'un--primNumShow'(V0, V1, V2) -> begin (V3 = (V0(V2))), ('un--showParens'(case ('dn--un-->=_Ord_Prec'(V1, {'Prelude.Show.PrefixMinus'})) of 1 -> ('un--firstCharIs'(fun (V4) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V4, $-)) end, V3)); 0 -> 0 end, V3)) end.
'un--precCon'(V0) -> case V0 of {'Prelude.Show.Open'} -> 0; {'Prelude.Show.Equal'} -> 1; {'Prelude.Show.Dollar'} -> 2; {'Prelude.Show.Backtick'} -> 3; {'Prelude.Show.User', V1} -> 4; {'Prelude.Show.PrefixMinus'} -> 5; {'Prelude.Show.App'} -> 6 end.
'un--firstCharIs'(V0, V1) -> case V1 of <<""/utf8>> -> 0; _ -> (V0(('erlang':'hd'(('string':'next_grapheme'(V1)))))) end.
