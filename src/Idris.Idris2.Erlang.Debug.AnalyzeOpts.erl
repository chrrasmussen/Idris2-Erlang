-module('Idris.Idris2.Erlang.Debug.AnalyzeOpts').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.sort'/1,
  'un--.filters'/1,
  'un--sort'/1,
  'un--filters'/1
]).
'un--.sort'(V0) -> case V0 of {'Erlang.Debug.MkAnalyzeOpts', V1, V2} -> V2 end.
'un--.filters'(V0) -> case V0 of {'Erlang.Debug.MkAnalyzeOpts', V1, V2} -> V1 end.
'un--sort'(V0) -> case V0 of {'Erlang.Debug.MkAnalyzeOpts', V1, V2} -> V2 end.
'un--filters'(V0) -> case V0 of {'Erlang.Debug.MkAnalyzeOpts', V1, V2} -> V1 end.
