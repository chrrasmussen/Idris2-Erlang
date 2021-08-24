-module('Idris.Idris2.Compiler.ES.Doc').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--2906-927--in--un--nSpaces'/1,
  'nested--2906-928--in--un--go'/2,
  'nested--2883-902--in--un--go'/1,
  'dn--un--neutral_Monoid_Doc'/0,
  'dn--un--fromString_FromString_Doc'/1,
  'dn--un--__Impl_Semigroup_Doc'/2,
  'dn--un--__Impl_Monoid_Doc'/0,
  'dn--un--__Impl_FromString_Doc'/1,
  'dn--un--<+>_Semigroup_Doc'/2,
  'un--vcat'/1,
  'un--softEq'/0,
  'un--softComma'/0,
  'un--softColon'/0,
  'un--shown'/2,
  'un--pretty'/1,
  'un--paren'/1,
  'un--lambdaArrow'/0,
  'un--isMultiline'/1,
  'un--hsep'/1,
  'un--hcat'/1,
  'un--compact'/1,
  'un--block'/1,
  'un--<++>'/2
]).
'nested--2906-927--in--un--nSpaces'(V0) -> ('Idris.Idris2.Prelude.Types':'un--fastPack'(('Idris.Idris2.Data.List':'un--replicate'(V0, $ )))).
'nested--2906-928--in--un--go'(V0, V1) -> case V1 of {'Idris.Compiler.ES.Doc.Nil'} -> (fun () -> [] end()); {'Idris.Compiler.ES.Doc.LineBreak'} -> (fun () -> [<<"\x{a}"/utf8>> | [V0 | []]] end()); {'Idris.Compiler.ES.Doc.SoftSpace'} -> (fun () -> [<<" "/utf8>> | []] end()); {'Idris.Compiler.ES.Doc.Text', E0} -> (fun (V2) -> [V2 | []] end(E0)); {'Idris.Compiler.ES.Doc.Nest', E1, E2} -> (fun (V3, V4) -> ('nested--2906-928--in--un--go'(('Idris.Idris2.Prelude.Types.String':'un--++'(V0, ('nested--2906-927--in--un--nSpaces'(V3)))), V4)) end(E1, E2)); {'Idris.Compiler.ES.Doc.Seq', E3, E4} -> (fun (V5, V6) -> ('Idris.Idris2.Prelude.Types.List':'un--++'(('nested--2906-928--in--un--go'(V0, V5)), ('nested--2906-928--in--un--go'(V0, V6)))) end(E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'nested--2883-902--in--un--go'(V0) -> case V0 of {'Idris.Compiler.ES.Doc.Nil'} -> (fun () -> [] end()); {'Idris.Compiler.ES.Doc.LineBreak'} -> (fun () -> [] end()); {'Idris.Compiler.ES.Doc.SoftSpace'} -> (fun () -> [] end()); {'Idris.Compiler.ES.Doc.Text', E0} -> (fun (V1) -> [V1 | []] end(E0)); {'Idris.Compiler.ES.Doc.Nest', E1, E2} -> (fun (V2, V3) -> ('nested--2883-902--in--un--go'(V3)) end(E1, E2)); {'Idris.Compiler.ES.Doc.Seq', E3, E4} -> (fun (V4, V5) -> ('Idris.Idris2.Prelude.Types.List':'un--++'(('nested--2883-902--in--un--go'(V4)), ('nested--2883-902--in--un--go'(V5)))) end(E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'dn--un--neutral_Monoid_Doc'() -> {'Idris.Compiler.ES.Doc.Nil'}.
'dn--un--fromString_FromString_Doc'(V0) -> {'Idris.Compiler.ES.Doc.Text', V0}.
'dn--un--__Impl_Semigroup_Doc'(V0, V1) -> ('dn--un--<+>_Semigroup_Doc'(V0, V1)).
'dn--un--__Impl_Monoid_Doc'() -> {'Idris.Prelude.Interfaces.MkMonoid', fun (V0) -> fun (V1) -> ('dn--un--<+>_Semigroup_Doc'(V0, V1)) end end, ('dn--un--neutral_Monoid_Doc'())}.
'dn--un--__Impl_FromString_Doc'(V0) -> ('dn--un--fromString_FromString_Doc'(V0)).
'dn--un--<+>_Semigroup_Doc'(V0, V1) -> case V0 of {'Idris.Compiler.ES.Doc.Nil'} -> (fun () -> V1 end()); _ -> case V1 of {'Idris.Compiler.ES.Doc.Nil'} -> (fun () -> V0 end()); _ -> {'Idris.Compiler.ES.Doc.Seq', V0, V1} end end.
'un--vcat'(V0) -> ('Idris.Idris2.Prelude.Interfaces':'un--concat'({'Idris.Builtin.MkPair', {'Idris.Prelude.Interfaces.MkFoldable', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V3, V4, V5)) end end end end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V8, V9, V10)) end end end end end, fun (V11) -> fun (V12) -> ('Idris.Idris2.Prelude.Types':'dn--un--null_Foldable_List'(V12)) end end, fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldlM_Foldable_List'(V16, V17, V18, V19)) end end end end end end end, fun (V20) -> fun (V21) -> ('Idris.Idris2.Prelude.Types':'dn--un--toList_Foldable_List'(V21)) end end, fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V24, V25, V26)) end end end end end}, {'Idris.Prelude.Interfaces.MkMonoid', fun (V27) -> fun (V28) -> ('dn--un--<+>_Semigroup_Doc'(V27, V28)) end end, ('dn--un--neutral_Monoid_Doc'())}}, ('Idris.Idris2.Data.List':'un--intersperse'({'Idris.Compiler.ES.Doc.LineBreak'}, V0)))).
'un--softEq'() -> ('dn--un--<+>_Semigroup_Doc'(('dn--un--<+>_Semigroup_Doc'({'Idris.Compiler.ES.Doc.SoftSpace'}, {'Idris.Compiler.ES.Doc.Text', <<"="/utf8>>})), {'Idris.Compiler.ES.Doc.SoftSpace'})).
'un--softComma'() -> ('dn--un--<+>_Semigroup_Doc'(('dn--un--fromString_FromString_Doc'(<<","/utf8>>)), {'Idris.Compiler.ES.Doc.SoftSpace'})).
'un--softColon'() -> ('dn--un--<+>_Semigroup_Doc'(('dn--un--fromString_FromString_Doc'(<<":"/utf8>>)), {'Idris.Compiler.ES.Doc.SoftSpace'})).
'un--shown'(V0, V1) -> {'Idris.Compiler.ES.Doc.Text', case V0 of {'Idris.Prelude.Show.MkShow', E0, E1} -> (fun (V2, V3) -> (V2(V1)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end}.
'un--pretty'(V0) -> ('Idris.Idris2.Prelude.Types':'un--fastConcat'(('nested--2906-928--in--un--go'(<<""/utf8>>, V0)))).
'un--paren'(V0) -> ('dn--un--<+>_Semigroup_Doc'(('dn--un--<+>_Semigroup_Doc'(('dn--un--fromString_FromString_Doc'(<<"("/utf8>>)), V0)), {'Idris.Compiler.ES.Doc.Text', <<")"/utf8>>})).
'un--lambdaArrow'() -> ('dn--un--<+>_Semigroup_Doc'(('dn--un--<+>_Semigroup_Doc'({'Idris.Compiler.ES.Doc.SoftSpace'}, {'Idris.Compiler.ES.Doc.Text', <<"=>"/utf8>>})), {'Idris.Compiler.ES.Doc.SoftSpace'})).
'un--isMultiline'(V0) -> case V0 of {'Idris.Compiler.ES.Doc.Nil'} -> (fun () -> 0 end()); {'Idris.Compiler.ES.Doc.LineBreak'} -> (fun () -> 1 end()); {'Idris.Compiler.ES.Doc.SoftSpace'} -> (fun () -> 0 end()); {'Idris.Compiler.ES.Doc.Text', E0} -> (fun (V1) -> 0 end(E0)); {'Idris.Compiler.ES.Doc.Nest', E1, E2} -> (fun (V2, V3) -> ('un--isMultiline'(V3)) end(E1, E2)); {'Idris.Compiler.ES.Doc.Seq', E3, E4} -> (fun (V4, V5) -> case ('un--isMultiline'(V4)) of 1 -> 1; 0 -> ('un--isMultiline'(V5)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--hsep'(V0) -> ('Idris.Idris2.Prelude.Interfaces':'un--concat'({'Idris.Builtin.MkPair', {'Idris.Prelude.Interfaces.MkFoldable', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V3, V4, V5)) end end end end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V8, V9, V10)) end end end end end, fun (V11) -> fun (V12) -> ('Idris.Idris2.Prelude.Types':'dn--un--null_Foldable_List'(V12)) end end, fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldlM_Foldable_List'(V16, V17, V18, V19)) end end end end end end end, fun (V20) -> fun (V21) -> ('Idris.Idris2.Prelude.Types':'dn--un--toList_Foldable_List'(V21)) end end, fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V24, V25, V26)) end end end end end}, {'Idris.Prelude.Interfaces.MkMonoid', fun (V27) -> fun (V28) -> ('dn--un--<+>_Semigroup_Doc'(V27, V28)) end end, ('dn--un--neutral_Monoid_Doc'())}}, ('Idris.Idris2.Data.List':'un--intersperse'(('dn--un--fromString_FromString_Doc'(<<" "/utf8>>)), V0)))).
'un--hcat'(V0) -> ('Idris.Idris2.Prelude.Interfaces':'un--concat'({'Idris.Builtin.MkPair', {'Idris.Prelude.Interfaces.MkFoldable', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V3, V4, V5)) end end end end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V8, V9, V10)) end end end end end, fun (V11) -> fun (V12) -> ('Idris.Idris2.Prelude.Types':'dn--un--null_Foldable_List'(V12)) end end, fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldlM_Foldable_List'(V16, V17, V18, V19)) end end end end end end end, fun (V20) -> fun (V21) -> ('Idris.Idris2.Prelude.Types':'dn--un--toList_Foldable_List'(V21)) end end, fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V24, V25, V26)) end end end end end}, {'Idris.Prelude.Interfaces.MkMonoid', fun (V27) -> fun (V28) -> ('dn--un--<+>_Semigroup_Doc'(V27, V28)) end end, ('dn--un--neutral_Monoid_Doc'())}}, V0)).
'un--compact'(V0) -> ('Idris.Idris2.Prelude.Types':'un--fastConcat'(('nested--2883-902--in--un--go'(V0)))).
'un--block'(V0) -> ('Idris.Idris2.Prelude.Interfaces':'un--concat'({'Idris.Builtin.MkPair', {'Idris.Prelude.Interfaces.MkFoldable', fun (V1) -> fun (V2) -> fun (V3) -> fun (V4) -> fun (V5) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldr_Foldable_List'(V3, V4, V5)) end end end end end, fun (V6) -> fun (V7) -> fun (V8) -> fun (V9) -> fun (V10) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldl_Foldable_List'(V8, V9, V10)) end end end end end, fun (V11) -> fun (V12) -> ('Idris.Idris2.Prelude.Types':'dn--un--null_Foldable_List'(V12)) end end, fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> fun (V17) -> fun (V18) -> fun (V19) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldlM_Foldable_List'(V16, V17, V18, V19)) end end end end end end end, fun (V20) -> fun (V21) -> ('Idris.Idris2.Prelude.Types':'dn--un--toList_Foldable_List'(V21)) end end, fun (V22) -> fun (V23) -> fun (V24) -> fun (V25) -> fun (V26) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'(V24, V25, V26)) end end end end end}, {'Idris.Prelude.Interfaces.MkMonoid', fun (V27) -> fun (V28) -> ('dn--un--<+>_Semigroup_Doc'(V27, V28)) end end, ('dn--un--neutral_Monoid_Doc'())}}, [{'Idris.Compiler.ES.Doc.Text', <<"{"/utf8>>} | [{'Idris.Compiler.ES.Doc.Nest', (1 + 0), ('dn--un--<+>_Semigroup_Doc'({'Idris.Compiler.ES.Doc.LineBreak'}, V0))} | [{'Idris.Compiler.ES.Doc.LineBreak'} | [('dn--un--fromString_FromString_Doc'(<<"}"/utf8>>)) | []]]]])).
'un--<++>'(V0, V1) -> ('dn--un--<+>_Semigroup_Doc'(('dn--un--<+>_Semigroup_Doc'(V0, {'Idris.Compiler.ES.Doc.Text', <<" "/utf8>>})), V1)).
