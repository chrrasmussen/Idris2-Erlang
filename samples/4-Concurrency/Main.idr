module Main

import Erlang

||| Helper function used to simulate delay.
sleep : Int -> IO ()
sleep ms = do
  erlCall "timer" "sleep" [ms]
  pure ()


loop : IO ()
loop = do
  Just (MkTuple2 from msg) <- erlReceive 5000 Nothing
    (map Just (tuple2 pid atom) <|>
      (exact (MkAtom "stop") *> pure Nothing))
    | Nothing => putStrLn "[LOOP] Loop ended"
  putStrLn ("[LOOP] Message received: " ++ show msg)
  sleep 1000
  currentPid <- erlSelf
  erlSend from (MkTuple2 currentPid msg)
  loop

main : IO ()
main = do
  loopPid <- erlSpawnLink loop
  putStrLn "[MAIN] Loop spawned"
  currentPid <- erlSelf
  erlSend loopPid (MkTuple2 currentPid (MkAtom "hello"))
  putStrLn "[MAIN] Waiting on message from loop"
  Just (MkTuple2 from msg) <- erlReceive 5000 Nothing
    (map Just (tuple2 pid atom))
    | Nothing => do
      putStrLn ("[MAIN] Timed out")
      sleep 10000
  putStrLn ("[MAIN] Message received: " ++ show msg)
  erlSend loopPid (MkAtom "stop")
  putStrLn "[MAIN] Program ended"
