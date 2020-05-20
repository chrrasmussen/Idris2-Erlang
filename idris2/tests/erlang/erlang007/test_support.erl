-module(test_support).
-compile(export_all).

create_curried_fun1() -> fun(X) -> X + 10 end.
create_curried_fun2() -> fun(Y) -> fun(X) -> X * Y end end.

create_fun0() -> fun() -> 42 end.
create_fun1() -> fun(X) -> X + 1 end.
create_fun2() -> fun(X, Y) -> X + Y end.

get_format() -> "Side-effecting Erlang function with arity ~p~n".

create_io0() -> fun() -> io:format(get_format(), [0]), 42 end.
create_io1() -> fun(X) -> io:format(get_format(), [1]), X + 1 end.
create_io2() -> fun(X, Y) -> io:format(get_format(), [2]), X + Y end.
