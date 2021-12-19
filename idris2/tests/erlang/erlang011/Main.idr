module Main

import Erlang


-- Helper functions

sleep : Int -> IO ()
sleep ms = do
  ignore $ erlUnsafeCall ErlTerm "timer" "sleep" [ms]

defaultTimeout : Int
defaultTimeout = 5000


-- Tests

testReceiveInteger : ErlPid -> IO ()
testReceiveInteger self = do
  putStrLn "testReceiveInteger"
  ignore $ erlSpawnLink (do
    sleep 100
    erlSend self 42)
  result <- erlReceive defaultTimeout "not found" (map show integer)
  putStrLn result

testReceiveBinary : ErlPid -> IO ()
testReceiveBinary self = do
  putStrLn "testReceiveBinary"
  ignore $ erlSpawnLink (do
    sleep 100
    erlSend self "hello")
  result <- erlReceive defaultTimeout "not found" string
  putStrLn result

testTimeout : IO ()
testTimeout = do
  putStrLn "testTimeout"
  result <- erlReceive 100 "not found" (any *> pure "found")
  putStrLn result


main : IO ()
main = do
  self <- erlSelf
  testReceiveInteger self
  testReceiveBinary self
  testTimeout
