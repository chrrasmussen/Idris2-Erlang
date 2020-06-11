module Erlang.Data.IORef

import Erlang


%default total


export
data IORef : Type -> Type where
  MkIORef : ErlTerm -> IORef a


export
newIORef : a -> IO (IORef a)
newIORef val = do
  ref <- erlUnsafeCall ErlTerm "erlang" "make_ref" []
  erlUnsafeCall ErlTerm "erlang" "put" [ref, MkRaw val]
  pure (MkIORef ref)

export
readIORef : IORef a -> IO a
readIORef (MkIORef ref) = do
  MkRaw val <- erlUnsafeCall (Raw a) "erlang" "get" [ref]
  pure val

export
writeIORef : IORef a -> (val : a) -> IO ()
writeIORef (MkIORef ref) val = do
  erlUnsafeCall ErlTerm "erlang" "put" [ref, MkRaw val]
  pure ()

export
modifyIORef : IORef a -> (a -> a) -> IO ()
modifyIORef ref f = do
  val <- readIORef ref
  writeIORef ref (f val)
