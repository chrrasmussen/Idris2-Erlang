-module('Idris.Idris2.Core.Options.RewriteNames').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.rewriteName'/1,
  'un--.equalType'/1,
  'un--rewriteName'/1,
  'un--equalType'/1
]).
'un--.rewriteName'(V0) -> case V0 of {'Core.Options.MkRewriteNs', V1, V2} -> V2 end.
'un--.equalType'(V0) -> case V0 of {'Core.Options.MkRewriteNs', V1, V2} -> V1 end.
'un--rewriteName'(V0) -> case V0 of {'Core.Options.MkRewriteNs', V1, V2} -> V2 end.
'un--equalType'(V0) -> case V0 of {'Core.Options.MkRewriteNs', V1, V2} -> V1 end.
