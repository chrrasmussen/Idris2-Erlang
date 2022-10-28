-module('Idris.Idris2.Core.Normalise.Quote.QuoteOpts').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--.topLevel'/1,
  'un--.sizeLimit'/1,
  'un--.patterns'/1,
  'un--topLevel'/1,
  'un--sizeLimit'/1,
  'un--patterns'/1
]).
'un--.topLevel'(V0) -> case V0 of {'Core.Normalise.Quote.MkQuoteOpts', V1, V2, V3} -> V1 end.
'un--.sizeLimit'(V0) -> case V0 of {'Core.Normalise.Quote.MkQuoteOpts', V1, V2, V3} -> V3 end.
'un--.patterns'(V0) -> case V0 of {'Core.Normalise.Quote.MkQuoteOpts', V1, V2, V3} -> V2 end.
'un--topLevel'(V0) -> case V0 of {'Core.Normalise.Quote.MkQuoteOpts', V1, V2, V3} -> V1 end.
'un--sizeLimit'(V0) -> case V0 of {'Core.Normalise.Quote.MkQuoteOpts', V1, V2, V3} -> V3 end.
'un--patterns'(V0) -> case V0 of {'Core.Normalise.Quote.MkQuoteOpts', V1, V2, V3} -> V2 end.
