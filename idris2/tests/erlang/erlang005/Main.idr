module Main

import Erlang

%cg erlang """
integers() -> [0, -42, 42].
strings() -> ["", <<"test">>, [97 | <<"b">>]].
chars() -> [97, 10, 402].
doubles() -> [0.1, -42.2, 42.3].
unit() -> {}.
bools() -> [true, false].
lists() -> [[], ["a", "b", "c"]].
erl_atoms() -> ['', ok, a42].
erl_binaries() -> [<<"">>, <<"ok">>, <<"a42">>].
erl_charlists() -> [[], "ok", "a42"].
erl_nil() -> [].
erl_cons() -> {[1 | 2], [1 | <<"a">>], [1], [1, 2]}.
erl_lists() -> {[], [<<"a">>, 10, $c]}.
erl_tuples() -> {{}, {1}, {1, 2}, {1, 2, 3}, {1, 2, 3, 4}}.
"""


intTest : IO ()
intTest = do
  putStrLn "intTest"
  tuple <- erlUnsafeCall (List Int) "integers" []
  printLn tuple

integerTest : IO ()
integerTest = do
  putStrLn "integerTest"
  tuple <- erlUnsafeCall (List Integer) "integers" []
  printLn tuple

stringTest : IO ()
stringTest = do
  putStrLn "stringTest"
  tuple <- erlUnsafeCall (List String) "strings" []
  printLn tuple

charTest : IO ()
charTest = do
  putStrLn "charTest"
  tuple <- erlUnsafeCall (List Char) "chars" []
  printLn tuple

doubleTest : IO ()
doubleTest = do
  putStrLn "doubleTest"
  tuple <- erlUnsafeCall (List Double) "doubles" []
  printLn tuple

unitTest : IO ()
unitTest = do
  putStrLn "unitTest"
  unit <- erlUnsafeCall Unit "unit" []
  printLn unit

boolTest : IO ()
boolTest = do
  putStrLn "boolTest"
  tuple <- erlUnsafeCall (List Bool) "bools" []
  printLn tuple

listTest : IO ()
listTest = do
  putStrLn "listTest"
  tuple <- erlUnsafeCall (List (List String)) "lists" []
  printLn tuple

-- Skips function calls, (Raw a), ErlTerm for now

erlAtomTest : IO ()
erlAtomTest = do
  putStrLn "erlAtomTest"
  tuple <- erlUnsafeCall (List ErlAtom) "erl_atoms" []
  printLn tuple

erlBinaryTest : IO ()
erlBinaryTest = do
  putStrLn "erlBinaryTest"
  tuple <- erlUnsafeCall (List ErlBinary) "erl_binaries" []
  printLn tuple

erlCharlistTest : IO ()
erlCharlistTest = do
  putStrLn "erlCharlistTest"
  tuple <- erlUnsafeCall (List ErlCharlist) "erl_charlists" []
  printLn tuple

erlNilTest : IO ()
erlNilTest = do
  putStrLn "erlNilTest"
  nil <- erlUnsafeCall ErlNil "erl_nil" []
  printLn nil

erlConsTest : IO ()
erlConsTest = do
  putStrLn "erlConsTest"
  tuple <- erlUnsafeCall (ErlTuple4 (ErlCons Integer Integer) (ErlCons Integer String) (ErlCons Integer ErlNil) (ErlCons Integer (ErlCons Integer ErlNil))) "erl_cons" []
  printLn tuple

erlListTest : IO ()
erlListTest = do
  putStrLn "erlListTest"
  tuple <- erlUnsafeCall (ErlTuple2 (ErlList []) (ErlList [String, Int, Char])) "erl_lists" []
  printLn tuple

erlTuplesTest : IO ()
erlTuplesTest = do
  putStrLn "erlTuplesTest"
  tuple <- erlUnsafeCall (ErlTuple5 ErlTuple0 (ErlTuple1 Int) (ErlTuple2 Int Int) (ErlTuple3 Int Int Int) (ErlTuple4 Int Int Int Int)) "erl_tuples" []
  printLn tuple

main : IO ()
main = do
  intTest
  integerTest
  stringTest
  charTest
  doubleTest
  unitTest
  boolTest
  listTest
  erlAtomTest
  erlBinaryTest
  erlCharlistTest
  erlNilTest
  erlConsTest
  erlListTest
  erlTuplesTest
