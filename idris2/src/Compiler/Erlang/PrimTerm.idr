module Compiler.Erlang.PrimTerm

import Data.List
import Compiler.Erlang.CompositeString
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

export
genPrimTerm : PrimTerm -> CompositeString
genPrimTerm (PAtom str) = Nested [Str "'", Str (escapeString (unpack str) ""), Str "'"]
genPrimTerm (PChar x) = Nested [Str "$", Str (escapeChar x "")]
genPrimTerm (PFloat x) = Str (showDouble x)
genPrimTerm (PInteger x) = Str (show x)
genPrimTerm (PTuple xs) = Nested [Str "{", Nested $ intersperse (Str ",") (assert_total (map genPrimTerm xs)), Str "}"]
genPrimTerm (PList xs) = Nested [Str "[", Nested $ intersperse (Str ",") (assert_total (map genPrimTerm xs)), Str "]"]
genPrimTerm (PCharlist str) = Nested [Str "\"", Str (escapeString (unpack str) ""), Str "\""]
