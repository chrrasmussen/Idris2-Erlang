module Compiler.Erlang.CompositeString

import Data.List


%default total


public export
data CompositeString : Type where
  Str : String -> CompositeString
  Nested : List CompositeString -> CompositeString

export
flatten : CompositeString -> List String
flatten xs = reverse (go xs [])
  where
    go : CompositeString -> List String -> List String
    go (Str str) acc = str :: acc
    go (Nested []) acc = acc
    go (Nested (x :: xs)) acc = assert_total $ go (Nested xs) (go x acc)
