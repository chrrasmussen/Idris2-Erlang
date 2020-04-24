module Compiler.Erlang.PrimTerm

import Compiler.Erlang.Utils

%default total


public export
data PrimTerm
  = PAtom String
  | PChar Char
  | PFloat Double -- TODO: Only positive doubles
  | PInteger Integer -- TODO: Only positive integers (Use Nat?)
  | PTuple (List PrimTerm)
  | PList (List PrimTerm)
  | PCharlist String


-- TODO: Does not handle multi-codepoint characters
escapeChar : Char -> String -> String
escapeChar c acc =
  let codepoint = ord c
      space = 32
      tilde = 126
      backslash = 92
      doubleQuote = 34
      apostrophe = 39
  in if codepoint < space || codepoint > tilde ||
        codepoint == backslash || codepoint == doubleQuote || codepoint == apostrophe
    then "\\x{" ++ asHex (cast c) ++ "}" ++ acc
    else strCons c acc

escapeString : List Char -> String -> String
escapeString [] = id
escapeString (c :: cs) = escapeChar c . escapeString cs

-- Convert a Double to a String. Includes a decimal separator for all Double numbers.
--
-- > showDouble 42
-- "42.0"
--
-- TODO: It may be possible to remove this if all codegens agree on making
-- `show {a=Double}` include a decimal separator.
showDouble : Double -> String
showDouble x =
  let dblStr = show x
  in if '.' `elem` unpack dblStr
    then dblStr
    else dblStr ++ ".0"

mutual
  export
  showPrimTerm : PrimTerm -> String
  showPrimTerm (PAtom str) = "'" ++ escapeString (unpack str) "" ++ "'"
  showPrimTerm (PChar x) = "$" ++ escapeChar x ""
  showPrimTerm (PFloat x) = showDouble x
  showPrimTerm (PInteger x) = show x
  showPrimTerm (PTuple xs) = "{" ++ showSep "," (mapShowPrimTerm xs) ++ "}"
  showPrimTerm (PList xs) = "[" ++ showSep "," (mapShowPrimTerm xs) ++ "]"
  showPrimTerm (PCharlist str) = "\"" ++ escapeString (unpack str) "" ++ "\""

  mapShowPrimTerm : List PrimTerm -> List String
  mapShowPrimTerm [] = []
  mapShowPrimTerm (x :: xs) = showPrimTerm x :: mapShowPrimTerm xs
