module Erlang.Data.IORef

import Erlang


%default total


export
data IORef : Type -> Type where
  MkIORef : ErlTerm -> IORef a


export
newIORef : HasIO io => a -> io (IORef a)
newIORef val = do
  ref <- pure $ erlUnsafeCall ErlTerm "erlang" "make_ref" []
  pure $ erlUnsafeCall ErlTerm "erlang" "put" [ref, MkRaw val]
  pure (MkIORef ref)

export
readIORef : HasIO io => IORef a -> io a
readIORef (MkIORef ref) = do
  MkRaw val <- pure $ erlUnsafeCall (Raw a) "erlang" "get" [ref]
  pure val

export
writeIORef : HasIO io => IORef a -> (val : a) -> io ()
writeIORef (MkIORef ref) val = do
  pure $ erlUnsafeCall ErlTerm "erlang" "put" [ref, MkRaw val]
  pure ()

export
modifyIORef : HasIO io => IORef a -> (a -> a) -> io ()
modifyIORef ref f = do
  val <- readIORef ref
  writeIORef ref (f val)
