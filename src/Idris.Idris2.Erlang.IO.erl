-module('Idris.Idris2.Erlang.IO').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--prim__erlUnsafeCall'/5,
  'un--prim__erlTryCatch'/3,
  'un--prim__erlModule'/0,
  'un--erlUnsafeCall'/7,
  'un--erlTryCatch'/4,
  'un--erlModule'/0,
  'un--erlCall'/7,
  'un--ErlException'/0,
  'un--<+>'/2
]).
'un--prim__erlUnsafeCall'(V0, V1, V2, V3, V4) -> ('erlang':'apply'(('erlang':'binary_to_atom'(V2, 'utf8')), ('erlang':'binary_to_atom'(V3, 'utf8')), V4)).
'un--prim__erlTryCatch'(V0, V1, V2) -> try ('Idris.Idris2.PrimIO':'un--unsafePerformIO'('erased', V1)) of V3 -> {'Idris.Prelude.Types.Right', V3} catch E0:E1:E2 -> (V4 = {E0, E1, E2}), {'Idris.Prelude.Types.Left', V4} end.
'un--prim__erlModule'() -> 'Idris.Idris2.Erlang.IO'.
'un--erlUnsafeCall'(V0, V1, V2, V3, V4, V5, V6) -> ('erlang':'apply'(('erlang':'binary_to_atom'(V3, 'utf8')), ('erlang':'binary_to_atom'(V4, 'utf8')), V5)).
'un--erlTryCatch'(V0, V1, V2, V3) -> case V2 of {'Idris.Prelude.IO.dn--un--__mkHasIO', E0, E1} -> (fun (V4, V5) -> ((V5('erased'))(fun (V6) -> try ('Idris.Idris2.PrimIO':'un--unsafePerformIO'('erased', V3)) of V7 -> {'Idris.Prelude.Types.Right', V7} catch E2:E3:E4 -> (V8 = {E2, E3, E4}), {'Idris.Prelude.Types.Left', V8} end end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--erlModule'() -> 'Idris.Idris2.Erlang.IO'.
'un--erlCall'(V0, V1, V2, V3, V4, V5, V6) -> ('un--erlTryCatch'('erased', 'erased', V2, fun (V7) -> ('erlang':'apply'(('erlang':'binary_to_atom'(V3, 'utf8')), ('erlang':'binary_to_atom'(V4, 'utf8')), V5)) end)).
'un--ErlException'() -> {'Idris.Erlang.Types.ErlTuple3', {'Idris.Erlang.Types.ErlAtom'}, {'Idris.Erlang.Types.ErlTerm'}, {'Idris.Erlang.Types.ErlTerm'}}.
'un--<+>'(V0, V1) -> {'Idris.Erlang.IO.Combine', V0, V1}.
