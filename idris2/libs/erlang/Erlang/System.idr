module Erlang.System

import Erlang


%default total


export
sleep : Int -> IO ()
sleep sec = do
  erlCall "timer" "sleep" [sec * 1000]
  pure ()

export
getArgs : IO (List String)
getArgs = do
  Right result <- erlCall "persistent_term" "get" [MkErlAtom "$idris_rts_args"]
    | Left _ => pure []
  pure $ erlDecodeDef [] (map (erlUnsafeCast (List String)) anyList) result
