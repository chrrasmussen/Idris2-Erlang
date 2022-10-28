-module('Idris.Idris2.Core.Name.Namespace').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--decEq-8929'/3,
  'nested--4853-8392--in--un--go'/2,
  'nested--4745-8295--in--un--go'/4,
  'dn--un--show_Show_Namespace'/1,
  'dn--un--show_Show_ModuleIdent'/1,
  'dn--un--showPrec_Show_Namespace'/2,
  'dn--un--showPrec_Show_ModuleIdent'/2,
  'dn--un--pretty_Pretty_Void_Namespace'/1,
  'dn--un--pretty_Pretty_Void_ModuleIdent'/1,
  'dn--un--prettyPrec_Pretty_Void_Namespace'/2,
  'dn--un--prettyPrec_Pretty_Void_ModuleIdent'/2,
  'dn--un--min_Ord_Namespace'/2,
  'dn--un--min_Ord_ModuleIdent'/2,
  'dn--un--max_Ord_Namespace'/2,
  'dn--un--max_Ord_ModuleIdent'/2,
  'dn--un--decEq_DecEq_Namespace'/2,
  'dn--un--compare_Ord_Namespace'/2,
  'dn--un--compare_Ord_ModuleIdent'/2,
  'dn--un--__Impl_Show_Namespace'/0,
  'dn--un--__Impl_Show_ModuleIdent'/0,
  'dn--un--__Impl_Pretty_Void_Namespace'/0,
  'dn--un--__Impl_Pretty_Void_ModuleIdent'/0,
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
  'un--isInPathOf'/2,
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
'with--decEq-8929'(V0, V1, V2) -> case V2 of {'Prelude.Types.No', V3} -> {'Prelude.Types.No', fun (V4) -> (V3(('un--mkNSInjective'(V4)))) end}; {'Prelude.Types.Yes', V5} -> {'Prelude.Types.Yes', {'Builtin.Refl'}} end.
'nested--4853-8392--in--un--go'(V0, V1) -> case V1 of [] -> []; [E0 | E1] -> (fun (V2, V3) -> [[V2 | V3] | ('nested--4853-8392--in--un--go'(V0, V3))] end(E0, E1)) end.
'nested--4745-8295--in--un--go'(V0, V1, V2, V3) -> case V3 of [] -> []; [E0 | E1] -> (fun (V4, V5) -> case ('Idris.Idris2.Prelude.Types':'dn--un--==_Eq_(List $a)'({'Prelude.EqOrd.MkEq', fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_String'(V8, V9)) end end}, V0, [V4 | V5])) of 1 -> V1; 0 -> [V4 | ('nested--4745-8295--in--un--go'(V0, V1, V2, V5))] end end(E0, E1)) end.
'dn--un--show_Show_Namespace'(V0) -> ('un--showNSWithSep'(<<"."/utf8>>, V0)).
'dn--un--show_Show_ModuleIdent'(V0) -> ('un--showNSWithSep'(<<"."/utf8>>, ('un--miAsNamespace'(V0)))).
'dn--un--showPrec_Show_Namespace'(V0, V1) -> ('dn--un--show_Show_Namespace'(V1)).
'dn--un--showPrec_Show_ModuleIdent'(V0, V1) -> ('dn--un--show_Show_ModuleIdent'(V1)).
'dn--un--pretty_Pretty_Void_Namespace'(V0) -> begin (V1 = V0), ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--concatWith'(fun (V2) -> fun (V3) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'un--surround'(('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Symbols':'un--dot'()), V2, V3)) end end, ((begin (V9 = fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('Idris.Idris2.Prelude.Types.List':'un--mapAppend'({'Prelude.Basics.Lin'}, V7, V8)) end end end end), fun (V10) -> fun (V11) -> ((((V9('erased'))('erased'))(V10))(V11)) end end end(fun (V4) -> ('Idris.Idris2.Libraries.Text.PrettyPrint.Prettyprinter.Doc':'dn--un--pretty_Pretty_Void_String'(V4)) end))(('Idris.Idris2.Prelude.Types.List':'un--reverse'(V1)))))) end.
'dn--un--pretty_Pretty_Void_ModuleIdent'(V0) -> ('dn--un--pretty_Pretty_Void_Namespace'(('un--miAsNamespace'(V0)))).
'dn--un--prettyPrec_Pretty_Void_Namespace'(V0, V1) -> ('dn--un--pretty_Pretty_Void_Namespace'(V1)).
'dn--un--prettyPrec_Pretty_Void_ModuleIdent'(V0, V1) -> ('dn--un--pretty_Pretty_Void_ModuleIdent'(V1)).
'dn--un--min_Ord_Namespace'(V0, V1) -> case ('dn--un--<_Ord_Namespace'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--min_Ord_ModuleIdent'(V0, V1) -> case ('dn--un--<_Ord_ModuleIdent'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--max_Ord_Namespace'(V0, V1) -> case ('dn--un-->_Ord_Namespace'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--max_Ord_ModuleIdent'(V0, V1) -> case ('dn--un-->_Ord_ModuleIdent'(V0, V1)) of 1 -> V0; 0 -> V1 end.
'dn--un--decEq_DecEq_Namespace'(V0, V1) -> begin (V2 = V0), begin (V3 = V1), ('with--decEq-8929'(V2, V3, ((begin (V8 = fun (V4) -> fun (V5) -> ('Idris.Idris2.Decidable.Equality':'dn--un--decEq_DecEq_(List $a)'(fun (V6) -> fun (V7) -> ((('Idris.Idris2.Decidable.Equality':'dn--un--decEq_DecEq_String'())(V6))(V7)) end end, V4, V5)) end end), fun (V9) -> fun (V10) -> ((V8(V9))(V10)) end end end(V2))(V3)))) end end.
'dn--un--compare_Ord_Namespace'(V0, V1) -> begin (V2 = V0), begin (V3 = V1), ('Idris.Idris2.Prelude.Types':'dn--un--compare_Ord_(List $a)'({'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_String'(V6, V7)) end end}, fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_String'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_String'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord_String'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord_String'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord_String'(V16, V17)) end end, fun (V18) -> fun (V19) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--max_Ord_String'(V18, V19)) end end, fun (V20) -> fun (V21) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--min_Ord_String'(V20, V21)) end end}, V2, V3)) end end.
'dn--un--compare_Ord_ModuleIdent'(V0, V1) -> begin (V2 = V0), begin (V3 = V1), ('Idris.Idris2.Prelude.Types':'dn--un--compare_Ord_(List $a)'({'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_String'(V6, V7)) end end}, fun (V8) -> fun (V9) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--compare_Ord_String'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<_Ord_String'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->_Ord_String'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--<=_Ord_String'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un-->=_Ord_String'(V16, V17)) end end, fun (V18) -> fun (V19) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--max_Ord_String'(V18, V19)) end end, fun (V20) -> fun (V21) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--min_Ord_String'(V20, V21)) end end}, V2, V3)) end end.
'dn--un--__Impl_Show_Namespace'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_Namespace'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_Namespace'(V1, V2)) end end}.
'dn--un--__Impl_Show_ModuleIdent'() -> {'Prelude.Show.MkShow', fun (V0) -> ('dn--un--show_Show_ModuleIdent'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--showPrec_Show_ModuleIdent'(V1, V2)) end end}.
'dn--un--__Impl_Pretty_Void_Namespace'() -> {'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> ('dn--un--pretty_Pretty_Void_Namespace'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--prettyPrec_Pretty_Void_Namespace'(V1, V2)) end end}.
'dn--un--__Impl_Pretty_Void_ModuleIdent'() -> {'Libraries.Text.PrettyPrint.Prettyprinter.Doc.dn--un--__mkPretty', fun (V0) -> ('dn--un--pretty_Pretty_Void_ModuleIdent'(V0)) end, fun (V1) -> fun (V2) -> ('dn--un--prettyPrec_Pretty_Void_ModuleIdent'(V1, V2)) end end}.
'dn--un--__Impl_Ord_Namespace'() -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Namespace'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Namespace'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_Namespace'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_Namespace'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_Namespace'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_Namespace'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_Namespace'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_Namespace'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_Namespace'(V16, V17)) end end}.
'dn--un--__Impl_Ord_ModuleIdent'() -> {'Prelude.EqOrd.MkOrd', {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_ModuleIdent'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_ModuleIdent'(V2, V3)) end end}, fun (V4) -> fun (V5) -> ('dn--un--compare_Ord_ModuleIdent'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('dn--un--<_Ord_ModuleIdent'(V6, V7)) end end, fun (V8) -> fun (V9) -> ('dn--un-->_Ord_ModuleIdent'(V8, V9)) end end, fun (V10) -> fun (V11) -> ('dn--un--<=_Ord_ModuleIdent'(V10, V11)) end end, fun (V12) -> fun (V13) -> ('dn--un-->=_Ord_ModuleIdent'(V12, V13)) end end, fun (V14) -> fun (V15) -> ('dn--un--max_Ord_ModuleIdent'(V14, V15)) end end, fun (V16) -> fun (V17) -> ('dn--un--min_Ord_ModuleIdent'(V16, V17)) end end}.
'dn--un--__Impl_Eq_Namespace'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_Namespace'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_Namespace'(V2, V3)) end end}.
'dn--un--__Impl_Eq_ModuleIdent'() -> {'Prelude.EqOrd.MkEq', fun (V0) -> fun (V1) -> ('dn--un--==_Eq_ModuleIdent'(V0, V1)) end end, fun (V2) -> fun (V3) -> ('dn--un--/=_Eq_ModuleIdent'(V2, V3)) end end}.
'dn--un--__Impl_DecEq_Namespace'(V0, V1) -> ('dn--un--decEq_DecEq_Namespace'(V0, V1)).
'dn--un-->_Ord_Namespace'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_Namespace'(V0, V1)), 2)).
'dn--un-->_Ord_ModuleIdent'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_ModuleIdent'(V0, V1)), 2)).
'dn--un-->=_Ord_Namespace'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_Namespace'(V0, V1)), 0)).
'dn--un-->=_Ord_ModuleIdent'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_ModuleIdent'(V0, V1)), 0)).
'dn--un--==_Eq_Namespace'(V0, V1) -> begin (V2 = V0), begin (V3 = V1), ('Idris.Idris2.Prelude.Types':'dn--un--==_Eq_(List $a)'({'Prelude.EqOrd.MkEq', fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_String'(V6, V7)) end end}, V2, V3)) end end.
'dn--un--==_Eq_ModuleIdent'(V0, V1) -> begin (V2 = V0), begin (V3 = V1), ('Idris.Idris2.Prelude.Types':'dn--un--==_Eq_(List $a)'({'Prelude.EqOrd.MkEq', fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_String'(V6, V7)) end end}, V2, V3)) end end.
'dn--un--<_Ord_Namespace'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_Namespace'(V0, V1)), 0)).
'dn--un--<_Ord_ModuleIdent'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Ordering'(('dn--un--compare_Ord_ModuleIdent'(V0, V1)), 0)).
'dn--un--<=_Ord_Namespace'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_Namespace'(V0, V1)), 2)).
'dn--un--<=_Ord_ModuleIdent'(V0, V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_Ordering'(('dn--un--compare_Ord_ModuleIdent'(V0, V1)), 2)).
'dn--un--/=_Eq_Namespace'(V0, V1) -> case ('dn--un--==_Eq_Namespace'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'dn--un--/=_Eq_ModuleIdent'(V0, V1) -> case ('dn--un--==_Eq_ModuleIdent'(V0, V1)) of 1 -> 0; 0 -> 1 end.
'un--unsafeUnfoldNamespace'(V0) -> begin (V1 = V0), V1 end.
'un--unsafeUnfoldModuleIdent'(V0) -> begin (V1 = V0), V1 end.
'un--unsafeFoldNamespace'(V0) -> V0.
'un--unsafeFoldModuleIdent'(V0) -> V0.
'un--typesNS'() -> ('un--mkNamespace'(<<"Prelude.Types"/utf8>>)).
'un--showSep'(V0, V1) -> ('Idris.Idris2.Libraries.Data.String.Extra':'un--join'(V0, {'Prelude.Interfaces.MkFoldable', fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V4, V5, V6)) end end end end end, fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V9, V10, V11)) end end end end end, fun (V12) -> fun (V13) -> ('Idris.Idris2.Prelude.Types':'dn--un--null_Foldable_List'(V13)) end end, fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldlM_Foldable_List'(V17, V18, V19, V20)) end end end end end end end, fun (V21) -> fun (V22) -> V22 end end, fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V25, V26, V27)) end end end end end}, V1)).
'un--showNSWithSep'(V0, V1) -> begin (V2 = V1), ('un--showSep'(V0, ('Idris.Idris2.Prelude.Types.List':'un--reverse'(V2)))) end.
'un--replace'(V0, V1, V2) -> begin (V3 = V0), begin (V4 = V1), begin (V5 = V2), ('nested--4745-8295--in--un--go'(V3, V4, V5, V5)) end end end.
'un--reflectionTTNS'() -> ('un--mkNamespace'(<<"Language.Reflection.TT"/utf8>>)).
'un--reflectionTTImpNS'() -> ('un--mkNamespace'(<<"Language.Reflection.TTImp"/utf8>>)).
'un--reflectionNS'() -> ('un--mkNamespace'(<<"Language.Reflection"/utf8>>)).
'un--primIONS'() -> ('un--mkNamespace'(<<"PrimIO"/utf8>>)).
'un--preludeNS'() -> ('un--mkNamespace'(<<"Prelude"/utf8>>)).
'un--partialEvalNS'() -> ('un--mkNamespace'(<<"_PE"/utf8>>)).
'un--numNS'() -> ('un--mkNamespace'(<<"Prelude.Num"/utf8>>)).
'un--nsAsModuleIdent'(V0) -> begin (V1 = V0), V1 end.
'un--natNS'() -> ('un--mkNamespace'(<<"Data.Nat"/utf8>>)).
'un--mkNestedNamespace'(V0, V1) -> case V0 of {'Prelude.Types.Nothing'} -> [V1 | []]; {'Prelude.Types.Just', V2} -> begin (V3 = V2), [V1 | V3] end end.
'un--mkNamespacedIdent'(V0) -> begin (V2 = ('Idris.Idris2.Data.List1':'un--reverse'(('Idris.Idris2.Data.String':'un--split'(fun (V1) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_Char'(V1, $.)) end, V0))))), begin (V5 = case V2 of {'Data.List1.:::', V3, V4} -> V3 end), begin (V8 = case V2 of {'Data.List1.:::', V6, V7} -> V7 end), case V8 of [] -> {'Builtin.MkPair', {'Prelude.Types.Nothing'}, V5}; _ -> {'Builtin.MkPair', {'Prelude.Types.Just', V8}, V5} end end end end.
'un--mkNamespace'(V0) -> case V0 of <<""/utf8>> -> []; _ -> ('Idris.Idris2.Prelude.Basics':'un--uncurry'(fun (V1) -> fun (V2) -> ('un--mkNestedNamespace'(V1, V2)) end end, ('un--mkNamespacedIdent'(V0)))) end.
'un--mkNSInjective'(V0) -> {'Builtin.Refl'}.
'un--mkModuleIdentFromString'(V0) -> ('un--nsAsModuleIdent'(('un--mkNamespace'(V0)))).
'un--mkModuleIdent'(V0, V1) -> case V0 of {'Prelude.Types.Nothing'} -> [V1 | []]; {'Prelude.Types.Just', V2} -> begin (V3 = V2), [V1 | V3] end end.
'un--miAsNamespace'(V0) -> begin (V1 = V0), V1 end.
'un--mainNS'() -> ('un--mkNamespace'(<<"Main"/utf8>>)).
'un--isParentOf'(V0, V1) -> begin (V2 = V0), begin (V3 = V1), ('Idris.Idris2.Data.List':'un--isSuffixOf'({'Prelude.EqOrd.MkEq', fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_String'(V6, V7)) end end}, V2, V3)) end end.
'un--isInPathOf'(V0, V1) -> begin (V2 = V1), ('Idris.Idris2.Prelude.Types':'un--elem'({'Prelude.Interfaces.MkFoldable', fun (V3) -> fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V5, V6, V7)) end end end end end, fun (V8) -> fun (V9) -> fun (V10) -> fun (V11) -> fun (V12) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V10, V11, V12)) end end end end end, fun (V13) -> fun (V14) -> ('Idris.Idris2.Prelude.Types':'dn--un--null_Foldable_List'(V14)) end end, fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> fun (V20) -> fun (V21) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldlM_Foldable_List'(V18, V19, V20, V21)) end end end end end end end, fun (V22) -> fun (V23) -> V23 end end, fun (V24) -> fun (V25) -> fun (V26) -> fun (V27) -> fun (V28) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V26, V27, V28)) end end end end end}, {'Prelude.EqOrd.MkEq', fun (V29) -> fun (V30) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V29, V30)) end end, fun (V31) -> fun (V32) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_String'(V31, V32)) end end}, V0, V2)) end.
'un--isApproximationOf'(V0, V1) -> begin (V2 = V0), begin (V3 = V1), ('Idris.Idris2.Data.List':'un--isPrefixOf'({'Prelude.EqOrd.MkEq', fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--==_Eq_String'(V4, V5)) end end, fun (V6) -> fun (V7) -> ('Idris.Idris2.Prelude.EqOrd':'dn--un--/=_Eq_String'(V6, V7)) end end}, V2, V3)) end end.
'un--ioNS'() -> ('un--mkNamespace'(<<"Prelude.IO"/utf8>>)).
'un--eqOrdNS'() -> ('un--mkNamespace'(<<"Prelude.EqOrd"/utf8>>)).
'un--emptyNS'() -> ('un--mkNamespace'(<<""/utf8>>)).
'un--dpairNS'() -> ('un--mkNamespace'(<<"Builtin.DPair"/utf8>>)).
'un--builtinNS'() -> ('un--mkNamespace'(<<"Builtin"/utf8>>)).
'un--basicsNS'() -> ('un--mkNamespace'(<<"Prelude.Basics"/utf8>>)).
'un--allParents'(V0) -> begin (V1 = V0), ('nested--4853-8392--in--un--go'(V1, V1)) end.
'un--<.>'(V0, V1) -> begin (V2 = V0), begin (V3 = V1), ('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(V3, V2)) end end.
