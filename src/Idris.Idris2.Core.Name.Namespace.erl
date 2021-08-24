-module('Idris.Idris2.Core.Name.Namespace').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--decEq-5764'/3,
  'nested--3989-5448--in--un--go'/2,
  'nested--3917-5381--in--un--go'/4,
  'dn--un--show_Show_Namespace'/1,
  'dn--un--show_Show_ModuleIdent'/1,
  'dn--un--showPrec_Show_Namespace'/2,
  'dn--un--showPrec_Show_ModuleIdent'/2,
  'dn--un--pretty_Pretty_Namespace'/1,
  'dn--un--pretty_Pretty_ModuleIdent'/1,
  'dn--un--prettyPrec_Pretty_Namespace'/2,
  'dn--un--prettyPrec_Pretty_ModuleIdent'/2,
  'dn--un--min_Ord_Namespace'/2,
  'dn--un--min_Ord_ModuleIdent'/2,
  'dn--un--max_Ord_Namespace'/2,
  'dn--un--max_Ord_ModuleIdent'/2,
  'dn--un--decEq_DecEq_Namespace'/2,
  'dn--un--compare_Ord_Namespace'/2,
  'dn--un--compare_Ord_ModuleIdent'/2,
  'dn--un--__Impl_Show_Namespace'/0,
  'dn--un--__Impl_Show_ModuleIdent'/0,
  'dn--un--__Impl_Pretty_Namespace'/0,
  'dn--un--__Impl_Pretty_ModuleIdent'/0,
  'dn--un--__Impl_Ord_Namespace'/0,
  'dn--un--__Impl_Ord_ModuleIdent'/0,
  'dn--un--__Impl_Eq_Namespace'/0,
  'dn--un--__Impl_Eq_ModuleIdent'/0,
  'dn--un--__Impl_DecEq_Namespace'/2,
  'dn--un-->_Ord_Namespace'/2,
  'dn--un-->_Ord_ModuleIdent'/2,
  'dn--un-->=_Ord_Namespace'/2,
  'dn--un-->=_Ord_ModuleIdent'/2,
  'dn--un--==_Eq_Namespace'/2,
  'dn--un--==_Eq_ModuleIdent'/2,
  'dn--un--<_Ord_Namespace'/2,
  'dn--un--<_Ord_ModuleIdent'/2,
  'dn--un--<=_Ord_Namespace'/2,
  'dn--un--<=_Ord_ModuleIdent'/2,
  'dn--un--/=_Eq_Namespace'/2,
  'dn--un--/=_Eq_ModuleIdent'/2,
  'un--unsafeUnfoldNamespace'/1,
  'un--unsafeUnfoldModuleIdent'/1,
  'un--unsafeFoldNamespace'/1,
  'un--unsafeFoldModuleIdent'/1,
  'un--typesNS'/0,
  'un--showSep'/2,
  'un--showNSWithSep'/2,
  'un--replace'/3,
  'un--reflectionTTNS'/0,
  'un--reflectionTTImpNS'/0,
  'un--reflectionNS'/0,
  'un--primIONS'/0,
  'un--preludeNS'/0,
  'un--partialEvalNS'/0,
  'un--numNS'/0,
  'un--nsAsModuleIdent'/1,
  'un--natNS'/0,
  'un--mkNestedNamespace'/2,
  'un--mkNamespacedIdent'/1,
  'un--mkNamespace'/1,
  'un--mkNSInjective'/1,
  'un--mkModuleIdentFromString'/1,
  'un--mkModuleIdent'/2,
  'un--miAsNamespace'/1,
  'un--mainNS'/0,
  'un--isParentOf'/2,
  'un--isApproximationOf'/2,
  'un--ioNS'/0,
  'un--eqOrdNS'/0,
  'un--emptyNS'/0,
  'un--dpairNS'/0,
  'un--builtinNS'/0,
  'un--basicsNS'/0,
  'un--allParents'/1,
  'un--<.>'/2
]).
'with--decEq-5764'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.No', E0} -> (fun (V3) -> {'Idris.Prelude.Types.No', fun (V4) -> (V3(('un--mkNSInjective'(V4)))) end} end(E0)); {'Idris.Prelude.Types.Yes', E1} -> (fun (V5) -> {'Idris.Prelude.Types.Yes', ('Idris.Idris2.Prelude.Basics':'un--cong'(V5))} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--3989-5448--in--un--go'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> [[V2 | V3] | ('nested--3989-5448--in--un--go'(V0, V3))] end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--3917-5381--in--un--go'(V0, V1, V2, V3) -> case V3 of [] -> []; [E0 | E1] -> (fun (V4, V5) -> case ('Idris.Idris2.Prelude.Types':'dn--un--==_Eq_(List $a)'({'Idris.Prelude.EqOrd.MkEq', fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_String'(V8, V9)) end end}, V0, [V4 | V5])) of 1 -> V1; 0 -> [V4 | ('nested--3917-5381--in--un--go'(V0, V1, V2, V5))]; _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show_Namespace'(V0) -> ('un--showNSWithSep'(<<"."/utf8>>, V0)).
'dn--un--show_Show_ModuleIdent'(V0) -> ('un--showNSWithSep'(<<"."/utf8>>, ('un--miAsNamespace'(V0)))).
'dn--un--showPrec_Show_Namespace'(V0, V1) -> ('dn--un--show_Show_Namespace'(V1)).
'dn--un--showPrec_Show_ModuleIdent'(V0, V1) -> ('dn--un--show_Show_ModuleIdent'(V1)).
'dn--un--pretty_Pretty_Namespace'(V0) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--concatWith'(fun (V1) -> fun (V2) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--surround'(('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Symbols':'un--dot'()), V1, V2)) end end, ('Idris.Idris2.Prelude.Interfaces':'un--<$>'(fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor_List'(V5, V6)) end end end end, fun (V7) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_String'(V7)) end, ('Idris.Idris2.Data.List':'un--reverse'(V0)))))).
'dn--un--pretty_Pretty_ModuleIdent'(V0) -> ('dn--un--pretty_Pretty_Namespace'(('un--miAsNamespace'(V0)))).
'dn--un--prettyPrec_Pretty_Namespace'(V0, V1) -> ('dn--un--pretty_Pretty_Namespace'(V1)).
'dn--un--prettyPrec_Pretty_ModuleIdent'(V0, V1) -> ('dn--un--pretty_Pretty_ModuleIdent'(V1)).
'dn--un--min_Ord_Namespace'(V0, V1) -> case ('dn--un--<_Ord_Namespace'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--min_Ord_ModuleIdent'(V0, V1) -> case ('dn--un--<_Ord_ModuleIdent'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_Namespace'(V0, V1) -> case ('dn--un-->_Ord_Namespace'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--max_Ord_ModuleIdent'(V0, V1) -> case ('dn--un-->_Ord_ModuleIdent'(V0, V1)) of 1 -> V0; 0 -> V1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--decEq_DecEq_Namespace'(V0, V1) -> ('with--decEq-5764'(V0, V1, ('Idris.Idris2.Decidable.Equality':'dn--un--decEq_DecEq_(List $a)'(fun (V2) -> fun (V3) -> ('Idris.Idris2.Decidable.Equality':'dn--un--decEq_DecEq_String'(V2, V3)) end end, V0, V1)))).
'dn--un--compare_Ord_Namespace'(V0, V1) -> ('Idris.Idris2.Prelude.Types':'dn--un--compare_Ord_(List $a)'({'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_String'(V4, V5)) end end}, fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_String'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_String'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord_String'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord_String'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord_String'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--max_Ord_String'(V16, V17)) end end, fun (V18) -> fun (V19) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--min_Ord_String'(V18, V19)) end end}, V0, V1)).
'dn--un--compare_Ord_ModuleIdent'(V0, V1) -> ('Idris.Idris2.Prelude.Types':'dn--un--compare_Ord_(List $a)'({'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_String'(V4, V5)) end end}, fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_String'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_String'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord_String'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord_String'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord_String'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--max_Ord_String'(V16, V17)) end end, fun (V18) -> fun (V19) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--min_Ord_String'(V18, V19)) end end}, V0, V1)).
'dn--un--__Impl_Show_Namespace'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Namespace'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Namespace'(V1, V2)) end end}.
'dn--un--__Impl_Show_ModuleIdent'() -> {'Idris.Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_ModuleIdent'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_ModuleIdent'(V1, V2)) end end}.
'dn--un--__Impl_Pretty_Namespace'() -> {'Idris.Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> fun (V1) -> ('dn--un--pretty_Pretty_Namespace'(V1)) end end, fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--prettyPrec_Pretty_Namespace'(V3, V4)) end end end}.
'dn--un--__Impl_Pretty_ModuleIdent'() -> {'Idris.Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> fun (V1) -> ('dn--un--pretty_Pretty_ModuleIdent'(V1)) end end, fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--prettyPrec_Pretty_ModuleIdent'(V3, V4)) end end end}.
'dn--un--__Impl_Ord_Namespace'() -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Namespace'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Namespace'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Namespace'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Namespace'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Namespace'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Namespace'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Namespace'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Namespace'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Namespace'(V16, V17)) end end}.
'dn--un--__Impl_Ord_ModuleIdent'() -> {'Idris.Prelude.EqOrd.MkOrd', {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_ModuleIdent'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_ModuleIdent'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_ModuleIdent'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_ModuleIdent'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_ModuleIdent'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_ModuleIdent'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_ModuleIdent'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_ModuleIdent'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_ModuleIdent'(V16, V17)) end end}.
'dn--un--__Impl_Eq_Namespace'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Namespace'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Namespace'(V2, V3)) end end}.
'dn--un--__Impl_Eq_ModuleIdent'() -> {'Idris.Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_ModuleIdent'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_ModuleIdent'(V2, V3)) end end}.
'dn--un--__Impl_DecEq_Namespace'(V0, V1) -> ('dn--un--decEq_DecEq_Namespace'(V0, V1)).
'dn--un-->_Ord_Namespace'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_Namespace'(V0, V1)), 2)).
'dn--un-->_Ord_ModuleIdent'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_ModuleIdent'(V0, V1)), 2)).
'dn--un-->=_Ord_Namespace'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_Namespace'(V0, V1)), 0)).
'dn--un-->=_Ord_ModuleIdent'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_ModuleIdent'(V0, V1)), 0)).
'dn--un--==_Eq_Namespace'(V0, V1) -> ('Idris.Idris2.Prelude.Types':'dn--un--==_Eq_(List $a)'({'Idris.Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_String'(V4, V5)) end end}, V0, V1)).
'dn--un--==_Eq_ModuleIdent'(V0, V1) -> ('Idris.Idris2.Prelude.Types':'dn--un--==_Eq_(List $a)'({'Idris.Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_String'(V4, V5)) end end}, V0, V1)).
'dn--un--<_Ord_Namespace'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_Namespace'(V0, V1)), 0)).
'dn--un--<_Ord_ModuleIdent'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_ModuleIdent'(V0, V1)), 0)).
'dn--un--<=_Ord_Namespace'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_Namespace'(V0, V1)), 2)).
'dn--un--<=_Ord_ModuleIdent'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_ModuleIdent'(V0, V1)), 2)).
'dn--un--/=_Eq_Namespace'(V0, V1) -> case ('dn--un--==_Eq_Namespace'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--/=_Eq_ModuleIdent'(V0, V1) -> case ('dn--un--==_Eq_ModuleIdent'(V0, V1)) of 1 -> 0; 0 -> 1; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--unsafeUnfoldNamespace'(V0) -> V0.
'un--unsafeUnfoldModuleIdent'(V0) -> V0.
'un--unsafeFoldNamespace'(V0) -> V0.
'un--unsafeFoldModuleIdent'(V0) -> V0.
'un--typesNS'() -> ('un--mkNamespace'(<<"Prelude.Types"/utf8>>)).
'un--showSep'(V0, V1) -> case V1 of [] -> <<""/utf8>>; [E0 | E1] -> (fun (V2, V3) -> case V3 of [] -> V2; _ -> ('Idris.Idris2.Prelude.Types.String':'un--++'(V2, ('Idris.Idris2.Prelude.Types.String':'un--++'(V0, ('un--showSep'(V0, V3)))))) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--showNSWithSep'(V0, V1) -> ('un--showSep'(V0, ('Idris.Idris2.Data.List':'un--reverse'(V1)))).
'un--replace'(V0, V1, V2) -> ('nested--3917-5381--in--un--go'(V0, V1, V2, V2)).
'un--reflectionTTNS'() -> ('un--mkNamespace'(<<"Language.Reflection.TT"/utf8>>)).
'un--reflectionTTImpNS'() -> ('un--mkNamespace'(<<"Language.Reflection.TTImp"/utf8>>)).
'un--reflectionNS'() -> ('un--mkNamespace'(<<"Language.Reflection"/utf8>>)).
'un--primIONS'() -> ('un--mkNamespace'(<<"PrimIO"/utf8>>)).
'un--preludeNS'() -> ('un--mkNamespace'(<<"Prelude"/utf8>>)).
'un--partialEvalNS'() -> ('un--mkNamespace'(<<"_PE"/utf8>>)).
'un--numNS'() -> ('un--mkNamespace'(<<"Prelude.Num"/utf8>>)).
'un--nsAsModuleIdent'(V0) -> V0.
'un--natNS'() -> ('un--mkNamespace'(<<"Data.Nat"/utf8>>)).
'un--mkNestedNamespace'(V0, V1) -> case V0 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> [V1 | []] end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V2) -> [V1 | V2] end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--mkNamespacedIdent'(V0) -> begin (V2 = ('Idris.Idris2.Data.List1':'un--reverse'(('Idris.Idris2.Data.String':'un--split'(fun (V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V1, $.)) end, V0))))), begin (V5 = case V2 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V3, V4) -> V3 end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end), begin (V8 = case V2 of {'Idris.Data.List1.:::', E2, E3} -> (fun (V6, V7) -> V7 end(E2, E3)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end), case V8 of [] -> {'Idris.Builtin.MkPair', {'Idris.Prelude.Types.Nothing'}, V5}; _ -> {'Idris.Builtin.MkPair', {'Idris.Prelude.Types.Just', V8}, V5} end end end end.
'un--mkNamespace'(V0) -> case V0 of <<""/utf8>> -> []; _ -> ('Idris.Idris2.Prelude.Basics':'un--uncurry'(fun (V1) -> fun (V2) -> ('un--mkNestedNamespace'(V1, V2)) end end, ('un--mkNamespacedIdent'(V0)))) end.
'un--mkNSInjective'(V0) -> case V0 of 0 -> 0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--mkModuleIdentFromString'(V0) -> ('un--nsAsModuleIdent'(('un--mkNamespace'(V0)))).
'un--mkModuleIdent'(V0, V1) -> case V0 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> [V1 | []] end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V2) -> [V1 | V2] end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--miAsNamespace'(V0) -> V0.
'un--mainNS'() -> ('un--mkNamespace'(<<"Main"/utf8>>)).
'un--isParentOf'(V0, V1) -> ('Idris.Idris2.Data.List':'un--isSuffixOf'({'Idris.Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_String'(V4, V5)) end end}, V0, V1)).
'un--isApproximationOf'(V0, V1) -> ('Idris.Idris2.Data.List':'un--isPrefixOf'({'Idris.Prelude.EqOrd.MkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_String'(V4, V5)) end end}, V0, V1)).
'un--ioNS'() -> ('un--mkNamespace'(<<"Prelude.IO"/utf8>>)).
'un--eqOrdNS'() -> ('un--mkNamespace'(<<"Prelude.EqOrd"/utf8>>)).
'un--emptyNS'() -> ('un--mkNamespace'(<<""/utf8>>)).
'un--dpairNS'() -> ('un--mkNamespace'(<<"Builtin.DPair"/utf8>>)).
'un--builtinNS'() -> ('un--mkNamespace'(<<"Builtin"/utf8>>)).
'un--basicsNS'() -> ('un--mkNamespace'(<<"Prelude.Basics"/utf8>>)).
'un--allParents'(V0) -> ('nested--3989-5448--in--un--go'(V0, V0)).
'un--<.>'(V0, V1) -> ('Idris.Idris2.Prelude.Types.List':'un--++'(V1, V0)).
