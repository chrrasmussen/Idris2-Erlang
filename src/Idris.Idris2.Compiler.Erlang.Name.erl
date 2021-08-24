-module('Idris.Idris2.Compiler.Erlang.Name').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--constructorName-1947'/3,
  'dn--un--min_Ord_NamespaceInfo'/2,
  'dn--un--max_Ord_NamespaceInfo'/2,
  'dn--un--compare_Ord_OutputBundle'/2,
  'dn--un--compare_Ord_NamespaceInfo'/2,
  'dn--un--__Impl_Ord_NamespaceInfo'/0,
  'dn--un--__Impl_Eq_OutputBundle'/0,
  'dn--un--__Impl_Eq_NamespaceInfo'/0,
  'dn--un-->_Ord_NamespaceInfo'/2,
  'dn--un-->=_Ord_NamespaceInfo'/2,
  'dn--un--==_Eq_OutputBundle'/2,
  'dn--un--==_Eq_NamespaceInfo'/2,
  'dn--un--<_Ord_NamespaceInfo'/2,
  'dn--un--<=_Ord_NamespaceInfo'/2,
  'dn--un--/=_Eq_OutputBundle'/2,
  'dn--un--/=_Eq_NamespaceInfo'/2,
  'un--moduleNameFunctionName'/2,
  'un--moduleNameForName'/2,
  'un--moduleNameForNS'/2,
  'un--isNameInCurrentModule'/2,
  'un--getNamespace'/1,
  'un--genName'/1,
  'un--erlangTypesNS'/0,
  'un--erlangProperListNS'/0,
  'un--erlangMaybeImproperListNS'/0,
  'un--erlangIONS'/0,
  'un--currentModuleName'/1,
  'un--constructorName'/1
]).
'case--constructorName-1947'(V0, V1, V2) -> case V2 of {'Idris.Core.Name.UN', E0} -> (fun (V3) -> V3 end(E0)); _ -> ('un--genName'(V2)) end.
'dn--un--min_Ord_NamespaceInfo'(V0, V1) -> case ('dn--un--<_Ord_NamespaceInfo'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_NamespaceInfo'(V0, V1) -> case ('dn--un-->_Ord_NamespaceInfo'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--compare_Ord_OutputBundle'(V0, V1) -> case V0 of {'Idris.Compiler.Erlang.Name.Concat', E0} -> (fun (V2) -> case V1 of {'Idris.Compiler.Erlang.Name.Concat', E1} -> (fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_String'(V2, V3)) end(E1)); {'Idris.Compiler.Erlang.Name.Split', E2, E3} -> (fun (V4, V5) -> 0 end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Compiler.Erlang.Name.Split', E4, E5} -> (fun (V6, V7) -> case V1 of {'Idris.Compiler.Erlang.Name.Split', E6, E7} -> (fun (V8, V9) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_String'(V6, V8)) of 0 -> 0; 2 -> 2; 1 -> ('Idris.Idris2.Core.Name.Namespace':'dn--un--compare_Ord_Namespace'(V7, V9)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E6, E7)); {'Idris.Compiler.Erlang.Name.Concat', E8} -> (fun (V10) -> 2 end(E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--compare_Ord_NamespaceInfo'(V0, V1) -> ('dn--un--compare_Ord_OutputBundle'(V0, V1)).
'dn--un--__Impl_Ord_NamespaceInfo'() -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_NamespaceInfo'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_NamespaceInfo'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_NamespaceInfo'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_NamespaceInfo'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_NamespaceInfo'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_NamespaceInfo'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_NamespaceInfo'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_NamespaceInfo'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_NamespaceInfo'(V16, V17)) end end}.
'dn--un--__Impl_Eq_OutputBundle'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_OutputBundle'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_OutputBundle'(V2, V3)) end end}.
'dn--un--__Impl_Eq_NamespaceInfo'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_NamespaceInfo'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_NamespaceInfo'(V2, V3)) end end}.
'dn--un-->_Ord_NamespaceInfo'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_NamespaceInfo'(V0, V1)), 2)).
'dn--un-->=_Ord_NamespaceInfo'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_NamespaceInfo'(V0, V1)), 0)).
'dn--un--==_Eq_OutputBundle'(V0, V1) -> case V0 of {'Idris.Compiler.Erlang.Name.Concat', E0} -> (fun (V2) -> case V1 of {'Idris.Compiler.Erlang.Name.Concat', E1} -> (fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V2, V3)) end(E1)); _ -> 0 end end(E0)); {'Idris.Compiler.Erlang.Name.Split', E2, E3} -> (fun (V4, V5) -> case V1 of {'Idris.Compiler.Erlang.Name.Split', E4, E5} -> (fun (V6, V7) -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V4, V6)) of 1 -> ('Idris.Idris2.Core.Name.Namespace':'dn--un--==_Eq_Namespace'(V5, V7)); 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E4, E5)); _ -> 0 end end(E2, E3)); _ -> 0 end.
'dn--un--==_Eq_NamespaceInfo'(V0, V1) -> ('dn--un--==_Eq_OutputBundle'(V0, V1)).
'dn--un--<_Ord_NamespaceInfo'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_NamespaceInfo'(V0, V1)), 0)).
'dn--un--<=_Ord_NamespaceInfo'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_NamespaceInfo'(V0, V1)), 2)).
'dn--un--/=_Eq_OutputBundle'(V0, V1) -> case ('dn--un--==_Eq_OutputBundle'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--/=_Eq_NamespaceInfo'(V0, V1) -> case ('dn--un--==_Eq_NamespaceInfo'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--moduleNameFunctionName'(V0, V1) -> case V0 of {'Idris.Compiler.Erlang.Name.Concat', E0} -> (fun (V2) -> {'Idris.Builtin.MkPair', V2, ('un--genName'(V1))} end(E0)); {'Idris.Compiler.Erlang.Name.Split', E1, E2} -> (fun (V3, V4) -> {'Idris.Builtin.MkPair', ('un--moduleNameForName'(V0, V1)), ('un--genName'(('Idris.Idris2.Core.Name':'un--dropNS'(V1))))} end(E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--moduleNameForName'(V0, V1) -> ('un--moduleNameForNS'(V0, ('un--getNamespace'(V1)))).
'un--moduleNameForNS'(V0, V1) -> case V0 of {'Idris.Compiler.Erlang.Name.Concat', E0} -> (fun (V2) -> V2 end(E0)); {'Idris.Compiler.Erlang.Name.Split', E1, E2} -> (fun (V3, V4) -> ('Idris.Idris2.Core.Name.Namespace':'dn--un--show_Show_Namespace'(('Idris.Idris2.Core.Name.Namespace':'un--<.>'(('Idris.Idris2.Core.Name.Namespace':'un--mkNamespace'(V3)), V1)))) end(E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--isNameInCurrentModule'(V0, V1) -> case V0 of {'Idris.Compiler.Erlang.Name.Concat', E0} -> (fun (V2) -> 1 end(E0)); {'Idris.Compiler.Erlang.Name.Split', E1, E2} -> (fun (V3, V4) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(('un--moduleNameForName'(V0, V1)), ('un--currentModuleName'(V0)))) end(E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--getNamespace'(V0) -> case V0 of {'Idris.Core.Name.NS', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('Idris.Idris2.Core.Name.Namespace':'un--emptyNS'()) end.
'un--genName'(V0) -> case V0 of {'Idris.Core.Name.NS', E0, E1} -> (fun (V1, V2) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"ns--"/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(('Idris.Idris2.Core.Name.Namespace':'dn--un--show_Show_Namespace'(V1)), ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"--"/utf8>>, ('un--genName'(V2)))))))) end(E0, E1)); {'Idris.Core.Name.UN', E2} -> (fun (V3) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"un--"/utf8>>, V3)) end(E2)); {'Idris.Core.Name.MN', E3, E4} -> (fun (V4, V5) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(V4, ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"_"/utf8>>, ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(V5)))))) end(E3, E4)); {'Idris.Core.Name.PV', E5, E6} -> (fun (V6, V7) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"pat--"/utf8>>, ('un--genName'(V6)))) end(E5, E6)); {'Idris.Core.Name.DN', E7, E8} -> (fun (V8, V9) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"dn--"/utf8>>, ('un--genName'(V9)))) end(E7, E8)); {'Idris.Core.Name.RF', E9} -> (fun (V10) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"rf--"/utf8>>, V10)) end(E9)); {'Idris.Core.Name.Nested', E10, E11} -> (fun (V11, V12) -> case V11 of {'Idris.Builtin.MkPair', E12, E13} -> (fun (V13, V14) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"nested--"/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(V13)), ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"-"/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(V14)), ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"--in--"/utf8>>, ('un--genName'(V12)))))))))))) end(E12, E13)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E10, E11)); {'Idris.Core.Name.CaseBlock', E14, E15} -> (fun (V15, V16) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"case--"/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(V15, ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"-"/utf8>>, ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(V16)))))))) end(E14, E15)); {'Idris.Core.Name.WithBlock', E16, E17} -> (fun (V17, V18) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"with--"/utf8>>, ('Idris.Idris2.Prelude.Types.String':'un--++'(V17, ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"-"/utf8>>, ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(V18)))))))) end(E16, E17)); {'Idris.Core.Name.Resolved', E18} -> (fun (V19) -> ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"fn--"/utf8>>, ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(V19)))) end(E18)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--erlangTypesNS'() -> ('Idris.Idris2.Core.Name.Namespace':'un--mkNamespace'(<<"Erlang.Types"/utf8>>)).
'un--erlangProperListNS'() -> ('Idris.Idris2.Core.Name.Namespace':'un--mkNamespace'(<<"Erlang.Types.ProperList"/utf8>>)).
'un--erlangMaybeImproperListNS'() -> ('Idris.Idris2.Core.Name.Namespace':'un--mkNamespace'(<<"Erlang.Types.MaybeImproperList"/utf8>>)).
'un--erlangIONS'() -> ('Idris.Idris2.Core.Name.Namespace':'un--mkNamespace'(<<"Erlang.IO"/utf8>>)).
'un--currentModuleName'(V0) -> case V0 of {'Idris.Compiler.Erlang.Name.Concat', E0} -> (fun (V1) -> V1 end(E0)); {'Idris.Compiler.Erlang.Name.Split', E1, E2} -> (fun (V2, V3) -> ('un--moduleNameForNS'(V0, V3)) end(E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--constructorName'(V0) -> begin (V1 = ('Idris.Idris2.Core.Name.Namespace':'un--<.>'(('Idris.Idris2.Core.Name.Namespace':'un--mkNamespace'(<<"Idris"/utf8>>)), ('un--getNamespace'(V0))))), begin (V2 = ('case--constructorName-1947'(V0, V1, ('Idris.Idris2.Core.Name':'un--dropNS'(V0))))), ('Idris.Idris2.Prelude.Types.String':'un--++'(('Idris.Idris2.Core.Name.Namespace':'dn--un--show_Show_Namespace'(V1)), ('Idris.Idris2.Prelude.Types.String':'un--++'(<<"."/utf8>>, V2)))) end end.
