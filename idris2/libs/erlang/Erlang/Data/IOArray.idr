module Erlang.Data.IOArray

import Data.IORef
import Data.List
import Erlang


%default total


data ArrayData : Type -> Type where
  MkArrayData : IORef ErlTerm -> ArrayData a


-- 'unsafe' primitive access, backend dependent
-- get and set assume that the bounds have been checked. Behavious is undefined
-- otherwise.

prim__newArray : HasIO io => Int -> a -> io (ArrayData a)
prim__newArray size value = do
  arr <- pure $ erlUnsafeCall ErlTerm "array" "new" [size, MkTuple2 (MkAtom "default") (MkRaw value)]
  ref <- newIORef arr
  pure (MkArrayData ref)

prim__arrayGet : HasIO io => ArrayData a -> Int -> io a
prim__arrayGet (MkArrayData ref) pos = do
  arr <- readIORef ref
  MkRaw value <- pure $ erlUnsafeCall (Raw a) "array" "get" [pos, arr]
  pure value

prim__arraySet : HasIO io => ArrayData a -> Int -> a -> io ()
prim__arraySet (MkArrayData ref) pos value = do
  arr <- readIORef ref
  newArr <- pure $ erlUnsafeCall ErlTerm "array" "set" [pos, MkRaw value, arr]
  writeIORef ref newArr


export
record IOArray a where
  constructor MkIOArray
  maxSize : Int
  content : ArrayData (Maybe a)

export
max : IOArray a -> Int
max = maxSize

export
newArray : HasIO io => Int -> io (IOArray a)
newArray size
    = pure (MkIOArray size !(prim__newArray size Nothing))

export
writeArray : HasIO io => IOArray a -> Int -> a -> io ()
writeArray arr pos el
    = if pos < 0 || pos >= max arr
         then pure ()
         else prim__arraySet (content arr) pos (Just el)

export
readArray : HasIO io => IOArray a -> Int -> io (Maybe a)
readArray arr pos
    = if pos < 0 || pos >= max arr
         then pure Nothing
         else prim__arrayGet (content arr) pos

-- Make a new array of the given size with the elements copied from the
-- other array
export
newArrayCopy : HasIO io => (newsize : Int) -> IOArray a -> io (IOArray a)
newArrayCopy newsize arr
    = do let newsize' = if newsize < max arr then max arr else newsize
         arr' <- newArray newsize'
         copyFrom (content arr) (content arr') (max arr - 1)
         pure arr'
  where
    copyFrom : ArrayData (Maybe a) ->
               ArrayData (Maybe a) ->
               Int -> io ()
    copyFrom old new pos
        = if pos < 0
             then pure ()
             else do el <- prim__arrayGet old pos
                     prim__arraySet new pos el
                     assert_total (copyFrom old new (pos - 1))

export
toList : HasIO io => IOArray a -> io (List (Maybe a))
toList arr = iter 0 (max arr) []
  where
    iter : Int -> Int -> List (Maybe a) -> io (List (Maybe a))
    iter pos end acc
         = if pos >= end
              then pure (reverse acc)
              else do el <- readArray arr pos
                      assert_total (iter (pos + 1) end (el :: acc))

export
fromList : HasIO io => List (Maybe a) -> io (IOArray a)
fromList ns
    = do arr <- newArray (cast (length ns))
         addToArray 0 ns arr
         pure arr
  where
    addToArray : Int -> List (Maybe a) -> IOArray a -> io ()
    addToArray loc [] arr = pure ()
    addToArray loc (Nothing :: ns) arr
        = assert_total (addToArray (loc + 1) ns arr)
    addToArray loc (Just el :: ns) arr
        = do prim__arraySet (content arr) loc (Just el)
             assert_total (addToArray (loc + 1) ns arr)
