-module('Idris.Idris2.Compiler.Erlang.Name').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'case--constructorName-3136'/3,
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
  'un--serialiseCoreNS'/0,
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
'case--constructorName-3136'(V0, V1, V2) -> case V2 of {'Core.Name.UN', V3} -> case V3 of {'Core.Name.Basic', V4} -> V4; _ -> ('un--genName'(V2)) end; _ -> ('un--genName'(V2)) end.
'dn--un--min_Ord_NamespaceInfo'(V0, V1) -> case ('dn--un--<_Ord_NamespaceInfo'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--max_Ord_NamespaceInfo'(V0, V1) -> case ('dn--un-->_Ord_NamespaceInfo'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--compare_Ord_OutputBundle'(V0, V1) -> case V0 of {'Compiler.Erlang.Name.Concat', V2} -> case V1 of {'Compiler.Erlang.Name.Concat', V3} -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_String'(V2, V3)); {'Compiler.Erlang.Name.Split', V4, V5} -> 0 end; {'Compiler.Erlang.Name.Split', V6, V7} -> case V1 of {'Compiler.Erlang.Name.Split', V8, V9} -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_String'(V6, V8)) of 0 -> 0; 2 -> 2; 1 -> ('Idris.Idris2.Core.Name.Namespace':'dn--un--compare_Ord_Namespace'(V7, V9)) end; {'Compiler.Erlang.Name.Concat', V10} -> 2 end end.
'dn--un--compare_Ord_NamespaceInfo'(V0, V1) -> begin (V2 = V0), begin (V3 = V1), ('dn--un--compare_Ord_OutputBundle'(V2, V3)) end end.
'dn--un--__Impl_Ord_NamespaceInfo'() -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_NamespaceInfo'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_NamespaceInfo'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_NamespaceInfo'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_NamespaceInfo'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_NamespaceInfo'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_NamespaceInfo'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_NamespaceInfo'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_NamespaceInfo'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_NamespaceInfo'(V16, V17)) end end}.
'dn--un--__Impl_Eq_OutputBundle'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_OutputBundle'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_OutputBundle'(V2, V3)) end end}.
'dn--un--__Impl_Eq_NamespaceInfo'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_NamespaceInfo'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_NamespaceInfo'(V2, V3)) end end}.
'dn--un-->_Ord_NamespaceInfo'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_NamespaceInfo'(V0, V1)), 2)).
'dn--un-->=_Ord_NamespaceInfo'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_NamespaceInfo'(V0, V1)), 0)).
'dn--un--==_Eq_OutputBundle'(V0, V1) -> case V0 of {'Compiler.Erlang.Name.Concat', V2} -> case V1 of {'Compiler.Erlang.Name.Concat', V3} -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V2, V3)); _ -> 0 end; {'Compiler.Erlang.Name.Split', V4, V5} -> case V1 of {'Compiler.Erlang.Name.Split', V6, V7} -> case ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V4, V6)) of 1 -> ('Idris.Idris2.Core.Name.Namespace':'dn--un--==_Eq_Namespace'(V5, V7)); 0 -> 0 end; _ -> 0 end; _ -> 0 end.
'dn--un--==_Eq_NamespaceInfo'(V0, V1) -> begin (V2 = V0), begin (V3 = V1), ('dn--un--==_Eq_OutputBundle'(V2, V3)) end end.
'dn--un--<_Ord_NamespaceInfo'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_NamespaceInfo'(V0, V1)), 0)).
'dn--un--<=_Ord_NamespaceInfo'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_NamespaceInfo'(V0, V1)), 2)).
'dn--un--/=_Eq_OutputBundle'(V0, V1) -> case ('dn--un--==_Eq_OutputBundle'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_NamespaceInfo'(V0, V1) -> case ('dn--un--==_Eq_NamespaceInfo'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'un--serialiseCoreNS'() -> ('Idris.Idris2.Core.Name.Namespace':'un--mkNamespace'(<<"Data.Serialise.Core"/utf8>>)).
'un--moduleNameFunctionName'(V0, V1) -> case begin (V2 = V0), V2 end of {'Compiler.Erlang.Name.Concat', V3} -> {'Builtin.MkPair', V3, ('un--genName'(V1))}; {'Compiler.Erlang.Name.Split', V4, V5} -> {'Builtin.MkPair', ('un--moduleNameForName'(V0, V1)), ('un--genName'(('Idris.Idris2.Core.Name':'un--dropNS'(V1))))} end.
'un--moduleNameForName'(V0, V1) -> ('un--moduleNameForNS'(V0, ('un--getNamespace'(V1)))).
'un--moduleNameForNS'(V0, V1) -> case begin (V2 = V0), V2 end of {'Compiler.Erlang.Name.Concat', V3} -> V3; {'Compiler.Erlang.Name.Split', V4, V5} -> ('Idris.Idris2.Core.Name.Namespace':'dn--un--show_Show_Namespace'(('Idris.Idris2.Core.Name.Namespace':'un--<.>'(('Idris.Idris2.Core.Name.Namespace':'un--mkNamespace'(V4)), V1)))) end.
'un--isNameInCurrentModule'(V0, V1) -> case begin (V2 = V0), V2 end of {'Compiler.Erlang.Name.Concat', V3} -> 1; {'Compiler.Erlang.Name.Split', V4, V5} -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(('un--moduleNameForName'(V0, V1)), ('un--currentModuleName'(V0)))) end.
'un--getNamespace'(V0) -> case V0 of {'Core.Name.NS', V1, V2} -> V1; _ -> ('Idris.Idris2.Core.Name.Namespace':'un--emptyNS'()) end.
'un--genName'(V0) -> case V0 of {'Core.Name.NS', V1, V2} -> <<<<"ns--"/utf8>>/binary, <<('Idris.Idris2.Core.Name.Namespace':'dn--un--show_Show_Namespace'(V1))/binary, <<<<"--"/utf8>>/binary, ('un--genName'(V2))/binary>>/binary>>/binary>>; {'Core.Name.UN', V3} -> <<<<"un--"/utf8>>/binary, ('Idris.Idris2.Core.Name':'dn--un--show_Show_UserName'(V3))/binary>>; {'Core.Name.MN', V4, V5} -> <<<<"mn--"/utf8>>/binary, <<V4/binary, <<<<"-"/utf8>>/binary, ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(V5))/binary>>/binary>>/binary>>; {'Core.Name.PV', V6, V7} -> <<<<"pat--"/utf8>>/binary, ('un--genName'(V6))/binary>>; {'Core.Name.DN', V8, V9} -> <<<<"dn--"/utf8>>/binary, ('un--genName'(V9))/binary>>; {'Core.Name.Nested', V10, V11} -> case V10 of {'Builtin.MkPair', V12, V13} -> <<<<"nested--"/utf8>>/binary, <<('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(V12))/binary, <<<<"-"/utf8>>/binary, <<('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(V13))/binary, <<<<"--in--"/utf8>>/binary, ('un--genName'(V11))/binary>>/binary>>/binary>>/binary>>/binary>> end; {'Core.Name.CaseBlock', V14, V15} -> <<<<"case--"/utf8>>/binary, <<V14/binary, <<<<"-"/utf8>>/binary, ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(V15))/binary>>/binary>>/binary>>; {'Core.Name.WithBlock', V16, V17} -> <<<<"with--"/utf8>>/binary, <<V16/binary, <<<<"-"/utf8>>/binary, ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(V17))/binary>>/binary>>/binary>>; {'Core.Name.Resolved', V18} -> <<<<"fn--"/utf8>>/binary, ('Idris.Idris2.Prelude.Show':'dn--un--show_Show_Int'(V18))/binary>> end.
'un--erlangTypesNS'() -> ('Idris.Idris2.Core.Name.Namespace':'un--mkNamespace'(<<"Erlang.Types"/utf8>>)).
'un--erlangProperListNS'() -> ('Idris.Idris2.Core.Name.Namespace':'un--mkNamespace'(<<"Erlang.Types.ProperList"/utf8>>)).
'un--erlangMaybeImproperListNS'() -> ('Idris.Idris2.Core.Name.Namespace':'un--mkNamespace'(<<"Erlang.Types.MaybeImproperList"/utf8>>)).
'un--erlangIONS'() -> ('Idris.Idris2.Core.Name.Namespace':'un--mkNamespace'(<<"Erlang.IO"/utf8>>)).
'un--currentModuleName'(V0) -> case begin (V1 = V0), V1 end of {'Compiler.Erlang.Name.Concat', V2} -> V2; {'Compiler.Erlang.Name.Split', V3, V4} -> ('un--moduleNameForNS'(V0, V4)) end.
'un--constructorName'(V0) -> begin (V1 = ('un--getNamespace'(V0))), begin (V2 = ('case--constructorName-3136'(V0, V1, ('Idris.Idris2.Core.Name':'un--dropNS'(V0))))), <<('Idris.Idris2.Core.Name.Namespace':'dn--un--show_Show_Namespace'(V1))/binary, <<<<"."/utf8>>/binary, V2/binary>>/binary>> end end.
