-module('Idris.Idris2.Core.Core.PiInfo').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--traverse'/3
]).
'un--traverse'(V0, V1, V2) -> case V1 of {'Idris.Core.TT.Explicit'} -> (fun () -> {'Idris.Prelude.Types.Right', {'Idris.Core.TT.Explicit'}} end()); {'Idris.Core.TT.Implicit'} -> (fun () -> {'Idris.Prelude.Types.Right', {'Idris.Core.TT.Implicit'}} end()); {'Idris.Core.TT.AutoImplicit'} -> (fun () -> {'Idris.Prelude.Types.Right', {'Idris.Core.TT.AutoImplicit'}} end()); {'Idris.Core.TT.DefImplicit', E0} -> (fun (V3) -> begin (V4 = ((V0(V3))(V2))), case V4 of {'Idris.Prelude.Types.Left', E1} -> (fun (V5) -> {'Idris.Prelude.Types.Left', V5} end(E1)); {'Idris.Prelude.Types.Right', E2} -> (fun (V6) -> {'Idris.Prelude.Types.Right', {'Idris.Core.TT.DefImplicit', V6}} end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
