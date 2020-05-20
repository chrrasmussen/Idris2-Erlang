-module(test_support).
-compile(export_all).

run_curried1(Func) -> Func(42).
run_curried2(Func) -> (Func(42))(100).

run0(Func) -> Func().
run1(Func) -> Func(1).
run2(Func) -> Func(1, 2).
