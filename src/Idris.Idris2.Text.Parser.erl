-module('Idris.Idris2.Text.Parser').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--match-325'/5,
  'un--someTill\x{27}'/6,
  'un--someTill'/6,
  'un--some\x{27}'/3,
  'un--some'/3,
  'un--sepEndBy1\x{27}'/6,
  'un--sepEndBy1'/6,
  'un--sepEndBy'/6,
  'un--sepBy1\x{27}'/6,
  'un--sepBy1'/6,
  'un--sepBy'/6,
  'un--optional'/4,
  'un--option'/5,
  'un--match'/3,
  'un--manyTill'/6,
  'un--many'/3,
  'un--endBy1\x{27}'/6,
  'un--endBy1'/6,
  'un--endBy'/6,
  'un--count1'/4,
  'un--count'/4,
  'un--choose'/7,
  'un--choiceMap'/8,
  'un--choice'/6,
  'un--between'/8,
  'un--afterSome'/6,
  'un--afterMany'/6
]).
'case--match-325'(V0, V1, V2, V3, V4) -> case V4 of 0 -> {'Idris.Prelude.Types.Just', case ('Idris.Idris2.Builtin':'un--snd'('erased', 'erased', V1)) of {'Idris.Text.Token.dn--un--__mkTokenKind', E0, E1} -> (fun (V5, V6) -> ((V6(V2))(case case V3 of {'Idris.Text.Bounded.MkBounded', E4, E5, E6, E7, E8, E9} -> (fun (V7, V8, V9, V10, V11, V12) -> V7 end(E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of {'Idris.Text.Token.Tok', E2, E3} -> (fun (V13, V14) -> V14 end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end}; 1 -> {'Idris.Prelude.Types.Nothing'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--someTill\x{27}'(V0, V1, V2, V3, V4, V5) -> {'Idris.Text.Parser.Core.SeqEat', ('Idris.Idris2.Prelude.Basics':'un--||'(V3, fun () -> 1 end)), V5, fun () -> fun (V6) -> {'Idris.Text.Parser.Core.SeqEmpty', V3, 1, ('un--manyTill'('erased', 'erased', 'erased', V3, V4, V5)), fun (V7) -> {'Idris.Text.Parser.Core.Empty', {'Idris.Builtin.DPair.MkDPair', [V6 | V7], {'Idris.Data.List.IsNonEmpty'}}} end} end end}.
'un--someTill'(V0, V1, V2, V3, V4, V5) -> {'Idris.Text.Parser.Core.SeqEat', ('Idris.Idris2.Prelude.Basics':'un--||'(V3, fun () -> 1 end)), V5, fun () -> fun (V6) -> {'Idris.Text.Parser.Core.SeqEmpty', V3, 1, ('un--manyTill'('erased', 'erased', 'erased', V3, V4, V5)), fun (V7) -> {'Idris.Text.Parser.Core.Empty', [V6 | V7]} end} end end}.
'un--some\x{27}'(V0, V1, V2) -> {'Idris.Text.Parser.Core.SeqEat', 1, V2, fun () -> fun (V3) -> {'Idris.Text.Parser.Core.SeqEmpty', 1, 1, ('un--many'('erased', 'erased', V2)), fun (V4) -> {'Idris.Text.Parser.Core.Empty', {'Idris.Builtin.DPair.MkDPair', [V3 | V4], {'Idris.Data.List.IsNonEmpty'}}} end} end end}.
'un--some'(V0, V1, V2) -> {'Idris.Text.Parser.Core.SeqEat', 1, V2, fun () -> fun (V3) -> {'Idris.Text.Parser.Core.SeqEmpty', 1, 1, ('un--many'('erased', 'erased', V2)), fun (V4) -> {'Idris.Text.Parser.Core.Empty', [V3 | V4]} end} end end}.
'un--sepEndBy1\x{27}'(V0, V1, V2, V3, V4, V5) -> {'Idris.Text.Parser.Core.SeqEmpty', V3, 1, ('Idris.Idris2.Text.Parser.Core':'dn--un--map_Functor__((Grammar $tok) $c)'('erased', 'erased', 'erased', V3, fun (V6) -> fun (V7) -> V6 end end, ('un--sepBy1\x{27}'('erased', 'erased', 'erased', V3, V4, V5)))), fun (V8) -> ('Idris.Idris2.Text.Parser.Core':'dn--un--map_Functor__((Grammar $tok) $c)'('erased', 'erased', 'erased', 1, V8, ('un--optional'('erased', 'erased', 0, V4)))) end}.
'un--sepEndBy1'(V0, V1, V2, V3, V4, V5) -> {'Idris.Text.Parser.Core.SeqEmpty', V3, 1, ('Idris.Idris2.Text.Parser.Core':'dn--un--map_Functor__((Grammar $tok) $c)'('erased', 'erased', 'erased', V3, fun (V6) -> fun (V7) -> V6 end end, ('un--sepBy1'('erased', 'erased', 'erased', V3, V4, V5)))), fun (V8) -> ('Idris.Idris2.Text.Parser.Core':'dn--un--map_Functor__((Grammar $tok) $c)'('erased', 'erased', 'erased', 1, V8, ('un--optional'('erased', 'erased', 0, V4)))) end}.
'un--sepEndBy'(V0, V1, V2, V3, V4, V5) -> ('un--option'('erased', 'erased', V3, [], ('un--sepEndBy1'('erased', 'erased', 'erased', V3, V4, V5)))).
'un--sepBy1\x{27}'(V0, V1, V2, V3, V4, V5) -> {'Idris.Text.Parser.Core.SeqEmpty', V3, 1, V5, fun (V6) -> {'Idris.Text.Parser.Core.SeqEmpty', 1, 1, ('un--many'('erased', 'erased', {'Idris.Text.Parser.Core.SeqEmpty', 0, V3, ('Idris.Idris2.Text.Parser.Core':'dn--un--map_Functor__((Grammar $tok) $c)'('erased', 'erased', 'erased', 0, fun (V7) -> fun (V8) -> V8 end end, V4)), fun (V9) -> ('Idris.Idris2.Text.Parser.Core':'dn--un--map_Functor__((Grammar $tok) $c)'('erased', 'erased', 'erased', V3, V9, V5)) end})), fun (V10) -> {'Idris.Text.Parser.Core.Empty', {'Idris.Builtin.DPair.MkDPair', [V6 | V10], {'Idris.Data.List.IsNonEmpty'}}} end} end}.
'un--sepBy1'(V0, V1, V2, V3, V4, V5) -> {'Idris.Text.Parser.Core.SeqEmpty', ('Idris.Idris2.Prelude.Basics':'un--||'(1, fun () -> V3 end)), 1, {'Idris.Text.Parser.Core.SeqEmpty', 1, V3, {'Idris.Text.Parser.Core.Empty', fun (V6) -> fun (V7) -> [V6 | V7] end end}, fun (V8) -> ('Idris.Idris2.Text.Parser.Core':'dn--un--map_Functor__((Grammar $tok) $c)'('erased', 'erased', 'erased', V3, V8, V5)) end}, fun (V9) -> ('Idris.Idris2.Text.Parser.Core':'dn--un--map_Functor__((Grammar $tok) $c)'('erased', 'erased', 'erased', 1, V9, ('un--many'('erased', 'erased', {'Idris.Text.Parser.Core.SeqEmpty', 0, V3, ('Idris.Idris2.Text.Parser.Core':'dn--un--map_Functor__((Grammar $tok) $c)'('erased', 'erased', 'erased', 0, fun (V10) -> fun (V11) -> V11 end end, V4)), fun (V12) -> ('Idris.Idris2.Text.Parser.Core':'dn--un--map_Functor__((Grammar $tok) $c)'('erased', 'erased', 'erased', V3, V12, V5)) end})))) end}.
'un--sepBy'(V0, V1, V2, V3, V4, V5) -> ('un--option'('erased', 'erased', V3, [], ('un--sepBy1'('erased', 'erased', 'erased', V3, V4, V5)))).
'un--optional'(V0, V1, V2, V3) -> ('un--option'('erased', 'erased', V2, {'Idris.Prelude.Types.Nothing'}, ('Idris.Idris2.Text.Parser.Core':'dn--un--map_Functor__((Grammar $tok) $c)'('erased', 'erased', 'erased', V2, fun (V4) -> {'Idris.Prelude.Types.Just', V4} end, V3)))).
'un--option'(V0, V1, V2, V3, V4) -> case V2 of 1 -> {'Idris.Text.Parser.Core.Alt', 1, 1, V4, fun () -> {'Idris.Text.Parser.Core.Empty', V3} end}; 0 -> {'Idris.Text.Parser.Core.Alt', 0, 1, V4, fun () -> {'Idris.Text.Parser.Core.Empty', V3} end}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--match'(V0, V1, V2) -> {'Idris.Text.Parser.Core.Terminal', <<"Unrecognised input"/utf8>>, fun (V3) -> ('case--match-325'('erased', V1, V2, V3, case ('Idris.Idris2.Builtin':'un--fst'('erased', 'erased', V1)) of {'Idris.Prelude.EqOrd.dn--un--__mkEq', E0, E1} -> (fun (V4, V5) -> ((V4(case case V3 of {'Idris.Text.Bounded.MkBounded', E4, E5, E6, E7, E8, E9} -> (fun (V6, V7, V8, V9, V10, V11) -> V6 end(E4, E5, E6, E7, E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end of {'Idris.Text.Token.Tok', E2, E3} -> (fun (V12, V13) -> V12 end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end))(V2)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)) end}.
'un--manyTill'(V0, V1, V2, V3, V4, V5) -> {'Idris.Text.Parser.Core.Alt', V3, 0, ('Idris.Idris2.Text.Parser.Core':'dn--un--map_Functor__((Grammar $tok) $c)'('erased', 'erased', 'erased', V3, fun (V6) -> [] end, V4)), fun () -> ('un--someTill'('erased', 'erased', 'erased', V3, V4, V5)) end}.
'un--many'(V0, V1, V2) -> ('un--option'('erased', 'erased', 0, [], ('un--some'('erased', 'erased', V2)))).
'un--endBy1\x{27}'(V0, V1, V2, V3, V4, V5) -> ('un--some\x{27}'('erased', 'erased', {'Idris.Text.Parser.Core.SeqEmpty', V3, 0, ('Idris.Idris2.Text.Parser.Core':'dn--un--map_Functor__((Grammar $tok) $c)'('erased', 'erased', 'erased', V3, fun (V6) -> fun (V7) -> V6 end end, V5)), fun (V8) -> ('Idris.Idris2.Text.Parser.Core':'dn--un--map_Functor__((Grammar $tok) $c)'('erased', 'erased', 'erased', 0, V8, V4)) end})).
'un--endBy1'(V0, V1, V2, V3, V4, V5) -> ('un--some'('erased', 'erased', {'Idris.Text.Parser.Core.SeqEmpty', V3, 0, ('Idris.Idris2.Text.Parser.Core':'dn--un--map_Functor__((Grammar $tok) $c)'('erased', 'erased', 'erased', V3, fun (V6) -> fun (V7) -> V6 end end, V5)), fun (V8) -> ('Idris.Idris2.Text.Parser.Core':'dn--un--map_Functor__((Grammar $tok) $c)'('erased', 'erased', 'erased', 0, V8, V4)) end})).
'un--endBy'(V0, V1, V2, V3, V4, V5) -> ('un--option'('erased', 'erased', 0, [], ('un--endBy1'('erased', 'erased', 'erased', V3, V4, V5)))).
'un--count1'(V0, V1, V2, V3) -> {'Idris.Text.Parser.Core.SeqEat', ('Idris.Idris2.Prelude.Basics':'un--||'(('Idris.Idris2.Data.Nat':'un--isSucc'(case V2 of {'Idris.Text.Quantity.Qty', E0, E1} -> (fun (V4, V5) -> V4 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)), fun () -> 1 end)), V3, fun () -> fun (V6) -> {'Idris.Text.Parser.Core.SeqEmpty', ('Idris.Idris2.Data.Nat':'un--isSucc'(case V2 of {'Idris.Text.Quantity.Qty', E2, E3} -> (fun (V7, V8) -> V7 end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end)), 1, ('un--count'('erased', 'erased', V2, V3)), fun (V9) -> {'Idris.Text.Parser.Core.Empty', [V6 | V9]} end} end end}.
'un--count'(V0, V1, V2, V3) -> case V2 of {'Idris.Text.Quantity.Qty', E0, E1} -> (fun (V4, V5) -> case V4 of 0 -> case V5 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> ('un--many'('erased', 'erased', V3)) end()); {'Idris.Prelude.Types.Just', E3} -> (fun (V6) -> case V6 of 0 -> {'Idris.Text.Parser.Core.Empty', []}; _ -> begin (V7 = (V6 - 1)), ('un--option'('erased', 'erased', 0, [], ('un--count1'('erased', 'erased', ('Idris.Idris2.Text.Quantity':'un--atMost'(V7)), V3)))) end end end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; _ -> begin (V8 = (V4 - 1)), case V5 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> ('un--count1'('erased', 'erased', ('Idris.Idris2.Text.Quantity':'un--atLeast'(V8)), V3)) end()); {'Idris.Prelude.Types.Just', E2} -> (fun (V9) -> case V9 of 0 -> {'Idris.Text.Parser.Core.Fail', 1, <<"Quantity out of order"/utf8>>}; _ -> begin (V10 = (V9 - 1)), ('un--count1'('erased', 'erased', ('Idris.Idris2.Text.Quantity':'un--between'((1 + V8), V10)), V3)) end end end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--choose'(V0, V1, V2, V3, V4, V5, V6) -> {'Idris.Text.Parser.Core.Alt', V3, V4, ('Idris.Idris2.Text.Parser.Core':'dn--un--map_Functor__((Grammar $tok) $c)'('erased', 'erased', 'erased', V3, fun (V7) -> {'Idris.Prelude.Types.Left', V7} end, V5)), fun () -> ('Idris.Idris2.Text.Parser.Core':'dn--un--map_Functor__((Grammar $tok) $c)'('erased', 'erased', 'erased', V4, fun (V8) -> {'Idris.Prelude.Types.Right', V8} end, V6)) end}.
'un--choiceMap'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V6 of {'Idris.Prelude.Interfaces.dn--un--__mkFoldable', E0, E1} -> (fun (V8, V9) -> (((((V8('erased'))('erased'))(fun (V10) -> fun (V11) -> {'Idris.Text.Parser.Core.Alt', V4, V4, (V5(V10)), fun () -> V11 end} end end))({'Idris.Text.Parser.Core.Fail', 1, <<"No more options"/utf8>>}))(V7)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--choice'(V0, V1, V2, V3, V4, V5) -> ('un--choiceMap'('erased', 'erased', 'erased', 'erased', V4, fun (V6) -> V6 end, V3, V5)).
'un--between'(V0, V1, V2, V3, V4, V5, V6, V7) -> {'Idris.Text.Parser.Core.SeqEmpty', 0, 0, ('Idris.Idris2.Text.Parser.Core':'dn--un--map_Functor__((Grammar $tok) $c)'('erased', 'erased', 'erased', 0, fun (V8) -> fun (V9) -> V8 end end, {'Idris.Text.Parser.Core.SeqEmpty', 0, V4, ('Idris.Idris2.Text.Parser.Core':'dn--un--map_Functor__((Grammar $tok) $c)'('erased', 'erased', 'erased', 0, fun (V10) -> fun (V11) -> V11 end end, V5)), fun (V12) -> ('Idris.Idris2.Text.Parser.Core':'dn--un--map_Functor__((Grammar $tok) $c)'('erased', 'erased', 'erased', V4, V12, V7)) end})), fun (V13) -> ('Idris.Idris2.Text.Parser.Core':'dn--un--map_Functor__((Grammar $tok) $c)'('erased', 'erased', 'erased', 0, V13, V6)) end}.
'un--afterSome'(V0, V1, V2, V3, V4, V5) -> {'Idris.Text.Parser.Core.SeqEat', V3, V4, fun () -> fun (V6) -> ('un--afterMany'('erased', 'erased', 'erased', V3, V4, V5)) end end}.
'un--afterMany'(V0, V1, V2, V3, V4, V5) -> {'Idris.Text.Parser.Core.Alt', V3, 0, V5, fun () -> ('un--afterSome'('erased', 'erased', 'erased', V3, V4, V5)) end}.
