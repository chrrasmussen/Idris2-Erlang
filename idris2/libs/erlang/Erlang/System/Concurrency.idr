module Erlang.System.Concurrency

import Erlang.Data
import Erlang.Data.Decode
import Erlang.IO


%default total


%extern prim__erlReceive : (ms : Int) -> (1 x : %World) -> IORes (Maybe ErlTerm)


export
erlSelf : IO ErlPid
erlSelf = erlUnsafeCall ErlPid "erlang" "self" []

export
erlSpawnLink : IO () -> IO ErlPid
erlSpawnLink action = erlUnsafeCall ErlPid "erlang" "spawn_link" [MkErlIOFun0 action]

-- TODO: Support more receivers than just `ErlPid`
export
erlSend : ErlType a => ErlPid -> a -> IO ()
erlSend receiver value = do
  erlUnsafeCall ErlTerm "erlang" "send" [receiver, value]
  pure ()

-- TODO: Add proof that `ms` is in proper range: 0 - 16#FFFFFFFF (http://erlang.org/doc/reference_manual/expressions.html#receive)
export %inline
erlReceive : (ms : Int) -> a -> ErlDecoder a -> IO a
erlReceive ms def decoder = do
  Just term <- primIO (prim__erlReceive ms)
    | Nothing => pure def
  pure (erlDecodeDef def decoder term)
