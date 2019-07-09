module Main

import Erlang

%cg erlang """
run_curried1(Func) -> Func(42).
run_curried2(Func) -> (Func(42))(100).

run0(Func) -> Func().
run1(Func) -> Func(1).
run2(Func) -> Func(1, 2).
"""


-- Wrappers around `run_curriedX` that takes a curried, pure function

erlRunCurriedFun1 : (Int -> Int) -> IO Int
erlRunCurriedFun1 x = erlUnsafeCall Int "run_curried1" [x]

erlRunCurriedFun2 : (Int -> Int -> Int) -> IO Int
erlRunCurriedFun2 x = erlUnsafeCall Int "run_curried2" [x]


-- Wrappers around `runX` that takes a pure function

erlRunFun0 : Int -> IO Int
erlRunFun0 x = erlUnsafeCall Int "run0" [MkErlFun0 x]

erlRunFun1 : (Int -> Int) -> IO Int
erlRunFun1 x = erlUnsafeCall Int "run1" [MkErlFun1 x]

erlRunFun2 : (Int -> Int -> Int) -> IO Int
erlRunFun2 x = erlUnsafeCall Int "run2" [MkErlFun2 x]


-- Wrappers around `runX` that takes an IO action

erlRunIO0 : IO Int -> IO Int
erlRunIO0 x = erlUnsafeCall Int "run0" [MkErlIO0 x]

erlRunIO1 : (Int -> IO Int) -> IO Int
erlRunIO1 x = erlUnsafeCall Int "run1" [MkErlIO1 x]

erlRunIO2 : (Int -> Int -> IO Int) -> IO Int
erlRunIO2 x = erlUnsafeCall Int "run2" [MkErlIO2 x]


-- Tests

curriedFunTest : IO ()
curriedFunTest = do
  putStrLn "curriedFunTest"
  res1 <- erlRunCurriedFun1 (+ 10)
  printLn res1
  res2 <- erlRunCurriedFun2 (*)
  printLn res2

funTest : IO ()
funTest = do
  putStrLn "funTest"
  res0 <- erlRunFun0 42
  printLn res0
  res1 <- erlRunFun1 (+ 42)
  printLn res1
  res2 <- erlRunFun2 (+)
  printLn res2

ioTest : IO ()
ioTest = do
  putStrLn "ioTest"
  res0 <- erlRunIO0 (do { putStrLn "Running IO action with arity 0"; pure 42 })
  printLn res0
  res1 <- erlRunIO1 (\x => do { putStrLn "Running IO action with arity 1"; pure (x + 42) })
  printLn res1
  res2 <- erlRunIO2 (\x, y => do { putStrLn "Running IO action with arity 2"; pure (x + y) })
  printLn res2

main : IO ()
main = do
  curriedFunTest
  funTest
  ioTest
