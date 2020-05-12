module Main

import Erlang


intTest : IO ()
intTest = do
  putStrLn "intTest"
  tuple <- erlUnsafeCall (List Int) "test_support" "integers" []
  printLn tuple

integerTest : IO ()
integerTest = do
  putStrLn "integerTest"
  tuple <- erlUnsafeCall (List Integer) "test_support" "integers" []
  printLn tuple

stringTest : IO ()
stringTest = do
  putStrLn "stringTest"
  tuple <- erlUnsafeCall (List String) "test_support" "strings" []
  printLn tuple

charTest : IO ()
charTest = do
  putStrLn "charTest"
  tuple <- erlUnsafeCall (List Char) "test_support" "chars" []
  printLn tuple

doubleTest : IO ()
doubleTest = do
  putStrLn "doubleTest"
  tuple <- erlUnsafeCall (List Double) "test_support" "doubles" []
  printLn tuple

unitTest : IO ()
unitTest = do
  putStrLn "unitTest"
  unit <- erlUnsafeCall Unit "test_support" "unit" []
  printLn unit

listTest : IO ()
listTest = do
  putStrLn "listTest"
  tuple <- erlUnsafeCall (List (List String)) "test_support" "lists" []
  printLn tuple

-- Skips function calls, (Raw a), ErlTerm for now

erlAtomTest : IO ()
erlAtomTest = do
  putStrLn "erlAtomTest"
  tuple <- erlUnsafeCall (List ErlAtom) "test_support" "erl_atoms" []
  printLn tuple

erlBinaryTest : IO ()
erlBinaryTest = do
  putStrLn "erlBinaryTest"
  tuple <- erlUnsafeCall (List ErlBinary) "test_support" "erl_binaries" []
  printLn tuple

erlCharlistTest : IO ()
erlCharlistTest = do
  putStrLn "erlCharlistTest"
  tuple <- erlUnsafeCall (List ErlCharlist) "test_support" "erl_charlists" []
  printLn tuple

erlNilTest : IO ()
erlNilTest = do
  putStrLn "erlNilTest"
  nil <- erlUnsafeCall ErlNil "test_support" "erl_nil" []
  printLn nil

erlConsTest : IO ()
erlConsTest = do
  putStrLn "erlConsTest"
  tuple <- erlUnsafeCall (ErlTuple4 (ErlCons Integer Integer) (ErlCons Integer String) (ErlCons Integer ErlNil) (ErlCons Integer (ErlCons Integer ErlNil))) "test_support" "erl_cons" []
  printLn tuple

erlListTest : IO ()
erlListTest = do
  putStrLn "erlListTest"
  tuple <- erlUnsafeCall (ErlTuple2 (ErlList []) (ErlList [String, Int, Char])) "test_support" "erl_lists" []
  printLn tuple

erlTuplesTest : IO ()
erlTuplesTest = do
  putStrLn "erlTuplesTest"
  tuple <- erlUnsafeCall (ErlTuple5 ErlTuple0 (ErlTuple1 Int) (ErlTuple2 Int Int) (ErlTuple3 Int Int Int) (ErlTuple4 Int Int Int Int)) "test_support" "erl_tuples" []
  printLn tuple

main : IO ()
main = do
  intTest
  integerTest
  stringTest
  charTest
  doubleTest
  unitTest
  listTest
  erlAtomTest
  erlBinaryTest
  erlCharlistTest
  erlNilTest
  erlConsTest
  erlListTest
  erlTuplesTest
