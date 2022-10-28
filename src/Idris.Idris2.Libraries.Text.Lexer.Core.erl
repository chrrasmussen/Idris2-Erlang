-module('Idris.Idris2.Libraries.Text.Lexer.Core').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--tokenise-2747'/7,
  'case--tokenise,getFirstToken-2657'/11,
  'nested--3737-2524--in--un--getFirstToken'/8,
  'nested--3737-2523--in--un--getCols'/8,
  'nested--3737-2522--in--un--countNLs'/7,
  'un--tokenise'/6,
  'un--scan'/3,
  'un--reject'/1,
  'un--pred'/1,
  'un--lexTo'/3,
  'un--lex'/2,
  'un--fail'/0,
  'un--expect'/1,
  'un--eof'/0,
  'un--empty'/0,
  'un--concatMap'/2,
  'un--TokenMap'/1,
  'un--Lexer'/0,
  'un--<|>'/2,
  'un--<+>'/3
]).
'case--tokenise-2747'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Prelude.Types.Just', V7} -> case V7 of {'Builtin.MkPair', V8, V9} -> case V9 of {'Builtin.MkPair', V10, V11} -> case V11 of {'Builtin.MkPair', V12, V13} -> case (V5(case V8 of {'Libraries.Text.Bounded.MkBounded', V14, V15, V16} -> V14 end)) of 1 -> {'Builtin.MkPair', ('Idris.Idris2.Prelude.Types.List':'un--reverse'(V2)), {'Builtin.MkPair', V4, {'Builtin.MkPair', V3, []}}}; 0 -> ('un--tokenise'(V5, V10, V12, [V8 | V2], V1, V13)) end end end end; {'Prelude.Types.Nothing'} -> {'Builtin.MkPair', ('Idris.Idris2.Prelude.Types.List':'un--reverse'(V2)), {'Builtin.MkPair', V4, {'Builtin.MkPair', V3, V0}}} end.
'case--tokenise,getFirstToken-2657'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10) -> case V10 of {'Prelude.Types.Just', V11} -> case V11 of {'Builtin.MkPair', V12, V13} -> begin (V16 = begin (V15 = (V4 + begin (V14 = ('nested--3737-2522--in--un--countNLs'(V0, V1, V2, V3, V4, V5, V12))), case ((V14 band 9223372036854775808) =/= 0) of 'true' -> (V14 bor -9223372036854775808); _ -> (V14 band 9223372036854775807) end end)), case ((V15 band 9223372036854775808) =/= 0) of 'true' -> (V15 bor -9223372036854775808); _ -> (V15 band 9223372036854775807) end end), begin (V17 = ('nested--3737-2523--in--un--getCols'(V0, V1, V2, V3, V4, V5, V12, V3))), {'Prelude.Types.Just', {'Builtin.MkPair', {'Libraries.Text.Bounded.MkBounded', (V7(('Idris.Idris2.Prelude.Types':'un--fastPack'(('Idris.Idris2.Prelude.Types.List':'un--reverse'(V12)))))), 0, {'Libraries.Text.Bounded.MkBounds', V4, V3, V16, V17}}, {'Builtin.MkPair', V16, {'Builtin.MkPair', V17, V13}}}} end end end; {'Prelude.Types.Nothing'} -> ('nested--3737-2524--in--un--getFirstToken'(V0, V1, V2, V3, V4, V5, V8, V9)) end.
'nested--3737-2524--in--un--getFirstToken'(V0, V1, V2, V3, V4, V5, V6, V7) -> case V6 of [] -> {'Prelude.Types.Nothing'}; [E0 | E1] -> (fun (V8, V9) -> case V8 of {'Builtin.MkPair', V10, V11} -> ('case--tokenise,getFirstToken-2657'(V0, V1, V2, V3, V4, V5, V10, V11, V9, V7, ('un--scan'(V10, [], V7)))) end end(E0, E1)) end.
'nested--3737-2523--in--un--getCols'(V0, V1, V2, V3, V4, V5, V6, V7) -> case ('Idris.Idris2.Data.List':'un--span'(fun (V8) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Char'(V8, $\x{a})) end, V6)) of {'Builtin.MkPair', V9, V10} -> case V10 of [] -> begin (V12 = (V7 + begin (V11 = ('Idris.Idris2.Prelude.Types.List':'un--lengthTR'(V9))), case ((V11 band 9223372036854775808) =/= 0) of 'true' -> (V11 bor -9223372036854775808); _ -> (V11 band 9223372036854775807) end end)), case ((V12 band 9223372036854775808) =/= 0) of 'true' -> (V12 bor -9223372036854775808); _ -> (V12 band 9223372036854775807) end end; _ -> begin (V13 = ('Idris.Idris2.Prelude.Types.List':'un--lengthTR'(V9))), case ((V13 band 9223372036854775808) =/= 0) of 'true' -> (V13 bor -9223372036854775808); _ -> (V13 band 9223372036854775807) end end end end.
'nested--3737-2522--in--un--countNLs'(V0, V1, V2, V3, V4, V5, V6) -> ('Idris.Idris2.Prelude.Types.List':'un--lengthTR'(('Idris.Idris2.Prelude.Types.List':'un--filterAppend'({'Prelude.Basics.Lin'}, fun (V7) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V7, $\x{a})) end, V6)))).
'un--tokenise'(V0, V1, V2, V3, V4, V5) -> ('case--tokenise-2747'(V5, V4, V3, V2, V1, V0, ('nested--3737-2524--in--un--getFirstToken'(V5, V4, V3, V2, V1, V0, V4, V5)))).
'un--scan'(V0, V1, V2) -> case V0 of {'Libraries.Text.Lexer.Core.Empty'} -> {'Prelude.Types.Just', {'Builtin.MkPair', V1, V2}}; {'Libraries.Text.Lexer.Core.Fail'} -> {'Prelude.Types.Nothing'}; {'Libraries.Text.Lexer.Core.EOF'} -> case V2 of [] -> {'Prelude.Types.Just', {'Builtin.MkPair', V1, []}}; [E0 | E1] -> (fun (V3, V4) -> {'Prelude.Types.Nothing'} end(E0, E1)) end; {'Libraries.Text.Lexer.Core.Lookahead', V5, V6} -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Bool'(('Idris.Idris2.Data.Maybe':'un--isJust'(('un--scan'(V6, V1, V2)))), V5)) of 1 -> {'Prelude.Types.Just', {'Builtin.MkPair', V1, V2}}; 0 -> {'Prelude.Types.Nothing'} end; {'Libraries.Text.Lexer.Core.Pred', V7} -> case V2 of [] -> {'Prelude.Types.Nothing'}; [E2 | E3] -> (fun (V8, V9) -> case (V7(V8)) of 1 -> {'Prelude.Types.Just', {'Builtin.MkPair', [V8 | V1], V9}}; 0 -> {'Prelude.Types.Nothing'} end end(E2, E3)) end; {'Libraries.Text.Lexer.Core.SeqEat', V10, V11} -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('un--scan'(V10, V1, V2)), fun (V12) -> case V12 of {'Builtin.MkPair', V13, V14} -> ('un--scan'((V11()), V13, V14)) end end)); {'Libraries.Text.Lexer.Core.SeqEmpty', V15, V16} -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('un--scan'(V15, V1, V2)), fun (V17) -> case V17 of {'Builtin.MkPair', V18, V19} -> ('un--scan'(V16, V18, V19)) end end)); {'Libraries.Text.Lexer.Core.SeqSame', V20, V21} -> ('Idris.Idris2.Prelude.Types':'dn--un-->>=_Monad_Maybe'(('un--scan'(V20, V1, V2)), fun (V22) -> case V22 of {'Builtin.MkPair', V23, V24} -> ('un--scan'(V21, V23, V24)) end end)); {'Libraries.Text.Lexer.Core.Alt', V25, V26} -> ('Idris.Idris2.Prelude.Types':'un--maybe'(fun () -> ('un--scan'(V26, V1, V2)) end, fun () -> fun (V27) -> {'Prelude.Types.Just', V27} end end, ('un--scan'(V25, V1, V2)))) end.
'un--reject'(V0) -> {'Libraries.Text.Lexer.Core.Lookahead', 0, V0}.
'un--pred'(V0) -> {'Libraries.Text.Lexer.Core.Pred', V0}.
'un--lexTo'(V0, V1, V2) -> case ('un--tokenise'(V0, 0, 0, [], V1, ('Idris.Idris2.Prelude.Types':'un--fastUnpack'(V2)))) of {'Builtin.MkPair', V3, V4} -> case V4 of {'Builtin.MkPair', V5, V6} -> case V6 of {'Builtin.MkPair', V7, V8} -> {'Builtin.MkPair', V3, {'Builtin.MkPair', V5, {'Builtin.MkPair', V7, ('Idris.Idris2.Prelude.Types':'un--fastPack'(V8))}}} end end end.
'un--lex'(V0, V1) -> case ('un--tokenise'(fun (V2) -> 0 end, 0, 0, [], V0, ('Idris.Idris2.Prelude.Types':'un--fastUnpack'(V1)))) of {'Builtin.MkPair', V3, V4} -> case V4 of {'Builtin.MkPair', V5, V6} -> case V6 of {'Builtin.MkPair', V7, V8} -> {'Builtin.MkPair', V3, {'Builtin.MkPair', V5, {'Builtin.MkPair', V7, ('Idris.Idris2.Prelude.Types':'un--fastPack'(V8))}}} end end end.
'un--fail'() -> {'Libraries.Text.Lexer.Core.Fail'}.
'un--expect'(V0) -> {'Libraries.Text.Lexer.Core.Lookahead', 1, V0}.
'un--eof'() -> {'Libraries.Text.Lexer.Core.EOF'}.
'un--empty'() -> {'Libraries.Text.Lexer.Core.Empty'}.
'un--concatMap'(V0, V1) -> case V1 of [] -> {'Libraries.Text.Lexer.Core.Empty'}; [E0 | E1] -> (fun (V2, V3) -> case V3 of [] -> (V0(V2)); [E2 | E3] -> (fun (V4, V5) -> {'Libraries.Text.Lexer.Core.SeqSame', (V0(V2)), ('un--concatMap'(V0, V3))} end(E2, E3)) end end(E0, E1)) end.
'un--TokenMap'(V0) -> {'Prelude.Basics.List', {'Builtin.Pair', ('un--Lexer'()), {'.->', {'.String'}, fun (V1) -> V0 end}}}.
'un--Lexer'() -> {'Libraries.Text.Lexer.Core.Recognise', 1}.
'un--<|>'(V0, V1) -> {'Libraries.Text.Lexer.Core.Alt', V0, V1}.
'un--<+>'(V0, V1, V2) -> case V0 of 0 -> {'Libraries.Text.Lexer.Core.SeqEmpty', V1, V2}; 1 -> {'Libraries.Text.Lexer.Core.SeqEat', V1, V2} end.
