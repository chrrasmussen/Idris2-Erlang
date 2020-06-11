module Main

import Erlang

erlPrintLn : ErlType a => a -> IO ()
erlPrintLn x = do
  erlUnsafeCall ErlTerm "io" "format" ["~p~n", the (List _) [x]]
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

listTest : IO ()
listTest = do
  putStrLn "listTest"
  erlPrintLn (the (List String) [])
  erlPrintLn (the (List _) ["a", "b", "c"])

-- Skips function calls, (Raw a), ErlTerm for now

erlAtomTest : IO ()
erlAtomTest = do
  putStrLn "erlAtomTest"
  erlPrintLn (MkAtom "") -- Surprisingly, this is allowed
  erlPrintLn (MkAtom "ok")
  erlPrintLn (MkAtom ("a" ++ show 42))

erlBinaryTest : IO ()
erlBinaryTest = do
  putStrLn "erlBinaryTest"
  erlPrintLn (MkBinary "")
  erlPrintLn (MkBinary "ok")
  erlPrintLn (MkBinary ("a" ++ show 42))

erlCharlistTest : IO ()
erlCharlistTest = do
  putStrLn "erlCharlistTest"
  erlPrintLn (MkCharlist "")
  erlPrintLn (MkCharlist "ok")
  erlPrintLn (MkCharlist ("a" ++ show 42))

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
  erlPrintLn MkTuple0
  erlPrintLn (MkTuple1 "a")
  erlPrintLn (MkTuple2 "a" "b")
  erlPrintLn (MkTuple3 "a" "b" "c")
  erlPrintLn (MkTuple4 "a" "b" "c" "d")
  erlPrintLn (MkTuple5 "a" "b" "c" "d" "e")

main : IO ()
main = do
  intTest
  integerTest
  stringTest
  charTest
  doubleTest
  listTest
  erlAtomTest
  erlBinaryTest
  erlCharlistTest
  erlNilTest
  erlConsTest
  erlListTest
  erlTuplesTest
