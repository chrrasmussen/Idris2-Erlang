module Main

import Erlang


-- Wrapper functions around Erlang functions

getValidCharlists : IO (List ErlTerm)
getValidCharlists =
  erlUnsafeCall (List ErlTerm) "test_support:get_valid_charlists" []

getInvalidCharlists : IO (List ErlTerm)
getInvalidCharlists =
  erlUnsafeCall (List ErlTerm) "test_support:get_invalid_charlists" []

getValidIOLists : IO (List ErlTerm)
getValidIOLists =
  erlUnsafeCall (List ErlTerm) "test_support:get_valid_io_lists" []

getInvalidIOLists : IO (List ErlTerm)
getInvalidIOLists =
  erlUnsafeCall (List ErlTerm) "test_support:get_invalid_io_lists" []


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
