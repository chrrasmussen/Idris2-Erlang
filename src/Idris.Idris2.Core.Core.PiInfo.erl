-module('Idris.Idris2.Core.Core.PiInfo').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--traverse'/2
]).
'un--traverse'(V0, V1) -> case V1 of {'Core.TT.Explicit'} -> fun (V2) -> {'Prelude.Types.Right', {'Core.TT.Explicit'}} end; {'Core.TT.Implicit'} -> fun (V3) -> {'Prelude.Types.Right', {'Core.TT.Implicit'}} end; {'Core.TT.AutoImplicit'} -> fun (V4) -> {'Prelude.Types.Right', {'Core.TT.AutoImplicit'}} end; {'Core.TT.DefImplicit', V5} -> begin (V6 = (V0(V5))), fun (V7) -> begin (V8 = (V6(V7))), case V8 of {'Prelude.Types.Left', V9} -> {'Prelude.Types.Left', V9}; {'Prelude.Types.Right', V10} -> (begin (V12 = fun (V11) -> {'Prelude.Types.Right', {'Core.TT.DefImplicit', V10}} end), V12 end(V7)) end end end end end.
