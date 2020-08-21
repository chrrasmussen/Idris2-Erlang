module Erlang.System.Concurrency

import Erlang.Decode
import Erlang.IO
import Erlang.Types


%default total


%extern prim__erlReceive : (ms : Int) -> (1 x : %World) -> IORes (Maybe ErlTerm)


export
erlSelf : HasIO io => io ErlPid
erlSelf = pure $ erlUnsafeCall ErlPid "erlang" "self" []

export
erlSpawn : HasIO io => IO () -> io ErlPid
erlSpawn action = pure $ erlUnsafeCall ErlPid "erlang" "spawn" [MkIOFun0 (map MkRaw action)]

export
erlSpawnLink : HasIO io => IO () -> io ErlPid
erlSpawnLink action = pure $ erlUnsafeCall ErlPid "erlang" "spawn_link" [MkIOFun0 (map MkRaw action)]

-- TODO: Support more receivers than just `ErlPid`
export
erlSend : (HasIO io, ErlType a) => ErlPid -> a -> io ()
erlSend receiver value = do
  pure $ erlUnsafeCall ErlTerm "erlang" "send" [receiver, value]
  pure ()

-- TODO: Add proof that `ms` is in proper range: 0 - 16#FFFFFFFF (http://erlang.org/doc/reference_manual/expressions.html#receive)
export %inline
erlReceive : HasIO io => (ms : Int) -> a -> ErlDecoder a -> io a
erlReceive ms def decoder = do
  Just term <- primIO (prim__erlReceive ms)
    | Nothing => pure def
  pure (erlDecodeDef def decoder term)
