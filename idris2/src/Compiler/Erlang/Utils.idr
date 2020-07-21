module Compiler.Erlang.Utils

import Data.List
import Data.Primitives.Views


%default total


export
showSep : String -> List String -> String
showSep sep [] = ""
showSep sep [x] = x
showSep sep (x :: xs) = x ++ sep ++ showSep sep xs

export
natRange : Nat -> List Nat
natRange n = reverse (go n)
  where
    go : Nat -> List Nat
    go Z = []
    go (S n) = n :: go n
