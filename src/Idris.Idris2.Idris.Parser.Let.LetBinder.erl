-module('Idris.Idris2.Idris.Parser.Let.LetBinder').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.letUsage'/1,
  'un--.letUnhappy'/1,
  'un--.letPattern'/1,
  'un--.letBoundType'/1,
  'un--.letBoundTerm'/1,
  'un--letUsage'/1,
  'un--letUnhappy'/1,
  'un--letPattern'/1,
  'un--letBoundType'/1,
  'un--letBoundTerm'/1
]).
'un--.letUsage'(V0) -> case V0 of {'Idris.Parser.Let.MkLetBinder', V1, V2, V3, V4, V5} -> V1 end.
'un--.letUnhappy'(V0) -> case V0 of {'Idris.Parser.Let.MkLetBinder', V1, V2, V3, V4, V5} -> V5 end.
'un--.letPattern'(V0) -> case V0 of {'Idris.Parser.Let.MkLetBinder', V1, V2, V3, V4, V5} -> V2 end.
'un--.letBoundType'(V0) -> case V0 of {'Idris.Parser.Let.MkLetBinder', V1, V2, V3, V4, V5} -> V3 end.
'un--.letBoundTerm'(V0) -> case V0 of {'Idris.Parser.Let.MkLetBinder', V1, V2, V3, V4, V5} -> V4 end.
'un--letUsage'(V0) -> case V0 of {'Idris.Parser.Let.MkLetBinder', V1, V2, V3, V4, V5} -> V1 end.
'un--letUnhappy'(V0) -> case V0 of {'Idris.Parser.Let.MkLetBinder', V1, V2, V3, V4, V5} -> V5 end.
'un--letPattern'(V0) -> case V0 of {'Idris.Parser.Let.MkLetBinder', V1, V2, V3, V4, V5} -> V2 end.
'un--letBoundType'(V0) -> case V0 of {'Idris.Parser.Let.MkLetBinder', V1, V2, V3, V4, V5} -> V3 end.
'un--letBoundTerm'(V0) -> case V0 of {'Idris.Parser.Let.MkLetBinder', V1, V2, V3, V4, V5} -> V4 end.
