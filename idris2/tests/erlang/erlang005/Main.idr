module Main

import Erlang


intTest : IO ()
intTest = do
  putStrLn "intTest"
  let tuple = erlUnsafeCall (List Int) "test_support" "integers" []
  printLn tuple

integerTest : IO ()
integerTest = do
  putStrLn "integerTest"
  let tuple = erlUnsafeCall (List Integer) "test_support" "integers" []
  printLn tuple

stringTest : IO ()
stringTest = do
  putStrLn "stringTest"
  let tuple = erlUnsafeCall (List String) "test_support" "strings" []
  printLn tuple

charTest : IO ()
charTest = do
  putStrLn "charTest"
  let tuple = erlUnsafeCall (List Char) "test_support" "chars" []
  printLn tuple

doubleTest : IO ()
doubleTest = do
  putStrLn "doubleTest"
  let tuple = erlUnsafeCall (List Double) "test_support" "doubles" []
  printLn tuple

listTest : IO ()
listTest = do
  putStrLn "listTest"
  let tuple = erlUnsafeCall (List (List String)) "test_support" "lists" []
  printLn tuple

-- Skips function calls, (Raw a), ErlTerm for now

erlAtomTest : IO ()
erlAtomTest = do
  putStrLn "erlAtomTest"
  let tuple = erlUnsafeCall (List ErlAtom) "test_support" "erl_atoms" []
  printLn tuple

erlCharlistTest : IO ()
erlCharlistTest = do
  putStrLn "erlCharlistTest"
  let tuple = erlUnsafeCall (List ErlCharlist) "test_support" "erl_charlists" []
  printLn tuple

erlNilTest : IO ()
erlNilTest = do
  putStrLn "erlNilTest"
  let nil = erlUnsafeCall ErlNil "test_support" "erl_nil" []
  printLn nil

erlConsTest : IO ()
erlConsTest = do
  putStrLn "erlConsTest"
  let tuple = erlUnsafeCall (ErlTuple4 (ErlCons Integer Integer) (ErlCons Integer String) (ErlCons Integer ErlNil) (ErlCons Integer (ErlCons Integer ErlNil))) "test_support" "erl_cons" []
  printLn tuple

erlListTest : IO ()
erlListTest = do
  putStrLn "erlListTest"
  let tuple = erlUnsafeCall (ErlTuple2 (ErlList []) (ErlList [String, Int, Char])) "test_support" "erl_lists" []
  printLn tuple

erlTuplesTest : IO ()
erlTuplesTest = do
  putStrLn "erlTuplesTest"
  let tuple = erlUnsafeCall (ErlTuple5 ErlTuple0 (ErlTuple1 Int) (ErlTuple2 Int Int) (ErlTuple3 Int Int Int) (ErlTuple4 Int Int Int Int)) "test_support" "erl_tuples" []
  printLn tuple

main : IO ()
main = do
  intTest
  integerTest
  stringTest
  charTest
  doubleTest
  listTest
  erlAtomTest
  erlCharlistTest
  erlNilTest
  erlConsTest
  erlListTest
  erlTuplesTest
