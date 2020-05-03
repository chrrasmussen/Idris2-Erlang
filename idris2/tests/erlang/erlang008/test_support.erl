-module(test_support).
-compile(export_all).

get_map_empty() -> #{}.
get_map_ex1() -> #{<<"first">> => <<"ex1">>}.
get_map_ex2() -> #{<<"first">> => <<"ex2">>, <<"second">> => 42}.
get_pid() -> list_to_pid("<0.4.1>").
get_ref() -> list_to_ref("#Ref<0.4192537678.4073193475.71181>").
get_port() -> list_to_port("#Port<0.4>").
get_binary() -> <<"hello">>.
get_charlist() -> "hello".
get_fun0() -> fun() -> 42 end.
get_fun1() -> fun(X) -> X end.
get_fun2() -> fun(X, Y) -> X + Y end.
get_fun_div() -> fun(X) -> 42.0 / X end.
