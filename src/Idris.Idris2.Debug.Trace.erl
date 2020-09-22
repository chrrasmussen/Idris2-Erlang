-module('Idris.Idris2.Debug.Trace').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--trace'/3
]).
'un--trace'(V0, V1, V2) -> ('Idris.Idris2.PrimIO':'un--unsafePerformIO'('erased', fun (V3) -> begin (V31 = (('Idris.Idris2.Prelude.IO':'un--putStrLn'('erased', {'Idris.Prelude.IO.dn--un--__mkHasIO', {'Idris.Prelude.Interfaces.dn--un--__mkMonad', {'Idris.Prelude.Interfaces.dn--un--__mkApplicative', fun (V4) -> fun (V5) -> fun (V6) -> fun (V7) -> fun (V8) -> ('Idris.Idris2.Prelude.IO':'dn--un--map_Functor__IO'('erased', 'erased', V6, V7, V8)) end end end end end, fun (V9) -> fun (V10) -> fun (V11) -> V10 end end end, fun (V12) -> fun (V13) -> fun (V14) -> fun (V15) -> fun (V16) -> begin (V17 = (V14(V16))), begin (V18 = (V15(V16))), (V17(V18)) end end end end end end end}, fun (V19) -> fun (V20) -> fun (V21) -> fun (V22) -> fun (V23) -> begin (V24 = (V21(V23))), ((V22(V24))(V23)) end end end end end end, fun (V25) -> fun (V26) -> fun (V27) -> begin (V28 = (V26(V27))), (V28(V27)) end end end end}, fun (V29) -> fun (V30) -> V30 end end}, V1))(V3))), V2 end end)).
