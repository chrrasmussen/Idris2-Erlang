-module('Idris.Idris2.Erlang.Types.Atom').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'nested--4441-2547--in--un--atomToDecls'/2,
  'un--generateAtomHelpers'/1
]).
'nested--4441-2547--in--un--atomToDecls'(V0, V1) -> begin (V2 = {'Language.Reflection.TT.UN', {'Language.Reflection.TT.Basic', <<<<"A_"/utf8>>/binary, V1/binary>>}}), [{'Language.Reflection.TTImp.IClaim', {'Language.Reflection.TT.EmptyFC'}, 2, 0, [{'Language.Reflection.TTImp.Inline'} | []], {'Language.Reflection.TTImp.MkTy', {'Language.Reflection.TT.EmptyFC'}, {'Language.Reflection.TT.EmptyFC'}, V2, {'Language.Reflection.TTImp.IVar', {'Language.Reflection.TT.MkFC', {'Language.Reflection.TT.PhysicalIdrSrc', [<<"Atom"/utf8>> | [<<"Types"/utf8>> | [<<"Erlang"/utf8>> | []]]]}, {'Builtin.MkPair', 38, 76}, {'Builtin.MkPair', 38, 83}}, {'Language.Reflection.TT.UN', {'Language.Reflection.TT.Basic', <<"ErlAtom"/utf8>>}}}}} | [{'Language.Reflection.TTImp.IDef', {'Language.Reflection.TT.EmptyFC'}, V2, [{'Language.Reflection.TTImp.PatClause', {'Language.Reflection.TT.EmptyFC'}, {'Language.Reflection.TTImp.IVar', {'Language.Reflection.TT.EmptyFC'}, V2}, {'Language.Reflection.TTImp.IApp', {'Language.Reflection.TT.MkFC', {'Language.Reflection.TT.PhysicalIdrSrc', [<<"Atom"/utf8>> | [<<"Types"/utf8>> | [<<"Erlang"/utf8>> | []]]]}, {'Builtin.MkPair', 42, 18}, {'Builtin.MkPair', 42, 55}}, {'Language.Reflection.TTImp.IVar', {'Language.Reflection.TT.MkFC', {'Language.Reflection.TT.PhysicalIdrSrc', [<<"Atom"/utf8>> | [<<"Types"/utf8>> | [<<"Erlang"/utf8>> | []]]]}, {'Builtin.MkPair', 42, 18}, {'Builtin.MkPair', 42, 24}}, {'Language.Reflection.TT.UN', {'Language.Reflection.TT.Basic', <<"MkAtom"/utf8>>}}}, {'Language.Reflection.TTImp.IPrimVal', {'Language.Reflection.TT.EmptyFC'}, {'Language.Reflection.TT.Str', V1}}}} | []]} | []]] end.
'un--generateAtomHelpers'(V0) -> ('Idris.Idris2.Language.Reflection':'dn--un--declare_Elaboration_Elab'(('Idris.Idris2.Prelude.Types':'un--listBind'(V0, fun (V1) -> ('nested--4441-2547--in--un--atomToDecls'(V0, V1)) end)))).
