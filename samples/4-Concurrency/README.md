# Concurrency

This example includes a translation of the following Erlang code
(https://www.erlang.org/course/concurrent-programming) to Idris 2.

```erlang
-module(echo).
-export([go/0, loop/0]).

go() ->
  Pid2 = spawn(echo, loop, []),
  Pid2 ! {self(), hello},
  receive
    {Pid2, Msg} ->
      io:format("P1 ~w~n",[Msg])
  end,
  Pid2 ! stop.

loop() ->
  receive
    {From, Msg} ->
      From ! {self(), Msg},
      loop();
    stop ->
      true
  end.
```

... More to come ...


## Running the example

`idris2 --exec main Main.idr`
