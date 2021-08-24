-module('Idris.Idris2.Prelude.Show').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--2472-6711--in--un--show\x{27}'/4,
  'nested--1912-6223--in--un--asciiTab'/1,
  'dn--un--show_Show_Void'/1,
  'dn--un--show_Show_String'/1,
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
'nested--2472-6711--in--un--show\x{27}'(V0, V1, V2, V3) -> case V3 of [] -> V2; [E0 | E1] -> (fun (V4, V5) -> case V5 of [] -> ('Idris.Idris2.Prelude.Types.String':'un--++'(V2, case V0 of {'Idris.Prelude.Show.MkShow', E4, E5} -> (fun (V6, V7) -> (V6(V4)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)); _ -> ('nested--2472-6711--in--un--show\x{27}'(V0, V1, ('Idris.Idris2.Prelude.Types.String':'un--++'(V2, ('Idris.Idris2.Prelude.Types.String':'un--++'(case V0 of {'Idris.Prelude.Show.MkShow', E2, E3} -> (fun (V8, V9) -> (V8(V4)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, <<", "/utf8>>)))), V5)) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--1912-6223--in--un--asciiTab'(V0) -> [<<"NUL"/utf8>> | [<<"SOH"/utf8>> | [<<"STX"/utf8>> | [<<"ETX"/utf8>> | [<<"EOT"/utf8>> | [<<"ENQ"/utf8>> | [<<"ACK"/utf8>> | [<<"BEL"/utf8>> | [<<"BS"/utf8>> | [<<"HT"/utf8>> | [<<"LF"/utf8>> | [<<"VT"/utf8>> | [<<"FF"/utf8>> | [<<"CR"/utf8>> | [<<"SO"/utf8>> | [<<"SI"/utf8>> | [<<"DLE"/utf8>> | [<<"DC1"/utf8>> | [<<"DC2"/utf8>> | [<<"DC3"/utf8>> | [<<"DC4"/utf8>> | [<<"NAK"/utf8>> | [<<"SYN"/utf8>> | [<<"ETB"/utf8>> | [<<"CAN"/utf8>> | [<<"EM"/utf8>> | [<<"SUB"/utf8>> | [<<"ESC"/utf8>> | [<<"FS"/utf8>> | [<<"GS"/utf8>> | [<<"RS"/utf8>> | [<<"US"/utf8>> | []]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]].
'dn--un--show_Show_Void'(V0) -> ('erlang':'throw'("No clauses")).
'dn--un--show_Show_String'(V0) -> ('Idris.Idris2.Prelude.Types':'un--strCons'($\x{22}, ('un--showLitString'(('Idris.Idris2.Prelude.Types':'un--fastUnpack'(V0)), <<"\x{22}"/utf8>>)))).
'dn--un--show_Show_Nat'(V0) -> ('dn--un--show_Show_Integer'(V0)).
'dn--un--show_Show_Integer'(V0) -> ('dn--un--showPrec_Show_Integer'({'Idris.Prelude.Show.Open'}, V0)).
'dn--un--show_Show_Int8'(V0) -> ('dn--un--showPrec_Show_Int8'({'Idris.Prelude.Show.Open'}, V0)).
'dn--un--show_Show_Int64'(V0) -> ('dn--un--showPrec_Show_Int64'({'Idris.Prelude.Show.Open'}, V0)).
'dn--un--show_Show_Int32'(V0) -> ('dn--un--showPrec_Show_Int32'({'Idris.Prelude.Show.Open'}, V0)).
'dn--un--show_Show_Int16'(V0) -> ('dn--un--showPrec_Show_Int16'({'Idris.Prelude.Show.Open'}, V0)).
'dn--un--show_Show_Int'(V0) -> ('dn--un--showPrec_Show_Int'({'Idris.Prelude.Show.Open'}, V0)).
'dn--un--show_Show_Double'(V0) -> ('dn--un--showPrec_Show_Double'({'Idris.Prelude.Show.Open'}, V0)).
'dn--un--show_Show_Char'(V0) -> case V0 of $\x{27} -> <<"\x{27}\x{5c}\x{27}\x{27}"/utf8>>; _ -> ('Idris.Idris2.Prelude.Types':'un--strCons'($\x{27}, (('un--showLitChar'(V0))(<<"\x{27}"/utf8>>)))) end.
'dn--un--show_Show_Bool'(V0) -> case V0 of 1 -> <<"True"/utf8>>; 0 -> <<"False"/utf8>>; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show_Bits8'(V0) -> ('dn--un--showPrec_Show_Bits8'({'Idris.Prelude.Show.Open'}, V0)).
'dn--un--show_Show_Bits64'(V0) -> ('dn--un--showPrec_Show_Bits64'({'Idris.Prelude.Show.Open'}, V0)).
'dn--un--show_Show_Bits32'(V0) -> ('dn--un--showPrec_Show_Bits32'({'Idris.Prelude.Show.Open'}, V0)).
'dn--un--show_Show_Bits16'(V0) -> ('dn--un--showPrec_Show_Bits16'({'Idris.Prelude.Show.Open'}, V0)).
'dn--un--show_Show_(|Unit,MkUnit|)'(V0) -> case V0 of 0 -> <<"()"/utf8>>; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1) -> case V1 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V2, V3) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"("/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Idris.Prelude.Show.MkShow', E2, E3} -> (fun (V4, V5) -> (V4(V2)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, ('Idris.Idris2.Prelude.Types.String':'un--++'(<<", "/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(case ('Idris.Idris2.Builtin':'un--snd'(V0)) of {'Idris.Prelude.Show.MkShow', E4, E5} -> (fun (V6, V7) -> (V6(V3)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, <<")"/utf8>>)))))))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show_(Maybe $a)'(V0, V1) -> ('dn--un--showPrec_Show_(Maybe $a)'(V0, {'Idris.Prelude.Show.Open'}, V1)).
'dn--un--show_Show_(List $a)'(V0, V1) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"["/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(('nested--2472-6711--in--un--show\x{27}'(V0, V1, <<""/utf8>>, V1)), <<"]"/utf8>>)))).
'dn--un--show_Show_((Either $a) $b)'(V0, V1) -> ('dn--un--showPrec_Show_((Either $a) $b)'(V0, {'Idris.Prelude.Show.Open'}, V1)).
'dn--un--show_Show_((DPair $a) $p)'(V0, V1) -> case V1 of {'Idris.Builtin.DPair.MkDPair', E0, E1} -> (fun (V2, V3) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"("/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(case ('Idris.Idris2.Builtin':'un--fst'(V0)) of {'Idris.Prelude.Show.MkShow', E2, E3} -> (fun (V4, V5) -> (V4(V2)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, ('Idris.Idris2.Prelude.Types.String':'un--++'(<<" ** "/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(case (('Idris.Idris2.Builtin':'un--snd'(V0))(V2)) of {'Idris.Prelude.Show.MkShow', E4, E5} -> (fun (V6, V7) -> (V6(V3)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, <<")"/utf8>>)))))))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--showPrec_Show_Void'(V0, V1) -> ('dn--un--show_Show_Void'(V1)).
'dn--un--showPrec_Show_String'(V0, V1) -> ('dn--un--show_Show_String'(V1)).
'dn--un--showPrec_Show_Nat'(V0, V1) -> ('dn--un--show_Show_Nat'(V1)).
'dn--un--showPrec_Show_Integer'(V0, V1) -> ('un--primNumShow'(fun (V2) -> ('erlang':'integer_to_binary'(V2)) end, V0, V1)).
'dn--un--showPrec_Show_Int8'(V0, V1) -> ('un--primNumShow'(fun (V2) -> ('erlang':'throw'("Invalid cast Int8->String")) end, V0, V1)).
'dn--un--showPrec_Show_Int64'(V0, V1) -> ('un--primNumShow'(fun (V2) -> ('erlang':'throw'("Invalid cast Int64->String")) end, V0, V1)).
'dn--un--showPrec_Show_Int32'(V0, V1) -> ('un--primNumShow'(fun (V2) -> ('erlang':'throw'("Invalid cast Int32->String")) end, V0, V1)).
'dn--un--showPrec_Show_Int16'(V0, V1) -> ('un--primNumShow'(fun (V2) -> ('erlang':'throw'("Invalid cast Int16->String")) end, V0, V1)).
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
'dn--un--showPrec_Show_(Maybe $a)'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> <<"Nothing"/utf8>> end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V3) -> ('un--showCon'(V1, <<"Just"/utf8>>, ('un--showArg'(V0, V3)))) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--showPrec_Show_(List $a)'(V0, V1, V2) -> ('dn--un--show_Show_(List $a)'(V0, V2)).
'dn--un--showPrec_Show_((Either $a) $b)'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Left', E0} -> (fun (V3) -> ('un--showCon'(V1, <<"Left"/utf8>>, ('un--showArg'(('Idris.Idris2.Builtin':'un--fst'(V0)), V3)))) end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V4) -> ('un--showCon'(V1, <<"Right"/utf8>>, ('un--showArg'(('Idris.Idris2.Builtin':'un--snd'(V0)), V4)))) end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--showPrec_Show_((DPair $a) $p)'(V0, V1, V2) -> ('dn--un--show_Show_((DPair $a) $p)'(V0, V2)).
'dn--un--min_Ord_Prec'(V0, V1) -> case ('dn--un--<_Ord_Prec'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_Prec'(V0, V1) -> case ('dn--un-->_Ord_Prec'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--compare_Ord_Prec'(V0, V1) -> case V0 of {'Idris.Prelude.Show.User', E0} -> (fun (V2) -> case V1 of {'Idris.Prelude.Show.User', E1} -> (fun (V3) -> ('Idris.Idris2.Prelude.Types':'dn--un--compare_Ord_Nat'(V2, V3)) end(E1)); _ -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Integer'(('un--precCon'(V0)), ('un--precCon'(V1)))) end end(E0)); _ -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_Integer'(('un--precCon'(V0)), ('un--precCon'(V1)))) end.
'dn--un--__Impl_Show_Void'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Void'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Void'(V1, V2)) end end}.
'dn--un--__Impl_Show_String'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_String'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_String'(V1, V2)) end end}.
'dn--un--__Impl_Show_Nat'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Nat'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Nat'(V1, V2)) end end}.
'dn--un--__Impl_Show_Integer'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Integer'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Integer'(V1, V2)) end end}.
'dn--un--__Impl_Show_Int8'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Int8'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Int8'(V1, V2)) end end}.
'dn--un--__Impl_Show_Int64'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Int64'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Int64'(V1, V2)) end end}.
'dn--un--__Impl_Show_Int32'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Int32'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Int32'(V1, V2)) end end}.
'dn--un--__Impl_Show_Int16'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Int16'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Int16'(V1, V2)) end end}.
'dn--un--__Impl_Show_Int'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Int'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Int'(V1, V2)) end end}.
'dn--un--__Impl_Show_Double'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Double'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Double'(V1, V2)) end end}.
'dn--un--__Impl_Show_Char'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Char'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Char'(V1, V2)) end end}.
'dn--un--__Impl_Show_Bool'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Bool'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Bool'(V1, V2)) end end}.
'dn--un--__Impl_Show_Bits8'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Bits8'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Bits8'(V1, V2)) end end}.
'dn--un--__Impl_Show_Bits64'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Bits64'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Bits64'(V1, V2)) end end}.
'dn--un--__Impl_Show_Bits32'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Bits32'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Bits32'(V1, V2)) end end}.
'dn--un--__Impl_Show_Bits16'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Bits16'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Bits16'(V1, V2)) end end}.
'dn--un--__Impl_Show_(|Unit,MkUnit|)'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_(|Unit,MkUnit|)'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_(|Unit,MkUnit|)'(V1, V2)) end end}.
'dn--un--__Impl_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0) -> {'Idris.Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Show_(Maybe $a)'(V0) -> {'Idris.Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_(Maybe $a)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_(Maybe $a)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Show_(List $a)'(V0) -> {'Idris.Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_(List $a)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_(List $a)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Show_((Either $a) $b)'(V0) -> {'Idris.Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_((Either $a) $b)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_((Either $a) $b)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Show_((DPair $a) $p)'(V0) -> {'Idris.Prelude.Show.MkShow', fun (V1) -> ('dn--un--show_Show_((DPair $a) $p)'(V0, V1)) end, fun (V2) -> fun (V3) -> ('dn--un--showPrec_Show_((DPair $a) $p)'(V0, V2, V3)) end end}.
'dn--un--__Impl_Ord_Prec'() -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Prec'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Prec'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Prec'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Prec'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Prec'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Prec'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Prec'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Prec'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Prec'(V16, V17)) end end}.
'dn--un--__Impl_Eq_Prec'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Prec'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Prec'(V2, V3)) end end}.
'dn--un-->_Ord_Prec'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_Prec'(V0, V1)), 2)).
'dn--un-->=_Ord_Prec'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_Prec'(V0, V1)), 0)).
'dn--un--==_Eq_Prec'(V0, V1) -> case V0 of {'Idris.Prelude.Show.User', E0} -> (fun (V2) -> case V1 of {'Idris.Prelude.Show.User', E1} -> (fun (V3) -> ('Idris.Idris2.Prelude.Types':'dn--un--==_Eq_Nat'(V2, V3)) end(E1)); _ -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Integer'(('un--precCon'(V0)), ('un--precCon'(V1)))) end end(E0)); _ -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Integer'(('un--precCon'(V0)), ('un--precCon'(V1)))) end.
'dn--un--<_Ord_Prec'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_Prec'(V0, V1)), 0)).
'dn--un--<=_Ord_Prec'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_Prec'(V0, V1)), 2)).
'dn--un--/=_Eq_Prec'(V0, V1) -> case ('dn--un--==_Eq_Prec'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--showPrec'(V0, V1, V2) -> case V0 of {'Idris.Prelude.Show.MkShow', E0, E1} -> (fun (V3, V4) -> ((V4(V1))(V2)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--showParens'(V0, V1) -> case V0 of 0 -> V1; 1 -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"("/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(V1, <<")"/utf8>>)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--showLitString'(V0, V1) -> case V0 of [] -> V1; [E0 | E1] -> (fun (V2, V3) -> case V2 of $\x{22} -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"\x{5c}\x{22}"/utf8>>, ('un--showLitString'(V3, V1)))); _ -> (('un--showLitChar'(V2))(('un--showLitString'(V3, V1)))) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--showLitChar'(V0) -> case V0 of $\x{7} -> fun (V1) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"\x{5c}a"/utf8>>, V1)) end; $\x{8} -> fun (V2) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"\x{5c}b"/utf8>>, V2)) end; $\x{c} -> fun (V3) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"\x{5c}f"/utf8>>, V3)) end; $\x{a} -> fun (V4) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"\x{5c}n"/utf8>>, V4)) end; $\x{d} -> fun (V5) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"\x{5c}r"/utf8>>, V5)) end; $\x{9} -> fun (V6) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"\x{5c}t"/utf8>>, V6)) end; $\x{b} -> fun (V7) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"\x{5c}v"/utf8>>, V7)) end; $\x{e} -> fun (V8) -> ('un--protectEsc'(fun (V9) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V9, $H)) end, <<"\x{5c}SO"/utf8>>, V8)) end; $\x{7f} -> fun (V10) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"\x{5c}DEL"/utf8>>, V10)) end; $\x{5c} -> fun (V11) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"\x{5c}\x{5c}"/utf8>>, V11)) end; _ -> fun (V12) -> case ('Idris.Idris2.Prelude.Types':'un--getAt'(('Idris.Idris2.Prelude.Types':'dn--un--fromInteger_Num_Nat'(case V0 of E2 when (((erlang:'is_integer'(E2)) andalso (E2 >= 0)) andalso (E2 =< 1114111)) -> E2; _ -> 65533 end)), ('nested--1912-6223--in--un--asciiTab'(V0)))) of {'Idris.Prelude.Types.Just', E0} -> (fun (V13) -> ('Idris.Idris2.Prelude.Types':'un--strCons'($\x{5c}, ('Idris.Idris2.Prelude.Types.String':'un--++'(V13, V12)))) end(E0)); {'Idris.Prelude.Types.Nothing'} -> (fun () -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord_Char'(V0, $\x{7f})) of 1 -> ('Idris.Idris2.Prelude.Types':'un--strCons'($\x{5c}, ('un--protectEsc'(fun (V14) -> ('Idris.Idris2.Prelude.Types':'un--isDigit'(V14)) end, ('dn--un--show_Show_Int'(case V0 of E1 when (((erlang:'is_integer'(E1)) andalso (E1 >= 0)) andalso (E1 =< 1114111)) -> E1; _ -> 65533 end)), V12)))); 0 -> ('Idris.Idris2.Prelude.Types':'un--strCons'(V0, V12)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--showCon'(V0, V1, V2) -> ('un--showParens'(('dn--un-->=_Ord_Prec'(V0, {'Idris.Prelude.Show.App'})), ('Idris.Idris2.Prelude.Types.String':'un--++'(V1, V2)))).
'un--showArg'(V0, V1) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<" "/utf8>>, case V0 of {'Idris.Prelude.Show.MkShow', E0, E1} -> (fun (V2, V3) -> ((V3({'Idris.Prelude.Show.App'}))(V1)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)).
'un--show'(V0, V1) -> case V0 of {'Idris.Prelude.Show.MkShow', E0, E1} -> (fun (V2, V3) -> (V2(V1)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--protectEsc'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(V1, ('Idris.Idris2.Prelude.Types.String':'un--++'(case ('un--firstCharIs'(V0, V2)) of 1 -> <<"\x{5c}&"/utf8>>; 0 -> <<""/utf8>>; _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V2)))).
'un--primNumShow'(V0, V1, V2) -> begin (V3 = (V0(V2))), ('un--showParens'(case ('dn--un-->=_Ord_Prec'(V1, {'Idris.Prelude.Show.PrefixMinus'})) of 1 -> ('un--firstCharIs'(fun (V4) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V4, $-)) end, V3)); 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end, V3)) end.
'un--precCon'(V0) -> case V0 of {'Idris.Prelude.Show.Open'} -> (fun () -> 0 end()); {'Idris.Prelude.Show.Equal'} -> (fun () -> 1 end()); {'Idris.Prelude.Show.Dollar'} -> (fun () -> 2 end()); {'Idris.Prelude.Show.Backtick'} -> (fun () -> 3 end()); {'Idris.Prelude.Show.User', E0} -> (fun (V1) -> 4 end(E0)); {'Idris.Prelude.Show.PrefixMinus'} -> (fun () -> 5 end()); {'Idris.Prelude.Show.App'} -> (fun () -> 6 end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--firstCharIs'(V0, V1) -> case V1 of <<""/utf8>> -> 0; _ -> (V0(('erlang':'hd'(('string':'next_grapheme'(V1)))))) end.
