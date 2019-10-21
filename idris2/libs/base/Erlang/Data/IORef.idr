module Erlang.Data.IORef

import Erlang

export
data IORef : Type -> Type where
  MkIORef : ErlTerm -> IORef a

export
newIORef : a -> IO (IORef a)
newIORef val = do
  ref <- erlCall "erlang" "make_ref" []
  erlCall "ets" "insert" [MkErlAtom "$idris_rts_ets", MkErlTuple2 ref (MkRaw val)]
  pure (MkIORef ref)

export
readIORef : IORef a -> IO a
readIORef (MkIORef ref) = do
  MkRaw val <- erlUnsafeCall (Raw a) "ets:lookup_element" [MkErlAtom "$idris_rts_ets", ref, 2]
  pure val

export
writeIORef : IORef a -> (val : a) -> IO ()
writeIORef (MkIORef ref) val = do
  erlCall "ets" "insert" [MkErlAtom "$idris_rts_ets", MkErlTuple2 ref (MkRaw val)]
  pure ()

export
modifyIORef : IORef a -> (a -> a) -> IO ()
modifyIORef ref f = do
  val <- readIORef ref
  writeIORef ref (f val)
