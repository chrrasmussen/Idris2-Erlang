-module('Idris.Idris2.Core.Context.SearchData').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.hintGroups'/1,
  'un--.detArgs'/1,
  'un--hintGroups'/1,
  'un--detArgs'/1
]).
'un--.hintGroups'(V0) -> case V0 of {'Core.Context.MkSearchData', V1, V2} -> V2 end.
'un--.detArgs'(V0) -> case V0 of {'Core.Context.MkSearchData', V1, V2} -> V1 end.
'un--hintGroups'(V0) -> case V0 of {'Core.Context.MkSearchData', V1, V2} -> V2 end.
'un--detArgs'(V0) -> case V0 of {'Core.Context.MkSearchData', V1, V2} -> V1 end.
