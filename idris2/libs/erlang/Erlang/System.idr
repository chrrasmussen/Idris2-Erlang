module Erlang.System

import Erlang


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
  pure $ erlCase [] [map (erlUnsafeCast (List String)) MAnyList] result