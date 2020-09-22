-module('Idris.Idris2.Core.TT.HasLength').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--take'/3,
  'un--sucR'/5,
  'un--mkHasLength'/2,
  'un--hlReverseOnto'/7,
  'un--hlReverse'/4,
  'un--hlAppend'/7,
  'un--cast'/7
]).
'un--take'(V0, V1, V2) -> case V1 of 0 -> {'Idris.Core.TT.HasLength.Z'}; _ -> begin (V3 = (V1 - 1)), case V2 of {'Idris.Prelude.Types.Stream.::', E0, E1} -> (fun (V4, V5) -> {'Idris.Core.TT.HasLength.S', ('un--take'('erased', V3, (V5())))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end end.
'un--sucR'(V0, V1, V2, V3, V4) -> case V4 of {'Idris.Core.TT.HasLength.Z'} -> (fun () -> {'Idris.Core.TT.HasLength.S', {'Idris.Core.TT.HasLength.Z'}} end()); {'Idris.Core.TT.HasLength.S', E0} -> (fun (V5) -> {'Idris.Core.TT.HasLength.S', ('un--sucR'('erased', 'erased', 'erased', 'erased', V5))} end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--mkHasLength'(V0, V1) -> case V1 of [] -> {'Idris.Core.TT.HasLength.Z'}; [E0 | E1] -> (fun (V2, V3) -> {'Idris.Core.TT.HasLength.S', ('un--mkHasLength'('erased', V3))} end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--hlReverseOnto'(V0, V1, V2, V3, V4, V5, V6) -> case V6 of {'Idris.Core.TT.HasLength.Z'} -> (fun () -> V5 end()); {'Idris.Core.TT.HasLength.S', E0} -> (fun (V7) -> ('un--hlReverseOnto'('erased', 'erased', 'erased', 'erased', 'erased', {'Idris.Core.TT.HasLength.S', V5}, V7)) end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--hlReverse'(V0, V1, V2, V3) -> ('un--hlReverseOnto'('erased', 'erased', 'erased', 'erased', 'erased', {'Idris.Core.TT.HasLength.Z'}, V3)).
'un--hlAppend'(V0, V1, V2, V3, V4, V5, V6) -> case V5 of {'Idris.Core.TT.HasLength.Z'} -> (fun () -> V6 end()); {'Idris.Core.TT.HasLength.S', E0} -> (fun (V7) -> {'Idris.Core.TT.HasLength.S', ('un--hlAppend'('erased', 'erased', 'erased', 'erased', 'erased', V7, V6))} end(E0)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--cast'(V0, V1, V2, V3, V4, V5, V6) -> case V4 of [] -> case V6 of {'Idris.Core.TT.HasLength.Z'} -> (fun () -> {'Idris.Core.TT.HasLength.Z'} end()); _ -> ('erlang':'throw'("Error: Unreachable branch")) end; [E0 | E1] -> (fun (V7, V8) -> case V6 of {'Idris.Core.TT.HasLength.S', E2} -> (fun (V9) -> {'Idris.Core.TT.HasLength.S', ('un--cast'('erased', 'erased', 'erased', 'erased', V8, ('Idris.Idris2.Data.Nat':'un--succInjective'('erased', 'erased', V5)), V9))} end(E2)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
