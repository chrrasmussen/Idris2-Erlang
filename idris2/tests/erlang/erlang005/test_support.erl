-module(test_support).
-compile(export_all).

integers() -> [0, -42, 42].
strings() -> [<<"">>, <<"ok">>, <<"a42">>].
chars() -> [97, 10, 402].
doubles() -> [0.1, -42.2, 42.3].
unit() -> {}.
lists() -> [[], ["a", "b", "c"]].
erl_atoms() -> ['', ok, a42].
erl_charlists() -> [[], "ok", "a42"].
erl_nil() -> [].
erl_cons() -> {[1 | 2], [1 | <<"a">>], [1], [1, 2]}.
erl_lists() -> {[], [<<"a">>, 10, $c]}.
erl_tuples() -> {{}, {1}, {1, 2}, {1, 2, 3}, {1, 2, 3, 4}}.
