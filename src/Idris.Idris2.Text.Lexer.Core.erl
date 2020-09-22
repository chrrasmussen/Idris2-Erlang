-module('Idris.Idris2.Text.Lexer.Core').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--lexTo-1476'/5,
  'case--lex-1424'/4,
  'case--case block in tokenise-1305'/12,
  'case--tokenise-1272'/8,
  'case--tokenise,getFirstToken-1186'/12,
  'case--tokenise,getCols-1105'/10,
  'case--scan-1042'/6,
  'case--scan-1007'/8,
  'case--scan-971'/7,
  'case--scan-926'/5,
  'case--scan-877'/7,
  'nested--2785-1081--in--un--getFirstToken'/9,
  'nested--2785-1080--in--un--getCols'/9,
  'nested--2785-1079--in--un--countNLs'/8,
  'un--tokenise'/7,
  'un--scan'/4,
  'un--reject'/2,
  'un--pred'/1,
  'un--lexTo'/4,
  'un--lex'/3,
  'un--fail'/1,
  'un--expect'/2,
  'un--empty'/0,
  'un--concatMap'/4,
  'un--TokenMap'/1,
  'un--Lexer'/0,
  'un--<|>'/4,
  'un--<+>'/2
]).
'case--lexTo-1476'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V5, V6) -> case V6 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V7, V8) -> case V8 of {'Idris.Builtin.MkPair', E4, E5} -> (fun (V9, V10) -> {'Idris.Builtin.MkPair', V5, {'Idris.Builtin.MkPair', V7, {'Idris.Builtin.MkPair', V9, ('Idris.Idris2.Prelude.Types':'un--fastPack'(V10))}}} end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--lex-1424'(V0, V1, V2, V3) -> case V3 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V4, V5) -> case V5 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V6, V7) -> case V7 of {'Idris.Builtin.MkPair', E4, E5} -> (fun (V8, V9) -> {'Idris.Builtin.MkPair', V4, {'Idris.Builtin.MkPair', V6, {'Idris.Builtin.MkPair', V8, ('Idris.Idris2.Prelude.Types':'un--fastPack'(V9))}}} end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--case block in tokenise-1305'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> case V11 of 0 -> {'Idris.Builtin.MkPair', ('Idris.Idris2.Data.List':'un--reverse'('erased', V3)), {'Idris.Builtin.MkPair', V5, {'Idris.Builtin.MkPair', V4, []}}}; 1 -> ('un--tokenise'('erased', V6, V8, V9, [V7 | V3], V2, V10)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--tokenise-1272'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V7 of {'Idris.Prelude.Types.Just', E0} -> (fun (V8) -> case V8 of {'Idris.Builtin.MkPair', E1, E2} -> (fun (V9, V10) -> case V10 of {'Idris.Builtin.MkPair', E3, E4} -> (fun (V11, V12) -> case V12 of {'Idris.Builtin.MkPair', E5, E6} -> (fun (V13, V14) -> ('case--case block in tokenise-1305'('erased', V1, V2, V3, V4, V5, V6, V9, V11, V13, V14, (V6(V9)))) end(E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.Nothing'} -> (fun () -> {'Idris.Builtin.MkPair', ('Idris.Idris2.Data.List':'un--reverse'('erased', V3)), {'Idris.Builtin.MkPair', V5, {'Idris.Builtin.MkPair', V4, V1}}} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--tokenise,getFirstToken-1186'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11) -> case V11 of {'Idris.Prelude.Types.Just', E0} -> (fun (V12) -> case V12 of {'Idris.Builtin.MkPair', E1, E2} -> (fun (V13, V14) -> begin (V15 = ((V5 + ('Idris.Idris2.Prelude.Types':'dn--un--cast_Cast__Nat_Int'(('nested--2785-1079--in--un--countNLs'('erased', V1, V2, V3, V4, V5, V6, V13))))) rem 9223372036854775808)), begin (V16 = ('nested--2785-1080--in--un--getCols'('erased', V1, V2, V3, V4, V5, V6, V13, V4))), {'Idris.Prelude.Types.Just', {'Idris.Builtin.MkPair', {'Idris.Text.Bounded.MkBounded', (V8(('Idris.Idris2.Prelude.Types':'un--fastPack'(('Idris.Idris2.Data.List':'un--reverse'('erased', V13)))))), 1, V5, V4, V15, V16}, {'Idris.Builtin.MkPair', V15, {'Idris.Builtin.MkPair', V16, V14}}}} end end end(E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Prelude.Types.Nothing'} -> (fun () -> ('nested--2785-1081--in--un--getFirstToken'('erased', V1, V2, V3, V4, V5, V6, V9, V10)) end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--tokenise,getCols-1105'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9) -> case V9 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V10, V11) -> case V11 of [] -> ((V7 + ('Idris.Idris2.Prelude.Types':'dn--un--cast_Cast__Nat_Int'(('Idris.Idris2.Prelude.Types.List':'un--length'('erased', V10))))) rem 9223372036854775808); _ -> ('Idris.Idris2.Prelude.Types':'dn--un--cast_Cast__Nat_Int'(('Idris.Idris2.Prelude.Types.List':'un--length'('erased', V10)))) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--scan-1042'(V0, V1, V2, V3, V4, V5) -> case V5 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V6, V7) -> ('un--scan'('erased', V1, V6, V7)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--scan-1007'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V7 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V8, V9) -> ('un--scan'('erased', V2, V8, V9)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--scan-971'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V7, V8) -> ('un--scan'('erased', (V1()), V7, V8)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--scan-926'(V0, V1, V2, V3, V4) -> case V4 of 0 -> {'Idris.Prelude.Types.Just', {'Idris.Builtin.MkPair', [V1 | V3], V2}}; 1 -> {'Idris.Prelude.Types.Nothing'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--scan-877'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of 0 -> ('Idris.Idris2.Prelude.Types':'dn--un--pure_Applicative__Maybe'('erased', {'Idris.Builtin.MkPair', V4, V3})); 1 -> {'Idris.Prelude.Types.Nothing'}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--2785-1081--in--un--getFirstToken'(V0, V1, V2, V3, V4, V5, V6, V7, V8) -> case V7 of [] -> {'Idris.Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V9, V10) -> case V9 of {'Idris.Builtin.MkPair', E2, E3} -> (fun (V11, V12) -> ('case--tokenise,getFirstToken-1186'('erased', V1, V2, V3, V4, V5, V6, V11, V12, V10, V8, ('un--scan'('erased', V11, [], V8)))) end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--2785-1080--in--un--getCols'(V0, V1, V2, V3, V4, V5, V6, V7, V8) -> ('case--tokenise,getCols-1105'('erased', V1, V2, V3, V4, V5, V6, V8, V7, ('Idris.Idris2.Data.List':'un--span'('erased', fun (V9) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Char'(V9, $\x{a})) end, ('Idris.Idris2.Data.List':'un--reverse'('erased', V7)))))).
'nested--2785-1079--in--un--countNLs'(V0, V1, V2, V3, V4, V5, V6, V7) -> ('Idris.Idris2.Prelude.Types.List':'un--length'('erased', ('Idris.Idris2.Data.List':'un--filter'('erased', fun (V8) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Char'(V8, $\x{a})) end, V7)))).
'un--tokenise'(V0, V1, V2, V3, V4, V5, V6) -> ('case--tokenise-1272'('erased', V6, V5, V4, V3, V2, V1, ('nested--2785-1081--in--un--getFirstToken'('erased', V6, V5, V4, V3, V2, V1, V5, V6)))).
'un--scan'(V0, V1, V2, V3) -> case V1 of {'Idris.Text.Lexer.Core.Empty'} -> (fun () -> ('Idris.Idris2.Prelude.Types':'dn--un--pure_Applicative__Maybe'('erased', {'Idris.Builtin.MkPair', V2, V3})) end()); {'Idris.Text.Lexer.Core.Fail'} -> (fun () -> {'Idris.Prelude.Types.Nothing'} end()); {'Idris.Text.Lexer.Core.Lookahead', E0, E1} -> (fun (V4, V5) -> ('case--scan-877'('erased', V5, V4, V3, V2, 'erased', ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Bool'(('Idris.Idris2.Data.Maybe':'un--isJust'('erased', ('un--scan'('erased', V5, V2, V3)))), V4)))) end(E0, E1)); {'Idris.Text.Lexer.Core.Pred', E2} -> (fun (V6) -> case V3 of [] -> {'Idris.Prelude.Types.Nothing'}; [E3 | E4] -> (fun (V7, V8) -> ('case--scan-926'(V6, V7, V8, V2, (V6(V7)))) end(E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E2)); {'Idris.Text.Lexer.Core.SeqEat', E5, E6} -> (fun (V9, V10) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad__Maybe'('erased', 'erased', ('un--scan'('erased', V9, V2, V3)), fun (V11) -> case V11 of {'Idris.Builtin.MkPair', E7, E8} -> (fun (V12, V13) -> ('un--scan'('erased', (V10()), V12, V13)) end(E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end)) end(E5, E6)); {'Idris.Text.Lexer.Core.SeqEmpty', E9, E10} -> (fun (V14, V15) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad__Maybe'('erased', 'erased', ('un--scan'('erased', V14, V2, V3)), fun (V16) -> case V16 of {'Idris.Builtin.MkPair', E11, E12} -> (fun (V17, V18) -> ('un--scan'('erased', V15, V17, V18)) end(E11, E12)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end)) end(E9, E10)); {'Idris.Text.Lexer.Core.SeqSame', E13, E14} -> (fun (V19, V20) -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad__Maybe'('erased', 'erased', ('un--scan'('erased', V19, V2, V3)), fun (V21) -> case V21 of {'Idris.Builtin.MkPair', E15, E16} -> (fun (V22, V23) -> ('un--scan'('erased', V20, V22, V23)) end(E15, E16)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end)) end(E13, E14)); {'Idris.Text.Lexer.Core.Alt', E17, E18} -> (fun (V24, V25) -> ('Idris.Idris2.Prelude.Types':'un--maybe'('erased', 'erased', fun () -> ('un--scan'('erased', V25, V2, V3)) end, fun () -> fun (V26) -> {'Idris.Prelude.Types.Just', V26} end end, ('un--scan'('erased', V24, V2, V3)))) end(E17, E18)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--reject'(V0, V1) -> {'Idris.Text.Lexer.Core.Lookahead', 1, V1}.
'un--pred'(V0) -> {'Idris.Text.Lexer.Core.Pred', V0}.
'un--lexTo'(V0, V1, V2, V3) -> ('case--lexTo-1476'('erased', V3, V2, V1, ('un--tokenise'('erased', V1, 0, 0, [], V2, ('Idris.Idris2.Prelude.Types':'un--unpack'(V3)))))).
'un--lex'(V0, V1, V2) -> ('case--lex-1424'('erased', V2, V1, ('un--tokenise'('erased', fun (V3) -> 1 end, 0, 0, [], V1, ('Idris.Idris2.Prelude.Types':'un--unpack'(V2)))))).
'un--fail'(V0) -> {'Idris.Text.Lexer.Core.Fail'}.
'un--expect'(V0, V1) -> {'Idris.Text.Lexer.Core.Lookahead', 0, V1}.
'un--empty'() -> {'Idris.Text.Lexer.Core.Empty'}.
'un--concatMap'(V0, V1, V2, V3) -> case V3 of [] -> {'Idris.Text.Lexer.Core.Empty'}; [E0 | E1] -> (fun (V4, V5) -> case V5 of [] -> (V2(V4)); [E2 | E3] -> (fun (V6, V7) -> {'Idris.Text.Lexer.Core.SeqSame', (V2(V4)), ('un--concatMap'('erased', 'erased', V2, V5))} end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--TokenMap'(V0) -> {'Idris.Prelude.Types.List', {'Idris.Builtin.Pair', ('un--Lexer'()), {'Idris.->', {'Idris.String'}, fun (V1) -> V0 end}}}.
'un--Lexer'() -> {'Idris.Text.Lexer.Core.Recognise', 0}.
'un--<|>'(V0, V1, V2, V3) -> {'Idris.Text.Lexer.Core.Alt', V2, V3}.
'un--<+>'(V0, V1) -> case V1 of 1 -> fun (V2) -> fun (V3) -> {'Idris.Text.Lexer.Core.SeqEmpty', V2, V3} end end; 0 -> fun (V4) -> fun (V5) -> {'Idris.Text.Lexer.Core.SeqEat', V4, V5} end end; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
