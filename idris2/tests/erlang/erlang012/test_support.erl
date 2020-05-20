-module(test_support).
-export([main/1]).

main(_Args) ->
  io:format("~p~n", ['Idris.Main':foo()]),
  'Idris.Main':print_hello().
