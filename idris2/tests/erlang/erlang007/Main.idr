module Main

import Erlang


-- Wrappers around `create_curried_funX` that returns a curried, pure function

erlCreateCurriedFun1 : IO (Int -> Int)
erlCreateCurriedFun1 = erlUnsafeCall (Int -> Int) "test_support" "create_curried_fun1" []

erlCreateCurriedFun2 : IO (Int -> Int -> Int)
erlCreateCurriedFun2 = erlUnsafeCall (Int -> Int -> Int) "test_support" "create_curried_fun2" []


-- Wrappers around `create_funX` that returns a pure function

erlCreateFun0 : IO Int
erlCreateFun0 = do
  MkErlFun0 fun <- erlUnsafeCall (ErlFun0 Int) "test_support" "create_fun0" []
  pure fun

erlCreateFun1 : IO (Int -> Int)
erlCreateFun1 = do
  MkErlFun1 fun <- erlUnsafeCall (ErlFun1 Int Int) "test_support" "create_fun1" []
  pure fun

erlCreateFun2 : IO (Int -> Int -> Int)
erlCreateFun2 = do
  MkErlFun2 fun <- erlUnsafeCall (ErlFun2 Int Int Int) "test_support" "create_fun2" []
  pure fun


-- Wrappers around `create_ioX` that returns an IO action

erlCreateIO0 : IO (IO Int)
erlCreateIO0 = do
  MkErlIOFun0 action <- erlUnsafeCall (ErlIOFun0 Int) "test_support" "create_io0" []
  pure action

erlCreateIO1 : IO (Int -> IO Int)
erlCreateIO1 = do
  MkErlIOFun1 action <- erlUnsafeCall (ErlIOFun1 Int Int) "test_support" "create_io1" []
  pure action

erlCreateIO2 : IO (Int -> Int -> IO Int)
erlCreateIO2 = do
  MkErlIOFun2 action <- erlUnsafeCall (ErlIOFun2 Int Int Int) "test_support" "create_io2" []
  pure action


-- Tests

curriedFunTest : IO ()
curriedFunTest = do
  putStrLn "curriedFunTest"
  fun1 <- erlCreateCurriedFun1
  printLn (fun1 42)
  fun2 <- erlCreateCurriedFun2
  printLn (fun2 42 100)

funTest : IO ()
funTest = do
  putStrLn "funTest"
  fun0 <- erlCreateFun0
  printLn fun0
  fun1 <- erlCreateFun1
  printLn (fun1 42)
  fun2 <- erlCreateFun2
  printLn (fun2 1 2)

ioTest : IO ()
ioTest = do
  putStrLn "ioTest"
  action0 <- erlCreateIO0
  res0 <- action0
  printLn res0
  action1 <- erlCreateIO1
  res1 <- action1 42
  printLn res1
  action2 <- erlCreateIO2
  res2 <- action2 1 2
  printLn res2

main : IO ()
main = do
  curriedFunTest
  funTest
  ioTest
