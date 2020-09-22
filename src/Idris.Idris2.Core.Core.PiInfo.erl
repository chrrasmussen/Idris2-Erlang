-module('Idris.Idris2.Core.Core.PiInfo').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--traverse'/4
]).
'un--traverse'(V0, V1, V2, V3) -> case V3 of {'Idris.Core.TT.Explicit'} -> (fun () -> fun (V4) -> {'Idris.Prelude.Types.Right', {'Idris.Core.TT.Explicit'}} end end()); {'Idris.Core.TT.Implicit'} -> (fun () -> fun (V5) -> {'Idris.Prelude.Types.Right', {'Idris.Core.TT.Implicit'}} end end()); {'Idris.Core.TT.AutoImplicit'} -> (fun () -> fun (V6) -> {'Idris.Prelude.Types.Right', {'Idris.Core.TT.AutoImplicit'}} end end()); {'Idris.Core.TT.DefImplicit', E0} -> (fun (V7) -> fun (V8) -> begin (V9 = ((V2(V7))(V8))), case V9 of {'Idris.Prelude.Types.Left', E1} -> (fun (V10) -> {'Idris.Prelude.Types.Left', V10} end(E1)); {'Idris.Prelude.Types.Right', E2} -> (fun (V11) -> {'Idris.Prelude.Types.Right', {'Idris.Core.TT.DefImplicit', V11}} end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
