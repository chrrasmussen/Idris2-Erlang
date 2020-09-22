-module('Idris.Idris2.Prelude.Show').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--case block in showLitChar-5759'/2,
  'case--showLitChar-5736'/2,
  'case--protectEsc-5483'/4,
  'case--max-5225'/3,
  'case--min-5211'/3,
  'nested--2141-6046--in--un--show\x{27}'/5,
  'nested--1610-5553--in--un--getAt'/3,
  'nested--1610-5552--in--un--asciiTab'/1,
  'dn--un--show_Show__String'/1,
  'dn--un--show_Show__Nat'/1,
  'dn--un--show_Show__Integer'/1,
  'dn--un--show_Show__Int'/1,
  'dn--un--show_Show__Double'/1,
  'dn--un--show_Show__Char'/1,
  'dn--un--show_Show__Bool'/1,
  'dn--un--show_Show__Bits8'/1,
  'dn--un--show_Show__Bits64'/1,
  'dn--un--show_Show__Bits32'/1,
  'dn--un--show_Show__Bits16'/1,
  'dn--un--show_Show__(|Unit,MkUnit|)'/1,
  'dn--un--show_Show__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/4,
  'dn--un--show_Show__(Maybe $a)'/3,
  'dn--un--show_Show__(List $a)'/3,
  'dn--un--show_Show__((Either $a) $b)'/4,
  'dn--un--show_Show__((DPair $a) $p)'/4,
  'dn--un--showPrec_Show__String'/2,
  'dn--un--showPrec_Show__Nat'/2,
  'dn--un--showPrec_Show__Integer'/2,
  'dn--un--showPrec_Show__Int'/2,
  'dn--un--showPrec_Show__Double'/2,
  'dn--un--showPrec_Show__Char'/2,
  'dn--un--showPrec_Show__Bool'/2,
  'dn--un--showPrec_Show__Bits8'/2,
  'dn--un--showPrec_Show__Bits64'/2,
  'dn--un--showPrec_Show__Bits32'/2,
  'dn--un--showPrec_Show__Bits16'/2,
  'dn--un--showPrec_Show__(|Unit,MkUnit|)'/2,
  'dn--un--showPrec_Show__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/5,
  'dn--un--showPrec_Show__(Maybe $a)'/4,
  'dn--un--showPrec_Show__(List $a)'/4,
  'dn--un--showPrec_Show__((Either $a) $b)'/5,
  'dn--un--showPrec_Show__((DPair $a) $p)'/5,
  'dn--un--min_Ord__Prec'/2,
  'dn--un--max_Ord__Prec'/2,
  'dn--un--compare_Ord__Prec'/2,
  'dn--un--__Impl_Show_String'/0,
  'dn--un--__Impl_Show_Nat'/0,
  'dn--un--__Impl_Show_Integer'/0,
  'dn--un--__Impl_Show_Int'/0,
  'dn--un--__Impl_Show_Double'/0,
  'dn--un--__Impl_Show_Char'/0,
  'dn--un--__Impl_Show_Bool'/0,
  'dn--un--__Impl_Show_Bits8'/0,
  'dn--un--__Impl_Show_Bits64'/0,
  'dn--un--__Impl_Show_Bits32'/0,
  'dn--un--__Impl_Show_Bits16'/0,
  'dn--un--__Impl_Show_(|Unit,MkUnit|)'/0,
  'dn--un--__Impl_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'/3,
  'dn--un--__Impl_Show_(Maybe $a)'/2,
  'dn--un--__Impl_Show_(List $a)'/2,
  'dn--un--__Impl_Show_((Either $a) $b)'/3,
  'dn--un--__Impl_Show_((DPair $a) $p)'/3,
  'dn--un--__Impl_Ord_Prec'/0,
  'dn--un--__Impl_Eq_Prec'/0,
  'dn--un-->_Ord__Prec'/2,
  'dn--un-->=_Ord__Prec'/2,
  'dn--un--==_Eq__Prec'/2,
  'dn--un--<_Ord__Prec'/2,
  'dn--un--<=_Ord__Prec'/2,
  'dn--un--/=_Eq__Prec'/2,
  'un--showPrec'/2,
  'un--showParens'/2,
  'un--showLitString'/1,
  'un--showLitChar'/1,
  'un--showCon'/3,
  'un--showArg'/3,
  'un--show'/2,
  'un--protectEsc'/3,
  'un--primNumShow'/4,
  'un--precCon'/1,
  'un--firstCharIs'/2
]).
'case--case block in showLitChar-5759'(V0, V1) -> case V1 of 0 -> fun (V2) -> ('Idris.Idris2.Prelude.Types':'un--strCons'($\x{5c}, ('un--protectEsc'(fun (V3) -> ('Idris.Idris2.Prelude.Types':'un--isDigit'(V3)) end, ('dn--un--show_Show__Int'(case V0 of E0 when (((erlang:'is_integer'(E0)) andalso (E0 >= 0)) andalso (E0 =< 1114111)) -> E0; _ -> 65533 end)), V2)))) end; 1 -> fun (V4) -> ('Idris.Idris2.Prelude.Types':'un--strCons'(V0, V4)) end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--showLitChar-5736'(V0, V1) -> case V1 of {'Idris.Prelude.Types.Just', E0} -> (fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.Types':'un--strCons'($\x{5c}, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(V2, V3)))) end end(E0)); {'Idris.Prelude.Types.Nothing'} -> (fun () -> ('case--case block in showLitChar-5759'(V0, ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord__Char'(V0, $\x{7f})))) end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--protectEsc-5483'(V0, V1, V2, V3) -> case V3 of 0 -> <<"\x{5c}&"/utf8>>; 1 -> <<""/utf8>>; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-5225'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-5211'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--2141-6046--in--un--show\x{27}'(V0, V1, V2, V3, V4) -> case V4 of [] -> V3; [E0 | E1] -> (fun (V5, V6) -> case V6 of [] -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(V3, case V1 of {'Idris.Prelude.Show.dn--un--__mkShow', E4, E5} -> (fun (V7, V8) -> (V7(V5)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)); _ -> ('nested--2141-6046--in--un--show\x{27}'('erased', V1, V2, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(V3, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(case V1 of {'Idris.Prelude.Show.dn--un--__mkShow', E2, E3} -> (fun (V9, V10) -> (V9(V5)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, <<", "/utf8>>)))), V6)) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--1610-5553--in--un--getAt'(V0, V1, V2) -> case V1 of 0 -> case V2 of [E2 | E3] -> (fun (V3, V4) -> {'Idris.Prelude.Types.Just', V3} end(E2, E3)); _ -> case V2 of [] -> {'Idris.Prelude.Types.Nothing'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end; _ -> begin (V5 = (V1 - 1)), case V2 of [E0 | E1] -> (fun (V6, V7) -> ('nested--1610-5553--in--un--getAt'(V0, V5, V7)) end(E0, E1)); _ -> case V2 of [] -> {'Idris.Prelude.Types.Nothing'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end.
'nested--1610-5552--in--un--asciiTab'(V0) -> [<<"NUL"/utf8>> | [<<"SOH"/utf8>> | [<<"STX"/utf8>> | [<<"ETX"/utf8>> | [<<"EOT"/utf8>> | [<<"ENQ"/utf8>> | [<<"ACK"/utf8>> | [<<"BEL"/utf8>> | [<<"BS"/utf8>> | [<<"HT"/utf8>> | [<<"LF"/utf8>> | [<<"VT"/utf8>> | [<<"FF"/utf8>> | [<<"CR"/utf8>> | [<<"SO"/utf8>> | [<<"SI"/utf8>> | [<<"DLE"/utf8>> | [<<"DC1"/utf8>> | [<<"DC2"/utf8>> | [<<"DC3"/utf8>> | [<<"DC4"/utf8>> | [<<"NAK"/utf8>> | [<<"SYN"/utf8>> | [<<"ETB"/utf8>> | [<<"CAN"/utf8>> | [<<"EM"/utf8>> | [<<"SUB"/utf8>> | [<<"ESC"/utf8>> | [<<"FS"/utf8>> | [<<"GS"/utf8>> | [<<"RS"/utf8>> | [<<"US"/utf8>> | []]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]].
'dn--un--show_Show__String'(V0) -> ('Idris.Idris2.Prelude.Types':'un--strCons'($\x{22}, (('un--showLitString'(('Idris.Idris2.Prelude.Types':'un--unpack'(V0))))(<<"\x{22}"/utf8>>)))).
'dn--un--show_Show__Nat'(V0) -> ('dn--un--show_Show__Integer'(('Idris.Idris2.Prelude.Types':'un--natToInteger'(V0)))).
'dn--un--show_Show__Integer'(V0) -> ('dn--un--showPrec_Show__Integer'({'Idris.Prelude.Show.Open'}, V0)).
'dn--un--show_Show__Int'(V0) -> ('dn--un--showPrec_Show__Int'({'Idris.Prelude.Show.Open'}, V0)).
'dn--un--show_Show__Double'(V0) -> ('dn--un--showPrec_Show__Double'({'Idris.Prelude.Show.Open'}, V0)).
'dn--un--show_Show__Char'(V0) -> case V0 of $\x{27} -> <<"\x{27}\x{5c}\x{27}\x{27}"/utf8>>; _ -> ('Idris.Idris2.Prelude.Types':'un--strCons'($\x{27}, (('un--showLitChar'(V0))(<<"\x{27}"/utf8>>)))) end.
'dn--un--show_Show__Bool'(V0) -> case V0 of 0 -> <<"True"/utf8>>; 1 -> <<"False"/utf8>>; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show__Bits8'(V0) -> ('dn--un--showPrec_Show__Bits8'({'Idris.Prelude.Show.Open'}, V0)).
'dn--un--show_Show__Bits64'(V0) -> ('dn--un--showPrec_Show__Bits64'({'Idris.Prelude.Show.Open'}, V0)).
'dn--un--show_Show__Bits32'(V0) -> ('dn--un--showPrec_Show__Bits32'({'Idris.Prelude.Show.Open'}, V0)).
'dn--un--show_Show__Bits16'(V0) -> ('dn--un--showPrec_Show__Bits16'({'Idris.Prelude.Show.Open'}, V0)).
'dn--un--show_Show__(|Unit,MkUnit|)'(V0) -> case V0 of {'Idris.Builtin.MkUnit'} -> (fun () -> <<"()"/utf8>> end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V4, V5) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"("/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V2)) of {'Idris.Prelude.Show.dn--un--__mkShow', E2, E3} -> (fun (V6, V7) -> (V6(V4)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<", "/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V2)) of {'Idris.Prelude.Show.dn--un--__mkShow', E4, E5} -> (fun (V8, V9) -> (V8(V5)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, <<")"/utf8>>)))))))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show__(Maybe $a)'(V0, V1, V2) -> ('dn--un--showPrec_Show__(Maybe $a)'('erased', V1, {'Idris.Prelude.Show.Open'}, V2)).
'dn--un--show_Show__(List $a)'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"["/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('nested--2141-6046--in--un--show\x{27}'('erased', V1, V2, <<""/utf8>>, V2)), <<"]"/utf8>>)))).
'dn--un--show_Show__((Either $a) $b)'(V0, V1, V2, V3) -> ('dn--un--showPrec_Show__((Either $a) $b)'('erased', 'erased', V2, {'Idris.Prelude.Show.Open'}, V3)).
'dn--un--show_Show__((DPair $a) $p)'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.DPair.MkDPair', E0, E1} -> (fun (V4, V5) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"("/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V2)) of {'Idris.Prelude.Show.dn--un--__mkShow', E2, E3} -> (fun (V6, V7) -> (V6(V4)) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<" ** "/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(case (('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V2))(V4)) of {'Idris.Prelude.Show.dn--un--__mkShow', E4, E5} -> (fun (V8, V9) -> (V8(V5)) end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end, <<")"/utf8>>)))))))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--showPrec_Show__String'(V0, V1) -> ('dn--un--show_Show__String'(V1)).
'dn--un--showPrec_Show__Nat'(V0, V1) -> ('dn--un--show_Show__Nat'(V1)).
'dn--un--showPrec_Show__Integer'(V0, V1) -> ('un--primNumShow'('erased', fun (V2) -> ('erlang':'integer_to_binary'(V2)) end, V0, V1)).
'dn--un--showPrec_Show__Int'(V0, V1) -> ('un--primNumShow'('erased', fun (V2) -> ('erlang':'integer_to_binary'(V2)) end, V0, V1)).
'dn--un--showPrec_Show__Double'(V0, V1) -> ('un--primNumShow'('erased', fun (V2) -> ('erlang':'float_to_binary'(V2, [{'decimals', 10} | ['compact' | []]])) end, V0, V1)).
'dn--un--showPrec_Show__Char'(V0, V1) -> ('dn--un--show_Show__Char'(V1)).
'dn--un--showPrec_Show__Bool'(V0, V1) -> ('dn--un--show_Show__Bool'(V1)).
'dn--un--showPrec_Show__Bits8'(V0, V1) -> ('un--primNumShow'('erased', fun (V2) -> ('erlang':'integer_to_binary'(V2)) end, V0, V1)).
'dn--un--showPrec_Show__Bits64'(V0, V1) -> ('un--primNumShow'('erased', fun (V2) -> ('erlang':'integer_to_binary'(V2)) end, V0, V1)).
'dn--un--showPrec_Show__Bits32'(V0, V1) -> ('un--primNumShow'('erased', fun (V2) -> ('erlang':'integer_to_binary'(V2)) end, V0, V1)).
'dn--un--showPrec_Show__Bits16'(V0, V1) -> ('un--primNumShow'('erased', fun (V2) -> ('erlang':'integer_to_binary'(V2)) end, V0, V1)).
'dn--un--showPrec_Show__(|Unit,MkUnit|)'(V0, V1) -> ('dn--un--show_Show__(|Unit,MkUnit|)'(V1)).
'dn--un--showPrec_Show__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2, V3, V4) -> ('dn--un--show_Show__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', V2, V4)).
'dn--un--showPrec_Show__(Maybe $a)'(V0, V1, V2, V3) -> case V3 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> <<"Nothing"/utf8>> end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V4) -> ('un--showCon'(V2, <<"Just"/utf8>>, ('un--showArg'('erased', V1, V4)))) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--showPrec_Show__(List $a)'(V0, V1, V2, V3) -> ('dn--un--show_Show__(List $a)'('erased', V1, V3)).
'dn--un--showPrec_Show__((Either $a) $b)'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Prelude.Types.Left', E0} -> (fun (V5) -> ('un--showCon'(V3, <<"Left"/utf8>>, ('un--showArg'('erased', ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V2)), V5)))) end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V6) -> ('un--showCon'(V3, <<"Right"/utf8>>, ('un--showArg'('erased', ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V2)), V6)))) end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--showPrec_Show__((DPair $a) $p)'(V0, V1, V2, V3, V4) -> ('dn--un--show_Show__((DPair $a) $p)'('erased', 'erased', V2, V4)).
'dn--un--min_Ord__Prec'(V0, V1) -> ('case--min-5211'(V1, V0, ('dn--un--<_Ord__Prec'(V0, V1)))).
'dn--un--max_Ord__Prec'(V0, V1) -> ('case--max-5225'(V1, V0, ('dn--un-->_Ord__Prec'(V0, V1)))).
'dn--un--compare_Ord__Prec'(V0, V1) -> case V0 of {'Idris.Prelude.Show.User', E0} -> (fun (V2) -> case V1 of {'Idris.Prelude.Show.User', E1} -> (fun (V3) -> ('Idris.Idris2.Prelude.Types':'dn--un--compare_Ord__Nat'(V2, V3)) end(E1)); _ -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord__Integer'(('un--precCon'(V0)), ('un--precCon'(V1)))) end end(E0)); _ -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord__Integer'(('un--precCon'(V0)), ('un--precCon'(V1)))) end.
'dn--un--__Impl_Show_String'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__String'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__String'(V1, V2)) end end}.
'dn--un--__Impl_Show_Nat'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__Nat'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__Nat'(V1, V2)) end end}.
'dn--un--__Impl_Show_Integer'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__Integer'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__Integer'(V1, V2)) end end}.
'dn--un--__Impl_Show_Int'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__Int'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__Int'(V1, V2)) end end}.
'dn--un--__Impl_Show_Double'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__Double'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__Double'(V1, V2)) end end}.
'dn--un--__Impl_Show_Char'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__Char'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__Char'(V1, V2)) end end}.
'dn--un--__Impl_Show_Bool'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__Bool'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__Bool'(V1, V2)) end end}.
'dn--un--__Impl_Show_Bits8'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__Bits8'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__Bits8'(V1, V2)) end end}.
'dn--un--__Impl_Show_Bits64'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__Bits64'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__Bits64'(V1, V2)) end end}.
'dn--un--__Impl_Show_Bits32'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__Bits32'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__Bits32'(V1, V2)) end end}.
'dn--un--__Impl_Show_Bits16'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__Bits16'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__Bits16'(V1, V2)) end end}.
'dn--un--__Impl_Show_(|Unit,MkUnit|)'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__(|Unit,MkUnit|)'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__(|Unit,MkUnit|)'(V1, V2)) end end}.
'dn--un--__Impl_Show_(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'(V0, V1, V2) -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V3) -> ('dn--un--show_Show__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', V2, V3)) end, fun (V4) -> fun (V5) -> ('dn--un--showPrec_Show__(|((Builtin.Pair $a) $b),((Builtin.MkPair $a) $b)|)'('erased', 'erased', V2, V4, V5)) end end}.
'dn--un--__Impl_Show_(Maybe $a)'(V0, V1) -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V2) -> ('dn--un--show_Show__(Maybe $a)'('erased', V1, V2)) end, fun (V3) -> fun (V4) -> ('dn--un--showPrec_Show__(Maybe $a)'('erased', V1, V3, V4)) end end}.
'dn--un--__Impl_Show_(List $a)'(V0, V1) -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V2) -> ('dn--un--show_Show__(List $a)'('erased', V1, V2)) end, fun (V3) -> fun (V4) -> ('dn--un--showPrec_Show__(List $a)'('erased', V1, V3, V4)) end end}.
'dn--un--__Impl_Show_((Either $a) $b)'(V0, V1, V2) -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V3) -> ('dn--un--show_Show__((Either $a) $b)'('erased', 'erased', V2, V3)) end, fun (V4) -> fun (V5) -> ('dn--un--showPrec_Show__((Either $a) $b)'('erased', 'erased', V2, V4, V5)) end end}.
'dn--un--__Impl_Show_((DPair $a) $p)'(V0, V1, V2) -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V3) -> ('dn--un--show_Show__((DPair $a) $p)'('erased', 'erased', V2, V3)) end, fun (V4) -> fun (V5) -> ('dn--un--showPrec_Show__((DPair $a) $p)'('erased', 'erased', V2, V4, V5)) end end}.
'dn--un--__Impl_Ord_Prec'() -> {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Prec'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Prec'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord__Prec'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord__Prec'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord__Prec'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord__Prec'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord__Prec'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord__Prec'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord__Prec'(V16, V17)) end end}.
'dn--un--__Impl_Eq_Prec'() -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Prec'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Prec'(V2, V3)) end end}.
'dn--un-->_Ord__Prec'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__Prec'(V0, V1)), 2)).
'dn--un-->=_Ord__Prec'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__Prec'(V0, V1)), 0)).
'dn--un--==_Eq__Prec'(V0, V1) -> case V0 of {'Idris.Prelude.Show.User', E0} -> (fun (V2) -> case V1 of {'Idris.Prelude.Show.User', E1} -> (fun (V3) -> ('Idris.Idris2.Prelude.Types':'dn--un--==_Eq__Nat'(V2, V3)) end(E1)); _ -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Integer'(('un--precCon'(V0)), ('un--precCon'(V1)))) end end(E0)); _ -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Integer'(('un--precCon'(V0)), ('un--precCon'(V1)))) end.
'dn--un--<_Ord__Prec'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__Prec'(V0, V1)), 0)).
'dn--un--<=_Ord__Prec'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__Prec'(V0, V1)), 2)).
'dn--un--/=_Eq__Prec'(V0, V1) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__Prec'(V0, V1)))).
'un--showPrec'(V0, V1) -> case V1 of {'Idris.Prelude.Show.dn--un--__mkShow', E0, E1} -> (fun (V2, V3) -> fun (V4) -> fun (V5) -> ((V3(V4))(V5)) end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--showParens'(V0, V1) -> case V0 of 1 -> V1; 0 -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"("/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(V1, <<")"/utf8>>)))); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--showLitString'(V0) -> case V0 of [] -> fun (V1) -> V1 end; [E0 | E1] -> (fun (V2, V3) -> case V2 of $\x{22} -> fun (V4) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"\x{5c}\x{22}"/utf8>>, (('un--showLitString'(V3))(V4)))) end; _ -> fun (V5) -> (('un--showLitChar'(V2))((('un--showLitString'(V3))(V5)))) end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--showLitChar'(V0) -> case V0 of $\x{7} -> fun (V1) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"\x{5c}a"/utf8>>, V1)) end; $\x{8} -> fun (V2) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"\x{5c}b"/utf8>>, V2)) end; $\x{c} -> fun (V3) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"\x{5c}f"/utf8>>, V3)) end; $\x{a} -> fun (V4) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"\x{5c}n"/utf8>>, V4)) end; $\x{d} -> fun (V5) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"\x{5c}r"/utf8>>, V5)) end; $\x{9} -> fun (V6) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"\x{5c}t"/utf8>>, V6)) end; $\x{b} -> fun (V7) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"\x{5c}v"/utf8>>, V7)) end; $\x{e} -> fun (V8) -> ('un--protectEsc'(fun (V9) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Char'(V9, $H)) end, <<"\x{5c}SO"/utf8>>, V8)) end; $\x{7f} -> fun (V10) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"\x{5c}DEL"/utf8>>, V10)) end; $\x{5c} -> fun (V11) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"\x{5c}\x{5c}"/utf8>>, V11)) end; _ -> ('case--showLitChar-5736'(V0, ('nested--1610-5553--in--un--getAt'(V0, ('Idris.Idris2.Prelude.Types':'dn--un--fromInteger_Num__Nat'(case V0 of E0 when (((erlang:'is_integer'(E0)) andalso (E0 >= 0)) andalso (E0 =< 1114111)) -> E0; _ -> 65533 end)), ('nested--1610-5552--in--un--asciiTab'(V0)))))) end.
'un--showCon'(V0, V1, V2) -> ('un--showParens'(('dn--un-->=_Ord__Prec'(V0, {'Idris.Prelude.Show.App'})), ('Idris.Idris2.Prelude.Types.Strings':'un--++'(V1, V2)))).
'un--showArg'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<" "/utf8>>, case V1 of {'Idris.Prelude.Show.dn--un--__mkShow', E0, E1} -> (fun (V3, V4) -> ((V4({'Idris.Prelude.Show.App'}))(V2)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)).
'un--show'(V0, V1) -> case V1 of {'Idris.Prelude.Show.dn--un--__mkShow', E0, E1} -> (fun (V2, V3) -> fun (V4) -> (V2(V4)) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--protectEsc'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(V1, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('case--protectEsc-5483'(V2, V1, V0, ('un--firstCharIs'(V0, V2)))), V2)))).
'un--primNumShow'(V0, V1, V2, V3) -> begin (V4 = (V1(V3))), ('un--showParens'(('Idris.Idris2.Prelude.Basics':'un--&&'(('dn--un-->=_Ord__Prec'(V2, {'Idris.Prelude.Show.PrefixMinus'})), fun () -> ('un--firstCharIs'(fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Char'(V5, $-)) end, V4)) end)), V4)) end.
'un--precCon'(V0) -> case V0 of {'Idris.Prelude.Show.Open'} -> (fun () -> 0 end()); {'Idris.Prelude.Show.Equal'} -> (fun () -> 1 end()); {'Idris.Prelude.Show.Dollar'} -> (fun () -> 2 end()); {'Idris.Prelude.Show.Backtick'} -> (fun () -> 3 end()); {'Idris.Prelude.Show.User', E0} -> (fun (V1) -> 4 end(E0)); {'Idris.Prelude.Show.PrefixMinus'} -> (fun () -> 5 end()); {'Idris.Prelude.Show.App'} -> (fun () -> 6 end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--firstCharIs'(V0, V1) -> case V1 of <<""/utf8>> -> 1; _ -> (V0(('erlang':'hd'(('string':'next_grapheme'(V1)))))) end.
