module Libraries.Data.IOMatrix

import Erlang.Data.IOArray

%default total

export
record IOMatrix a where
  constructor MkIOMatrix
  maxWidth  : Int
  maxHeight : Int
  content   : IOArray a

export
width : IOMatrix a -> Int
width = maxWidth

export
height : IOMatrix a -> Int
height = maxHeight

export
new : HasIO io => (width, height : Int) -> io (IOMatrix a)
new width height
  = pure $ MkIOMatrix width height
         !(newArray (width * height))

toPosition : IOMatrix a -> Int -> Int -> Maybe Int
toPosition (MkIOMatrix w h arr) i j
  = do guard (not (i < 0 || j < 0 || i >= w || j >= h))
       pure (i * h + j)

export
write : HasIO io => IOMatrix a -> Int -> Int -> a -> io Bool
write mat i j el = case toPosition mat i j of
  Nothing => pure False
  Just pos => True <$ writeArray (content mat) pos el

export
read : HasIO io => IOMatrix a -> Int -> Int -> io (Maybe a)
read mat i j = case toPosition mat i j of
  Nothing => pure Nothing
  Just pos => readArray (content mat) pos
