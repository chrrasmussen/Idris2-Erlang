module Main

import Erlang


-- Wrappers around `create_curried_funX` that returns a curried, pure function

curriedFun1 : Int -> Int
curriedFun1 =
  let MkFun1 f = erlUnsafeCallPure (ErlFun1 Int Int) "test_support" "create_curried_fun1" []
  in f

curriedFun2 : Int -> Int -> Int
curriedFun2 =
  let MkFun1 f = erlUnsafeCallPure (ErlFun1 Int (ErlFun1 Int Int)) "test_support" "create_curried_fun2" []
  in (\x => let MkFun1 f' = f x in f')


-- Wrappers around `create_funX` that returns a pure function

callFun0 : Int
callFun0 =
  let MkFun0 fun = erlUnsafeCallPure (ErlFun0 Int) "test_support" "create_fun0" []
  in fun

callFun1 : Int -> Int
callFun1 =
  let MkFun1 fun = erlUnsafeCallPure (ErlFun1 Int Int) "test_support" "create_fun1" []
  in fun

callFun2 : Int -> Int -> Int
callFun2 =
  let MkFun2 fun = erlUnsafeCallPure (ErlFun2 Int Int Int) "test_support" "create_fun2" []
  in fun


-- Wrappers around `create_ioX` that returns an IO action

callIOFun0 : IO Int
callIOFun0 =
  let MkIOFun0 action = erlUnsafeCallPure (ErlIOFun0 Int) "test_support" "create_io0" []
  in action

callIOFun1 : Int -> IO Int
callIOFun1 =
  let MkIOFun1 action = erlUnsafeCallPure (ErlIOFun1 Int Int) "test_support" "create_io1" []
  in action

callIOFun2 : Int -> Int -> IO Int
callIOFun2 =
  let MkIOFun2 action = erlUnsafeCallPure (ErlIOFun2 Int Int Int) "test_support" "create_io2" []
  in action


-- Tests

curriedFunTest : IO ()
curriedFunTest = do
  putStrLn "curriedFunTest"
  printLn (curriedFun1 42)
  printLn (curriedFun2 42 100)

funTest : IO ()
funTest = do
  putStrLn "funTest"
  printLn callFun0
  printLn (callFun1 42)
  printLn (callFun2 1 2)

ioTest : IO ()
ioTest = do
  putStrLn "ioTest"
  res0 <- callIOFun0
  printLn res0
  res1 <- callIOFun1 42
  printLn res1
  res2 <- callIOFun2 1 2
  printLn res2

main : IO ()
main = do
  curriedFunTest
  funTest
  ioTest
