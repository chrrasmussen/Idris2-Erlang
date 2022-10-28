-module('Idris.Idris2.Erlang.IO').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--erlUnsafeCallPure'/3,
  'un--erlUnsafeCall'/4,
  'un--erlTryCatch'/2,
  'un--erlModule'/0,
  'un--erlCall'/4,
  'un--ErlException'/0,
  'un--<+>'/2
]).
'un--erlUnsafeCallPure'(V0, V1, V2) -> ('erlang':'apply'(('erlang':'binary_to_atom'(V0, 'utf8')), ('erlang':'binary_to_atom'(V1, 'utf8')), V2)).
'un--erlUnsafeCall'(V0, V1, V2, V3) -> case V0 of {'Prelude.IO.MkHasIO', V4, V5} -> case V4 of {'Prelude.Interfaces.MkMonad', V6, V7, V8} -> case V6 of {'Prelude.Interfaces.MkApplicative', V9, V10, V11} -> ((V10('erased'))(('erlang':'apply'(('erlang':'binary_to_atom'(V1, 'utf8')), ('erlang':'binary_to_atom'(V2, 'utf8')), V3)))) end end end.
'un--erlTryCatch'(V0, V1) -> case V0 of {'Prelude.IO.MkHasIO', V2, V3} -> ((V3('erased'))(fun (V4) -> try ('Idris.Idris2.PrimIO':'un--unsafePerformIO'(V1)) of V5 -> {'Prelude.Types.Right', V5} catch E0:E1:E2 -> (V6 = {E0, E1, E2}), {'Prelude.Types.Left', V6} end end)) end.
'un--erlModule'() -> 'Idris.Idris2.Erlang.IO'.
'un--erlCall'(V0, V1, V2, V3) -> ('un--erlTryCatch'(V0, fun (V4) -> ('erlang':'apply'(('erlang':'binary_to_atom'(V1, 'utf8')), ('erlang':'binary_to_atom'(V2, 'utf8')), V3)) end)).
'un--ErlException'() -> {'Erlang.Types.ErlTuple3', {'Erlang.Types.ErlAtom'}, {'Erlang.Types.ErlTerm'}, {'Erlang.Types.ErlTerm'}}.
'un--<+>'(V0, V1) -> {'Erlang.IO.Combine', V0, V1}.
