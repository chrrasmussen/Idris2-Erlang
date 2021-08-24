-module('Idris.Idris2.Libraries.Data.DList').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--snoc'/3,
  'un--reify'/1,
  'un--appendR'/3,
  'un--appendL'/3,
  'un--Nil'/1,
  'un--DList'/1,
  'un--::'/3,
  'un--++'/3
]).
'un--snoc'(V0, V1, V2) -> (V0([V1 | V2])).
'un--reify'(V0) -> (V0([])).
'un--appendR'(V0, V1, V2) -> (V0(('Idris.Idris2.Prelude.Types.List':'un--++'(V1, V2)))).
'un--appendL'(V0, V1, V2) -> ('Idris.Idris2.Prelude.Types.List':'un--++'(V0, (V1(V2)))).
'un--Nil'(V0) -> V0.
'un--DList'(V0) -> {'Idris.->', {'Idris.Prelude.Basics.List', V0}, fun (V1) -> {'Idris.Prelude.Basics.List', V0} end}.
'un--::'(V0, V1, V2) -> [V0 | (V1(V2))].
'un--++'(V0, V1, V2) -> (V0((V1(V2)))).
