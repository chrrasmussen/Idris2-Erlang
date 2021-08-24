-module('Idris.Idris2.Data.IORef').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--writeIORef1'/3,
  'un--writeIORef'/3,
  'un--readIORef'/2,
  'un--newIORef'/2,
  'un--modifyIORef'/3
]).
'un--writeIORef1'(V0, V1, V2) -> case V0 of {'Idris.Prelude.IO.MkHasLinearIO', E0, E1} -> (fun (V3, V4) -> ((V4('erased'))(fun (V5) -> ('erlang':'put'(V1, V2)) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--writeIORef'(V0, V1, V2) -> case V0 of {'Idris.Prelude.IO.MkHasIO', E0, E1} -> (fun (V3, V4) -> ((V4('erased'))(fun (V5) -> ('erlang':'put'(V1, V2)) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--readIORef'(V0, V1) -> case V0 of {'Idris.Prelude.IO.MkHasIO', E0, E1} -> (fun (V2, V3) -> ((V3('erased'))(fun (V4) -> ('erlang':'get'(V1)) end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--newIORef'(V0, V1) -> case V0 of {'Idris.Prelude.IO.MkHasIO', E0, E1} -> (fun (V2, V3) -> case V2 of {'Idris.Prelude.Interfaces.MkMonad', E2, E3, E4} -> (fun (V4, V5, V6) -> ((((V5('erased'))('erased'))(case V0 of {'Idris.Prelude.IO.MkHasIO', E5, E6} -> (fun (V16, V17) -> ((V17('erased'))(fun (V18) -> begin (V19 = ('erlang':'make_ref'())), begin ('erlang':'put'(V19, V1)), V19 end end end)) end(E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end))(fun (V7) -> case V0 of {'Idris.Prelude.IO.MkHasIO', E7, E8} -> (fun (V8, V9) -> case V8 of {'Idris.Prelude.Interfaces.MkMonad', E9, E10, E11} -> (fun (V10, V11, V12) -> case V10 of {'Idris.Prelude.Interfaces.MkApplicative', E12, E13, E14} -> (fun (V13, V14, V15) -> ((V14('erased'))(V7)) end(E12, E13, E14)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E9, E10, E11)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end)) end(E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--modifyIORef'(V0, V1, V2) -> case V0 of {'Idris.Prelude.IO.MkHasIO', E0, E1} -> (fun (V3, V4) -> case V3 of {'Idris.Prelude.Interfaces.MkMonad', E2, E3, E4} -> (fun (V5, V6, V7) -> ((((V6('erased'))('erased'))(case V0 of {'Idris.Prelude.IO.MkHasIO', E5, E6} -> (fun (V12, V13) -> ((V13('erased'))(fun (V14) -> ('erlang':'get'(V1)) end)) end(E5, E6)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end))(fun (V8) -> case V0 of {'Idris.Prelude.IO.MkHasIO', E7, E8} -> (fun (V9, V10) -> ((V10('erased'))(fun (V11) -> ('erlang':'put'(V1, (V2(V8)))) end)) end(E7, E8)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end)) end(E2, E3, E4)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
