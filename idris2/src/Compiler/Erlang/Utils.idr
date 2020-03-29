module Compiler.Erlang.Utils

import Data.Primitives.Views


%default total


export
showSep : String -> List String -> String
showSep sep [] = ""
showSep sep [x] = x
showSep sep (x :: xs) = x ++ sep ++ showSep sep xs


-- COPIED FROM IDRIS 2

export
hexDigit : Int -> Char
hexDigit 0 = '0'
hexDigit 1 = '1'
hexDigit 2 = '2'
hexDigit 3 = '3'
hexDigit 4 = '4'
hexDigit 5 = '5'
hexDigit 6 = '6'
hexDigit 7 = '7'
hexDigit 8 = '8'
hexDigit 9 = '9'
hexDigit 10 = 'a'
hexDigit 11 = 'b'
hexDigit 12 = 'c'
hexDigit 13 = 'd'
hexDigit 14 = 'e'
hexDigit 15 = 'f'
hexDigit _ = '�'

||| Convert a positive integer into a list of (lower case) hexadecimal characters
export
asHex : Int -> String
asHex 0 = "0"
asHex n = pack $ asHex' n []
  where
    asHex' : Int -> List Char -> List Char
    asHex' 0 hex = hex
    asHex' n hex with (n `divides` 16)
      asHex' (16 * div + rem) hex | (DivBy {div} {rem} _) = assert_total $ asHex' div (hexDigit rem :: hex)
