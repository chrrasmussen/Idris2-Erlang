-module('Idris.Idris2.Core.Name.Namespace').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--decEq-7482'/3,
  'case--max-7405'/3,
  'case--min-7391'/3,
  'case--replace,go-7246'/6,
  'case--mkNamespacedIdent-7155'/2,
  'nested--3159-7281--in--un--go'/2,
  'nested--3096-7228--in--un--go'/4,
  'dn--un--show_Show__Namespace'/1,
  'dn--un--show_Show__ModuleIdent'/1,
  'dn--un--showPrec_Show__Namespace'/2,
  'dn--un--showPrec_Show__ModuleIdent'/2,
  'dn--un--pretty_Pretty__Namespace'/2,
  'dn--un--pretty_Pretty__ModuleIdent'/2,
  'dn--un--prettyPrec_Pretty__Namespace'/3,
  'dn--un--prettyPrec_Pretty__ModuleIdent'/3,
  'dn--un--min_Ord__Namespace'/2,
  'dn--un--max_Ord__Namespace'/2,
  'dn--un--decEq_DecEq__Namespace'/2,
  'dn--un--compare_Ord__Namespace'/2,
  'dn--un--__Impl_Show_Namespace'/0,
  'dn--un--__Impl_Show_ModuleIdent'/0,
  'dn--un--__Impl_Pretty_Namespace'/0,
  'dn--un--__Impl_Pretty_ModuleIdent'/0,
  'dn--un--__Impl_Ord_Namespace'/0,
  'dn--un--__Impl_Eq_Namespace'/0,
  'dn--un--__Impl_Eq_ModuleIdent'/0,
  'dn--un--__Impl_DecEq_Namespace'/2,
  'dn--un-->_Ord__Namespace'/2,
  'dn--un-->=_Ord__Namespace'/2,
  'dn--un--==_Eq__Namespace'/2,
  'dn--un--==_Eq__ModuleIdent'/2,
  'dn--un--<_Ord__Namespace'/2,
  'dn--un--<=_Ord__Namespace'/2,
  'dn--un--/=_Eq__Namespace'/2,
  'dn--un--/=_Eq__ModuleIdent'/2,
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
  'un--nsAsModuleIdent'/1,
  'un--natNS'/0,
  'un--mkNestedNamespace'/2,
  'un--mkNamespacedIdent'/1,
  'un--mkNamespace'/1,
  'un--mkNSInjective'/3,
  'un--mkModuleIdentFromString'/1,
  'un--mkModuleIdent'/2,
  'un--miAsNamespace'/1,
  'un--mainNS'/0,
  'un--isParentOf'/2,
  'un--isApproximationOf'/2,
  'un--eqOrdNS'/0,
  'un--emptyNS'/0,
  'un--dpairNS'/0,
  'un--builtinNS'/0,
  'un--basicsNS'/0,
  'un--allParents'/1,
  'un--<.>'/2
]).
'with--decEq-7482'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.No', E0} -> (fun (V3) -> {'Idris.Prelude.Types.No', fun (V4) -> (V3(('un--mkNSInjective'('erased', 'erased', V4)))) end} end(E0)); {'Idris.Prelude.Types.Yes', E1} -> (fun (V5) -> {'Idris.Prelude.Types.Yes', ('Idris.Idris2.Prelude.Basics':'un--cong'('erased', 'erased', 'erased', 'erased', 'erased', V5))} end(E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--max-7405'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--min-7391'(V0, V1, V2) -> case V2 of 0 -> V1; 1 -> V0; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--replace,go-7246'(V0, V1, V2, V3, V4, V5) -> case V5 of 0 -> V1; 1 -> [V3 | ('nested--3096-7228--in--un--go'(V0, V1, V2, V4))]; _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'case--mkNamespacedIdent-7155'(V0, V1) -> case V1 of {'Idris.Data.List1.:::', E0, E1} -> (fun (V2, V3) -> case V3 of [] -> {'Idris.Builtin.MkPair', {'Idris.Prelude.Types.Nothing'}, V2}; _ -> {'Idris.Builtin.MkPair', {'Idris.Prelude.Types.Just', V3}, V2} end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--3159-7281--in--un--go'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> [[V2 | V3] | ('nested--3159-7281--in--un--go'(V0, V3))] end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--3096-7228--in--un--go'(V0, V1, V2, V3) -> case V3 of [] -> []; [E0 | E1] -> (fun (V4, V5) -> ('case--replace,go-7246'(V0, V1, V2, V4, V5, ('Idris.Idris2.Prelude.Types':'dn--un--==_Eq__(List $a)'('erased', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__String'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__String'(V8, V9)) end end}, V0, [V4 | V5])))) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--show_Show__Namespace'(V0) -> ('un--showNSWithSep'(<<"."/utf8>>, V0)).
'dn--un--show_Show__ModuleIdent'(V0) -> ('un--showNSWithSep'(<<"."/utf8>>, ('un--miAsNamespace'(V0)))).
'dn--un--showPrec_Show__Namespace'(V0, V1) -> ('dn--un--show_Show__Namespace'(V1)).
'dn--un--showPrec_Show__ModuleIdent'(V0, V1) -> ('dn--un--show_Show__ModuleIdent'(V1)).
'dn--un--pretty_Pretty__Namespace'(V0, V1) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'un--concatWith'('erased', fun (V2) -> fun (V3) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'un--surround'('erased', ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Symbols':'un--dot'('erased')), V2, V3)) end end, ('Idris.Idris2.Prelude.Interfaces':'un--<$>'('erased', 'erased', 'erased', fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Types':'dn--un--map_Functor__List'('erased', 'erased', V6, V7)) end end end end, fun (V8) -> ('Idris.Idris2.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty__String'('erased', V8)) end, ('Idris.Idris2.Data.List':'un--reverse'('erased', V1)))))).
'dn--un--pretty_Pretty__ModuleIdent'(V0, V1) -> ('dn--un--pretty_Pretty__Namespace'('erased', ('un--miAsNamespace'(V1)))).
'dn--un--prettyPrec_Pretty__Namespace'(V0, V1, V2) -> ('dn--un--pretty_Pretty__Namespace'('erased', V2)).
'dn--un--prettyPrec_Pretty__ModuleIdent'(V0, V1, V2) -> ('dn--un--pretty_Pretty__ModuleIdent'('erased', V2)).
'dn--un--min_Ord__Namespace'(V0, V1) -> ('case--min-7391'(V1, V0, ('dn--un--<_Ord__Namespace'(V0, V1)))).
'dn--un--max_Ord__Namespace'(V0, V1) -> ('case--max-7405'(V1, V0, ('dn--un-->_Ord__Namespace'(V0, V1)))).
'dn--un--decEq_DecEq__Namespace'(V0, V1) -> ('with--decEq-7482'(V0, V1, ('Idris.Idris2.Decidable.Equality':'dn--un--decEq_DecEq__(List $a)'('erased', fun (V2) -> fun (V3) -> ('Idris.Idris2.Decidable.Equality':'dn--un--decEq_DecEq__String'(V2, V3)) end end, V0, V1)))).
'dn--un--compare_Ord__Namespace'(V0, V1) -> ('Idris.Idris2.Prelude.Types':'dn--un--compare_Ord__(List $a)'('erased', {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__String'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__String'(V4, V5)) end end}, fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord__String'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord__String'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord__String'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord__String'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord__String'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--max_Ord__String'(V16, V17)) end end, fun (V18) -> fun (V19) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--min_Ord__String'(V18, V19)) end end}, V0, V1)).
'dn--un--__Impl_Show_Namespace'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__Namespace'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__Namespace'(V1, V2)) end end}.
'dn--un--__Impl_Show_ModuleIdent'() -> {'Idris.Prelude.Show.dn--un--__mkShow', fun (V0) -> ('dn--un--show_Show__ModuleIdent'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show__ModuleIdent'(V1, V2)) end end}.
'dn--un--__Impl_Pretty_Namespace'() -> {'Idris.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> fun (V1) -> ('dn--un--pretty_Pretty__Namespace'('erased', V1)) end end, fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--prettyPrec_Pretty__Namespace'('erased', V3, V4)) end end end}.
'dn--un--__Impl_Pretty_ModuleIdent'() -> {'Idris.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> fun (V1) -> ('dn--un--pretty_Pretty__ModuleIdent'('erased', V1)) end end, fun (V2) -> fun (V3) -> fun (V4) -> ('dn--un--prettyPrec_Pretty__ModuleIdent'('erased', V3, V4)) end end end}.
'dn--un--__Impl_Ord_Namespace'() -> {'Idris.Prelude.EqOrd.dn--un--__mkOrd', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Namespace'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Namespace'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord__Namespace'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord__Namespace'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord__Namespace'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord__Namespace'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord__Namespace'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord__Namespace'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord__Namespace'(V16, V17)) end end}.
'dn--un--__Impl_Eq_Namespace'() -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__Namespace'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__Namespace'(V2, V3)) end end}.
'dn--un--__Impl_Eq_ModuleIdent'() -> {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq__ModuleIdent'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq__ModuleIdent'(V2, V3)) end end}.
'dn--un--__Impl_DecEq_Namespace'(V0, V1) -> ('dn--un--decEq_DecEq__Namespace'(V0, V1)).
'dn--un-->_Ord__Namespace'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__Namespace'(V0, V1)), 2)).
'dn--un-->=_Ord__Namespace'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__Namespace'(V0, V1)), 0)).
'dn--un--==_Eq__Namespace'(V0, V1) -> ('Idris.Idris2.Prelude.Types':'dn--un--==_Eq__(List $a)'('erased', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__String'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__String'(V4, V5)) end end}, V0, V1)).
'dn--un--==_Eq__ModuleIdent'(V0, V1) -> ('Idris.Idris2.Prelude.Types':'dn--un--==_Eq__(List $a)'('erased', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__String'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__String'(V4, V5)) end end}, V0, V1)).
'dn--un--<_Ord__Namespace'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Ordering'(('dn--un--compare_Ord__Namespace'(V0, V1)), 0)).
'dn--un--<=_Ord__Namespace'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__Ordering'(('dn--un--compare_Ord__Namespace'(V0, V1)), 2)).
'dn--un--/=_Eq__Namespace'(V0, V1) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__Namespace'(V0, V1)))).
'dn--un--/=_Eq__ModuleIdent'(V0, V1) -> ('Idris.Idris2.Prelude.Basics':'un--not'(('dn--un--==_Eq__ModuleIdent'(V0, V1)))).
'un--unsafeUnfoldNamespace'(V0) -> V0.
'un--unsafeUnfoldModuleIdent'(V0) -> V0.
'un--unsafeFoldNamespace'(V0) -> V0.
'un--unsafeFoldModuleIdent'(V0) -> V0.
'un--typesNS'() -> ('un--mkNamespace'(<<"Prelude.Types"/utf8>>)).
'un--showSep'(V0, V1) -> case V1 of [] -> <<""/utf8>>; [E0 | E1] -> (fun (V2, V3) -> case V3 of [] -> V2; _ -> ('Idris.Idris2.Prelude.Types.Strings':'un--++'(V2, ('Idris.Idris2.Prelude.Types.Strings':'un--++'(V0, ('un--showSep'(V0, V3)))))) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--showNSWithSep'(V0, V1) -> ('un--showSep'(V0, ('Idris.Idris2.Data.List':'un--reverse'('erased', V1)))).
'un--replace'(V0, V1, V2) -> ('nested--3096-7228--in--un--go'(V0, V1, V2, V2)).
'un--reflectionTTNS'() -> ('un--mkNamespace'(<<"Language.Reflection.TT"/utf8>>)).
'un--reflectionTTImpNS'() -> ('un--mkNamespace'(<<"Language.Reflection.TTImp"/utf8>>)).
'un--reflectionNS'() -> ('un--mkNamespace'(<<"Language.Reflection"/utf8>>)).
'un--primIONS'() -> ('un--mkNamespace'(<<"PrimIO"/utf8>>)).
'un--preludeNS'() -> ('un--mkNamespace'(<<"Prelude"/utf8>>)).
'un--partialEvalNS'() -> ('un--mkNamespace'(<<"_PE"/utf8>>)).
'un--nsAsModuleIdent'(V0) -> V0.
'un--natNS'() -> ('un--mkNamespace'(<<"Data.Nat"/utf8>>)).
'un--mkNestedNamespace'(V0, V1) -> case V0 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> [V1 | []] end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V2) -> [V1 | V2] end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--mkNamespacedIdent'(V0) -> ('case--mkNamespacedIdent-7155'(V0, ('Idris.Idris2.Data.List1':'un--reverse'('erased', ('Idris.Idris2.Data.Strings':'un--split'(fun (V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__Char'(V1, $.)) end, V0)))))).
'un--mkNamespace'(V0) -> case V0 of <<""/utf8>> -> []; _ -> ('Idris.Idris2.Prelude.Basics':'un--uncurry'('erased', 'erased', 'erased', fun (V1) -> fun (V2) -> ('un--mkNestedNamespace'(V1, V2)) end end, ('un--mkNamespacedIdent'(V0)))) end.
'un--mkNSInjective'(V0, V1, V2) -> case V2 of {'Idris.Builtin.Refl'} -> (fun () -> {'Idris.Builtin.Refl'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--mkModuleIdentFromString'(V0) -> ('un--nsAsModuleIdent'(('un--mkNamespace'(V0)))).
'un--mkModuleIdent'(V0, V1) -> case V0 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> [V1 | []] end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V2) -> [V1 | V2] end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--miAsNamespace'(V0) -> V0.
'un--mainNS'() -> ('un--mkNamespace'(<<"Main"/utf8>>)).
'un--isParentOf'(V0, V1) -> ('Idris.Idris2.Data.List':'un--isSuffixOf'('erased', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__String'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__String'(V4, V5)) end end}, V0, V1)).
'un--isApproximationOf'(V0, V1) -> ('Idris.Idris2.Data.List':'un--isPrefixOf'('erased', {'Idris.Prelude.EqOrd.dn--un--__mkEq', fun (V2) -> fun (V3) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq__String'(V2, V3)) end end, fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq__String'(V4, V5)) end end}, V0, V1)).
'un--eqOrdNS'() -> ('un--mkNamespace'(<<"Prelude.EqOrd"/utf8>>)).
'un--emptyNS'() -> ('un--mkNamespace'(<<""/utf8>>)).
'un--dpairNS'() -> ('un--mkNamespace'(<<"Builtin.DPair"/utf8>>)).
'un--builtinNS'() -> ('un--mkNamespace'(<<"Builtin"/utf8>>)).
'un--basicsNS'() -> ('un--mkNamespace'(<<"Prelude.Basics"/utf8>>)).
'un--allParents'(V0) -> ('nested--3159-7281--in--un--go'(V0, V0)).
'un--<.>'(V0, V1) -> ('Idris.Idris2.Prelude.Types.List':'un--++'('erased', V1, V0)).
