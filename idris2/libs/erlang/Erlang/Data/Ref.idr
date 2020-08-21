module Erlang.Data.Ref

import public Erlang.Data.IORef
import public Erlang.Control.Monad.ST


%default total


public export
interface Ref m (r : Type -> Type) | m where
  newRef : a -> m (r a)
  readRef : r a -> m a
  writeRef : r a -> a -> m ()

export
HasIO io => Ref io IORef where
  newRef = newIORef
  readRef = readIORef
  writeRef = writeIORef

export
Ref (ST s) (STRef s) where
  newRef = newSTRef
  readRef = readSTRef
  writeRef = writeSTRef
