module Main

import Erlang


%cg erlang """
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
"""

-- Wrapper functions around Erlang functions

getValidCharlists : IO (List ErlTerm)
getValidCharlists =
  erlUnsafeCall (List ErlTerm) "get_valid_charlists" []

getInvalidCharlists : IO (List ErlTerm)
getInvalidCharlists =
  erlUnsafeCall (List ErlTerm) "get_invalid_charlists" []

getValidIOLists : IO (List ErlTerm)
getValidIOLists =
  erlUnsafeCall (List ErlTerm) "get_valid_io_lists" []

getInvalidIOLists : IO (List ErlTerm)
getInvalidIOLists =
  erlUnsafeCall (List ErlTerm) "get_invalid_io_lists" []


-- Tests

testCharlists : IO ()
testCharlists = do
  putStrLn "testCharlists"
  validList <- getValidCharlists
  printLn (map erlTermToCharlist validList)
  invalidList <- getInvalidCharlists
  printLn (map erlTermToCharlist invalidList)

testIOLists : IO ()
testIOLists = do
  putStrLn "testIOLists"
  validList <- getValidIOLists
  printLn (map erlTermToString validList)
  invalidList <- getInvalidIOLists
  printLn (map erlTermToString invalidList)

main : IO ()
main = do
  testCharlists
  testIOLists
