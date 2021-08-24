-module('Idris.Idris2.Libraries.Data.Fin').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'with--strengthen-581'/3,
  'un--strengthen'/2
]).
'with--strengthen-581'(V0, V1, V2) -> case V2 of {'Idris.Prelude.Types.Nothing'} -> (fun () -> {'Idris.Prelude.Types.Nothing'} end()); {'Idris.Prelude.Types.Just', E0} -> (fun (V3) -> {'Idris.Prelude.Types.Just', (1 + V3)} end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--strengthen'(V0, V1) -> case V0 of 0 -> {'Idris.Prelude.Types.Nothing'}; _ -> begin (V2 = (V0 - 1)), case V1 of 0 -> {'Idris.Prelude.Types.Just', 0}; _ -> begin (V3 = (V1 - 1)), ('with--strengthen-581'(V2, V3, ('un--strengthen'(V2, V3)))) end end end end.
