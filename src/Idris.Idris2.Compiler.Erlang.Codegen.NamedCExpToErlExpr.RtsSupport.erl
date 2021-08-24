-module('Idris.Idris2.Compiler.Erlang.Codegen.NamedCExpToErlExpr.RtsSupport').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--5559-2837--in--un--genHalt'/5,
  'nested--5461-2746--in--un--curry'/10,
  'un--newLocalVars'/2,
  'un--newLocalVar'/2,
  'un--integerPower'/2,
  'un--genValidChar'/2,
  'un--genUnsafeStringToAtom'/2,
  'un--genUnsafePerformIO'/3,
  'un--genUnicodeStringTail'/4,
  'un--genUnicodeStringSubstr'/4,
  'un--genUnicodeStringReverse'/2,
  'un--genUnicodeStringOp'/4,
  'un--genUnicodeStringLength'/2,
  'un--genUnicodeStringLTE'/3,
  'un--genUnicodeStringLT'/3,
  'un--genUnicodeStringIndex'/3,
  'un--genUnicodeStringHead'/2,
  'un--genUnicodeStringGTE'/3,
  'un--genUnicodeStringGT'/3,
  'un--genUnicodeStringEQ'/3,
  'un--genUnicodeStringCons'/3,
  'un--genUnicodeStringAppend'/3,
  'un--genUnicodePutStr'/2,
  'un--genUnicodeGetStr'/2,
  'un--genUncurry'/6,
  'un--genThrow'/2,
  'un--genStringToInteger'/4,
  'un--genStringToInt'/4,
  'un--genStringToDouble'/4,
  'un--genRight'/2,
  'un--genRef'/3,
  'un--genProcessDictWriteIORef'/3,
  'un--genProcessDictReadIORef'/2,
  'un--genProcessDictNewIORef'/3,
  'un--genOsType'/3,
  'un--genNothing'/1,
  'un--genMod'/3,
  'un--genMkUnit'/1,
  'un--genMkIORes'/2,
  'un--genMkIO'/3,
  'un--genList'/2,
  'un--genLeft'/2,
  'un--genJust'/2,
  'un--genIntegerToString'/2,
  'un--genIntegerToInt'/2,
  'un--genIntegerToDouble'/2,
  'un--genIntegerToBits'/3,
  'un--genIntToString'/2,
  'un--genIntToInteger'/2,
  'un--genIntToDouble'/2,
  'un--genIntToChar'/2,
  'un--genIntSub'/4,
  'un--genIntShiftL'/4,
  'un--genIntOp'/5,
  'un--genIntMult'/4,
  'un--genIntDiv'/4,
  'un--genIntAdd'/4,
  'un--genFunCall'/4,
  'un--genFC'/1,
  'un--genEscriptMain'/2,
  'un--genErlMain'/3,
  'un--genDoubleToString'/2,
  'un--genDoubleToInteger'/2,
  'un--genDoubleToInt'/2,
  'un--genCurry'/5,
  'un--genCharToString'/2,
  'un--genCharToInteger'/2,
  'un--genCharToInt'/2,
  'un--genBoolToInt'/2,
  'un--genAtomToString'/2,
  'un--genArgsToLocals'/2,
  'un--genAppCurriedFun'/3,
  'un--addLocalVars'/4,
  'un--addLocalVar'/4
]).
'nested--5559-2837--in--un--genHalt'(V0, V1, V2, V3, V4) -> ('un--genFunCall'(V3, <<"erlang"/utf8>>, <<"halt"/utf8>>, [{'Idris.Compiler.Erlang.IR.ErlExpr.EInteger', V3, V4} | []])).
'nested--5461-2746--in--un--curry'(V0, V1, V2, V3, V4, V5, V6, V7, V8, V9) -> case V6 of 0 -> fun (V10) -> {'Idris.Prelude.Types.Right', (V7({'Idris.Compiler.Erlang.IR.ErlExpr.EApp', V5, V8, ('Idris.Idris2.Data.List':'un--reverse'(V9))}))} end; _ -> begin (V11 = (V6 - 1)), fun (V12) -> begin (V13 = ('un--newLocalVar'(V4, V12))), case V13 of {'Idris.Prelude.Types.Left', E0} -> (fun (V14) -> {'Idris.Prelude.Types.Left', V14} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V15) -> begin (V16 = (('nested--5461-2746--in--un--curry'(V0, V1, V2, V3, V4, V5, V11, V7, V8, [{'Idris.Compiler.Erlang.IR.ErlExpr.ELocal', V5, V15} | V9]))(V12))), case V16 of {'Idris.Prelude.Types.Left', E2} -> (fun (V17) -> {'Idris.Prelude.Types.Left', V17} end(E2)); {'Idris.Prelude.Types.Right', E3} -> (fun (V18) -> {'Idris.Prelude.Types.Right', {'Idris.Compiler.Erlang.IR.ErlExpr.ELam', V5, [V15 | []], V18}} end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end end.
'un--newLocalVars'(V0, V1) -> case V1 of 0 -> fun (V2) -> {'Idris.Prelude.Types.Right', []} end; _ -> begin (V3 = (V1 - 1)), fun (V4) -> begin (V5 = ('un--newLocalVar'(V0, V4))), case V5 of {'Idris.Prelude.Types.Left', E0} -> (fun (V6) -> {'Idris.Prelude.Types.Left', V6} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V7) -> begin (V8 = (('un--newLocalVars'(V0, V3))(V4))), case V8 of {'Idris.Prelude.Types.Left', E2} -> (fun (V9) -> {'Idris.Prelude.Types.Left', V9} end(E2)); {'Idris.Prelude.Types.Right', E3} -> (fun (V10) -> {'Idris.Prelude.Types.Right', [V7 | V10]} end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end end.
'un--newLocalVar'(V0, V1) -> begin (V3 = begin (V2 = ('erlang':'get'(V0))), {'Idris.Prelude.Types.Right', V2} end), case V3 of {'Idris.Prelude.Types.Left', E0} -> (fun (V4) -> {'Idris.Prelude.Types.Left', V4} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V5) -> case V5 of {'Idris.Compiler.Erlang.IR.ErlExpr.LocalVars.MkLocalVars', E2, E3} -> (fun (V6, V7) -> begin (V9 = begin (V8 = ('erlang':'put'(V0, {'Idris.Compiler.Erlang.IR.ErlExpr.LocalVars.MkLocalVars', V6, ((V7 + 1) rem 9223372036854775808)}))), {'Idris.Prelude.Types.Right', V8} end), case V9 of {'Idris.Prelude.Types.Left', E4} -> (fun (V10) -> {'Idris.Prelude.Types.Left', V10} end(E4)); {'Idris.Prelude.Types.Right', E5} -> (fun (V11) -> {'Idris.Prelude.Types.Right', {'Idris.Compiler.Erlang.IR.ErlExpr.LocalVars.MkLocalVar', V6, V7}} end(E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.
'un--integerPower'(V0, V1) -> ('Idris.Idris2.Prelude.Interfaces':'un--product'({'Idris.Builtin.MkPair', {'Idris.Prelude.Interfaces.MkFoldable', fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V4, V5, V6)) end end end end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V9, V10, V11)) end end end end end, fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.Types':'dn--un--null_Foldable_List'(V13)) end end, fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldlM_Foldable_List'(V17, V18, V19, V20)) end end end end end end end, fun (V21) -> fun (V22) -> ('Idris.Idris2.Prelude.Types':'dn--un--toList_Foldable_List'(V22)) end end, fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V25, V26, V27)) end end end end end}, {'Idris.Prelude.Num.MkNum', fun (V28) -> fun (V29) -> (V28 + V29) end end, fun (V30) -> fun (V31) -> (V30 * V31) end end, fun (V32) -> V32 end}}, ('Idris.Idris2.Prelude.Types':'un--take'(V1, ('Idris.Idris2.Data.Stream':'un--repeat'(V0)))))).
'un--genValidChar'(V0, V1) -> {'Idris.Compiler.Erlang.IR.ErlExpr.EMatcherCase', V0, V1, [{'Idris.Compiler.Erlang.IR.ErlExpr.MCodepoint'} | []], {'Idris.Compiler.Erlang.IR.ErlExpr.EInteger', V0, 65533}}.
'un--genUnsafeStringToAtom'(V0, V1) -> case V1 of {'Idris.Compiler.Erlang.IR.ErlExpr.EIdrisConstant', E0, E1} -> (fun (V2, V3) -> case V3 of {'Idris.Compiler.Erlang.IR.ErlExpr.IString', E2} -> (fun (V4) -> {'Idris.Compiler.Erlang.IR.ErlExpr.EAtom', V0, V4} end(E2)); _ -> ('un--genFunCall'(V0, <<"erlang"/utf8>>, <<"binary_to_atom"/utf8>>, [V1 | [{'Idris.Compiler.Erlang.IR.ErlExpr.EAtom', V0, <<"utf8"/utf8>>} | []]])) end end(E0, E1)); _ -> ('un--genFunCall'(V0, <<"erlang"/utf8>>, <<"binary_to_atom"/utf8>>, [V1 | [{'Idris.Compiler.Erlang.IR.ErlExpr.EAtom', V0, <<"utf8"/utf8>>} | []]])) end.
'un--genUnsafePerformIO'(V0, V1, V2) -> {'Idris.Compiler.Erlang.IR.ErlExpr.EApp', V1, ('un--genRef'(V0, V1, {'Idris.Core.Name.NS', ('Idris.Idris2.Core.Name.Namespace':'un--primIONS'()), {'Idris.Core.Name.UN', <<"unsafePerformIO"/utf8>>}})), [V2 | []]}.
'un--genUnicodeStringTail'(V0, V1, V2, V3) -> begin (V4 = ('un--newLocalVar'(V0, V3))), case V4 of {'Idris.Prelude.Types.Left', E0} -> (fun (V5) -> {'Idris.Prelude.Types.Left', V5} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V6) -> begin (V7 = ('un--newLocalVar'(V0, V3))), case V7 of {'Idris.Prelude.Types.Left', E2} -> (fun (V8) -> {'Idris.Prelude.Types.Left', V8} end(E2)); {'Idris.Prelude.Types.Right', E3} -> (fun (V9) -> begin (V10 = ('un--genFunCall'(V1, <<"string"/utf8>>, <<"next_grapheme"/utf8>>, [V2 | []]))), {'Idris.Prelude.Types.Right', {'Idris.Compiler.Erlang.IR.ErlExpr.EMatcherCase', V1, V10, [{'Idris.Compiler.Erlang.IR.ErlExpr.MCons', {'Idris.Compiler.Erlang.IR.ErlExpr.MAny'}, {'Idris.Compiler.Erlang.IR.ErlExpr.MBinary'}, V6, V9, {'Idris.Compiler.Erlang.IR.ErlExpr.ELocal', V1, V9}} | []], {'Idris.Compiler.Erlang.IR.ErlExpr.EBinary', V1, <<""/utf8>>}}} end end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.
'un--genUnicodeStringSubstr'(V0, V1, V2, V3) -> ('un--genFunCall'(V0, <<"string"/utf8>>, <<"slice"/utf8>>, [V3 | [V1 | [V2 | []]]])).
'un--genUnicodeStringReverse'(V0, V1) -> begin (V2 = ('un--genFunCall'(V0, <<"string"/utf8>>, <<"reverse"/utf8>>, [V1 | []]))), ('un--genFunCall'(V0, <<"unicode"/utf8>>, <<"characters_to_binary"/utf8>>, [V2 | []])) end.
'un--genUnicodeStringOp'(V0, V1, V2, V3) -> ('un--genBoolToInt'(V1, {'Idris.Compiler.Erlang.IR.ErlExpr.EOp', V1, V0, V2, V3})).
'un--genUnicodeStringLength'(V0, V1) -> ('un--genFunCall'(V0, <<"string"/utf8>>, <<"length"/utf8>>, [V1 | []])).
'un--genUnicodeStringLTE'(V0, V1, V2) -> ('un--genUnicodeStringOp'(<<"=<"/utf8>>, V0, V1, V2)).
'un--genUnicodeStringLT'(V0, V1, V2) -> ('un--genUnicodeStringOp'(<<"<"/utf8>>, V0, V1, V2)).
'un--genUnicodeStringIndex'(V0, V1, V2) -> begin (V3 = ('un--genFunCall'(V0, <<"string"/utf8>>, <<"slice"/utf8>>, [V1 | [V2 | [{'Idris.Compiler.Erlang.IR.ErlExpr.EInteger', V0, 1} | []]]]))), begin (V4 = ('un--genFunCall'(V0, <<"string"/utf8>>, <<"next_grapheme"/utf8>>, [V3 | []]))), ('un--genFunCall'(V0, <<"erlang"/utf8>>, <<"hd"/utf8>>, [V4 | []])) end end.
'un--genUnicodeStringHead'(V0, V1) -> begin (V2 = ('un--genFunCall'(V0, <<"string"/utf8>>, <<"next_grapheme"/utf8>>, [V1 | []]))), ('un--genFunCall'(V0, <<"erlang"/utf8>>, <<"hd"/utf8>>, [V2 | []])) end.
'un--genUnicodeStringGTE'(V0, V1, V2) -> ('un--genUnicodeStringOp'(<<">="/utf8>>, V0, V1, V2)).
'un--genUnicodeStringGT'(V0, V1, V2) -> ('un--genUnicodeStringOp'(<<">"/utf8>>, V0, V1, V2)).
'un--genUnicodeStringEQ'(V0, V1, V2) -> ('un--genUnicodeStringOp'(<<"=:="/utf8>>, V0, V1, V2)).
'un--genUnicodeStringCons'(V0, V1, V2) -> begin (V3 = ('un--genFunCall'(V0, <<"unicode"/utf8>>, <<"characters_to_binary"/utf8>>, [('un--genList'(V0, [V1 | []])) | []]))), {'Idris.Compiler.Erlang.IR.ErlExpr.EBinaryConcat', V0, V3, V2} end.
'un--genUnicodeStringAppend'(V0, V1, V2) -> {'Idris.Compiler.Erlang.IR.ErlExpr.EBinaryConcat', V0, V1, V2}.
'un--genUnicodePutStr'(V0, V1) -> ('un--genFunCall'(V0, <<"io"/utf8>>, <<"format"/utf8>>, [{'Idris.Compiler.Erlang.IR.ErlExpr.ECharlist', V0, <<"~ts"/utf8>>} | [('un--genList'(V0, [V1 | []])) | []]])).
'un--genUnicodeGetStr'(V0, V1) -> begin (V2 = ('un--genFunCall'(V0, <<"io"/utf8>>, <<"get_line"/utf8>>, [V1 | []]))), begin (V3 = ('un--genFunCall'(V0, <<"string"/utf8>>, <<"chomp"/utf8>>, [V2 | []]))), ('un--genFunCall'(V0, <<"unicode"/utf8>>, <<"characters_to_binary"/utf8>>, [V3 | []])) end end.
'un--genUncurry'(V0, V1, V2, V3, V4, V5) -> begin (V6 = (('un--newLocalVars'(V0, V2))(V5))), case V6 of {'Idris.Prelude.Types.Left', E0} -> (fun (V7) -> {'Idris.Prelude.Types.Left', V7} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V8) -> {'Idris.Prelude.Types.Right', {'Idris.Compiler.Erlang.IR.ErlExpr.ELam', V1, V8, (V3(('un--genAppCurriedFun'(V1, V4, ('un--genArgsToLocals'(V1, V8))))))}} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.
'un--genThrow'(V0, V1) -> ('un--genFunCall'(V0, <<"erlang"/utf8>>, <<"throw"/utf8>>, [{'Idris.Compiler.Erlang.IR.ErlExpr.ECharlist', V0, V1} | []])).
'un--genStringToInteger'(V0, V1, V2, V3) -> begin (V4 = ('un--newLocalVar'(V0, V3))), case V4 of {'Idris.Prelude.Types.Left', E0} -> (fun (V5) -> {'Idris.Prelude.Types.Left', V5} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V6) -> begin (V7 = ('un--newLocalVar'(V0, V3))), case V7 of {'Idris.Prelude.Types.Left', E2} -> (fun (V8) -> {'Idris.Prelude.Types.Left', V8} end(E2)); {'Idris.Prelude.Types.Right', E3} -> (fun (V9) -> begin (V10 = ('un--genFunCall'(V1, <<"string"/utf8>>, <<"to_integer"/utf8>>, [V2 | []]))), {'Idris.Prelude.Types.Right', {'Idris.Compiler.Erlang.IR.ErlExpr.EMatcherCase', V1, V10, [{'Idris.Compiler.Erlang.IR.ErlExpr.MTuple', [{'Idris.Builtin.MkPair', V6, {'Idris.Compiler.Erlang.IR.ErlExpr.MInteger'}} | [{'Idris.Builtin.MkPair', V9, {'Idris.Compiler.Erlang.IR.ErlExpr.MAny'}} | []]], {'Idris.Compiler.Erlang.IR.ErlExpr.EMatcherCase', V1, ('un--genFunCall'(V1, <<"string"/utf8>>, <<"is_empty"/utf8>>, [{'Idris.Compiler.Erlang.IR.ErlExpr.ELocal', V1, V9} | []])), [{'Idris.Compiler.Erlang.IR.ErlExpr.MConst', {'Idris.Compiler.Erlang.IR.ErlExpr.MExact', {'Idris.Compiler.Erlang.IR.ErlExpr.EAtom', V1, <<"true"/utf8>>}}, {'Idris.Compiler.Erlang.IR.ErlExpr.ELocal', V1, V6}} | []], {'Idris.Compiler.Erlang.IR.ErlExpr.EInteger', V1, 0}}} | []], {'Idris.Compiler.Erlang.IR.ErlExpr.EInteger', V1, 0}}} end end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.
'un--genStringToInt'(V0, V1, V2, V3) -> ('un--genStringToInteger'(V0, V1, V2, V3)).
'un--genStringToDouble'(V0, V1, V2, V3) -> begin (V4 = ('un--newLocalVar'(V0, V3))), case V4 of {'Idris.Prelude.Types.Left', E0} -> (fun (V5) -> {'Idris.Prelude.Types.Left', V5} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V6) -> begin (V7 = ('un--newLocalVar'(V0, V3))), case V7 of {'Idris.Prelude.Types.Left', E2} -> (fun (V8) -> {'Idris.Prelude.Types.Left', V8} end(E2)); {'Idris.Prelude.Types.Right', E3} -> (fun (V9) -> begin (V10 = ('un--newLocalVar'(V0, V3))), case V10 of {'Idris.Prelude.Types.Left', E4} -> (fun (V11) -> {'Idris.Prelude.Types.Left', V11} end(E4)); {'Idris.Prelude.Types.Right', E5} -> (fun (V12) -> begin (V13 = ('un--newLocalVar'(V0, V3))), case V13 of {'Idris.Prelude.Types.Left', E6} -> (fun (V14) -> {'Idris.Prelude.Types.Left', V14} end(E6)); {'Idris.Prelude.Types.Right', E7} -> (fun (V15) -> begin (V16 = ('un--genFunCall'(V1, <<"string"/utf8>>, <<"to_float"/utf8>>, [V2 | []]))), begin (V17 = ('un--genStringToInteger'(V0, V1, V2, V3))), case V17 of {'Idris.Prelude.Types.Left', E8} -> (fun (V18) -> {'Idris.Prelude.Types.Left', V18} end(E8)); {'Idris.Prelude.Types.Right', E9} -> (fun (V19) -> {'Idris.Prelude.Types.Right', {'Idris.Compiler.Erlang.IR.ErlExpr.EMatcherCase', V1, V16, [{'Idris.Compiler.Erlang.IR.ErlExpr.MTuple', [{'Idris.Builtin.MkPair', V6, {'Idris.Compiler.Erlang.IR.ErlExpr.MExact', {'Idris.Compiler.Erlang.IR.ErlExpr.EAtom', V1, <<"error"/utf8>>}}} | [{'Idris.Builtin.MkPair', V9, {'Idris.Compiler.Erlang.IR.ErlExpr.MExact', {'Idris.Compiler.Erlang.IR.ErlExpr.EAtom', V1, <<"no_float"/utf8>>}}} | []]], ('un--genFunCall'(V1, <<"erlang"/utf8>>, <<"float"/utf8>>, [V19 | []]))} | [{'Idris.Compiler.Erlang.IR.ErlExpr.MTuple', [{'Idris.Builtin.MkPair', V12, {'Idris.Compiler.Erlang.IR.ErlExpr.MFloat'}} | [{'Idris.Builtin.MkPair', V15, {'Idris.Compiler.Erlang.IR.ErlExpr.MAny'}} | []]], {'Idris.Compiler.Erlang.IR.ErlExpr.EMatcherCase', V1, ('un--genFunCall'(V1, <<"string"/utf8>>, <<"is_empty"/utf8>>, [{'Idris.Compiler.Erlang.IR.ErlExpr.ELocal', V1, V15} | []])), [{'Idris.Compiler.Erlang.IR.ErlExpr.MConst', {'Idris.Compiler.Erlang.IR.ErlExpr.MExact', {'Idris.Compiler.Erlang.IR.ErlExpr.EAtom', V1, <<"true"/utf8>>}}, {'Idris.Compiler.Erlang.IR.ErlExpr.ELocal', V1, V12}} | []], {'Idris.Compiler.Erlang.IR.ErlExpr.EFloat', V1, 0.0}}} | []]], {'Idris.Compiler.Erlang.IR.ErlExpr.EFloat', V1, 0.0}}} end(E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end(E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.
'un--genRight'(V0, V1) -> {'Idris.Compiler.Erlang.IR.ErlExpr.ECon', V0, ('Idris.Idris2.Compiler.Erlang.Name':'un--constructorName'({'Idris.Core.Name.NS', ('Idris.Idris2.Core.Name.Namespace':'un--typesNS'()), {'Idris.Core.Name.UN', <<"Right"/utf8>>}})), [V1 | []]}.
'un--genRef'(V0, V1, V2) -> case ('Idris.Idris2.Compiler.Erlang.Name':'un--moduleNameFunctionName'(V0, V2)) of {'Idris.Builtin.MkPair', E0, E1} -> (fun (V3, V4) -> case ('Idris.Idris2.Compiler.Erlang.Name':'un--isNameInCurrentModule'(V0, V2)) of 1 -> {'Idris.Compiler.Erlang.IR.ErlExpr.EAtom', V1, V4}; 0 -> {'Idris.Compiler.Erlang.IR.ErlExpr.ERef', V1, {'Idris.Compiler.Erlang.IR.ErlExpr.EAtom', V1, V3}, {'Idris.Compiler.Erlang.IR.ErlExpr.EAtom', V1, V4}}; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--genProcessDictWriteIORef'(V0, V1, V2) -> ('un--genFunCall'(V0, <<"erlang"/utf8>>, <<"put"/utf8>>, [V1 | [V2 | []]])).
'un--genProcessDictReadIORef'(V0, V1) -> ('un--genFunCall'(V0, <<"erlang"/utf8>>, <<"get"/utf8>>, [V1 | []])).
'un--genProcessDictNewIORef'(V0, V1, V2) -> begin (V3 = ('un--genFunCall'(V0, <<"erlang"/utf8>>, <<"make_ref"/utf8>>, []))), begin (V4 = ('un--genFunCall'(V0, <<"erlang"/utf8>>, <<"put"/utf8>>, [{'Idris.Compiler.Erlang.IR.ErlExpr.ELocal', V0, V1} | [V2 | []]]))), {'Idris.Compiler.Erlang.IR.ErlExpr.ELet', V0, V1, V3, {'Idris.Compiler.Erlang.IR.ErlExpr.ESequence', V0, {'Idris.Data.Vect.::', V4, {'Idris.Data.Vect.::', {'Idris.Compiler.Erlang.IR.ErlExpr.ELocal', V0, V1}, {'Idris.Data.Vect.Nil'}}}}} end end.
'un--genOsType'(V0, V1, V2) -> begin (V3 = ('un--newLocalVar'(V0, V2))), case V3 of {'Idris.Prelude.Types.Left', E0} -> (fun (V4) -> {'Idris.Prelude.Types.Left', V4} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V5) -> begin (V6 = ('un--newLocalVar'(V0, V2))), case V6 of {'Idris.Prelude.Types.Left', E2} -> (fun (V7) -> {'Idris.Prelude.Types.Left', V7} end(E2)); {'Idris.Prelude.Types.Right', E3} -> (fun (V8) -> begin (V9 = ('un--newLocalVar'(V0, V2))), case V9 of {'Idris.Prelude.Types.Left', E4} -> (fun (V10) -> {'Idris.Prelude.Types.Left', V10} end(E4)); {'Idris.Prelude.Types.Right', E5} -> (fun (V11) -> begin (V12 = ('un--newLocalVar'(V0, V2))), case V12 of {'Idris.Prelude.Types.Left', E6} -> (fun (V13) -> {'Idris.Prelude.Types.Left', V13} end(E6)); {'Idris.Prelude.Types.Right', E7} -> (fun (V14) -> begin (V15 = ('un--genFunCall'(V1, <<"os"/utf8>>, <<"type"/utf8>>, []))), begin (V16 = {'Idris.Compiler.Erlang.IR.ErlExpr.EMatcherCase', V1, {'Idris.Compiler.Erlang.IR.ErlExpr.ELocal', V1, V8}, [{'Idris.Compiler.Erlang.IR.ErlExpr.MConst', {'Idris.Compiler.Erlang.IR.ErlExpr.MExact', {'Idris.Compiler.Erlang.IR.ErlExpr.EAtom', V1, <<"darwin"/utf8>>}}, {'Idris.Compiler.Erlang.IR.ErlExpr.EBinary', V1, <<"darwin"/utf8>>}} | []], {'Idris.Compiler.Erlang.IR.ErlExpr.EBinary', V1, <<"unix"/utf8>>}}), {'Idris.Prelude.Types.Right', {'Idris.Compiler.Erlang.IR.ErlExpr.EMatcherCase', V1, V15, [{'Idris.Compiler.Erlang.IR.ErlExpr.MTuple', [{'Idris.Builtin.MkPair', V5, {'Idris.Compiler.Erlang.IR.ErlExpr.MExact', {'Idris.Compiler.Erlang.IR.ErlExpr.EAtom', V1, <<"unix"/utf8>>}}} | [{'Idris.Builtin.MkPair', V8, {'Idris.Compiler.Erlang.IR.ErlExpr.MAny'}} | []]], V16} | [{'Idris.Compiler.Erlang.IR.ErlExpr.MTuple', [{'Idris.Builtin.MkPair', V11, {'Idris.Compiler.Erlang.IR.ErlExpr.MExact', {'Idris.Compiler.Erlang.IR.ErlExpr.EAtom', V1, <<"win32"/utf8>>}}} | [{'Idris.Builtin.MkPair', V14, {'Idris.Compiler.Erlang.IR.ErlExpr.MAny'}} | []]], {'Idris.Compiler.Erlang.IR.ErlExpr.EBinary', V1, <<"windows"/utf8>>}} | []]], {'Idris.Compiler.Erlang.IR.ErlExpr.EBinary', V1, <<"unknown"/utf8>>}}} end end end(E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.
'un--genNothing'(V0) -> {'Idris.Compiler.Erlang.IR.ErlExpr.ECon', V0, ('Idris.Idris2.Compiler.Erlang.Name':'un--constructorName'({'Idris.Core.Name.NS', ('Idris.Idris2.Core.Name.Namespace':'un--typesNS'()), {'Idris.Core.Name.UN', <<"Nothing"/utf8>>}})), []}.
'un--genMod'(V0, V1, V2) -> {'Idris.Compiler.Erlang.IR.ErlExpr.EMatcherCase', V0, {'Idris.Compiler.Erlang.IR.ErlExpr.EOp', V0, <<">="/utf8>>, V1, {'Idris.Compiler.Erlang.IR.ErlExpr.EInteger', V0, 0}}, [{'Idris.Compiler.Erlang.IR.ErlExpr.MConst', {'Idris.Compiler.Erlang.IR.ErlExpr.MExact', {'Idris.Compiler.Erlang.IR.ErlExpr.EAtom', V0, <<"true"/utf8>>}}, {'Idris.Compiler.Erlang.IR.ErlExpr.EOp', V0, <<"rem"/utf8>>, V1, V2}} | []], {'Idris.Compiler.Erlang.IR.ErlExpr.EOp', V0, <<"rem"/utf8>>, {'Idris.Compiler.Erlang.IR.ErlExpr.EOp', V0, <<"+"/utf8>>, V1, V2}, V2}}.
'un--genMkUnit'(V0) -> {'Idris.Compiler.Erlang.IR.ErlExpr.ECon', V0, ('Idris.Idris2.Compiler.Erlang.Name':'un--constructorName'({'Idris.Core.Name.NS', ('Idris.Idris2.Core.Name.Namespace':'un--builtinNS'()), {'Idris.Core.Name.UN', <<"MkUnit"/utf8>>}})), []}.
'un--genMkIORes'(V0, V1) -> V1.
'un--genMkIO'(V0, V1, V2) -> begin (V3 = {'Idris.Compiler.Erlang.IR.ErlExpr.ELam', V0, [V1 | []], ('un--genMkIORes'(V0, V2))}), V3 end.
'un--genList'(V0, V1) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(fun (V2) -> fun (V3) -> {'Idris.Compiler.Erlang.IR.ErlExpr.ECons', V0, V2, V3} end end, {'Idris.Compiler.Erlang.IR.ErlExpr.ENil', V0}, V1)).
'un--genLeft'(V0, V1) -> {'Idris.Compiler.Erlang.IR.ErlExpr.ECon', V0, ('Idris.Idris2.Compiler.Erlang.Name':'un--constructorName'({'Idris.Core.Name.NS', ('Idris.Idris2.Core.Name.Namespace':'un--typesNS'()), {'Idris.Core.Name.UN', <<"Left"/utf8>>}})), [V1 | []]}.
'un--genJust'(V0, V1) -> {'Idris.Compiler.Erlang.IR.ErlExpr.ECon', V0, ('Idris.Idris2.Compiler.Erlang.Name':'un--constructorName'({'Idris.Core.Name.NS', ('Idris.Idris2.Core.Name.Namespace':'un--typesNS'()), {'Idris.Core.Name.UN', <<"Just"/utf8>>}})), [V1 | []]}.
'un--genIntegerToString'(V0, V1) -> ('un--genFunCall'(V0, <<"erlang"/utf8>>, <<"integer_to_binary"/utf8>>, [V1 | []])).
'un--genIntegerToInt'(V0, V1) -> V1.
'un--genIntegerToDouble'(V0, V1) -> ('un--genFunCall'(V0, <<"erlang"/utf8>>, <<"float"/utf8>>, [V1 | []])).
'un--genIntegerToBits'(V0, V1, V2) -> ('un--genMod'(V0, V2, {'Idris.Compiler.Erlang.IR.ErlExpr.EInteger', V0, ('un--integerPower'(2, V1))})).
'un--genIntToString'(V0, V1) -> ('un--genFunCall'(V0, <<"erlang"/utf8>>, <<"integer_to_binary"/utf8>>, [V1 | []])).
'un--genIntToInteger'(V0, V1) -> V1.
'un--genIntToDouble'(V0, V1) -> ('un--genFunCall'(V0, <<"erlang"/utf8>>, <<"float"/utf8>>, [V1 | []])).
'un--genIntToChar'(V0, V1) -> ('un--genValidChar'(V0, V1)).
'un--genIntSub'(V0, V1, V2, V3) -> ('un--genIntOp'(<<"-"/utf8>>, V0, V1, V2, V3)).
'un--genIntShiftL'(V0, V1, V2, V3) -> ('un--genIntOp'(<<"bsl"/utf8>>, V0, V1, V2, V3)).
'un--genIntOp'(V0, V1, V2, V3, V4) -> {'Idris.Compiler.Erlang.IR.ErlExpr.EOp', V1, <<"rem"/utf8>>, {'Idris.Compiler.Erlang.IR.ErlExpr.EOp', V1, V0, V3, V4}, {'Idris.Compiler.Erlang.IR.ErlExpr.EInteger', V1, ('un--integerPower'(2, V2))}}.
'un--genIntMult'(V0, V1, V2, V3) -> ('un--genIntOp'(<<"*"/utf8>>, V0, V1, V2, V3)).
'un--genIntDiv'(V0, V1, V2, V3) -> ('un--genIntOp'(<<"div"/utf8>>, V0, V1, V2, V3)).
'un--genIntAdd'(V0, V1, V2, V3) -> ('un--genIntOp'(<<"+"/utf8>>, V0, V1, V2, V3)).
'un--genFunCall'(V0, V1, V2, V3) -> {'Idris.Compiler.Erlang.IR.ErlExpr.EApp', V0, {'Idris.Compiler.Erlang.IR.ErlExpr.ERef', V0, {'Idris.Compiler.Erlang.IR.ErlExpr.EAtom', V0, V1}, {'Idris.Compiler.Erlang.IR.ErlExpr.EAtom', V0, V2}}, V3}.
'un--genFC'(V0) -> case V0 of {'Idris.Core.FC.MkFC', E0, E1, E2} -> (fun (V1, V2, V3) -> case V2 of {'Idris.Builtin.MkPair', E3, E4} -> (fun (V4, V5) -> case V3 of {'Idris.Builtin.MkPair', E5, E6} -> (fun (V6, V7) -> V4 end(E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1, E2)); {'Idris.Core.FC.MkVirtualFC', E7, E8, E9} -> (fun (V8, V9, V10) -> case V9 of {'Idris.Builtin.MkPair', E10, E11} -> (fun (V11, V12) -> case V10 of {'Idris.Builtin.MkPair', E12, E13} -> (fun (V13, V14) -> V11 end(E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E7, E8, E9)); {'Idris.Core.FC.EmptyFC'} -> (fun () -> 1 end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--genEscriptMain'(V0, V1) -> begin (V2 = ('un--genFunCall'(V0, <<"io"/utf8>>, <<"setopts"/utf8>>, [('un--genList'(V0, [{'Idris.Compiler.Erlang.IR.ErlExpr.ETuple', V0, [{'Idris.Compiler.Erlang.IR.ErlExpr.EAtom', V0, <<"encoding"/utf8>>} | [{'Idris.Compiler.Erlang.IR.ErlExpr.EAtom', V0, <<"unicode"/utf8>>} | []]]} | []])) | []]))), {'Idris.Compiler.Erlang.IR.ErlExpr.ESequence', V0, {'Idris.Data.Vect.::', V2, {'Idris.Data.Vect.::', V1, {'Idris.Data.Vect.Nil'}}}} end.
'un--genErlMain'(V0, V1, V2) -> begin (V3 = ('un--genFunCall'(V1, <<"erlang"/utf8>>, <<"process_flag"/utf8>>, [{'Idris.Compiler.Erlang.IR.ErlExpr.EAtom', V1, <<"trap_exit"/utf8>>} | [{'Idris.Compiler.Erlang.IR.ErlExpr.EAtom', V1, <<"false"/utf8>>} | []]]))), fun (V4) -> begin (V5 = ('un--newLocalVar'(V0, V4))), case V5 of {'Idris.Prelude.Types.Left', E0} -> (fun (V6) -> {'Idris.Prelude.Types.Left', V6} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V7) -> begin (V8 = ('un--newLocalVar'(V0, V4))), case V8 of {'Idris.Prelude.Types.Left', E2} -> (fun (V9) -> {'Idris.Prelude.Types.Left', V9} end(E2)); {'Idris.Prelude.Types.Right', E3} -> (fun (V10) -> begin (V11 = {'Idris.Compiler.Erlang.IR.ErlExpr.ESequence', V1, {'Idris.Data.Vect.::', V3, {'Idris.Data.Vect.::', ('un--genEscriptMain'(V1, V2)), {'Idris.Data.Vect.::', ('nested--5559-2837--in--un--genHalt'(V2, V1, V0, V1, 0)), {'Idris.Data.Vect.Nil'}}}}}), {'Idris.Prelude.Types.Right', {'Idris.Compiler.Erlang.IR.ErlExpr.ETryCatch', V1, V11, V7, {'Idris.Compiler.Erlang.IR.ErlExpr.ELocal', V1, V7}, V10, {'Idris.Compiler.Erlang.IR.ErlExpr.ESequence', V1, {'Idris.Data.Vect.::', ('un--genFunCall'(V1, <<"erlang"/utf8>>, <<"display"/utf8>>, [{'Idris.Compiler.Erlang.IR.ErlExpr.ELocal', V1, V10} | []])), {'Idris.Data.Vect.::', ('nested--5559-2837--in--un--genHalt'(V2, V1, V0, V1, 127)), {'Idris.Data.Vect.Nil'}}}}}} end end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end.
'un--genDoubleToString'(V0, V1) -> begin (V2 = ('un--genList'(V0, [{'Idris.Compiler.Erlang.IR.ErlExpr.ETuple', V0, [{'Idris.Compiler.Erlang.IR.ErlExpr.EAtom', V0, <<"decimals"/utf8>>} | [{'Idris.Compiler.Erlang.IR.ErlExpr.EInteger', V0, 10} | []]]} | [{'Idris.Compiler.Erlang.IR.ErlExpr.EAtom', V0, <<"compact"/utf8>>} | []]]))), ('un--genFunCall'(V0, <<"erlang"/utf8>>, <<"float_to_binary"/utf8>>, [V1 | [V2 | []]])) end.
'un--genDoubleToInteger'(V0, V1) -> ('un--genFunCall'(V0, <<"erlang"/utf8>>, <<"trunc"/utf8>>, [V1 | []])).
'un--genDoubleToInt'(V0, V1) -> ('un--genFunCall'(V0, <<"erlang"/utf8>>, <<"trunc"/utf8>>, [V1 | []])).
'un--genCurry'(V0, V1, V2, V3, V4) -> ('nested--5461-2746--in--un--curry'(V4, V3, V2, V1, V0, V1, V2, V3, V4, [])).
'un--genCharToString'(V0, V1) -> ('un--genFunCall'(V0, <<"unicode"/utf8>>, <<"characters_to_binary"/utf8>>, [('un--genList'(V0, [V1 | []])) | []])).
'un--genCharToInteger'(V0, V1) -> ('un--genValidChar'(V0, V1)).
'un--genCharToInt'(V0, V1) -> ('un--genValidChar'(V0, V1)).
'un--genBoolToInt'(V0, V1) -> {'Idris.Compiler.Erlang.IR.ErlExpr.EMatcherCase', V0, V1, [{'Idris.Compiler.Erlang.IR.ErlExpr.MConst', {'Idris.Compiler.Erlang.IR.ErlExpr.MExact', {'Idris.Compiler.Erlang.IR.ErlExpr.EAtom', V0, <<"false"/utf8>>}}, {'Idris.Compiler.Erlang.IR.ErlExpr.EInteger', V0, 0}} | []], {'Idris.Compiler.Erlang.IR.ErlExpr.EInteger', V0, 1}}.
'un--genAtomToString'(V0, V1) -> ('un--genFunCall'(V0, <<"erlang"/utf8>>, <<"atom_to_binary"/utf8>>, [V1 | [{'Idris.Compiler.Erlang.IR.ErlExpr.EAtom', V0, <<"utf8"/utf8>>} | []]])).
'un--genArgsToLocals'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> [{'Idris.Compiler.Erlang.IR.ErlExpr.ELocal', V0, V2} | ('un--genArgsToLocals'(V0, V3))] end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--genAppCurriedFun'(V0, V1, V2) -> case V2 of [] -> V1; [E0 | E1] -> (fun (V3, V4) -> ('un--genAppCurriedFun'(V0, {'Idris.Compiler.Erlang.IR.ErlExpr.EApp', V0, V1, [V3 | []]}, V4)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--addLocalVars'(V0, V1, V2, V3) -> case V1 of [] -> {'Idris.Prelude.Types.Right', {'Idris.Builtin.MkPair', V2, []}}; [E0 | E1] -> (fun (V4, V5) -> begin (V6 = ('un--addLocalVar'(V0, V4, V2, V3))), case V6 of {'Idris.Prelude.Types.Left', E2} -> (fun (V7) -> {'Idris.Prelude.Types.Left', V7} end(E2)); {'Idris.Prelude.Types.Right', E3} -> (fun (V8) -> case V8 of {'Idris.Builtin.MkPair', E4, E5} -> (fun (V9, V10) -> begin (V11 = ('un--addLocalVars'(V0, V5, V9, V3))), case V11 of {'Idris.Prelude.Types.Left', E6} -> (fun (V12) -> {'Idris.Prelude.Types.Left', V12} end(E6)); {'Idris.Prelude.Types.Right', E7} -> (fun (V13) -> case V13 of {'Idris.Builtin.MkPair', E8, E9} -> (fun (V14, V15) -> {'Idris.Prelude.Types.Right', {'Idris.Builtin.MkPair', V14, [V10 | V15]}} end(E8, E9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E7)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--addLocalVar'(V0, V1, V2, V3) -> begin (V4 = ('un--newLocalVar'(V0, V3))), case V4 of {'Idris.Prelude.Types.Left', E0} -> (fun (V5) -> {'Idris.Prelude.Types.Left', V5} end(E0)); {'Idris.Prelude.Types.Right', E1} -> (fun (V6) -> {'Idris.Prelude.Types.Right', {'Idris.Builtin.MkPair', ('Idris.Idris2.Libraries.Data.NameMap':'un--insert'(V1, V6, V2)), V6}} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end.
