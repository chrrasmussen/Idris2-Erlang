-module(test_support).
-compile(export_all).

get_valid_charlists() -> [
    "",
    "abc",
    [],
    [97, 98, 99]
  ].

get_invalid_charlists() -> [
    97,
    [97 | [98 | 99]],
    5.0,
    [[97, 98, 99]]
  ].

get_valid_io_lists() -> [
    [],
    <<"">>,
    [[]],
    [97],
    [[97]],
    ["a" | "b"],
    [<<"a">> | <<"b">>],
    [<<"a">>, [[[[]], 98, [[]]] | <<"c">>]]
  ].

get_invalid_io_lists() -> [
    97,
    [97 | 98],
    5.0,
    [[97 | 98]]
  ].
