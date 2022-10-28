-module('Idris.Idris2.Libraries.Data.Span.Span').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.start'/1,
  'un--.property'/1,
  'un--.length'/1,
  'un--start'/1,
  'un--property'/1,
  'un--length'/1
]).
'un--.start'(V0) -> case V0 of {'Libraries.Data.Span.MkSpan', V1, V2, V3} -> V1 end.
'un--.property'(V0) -> case V0 of {'Libraries.Data.Span.MkSpan', V1, V2, V3} -> V3 end.
'un--.length'(V0) -> case V0 of {'Libraries.Data.Span.MkSpan', V1, V2, V3} -> V2 end.
'un--start'(V0) -> case V0 of {'Libraries.Data.Span.MkSpan', V1, V2, V3} -> V1 end.
'un--property'(V0) -> case V0 of {'Libraries.Data.Span.MkSpan', V1, V2, V3} -> V3 end.
'un--length'(V0) -> case V0 of {'Libraries.Data.Span.MkSpan', V1, V2, V3} -> V2 end.
