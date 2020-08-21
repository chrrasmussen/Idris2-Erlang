module Main

import Erlang


-- Wrappers around `run_curriedX` that takes a curried, pure function

erlRunCurriedFun1 : (Int -> Int) -> IO Int
erlRunCurriedFun1 f = do
  let f' = MkFun1 f
  pure $ erlUnsafeCall Int "test_support" "run_curried1" [f']

erlRunCurriedFun2 : (Int -> Int -> Int) -> IO Int
erlRunCurriedFun2 f = do
  let f' = MkFun1 (\x => MkFun1 (f x))
  pure $ erlUnsafeCall Int "test_support" "run_curried2" [f']


-- Wrappers around `runX` that takes a pure function

erlRunFun0 : Int -> IO Int
erlRunFun0 x = pure $ erlUnsafeCall Int "test_support" "run0" [MkFun0 x]

erlRunFun1 : (Int -> Int) -> IO Int
erlRunFun1 x = pure $ erlUnsafeCall Int "test_support" "run1" [MkFun1 x]

erlRunFun2 : (Int -> Int -> Int) -> IO Int
erlRunFun2 x = pure $ erlUnsafeCall Int "test_support" "run2" [MkFun2 x]


-- Wrappers around `runX` that takes an IO action

erlRunIO0 : IO Int -> IO Int
erlRunIO0 x = pure $ erlUnsafeCall Int "test_support" "run0" [MkIOFun0 x]

erlRunIO1 : (Int -> IO Int) -> IO Int
erlRunIO1 x = pure $ erlUnsafeCall Int "test_support" "run1" [MkIOFun1 x]

erlRunIO2 : (Int -> Int -> IO Int) -> IO Int
erlRunIO2 x = pure $ erlUnsafeCall Int "test_support" "run2" [MkIOFun2 x]


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
