module Main

import Erlang


-- Wrapper functions around Erlang functions

validCharlists : List ErlTerm
validCharlists =
  erlUnsafeCallPure (List ErlTerm) "test_support" "get_valid_charlists" []

invalidCharlists : List ErlTerm
invalidCharlists =
  erlUnsafeCallPure (List ErlTerm) "test_support" "get_invalid_charlists" []

validIOLists : List ErlTerm
validIOLists =
  erlUnsafeCallPure (List ErlTerm) "test_support" "get_valid_io_lists" []

invalidIOLists : List ErlTerm
invalidIOLists =
  erlUnsafeCallPure (List ErlTerm) "test_support" "get_invalid_io_lists" []


-- Helper functions

ioDataToString : ErlTerm -> String
ioDataToString x =
  erlUnsafeCallPure String "unicode" "characters_to_binary" [x]


-- Tests

testCharlists : IO ()
testCharlists = do
  putStrLn "testCharlists"
  printLn (map (erlDecodeMay charlist) validCharlists)
  printLn (map (erlDecodeMay charlist) invalidCharlists)

testIOLists : IO ()
testIOLists = do
  putStrLn "testIOLists"
  printLn (map (map ioDataToString . erlDecodeMay ioData) validIOLists)
  printLn (map (map ioDataToString . erlDecodeMay ioData) invalidIOLists)

main : IO ()
main = do
  testCharlists
  testIOLists
