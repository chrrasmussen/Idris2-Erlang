-module('Idris.Idris2.Compiler.ES.Doc').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--3319-2822--in--un--nSpaces'/1,
  'nested--3319-2823--in--un--go'/2,
  'nested--3284-2785--in--un--go'/1,
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
  'un--comment'/1,
  'un--block'/1,
  'un--<++>'/2
]).
'nested--3319-2822--in--un--nSpaces'(V0) -> ('Idris.Idris2.Prelude.Types':'un--fastPack'(('Idris.Idris2.Data.List':'un--replicateTR'([], V0, $ )))).
'nested--3319-2823--in--un--go'(V0, V1) -> case V1 of {'Compiler.ES.Doc.Nil'} -> []; {'Compiler.ES.Doc.LineBreak'} -> [<<"\x{a}"/utf8>> | [V0 | []]]; {'Compiler.ES.Doc.SoftSpace'} -> [<<" "/utf8>> | []]; {'Compiler.ES.Doc.Comment', V2} -> [<<"/* "/utf8>> | ('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(('nested--3319-2823--in--un--go'(V0, V2)), [<<" */"/utf8>> | []]))]; {'Compiler.ES.Doc.Text', V3} -> [V3 | []]; {'Compiler.ES.Doc.Nest', V4, V5} -> ('nested--3319-2823--in--un--go'(<<V0/binary, ('nested--3319-2822--in--un--nSpaces'(V4))/binary>>, V5)); {'Compiler.ES.Doc.Seq', V6, V7} -> ('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(('nested--3319-2823--in--un--go'(V0, V6)), ('nested--3319-2823--in--un--go'(V0, V7)))) end.
'nested--3284-2785--in--un--go'(V0) -> case V0 of {'Compiler.ES.Doc.Nil'} -> []; {'Compiler.ES.Doc.LineBreak'} -> []; {'Compiler.ES.Doc.SoftSpace'} -> []; {'Compiler.ES.Doc.Comment', V1} -> []; {'Compiler.ES.Doc.Text', V2} -> [V2 | []]; {'Compiler.ES.Doc.Nest', V3, V4} -> ('nested--3284-2785--in--un--go'(V4)); {'Compiler.ES.Doc.Seq', V5, V6} -> ('Idris.Idris2.Prelude.Types.List':'un--tailRecAppend'(('nested--3284-2785--in--un--go'(V5)), ('nested--3284-2785--in--un--go'(V6)))) end.
'dn--un--neutral_Monoid_Doc'() -> {'Compiler.ES.Doc.Nil'}.
'dn--un--fromString_FromString_Doc'(V0) -> {'Compiler.ES.Doc.Text', V0}.
'dn--un--__Impl_Semigroup_Doc'(V0, V1) -> ('dn--un--<+>_Semigroup_Doc'(V0, V1)).
'dn--un--__Impl_Monoid_Doc'() -> {'Prelude.Interfaces.MkMonoid', fun (V0) -> fun (V1) -> ('dn--un--<+>_Semigroup_Doc'(V0, V1)) end end, ('dn--un--neutral_Monoid_Doc'())}.
'dn--un--__Impl_FromString_Doc'(V0) -> ('dn--un--fromString_FromString_Doc'(V0)).
'dn--un--<+>_Semigroup_Doc'(V0, V1) -> case V0 of {'Compiler.ES.Doc.Nil'} -> V1; _ -> case V1 of {'Compiler.ES.Doc.Nil'} -> V0; _ -> {'Compiler.ES.Doc.Seq', V0, V1} end end.
'un--vcat'(V0) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V1) -> fun (V2) -> ('dn--un--<+>_Semigroup_Doc'(V1, V2)) end end, ('dn--un--neutral_Monoid_Doc'())}, fun (V3) -> V3 end, ('Idris.Idris2.Data.List':'un--intersperse'({'Compiler.ES.Doc.LineBreak'}, V0)))).
'un--softEq'() -> ('dn--un--<+>_Semigroup_Doc'(('dn--un--<+>_Semigroup_Doc'({'Compiler.ES.Doc.SoftSpace'}, {'Compiler.ES.Doc.Text', <<"="/utf8>>})), {'Compiler.ES.Doc.SoftSpace'})).
'un--softComma'() -> ('dn--un--<+>_Semigroup_Doc'(('dn--un--fromString_FromString_Doc'(<<","/utf8>>)), {'Compiler.ES.Doc.SoftSpace'})).
'un--softColon'() -> ('dn--un--<+>_Semigroup_Doc'(('dn--un--fromString_FromString_Doc'(<<":"/utf8>>)), {'Compiler.ES.Doc.SoftSpace'})).
'un--shown'(V0, V1) -> {'Compiler.ES.Doc.Text', case V0 of {'Prelude.Show.MkShow', V2, V3} -> (V2(V1)) end}.
'un--pretty'(V0) -> ('Idris.Idris2.Prelude.Types':'un--fastConcat'(('nested--3319-2823--in--un--go'(<<""/utf8>>, V0)))).
'un--paren'(V0) -> ('dn--un--<+>_Semigroup_Doc'(('dn--un--<+>_Semigroup_Doc'(('dn--un--fromString_FromString_Doc'(<<"("/utf8>>)), V0)), {'Compiler.ES.Doc.Text', <<")"/utf8>>})).
'un--lambdaArrow'() -> ('dn--un--<+>_Semigroup_Doc'(('dn--un--<+>_Semigroup_Doc'({'Compiler.ES.Doc.SoftSpace'}, {'Compiler.ES.Doc.Text', <<"=>"/utf8>>})), {'Compiler.ES.Doc.SoftSpace'})).
'un--isMultiline'(V0) -> case V0 of {'Compiler.ES.Doc.Nil'} -> 0; {'Compiler.ES.Doc.LineBreak'} -> 1; {'Compiler.ES.Doc.SoftSpace'} -> 0; {'Compiler.ES.Doc.Text', V1} -> 0; {'Compiler.ES.Doc.Comment', V2} -> ('un--isMultiline'(V2)); {'Compiler.ES.Doc.Nest', V3, V4} -> ('un--isMultiline'(V4)); {'Compiler.ES.Doc.Seq', V5, V6} -> case ('un--isMultiline'(V5)) of 1 -> 1; 0 -> ('un--isMultiline'(V6)) end end.
'un--hsep'(V0) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V1) -> fun (V2) -> ('dn--un--<+>_Semigroup_Doc'(V1, V2)) end end, ('dn--un--neutral_Monoid_Doc'())}, fun (V3) -> V3 end, ('Idris.Idris2.Data.List':'un--intersperse'(('dn--un--fromString_FromString_Doc'(<<" "/utf8>>)), V0)))).
'un--hcat'(V0) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V1) -> fun (V2) -> ('dn--un--<+>_Semigroup_Doc'(V1, V2)) end end, ('dn--un--neutral_Monoid_Doc'())}, fun (V3) -> V3 end, V0)).
'un--compact'(V0) -> ('Idris.Idris2.Prelude.Types':'un--fastConcat'(('nested--3284-2785--in--un--go'(V0)))).
'un--comment'(V0) -> {'Compiler.ES.Doc.Comment', V0}.
'un--block'(V0) -> ('Idris.Idris2.Prelude.Types':'dn--un--foldMap_Foldable_List'({'Prelude.Interfaces.MkMonoid', fun (V1) -> fun (V2) -> ('dn--un--<+>_Semigroup_Doc'(V1, V2)) end end, ('dn--un--neutral_Monoid_Doc'())}, fun (V3) -> V3 end, [{'Compiler.ES.Doc.Text', <<"{"/utf8>>} | [{'Compiler.ES.Doc.Nest', 1, ('dn--un--<+>_Semigroup_Doc'({'Compiler.ES.Doc.LineBreak'}, V0))} | [{'Compiler.ES.Doc.LineBreak'} | [('dn--un--fromString_FromString_Doc'(<<"}"/utf8>>)) | []]]]])).
'un--<++>'(V0, V1) -> ('dn--un--<+>_Semigroup_Doc'(('dn--un--<+>_Semigroup_Doc'(V0, {'Compiler.ES.Doc.Text', <<" "/utf8>>})), V1)).
