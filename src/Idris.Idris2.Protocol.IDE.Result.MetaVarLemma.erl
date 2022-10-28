-module('Idris.Idris2.Protocol.IDE.Result.MetaVarLemma').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.lemma'/1,
  'un--.application'/1,
  'un--lemma'/1,
  'un--application'/1
]).
'un--.lemma'(V0) -> case V0 of {'Protocol.IDE.Result.MkMetaVarLemma', V1, V2} -> V2 end.
'un--.application'(V0) -> case V0 of {'Protocol.IDE.Result.MkMetaVarLemma', V1, V2} -> V1 end.
'un--lemma'(V0) -> case V0 of {'Protocol.IDE.Result.MkMetaVarLemma', V1, V2} -> V2 end.
'un--application'(V0) -> case V0 of {'Protocol.IDE.Result.MkMetaVarLemma', V1, V2} -> V1 end.
