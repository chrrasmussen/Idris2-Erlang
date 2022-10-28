-module('Idris.Idris2.Libraries.Data.Fin').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--strengthen-2997'/3,
  'un--strengthen'/2
]).
'with--strengthen-2997'(V0, V1, V2) -> case V2 of {'Prelude.Types.Nothing'} -> {'Prelude.Types.Nothing'}; {'Prelude.Types.Just', V3} -> {'Prelude.Types.Just', (V3 + 1)} end.
'un--strengthen'(V0, V1) -> case V0 of 0 -> {'Prelude.Types.Nothing'}; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> {'Prelude.Types.Just', 0}; _ -> begin (V3 = (V1 - 1)), ('with--strengthen-2997'(V2, V3, ('un--strengthen'(V2, V3)))) end end end end.
