module Compiler.Erlang.Utils.String

import Protocol.Hex


%default total


-- TODO: Does not handle multi-codepoint characters
export
escapeChar : Char -> String -> String
escapeChar c acc =
  let codepoint = cast c
      space = 32
      tilde = 126
      backslash = 92
      doubleQuote = 34
      apostrophe = 39
  in if codepoint < space || codepoint > tilde ||
        codepoint == backslash || codepoint == doubleQuote || codepoint == apostrophe
    then "\\x{" ++ asHex (cast c) ++ "}" ++ acc
    else strCons c acc

export
escapeString : List Char -> String -> String
escapeString [] = id
escapeString (c :: cs) = escapeChar c . escapeString cs

||| Convert a Double to a String. Includes a decimal separator for all Double numbers.
|||
||| > showDouble 42
||| "42.0"
-- TODO: It may be possible to remove this if all codegens agree on making
-- `show {a=Double}` include a decimal separator.
export
showDouble : Double -> String
showDouble x =
  let dblStr = show x
  in if '.' `elem` unpack dblStr
    then dblStr
    else dblStr ++ ".0"
