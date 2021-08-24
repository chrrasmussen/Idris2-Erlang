-module('Idris.Idris2.Erlang.IO').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--erlUnsafeCall'/3,
  'un--erlTryCatch'/2,
  'un--erlModule'/0,
  'un--erlCall'/4,
  'un--ErlException'/0,
  'un--<+>'/2
]).
'un--erlUnsafeCall'(V0, V1, V2) -> ('erlang':'apply'(('erlang':'binary_to_atom'(V0, 'utf8')), ('erlang':'binary_to_atom'(V1, 'utf8')), V2)).
'un--erlTryCatch'(V0, V1) -> case V0 of {'Idris.Prelude.IO.MkHasIO', E0, E1} -> (fun (V2, V3) -> ((V3('erased'))(fun (V4) -> try ('Idris.Idris2.PrimIO':'un--unsafePerformIO'(V1)) of V5 -> {'Idris.Prelude.Types.Right', V5} catch E2:E3:E4 -> (V6 = {E2, E3, E4}), {'Idris.Prelude.Types.Left', V6} end end)) end(E0, E1)); _ -> ('erlang':'throw'("Error: Unreachable branch")) end.
'un--erlModule'() -> 'Idris.Idris2.Erlang.IO'.
'un--erlCall'(V0, V1, V2, V3) -> ('un--erlTryCatch'(V0, fun (V4) -> ('erlang':'apply'(('erlang':'binary_to_atom'(V1, 'utf8')), ('erlang':'binary_to_atom'(V2, 'utf8')), V3)) end)).
'un--ErlException'() -> {'Idris.Erlang.Types.ErlTuple3', {'Idris.Erlang.Types.ErlAtom'}, {'Idris.Erlang.Types.ErlTerm'}, {'Idris.Erlang.Types.ErlTerm'}}.
'un--<+>'(V0, V1) -> {'Idris.Erlang.IO.Combine', V0, V1}.
