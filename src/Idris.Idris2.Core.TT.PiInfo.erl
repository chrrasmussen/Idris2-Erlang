-module('Idris.Idris2.Core.TT.PiInfo').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--isImplicit'/1
]).
'un--isImplicit'(V0) -> case V0 of {'Core.TT.Explicit'} -> 0; _ -> 1 end.
