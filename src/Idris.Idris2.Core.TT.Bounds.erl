-module('Idris.Idris2.Core.TT.Bounds').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--sizeOf'/2
]).
'un--sizeOf'(V0, V1) -> case V1 of {'Idris.Core.TT.Bounds.None'} -> (fun () -> ('Idris.Idris2.Core.TT.SizeOf':'un--zero'('erased')) end()); {'Idris.Core.TT.Bounds.Add', E0, E1, E2} -> (fun (V2, V3, V4) -> ('Idris.Idris2.Core.TT.SizeOf':'un--suc'('erased', 'erased', 'erased', ('un--sizeOf'('erased', V4)))) end(E0, E1, E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
