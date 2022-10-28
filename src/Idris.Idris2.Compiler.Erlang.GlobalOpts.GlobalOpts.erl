-module('Idris.Idris2.Compiler.Erlang.GlobalOpts.GlobalOpts').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.useMutableStorage'/1,
  'un--.prefixStr'/1,
  'un--.outputFormat'/1,
  'un--.inlineSize'/1,
  'un--useMutableStorage'/1,
  'un--prefixStr'/1,
  'un--outputFormat'/1,
  'un--inlineSize'/1
]).
'un--.useMutableStorage'(V0) -> case V0 of {'Compiler.Erlang.GlobalOpts.MkGlobalOpts', V1, V2, V3, V4} -> V4 end.
'un--.prefixStr'(V0) -> case V0 of {'Compiler.Erlang.GlobalOpts.MkGlobalOpts', V1, V2, V3, V4} -> V2 end.
'un--.outputFormat'(V0) -> case V0 of {'Compiler.Erlang.GlobalOpts.MkGlobalOpts', V1, V2, V3, V4} -> V1 end.
'un--.inlineSize'(V0) -> case V0 of {'Compiler.Erlang.GlobalOpts.MkGlobalOpts', V1, V2, V3, V4} -> V3 end.
'un--useMutableStorage'(V0) -> case V0 of {'Compiler.Erlang.GlobalOpts.MkGlobalOpts', V1, V2, V3, V4} -> V4 end.
'un--prefixStr'(V0) -> case V0 of {'Compiler.Erlang.GlobalOpts.MkGlobalOpts', V1, V2, V3, V4} -> V2 end.
'un--outputFormat'(V0) -> case V0 of {'Compiler.Erlang.GlobalOpts.MkGlobalOpts', V1, V2, V3, V4} -> V1 end.
'un--inlineSize'(V0) -> case V0 of {'Compiler.Erlang.GlobalOpts.MkGlobalOpts', V1, V2, V3, V4} -> V3 end.
