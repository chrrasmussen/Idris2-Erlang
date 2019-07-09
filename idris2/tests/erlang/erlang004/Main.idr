module Main

import Erlang

erlPrintLn : ErlType a => a -> IO ()
erlPrintLn x = do
  erlCall "io" "format" ["~p~n", the (List _) [x]]
  pure ()


intTest : IO ()
intTest = do
  putStrLn "intTest"
  erlPrintLn (the Int 0)
  erlPrintLn (the Int (-42))
  erlPrintLn (the Int 42)

integerTest : IO ()
integerTest = do
  putStrLn "integerTest"
  erlPrintLn (the Integer 0)
  erlPrintLn (the Integer (-42))
  erlPrintLn (the Integer 42)

stringTest : IO ()
stringTest = do
  putStrLn "stringTest"
  erlPrintLn ""
  erlPrintLn "test"
  erlPrintLn ("a" ++ "b")

charTest : IO ()
charTest = do
  putStrLn "charTest"
  erlPrintLn 'a'
  erlPrintLn '\n'

doubleTest : IO ()
doubleTest = do
  putStrLn "doubleTest"
  erlPrintLn 0.1
  erlPrintLn (-42.2)
  erlPrintLn 42.3

unitTest : IO ()
unitTest = do
  putStrLn "unitTest"
  erlPrintLn ()

boolTest : IO ()
boolTest = do
  putStrLn "boolTest"
  erlPrintLn True
  erlPrintLn False

listTest : IO ()
listTest = do
  putStrLn "listTest"
  erlPrintLn (the (List String) [])
  erlPrintLn (the (List _) ["a", "b", "c"])

-- Skips function calls, (Raw a), ErlTerm for now

erlAtomTest : IO ()
erlAtomTest = do
  putStrLn "erlAtomTest"
  erlPrintLn (MkErlAtom "") -- Surprisingly, this is allowed
  erlPrintLn (MkErlAtom "ok")
  erlPrintLn (MkErlAtom ("a" ++ show 42))

erlBinaryTest : IO ()
erlBinaryTest = do
  putStrLn "erlBinaryTest"
  erlPrintLn (MkErlBinary "")
  erlPrintLn (MkErlBinary "ok")
  erlPrintLn (MkErlBinary ("a" ++ show 42))

erlCharlistTest : IO ()
erlCharlistTest = do
  putStrLn "erlCharlistTest"
  erlPrintLn (MkErlCharlist "")
  erlPrintLn (MkErlCharlist "ok")
  erlPrintLn (MkErlCharlist ("a" ++ show 42))

erlNilTest : IO ()
erlNilTest = do
  putStrLn "erlNilTest"
  erlPrintLn (the ErlNil [])

erlConsTest : IO ()
erlConsTest = do
  putStrLn "erlConsTest"
  erlPrintLn (the (ErlCons Integer Integer) (1 :: 2))
  erlPrintLn (the (ErlCons Integer String) (1 :: "a"))
  erlPrintLn (the (ErlCons Integer ErlNil) [1])
  erlPrintLn (the (ErlCons Integer (ErlCons Integer ErlNil)) [1, 2])

erlListTest : IO ()
erlListTest = do
  putStrLn "erlListTest"
  erlPrintLn (the (ErlList []) [])
  erlPrintLn (the (ErlList _) ["a", the Int 10, 'c'])

erlTuplesTest : IO ()
erlTuplesTest = do
  putStrLn "erlTuplesTest"
  erlPrintLn MkErlTuple0
  erlPrintLn (MkErlTuple1 "a")
  erlPrintLn (MkErlTuple2 "a" "b")
  erlPrintLn (MkErlTuple3 "a" "b" "c")
  erlPrintLn (MkErlTuple4 "a" "b" "c" "d")
  erlPrintLn (MkErlTuple5 "a" "b" "c" "d" "e")

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
