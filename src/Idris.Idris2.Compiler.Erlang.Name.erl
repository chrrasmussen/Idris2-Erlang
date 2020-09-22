-module('Idris.Idris2.Compiler.Erlang.Name').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--constructorName-7706'/3,
  'case--moduleNameFunctionName-7676'/3,
  'case--isNameInCurrentModule-7653'/3,
  'case--currentModuleName-7640'/2,
  'case--moduleNameForNS-7621'/3,
  'case--max-7481'/3,
  'case--min-7467'/3,
  'case--compare-7341'/5,
  'dn--un--min_Ord__NamespaceInfo'/2,
  'dn--un--max_Ord__NamespaceInfo'/2,
  'dn--un--compare_Ord__OutputBundle'/2,
  'dn--un--compare_Ord__NamespaceInfo'/2,
  'dn--un--__Impl_Ord_NamespaceInfo'/0,
  'dn--un--__Impl_Eq_OutputBundle'/0,
  'dn--un--__Impl_Eq_NamespaceInfo'/0,
  'dn--un-->_Ord__NamespaceInfo'/2,
  'dn--un-->=_Ord__NamespaceInfo'/2,
  'dn--un--==_Eq__OutputBundle'/2,
  'dn--un--==_Eq__NamespaceInfo'/2,
  'dn--un--<_Ord__NamespaceInfo'/2,
  'dn--un--<=_Ord__NamespaceInfo'/2,
  'dn--un--/=_Eq__OutputBundle'/2,
  'dn--un--/=_Eq__NamespaceInfo'/2,
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
'case--constructorName-7706'(V0, V1, V2) -> case V2 of {'Idris.Core.Name.UN', E0} -> (fun (V3) -> V3 end(E0)); _ -> ('un--genName'(V2)) end.
'case--moduleNameFunctionName-7676'(V0, V1, V2) -> case V2 of {'Idris.Compiler.Erlang.Name.Concat', E0} -> (fun (V3) -> {'Idris.Builtin.MkPair', V3, ('un--genName'(V0))} end(E0)); {'Idris.Compiler.Erlang.Name.Split', E1, E2} -> (fun (V4, V5) -> {'Idris.Builtin.MkPair', ('un--moduleNameForName'(V1, V0)), ('un--genName'(('Idris.Idris2.Core.Name':'un--dropNS'(V0))))} end(E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--isNameInCurrentModule-7653'(V0, V1, V2) -> case V2 of {'Idris.Compiler.Erlang.Name.Concat', E0} -> (fun (V3) -> 0 end(E0)); {'Idris.Compiler.Erlang.Name.Split', E1, E2} -> (fun (V4, V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__String'(('un--moduleNameForName'(V1, V0)), ('un--currentModuleName'(V1)))) end(E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--currentModuleName-7640'(V0, V1) -> case V1 of {'Idris.Compiler.Erlang.Name.Concat', E0} -> (fun (V2) -> V2 end(E0)); {'Idris.Compiler.Erlang.Name.Split', E1, E2} -> (fun (V3, V4) -> ('un--moduleNameForNS'(V0, V4)) end(E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--moduleNameForNS-7621'(V0, V1, V2) -> case V2 of {'Idris.Compiler.Erlang.Name.Concat', E0} -> (fun (V3) -> V3 end(E0)); {'Idris.Compiler.Erlang.Name.Split', E1, E2} -> (fun (V4, V5) -> ('Idris.Idris2.Core.Name.Namespace':'dn--un--show_Show__Namespace'(('Idris.Idris2.Core.Name.Namespace':'un--<.>'(('Idris.Idris2.Core.Name.Namespace':'un--mkNamespace'(V4)), V0)))) end(E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-7481'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-7467'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--compare-7341'(V0, V1, V2, V3, V4) -> case V4 of 0 -> 0; 2 -> 2; 1 -> ('Idris.Idris2.Core.Name.Namespace':'dn--un--compare_Ord__Namespace'(V0, V2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--min_Ord__NamespaceInfo'(V0, V1) -> ('case--min-7467'(V1, V0, ('dn--un--<_Ord__NamespaceInfo'(V0, V1)))).
'dn--un--max_Ord__NamespaceInfo'(V0, V1) -> ('case--max-7481'(V1, V0, ('dn--un-->_Ord__NamespaceInfo'(V0, V1)))).
'dn--un--compare_Ord__OutputBundle'(V0, V1) -> case V0 of {'Idris.Compiler.Erlang.Name.Concat', E0} -> (fun (V2) -> case V1 of {'Idris.Compiler.Erlang.Name.Concat', E1} -> (fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord__String'(V2, V3)) end(E1)); {'Idris.Compiler.Erlang.Name.Split', E2, E3} -> (fun (V4, V5) -> 0 end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0)); {'Idris.Compiler.Erlang.Name.Split', E4, E5} -> (fun (V6, V7) -> case V1 of {'Idris.Compiler.Erlang.Name.Split', E6, E7} -> (fun (V8, V9) -> ('case--compare-7341'(V7, V6, V9, V8, ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord__String'(V6, V8)))) end(E6, E7)); {'Idris.Compiler.Erlang.Name.Concat', E8} -> (fun (V10) -> 2 end(E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E4, E5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--compare_Ord__NamespaceInfo'(V0, V1) -> ('dn--un--compare_Ord__OutputBundle'(V0, V1)).
'dn--un--__Impl_Ord_NamespaceInfo'() -> {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__NamespaceInfo'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__NamespaceInfo'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord__NamespaceInfo'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord__NamespaceInfo'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord__NamespaceInfo'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord__NamespaceInfo'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord__NamespaceInfo'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord__NamespaceInfo'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord__NamespaceInfo'(V16, V17)) end end}.
'dn--un--__Impl_Eq_OutputBundle'() -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__OutputBundle'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__OutputBundle'(V2, V3)) end end}.
'dn--un--__Impl_Eq_NamespaceInfo'() -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__NamespaceInfo'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__NamespaceInfo'(V2, V3)) end end}.
'dn--un-->_Ord__NamespaceInfo'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__NamespaceInfo'(V0, V1)), 2)).
'dn--un-->=_Ord__NamespaceInfo'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__NamespaceInfo'(V0, V1)), 0)).
'dn--un--==_Eq__OutputBundle'(V0, V1) -> case V0 of {'Idris.Compiler.Erlang.Name.Concat', E0} -> (fun (V2) -> case V1 of {'Idris.Compiler.Erlang.Name.Concat', E1} -> (fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__String'(V2, V3)) end(E1)); _ -> 1 end end(E0)); {'Idris.Compiler.Erlang.Name.Split', E2, E3} -> (fun (V4, V5) -> case V1 of {'Idris.Compiler.Erlang.Name.Split', E4, E5} -> (fun (V6, V7) -> ('Idris.Idris2.Prelude.Basics':'un--&&'(('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__String'(V4, V6)), fun () -> ('Idris.Idris2.Core.Name.Namespace':'dn--un--==_Eq__Namespace'(V5, V7)) end)) end(E4, E5)); _ -> 1 end end(E2, E3)); _ -> 1 end.
'dn--un--==_Eq__NamespaceInfo'(V0, V1) -> ('dn--un--==_Eq__OutputBundle'(V0, V1)).
'dn--un--<_Ord__NamespaceInfo'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__NamespaceInfo'(V0, V1)), 0)).
'dn--un--<=_Ord__NamespaceInfo'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__NamespaceInfo'(V0, V1)), 2)).
'dn--un--/=_Eq__OutputBundle'(V0, V1) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__OutputBundle'(V0, V1)))).
'dn--un--/=_Eq__NamespaceInfo'(V0, V1) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__NamespaceInfo'(V0, V1)))).
'un--moduleNameFunctionName'(V0, V1) -> ('case--moduleNameFunctionName-7676'(V1, V0, V0)).
'un--moduleNameForName'(V0, V1) -> ('un--moduleNameForNS'(V0, ('un--getNamespace'(V1)))).
'un--moduleNameForNS'(V0, V1) -> ('case--moduleNameForNS-7621'(V1, V0, V0)).
'un--isNameInCurrentModule'(V0, V1) -> ('case--isNameInCurrentModule-7653'(V1, V0, V0)).
'un--getNamespace'(V0) -> case V0 of {'Idris.Core.Name.NS', E0, E1} -> (fun (V1, V2) -> V1 end(E0, E1)); _ -> ('Idris.Idris2.Core.Name.Namespace':'un--emptyNS'()) end.
'un--genName'(V0) -> case V0 of {'Idris.Core.Name.NS', E0, E1} -> (fun (V1, V2) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"ns--"/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('Idris.Idris2.Core.Name.Namespace':'dn--un--show_Show__Namespace'(V1)), ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"--"/utf8>>, ('un--genName'(V2)))))))) end(E0, E1)); {'Idris.Core.Name.UN', E2} -> (fun (V3) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"un--"/utf8>>, V3)) end(E2)); {'Idris.Core.Name.MN', E3, E4} -> (fun (V4, V5) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(V4, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"_"/utf8>>, ('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Int'(V5)))))) end(E3, E4)); {'Idris.Core.Name.PV', E5, E6} -> (fun (V6, V7) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"pat--"/utf8>>, ('un--genName'(V6)))) end(E5, E6)); {'Idris.Core.Name.DN', E7, E8} -> (fun (V8, V9) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"dn--"/utf8>>, ('un--genName'(V9)))) end(E7, E8)); {'Idris.Core.Name.Nested', E9, E10} -> (fun (V10, V11) -> case V10 of {'Idris.Builtin.MkPair', E11, E12} -> (fun (V12, V13) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"nested--"/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Int'(V12)), ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"-"/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Int'(V13)), ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"--in--"/utf8>>, ('un--genName'(V11)))))))))))) end(E11, E12)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E9, E10)); {'Idris.Core.Name.CaseBlock', E13, E14} -> (fun (V14, V15) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"case--"/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(V14, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"-"/utf8>>, ('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Int'(V15)))))))) end(E13, E14)); {'Idris.Core.Name.WithBlock', E15, E16} -> (fun (V16, V17) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"with--"/utf8>>, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(V16, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"-"/utf8>>, ('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Int'(V17)))))))) end(E15, E16)); {'Idris.Core.Name.Resolved', E17} -> (fun (V18) -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"fn--"/utf8>>, ('Idris.Idris2.Prelude.Show':'dn--un--show_Show__Int'(V18)))) end(E17)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--erlangTypesNS'() -> ('Idris.Idris2.Core.Name.Namespace':'un--mkNamespace'(<<"Erlang.Types"/utf8>>)).
'un--erlangProperListNS'() -> ('Idris.Idris2.Core.Name.Namespace':'un--mkNamespace'(<<"Erlang.Types.ProperList"/utf8>>)).
'un--erlangMaybeImproperListNS'() -> ('Idris.Idris2.Core.Name.Namespace':'un--mkNamespace'(<<"Erlang.Types.MaybeImproperList"/utf8>>)).
'un--erlangIONS'() -> ('Idris.Idris2.Core.Name.Namespace':'un--mkNamespace'(<<"Erlang.IO"/utf8>>)).
'un--currentModuleName'(V0) -> ('case--currentModuleName-7640'(V0, V0)).
'un--constructorName'(V0) -> begin (V1 = ('Idris.Idris2.Core.Name.Namespace':'un--<.>'(('Idris.Idris2.Core.Name.Namespace':'un--mkNamespace'(<<"Idris"/utf8>>)), ('un--getNamespace'(V0))))), begin (V2 = ('case--constructorName-7706'(V0, V1, ('Idris.Idris2.Core.Name':'un--dropNS'(V0))))), ('Idris.Idris2.Prelude.Types.Strings':'un--++'(('Idris.Idris2.Core.Name.Namespace':'dn--un--show_Show__Namespace'(V1)), ('Idris.Idris2.Prelude.Types.Strings':'un--++'(<<"."/utf8>>, V2)))) end end.
