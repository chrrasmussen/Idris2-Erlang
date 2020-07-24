module Compiler.Erlang.PrimTerm

import Data.List
import Compiler.Erlang.CompositeString
import Compiler.Erlang.Utils.String


%default total


public export
data PrimTerm
  = PAtom String
  | PChar Char
  | PFloat Double
  | PInteger Integer
  | PTuple (List PrimTerm)
  | PList (List PrimTerm)
  | PCharlist String


export
genPrimTerm : PrimTerm -> CompositeString
genPrimTerm (PAtom str) = Nested [Str "'", Str (escapeString (unpack str) ""), Str "'"]
genPrimTerm (PChar x) = Nested [Str "$", Str (escapeChar x "")]
genPrimTerm (PFloat x) = Str (showDouble x)
genPrimTerm (PInteger x) = Str (show x)
genPrimTerm (PTuple xs) = Nested [Str "{", Nested $ intersperse (Str ",") (assert_total (map genPrimTerm xs)), Str "}"]
genPrimTerm (PList xs) = Nested [Str "[", Nested $ intersperse (Str ",") (assert_total (map genPrimTerm xs)), Str "]"]
genPrimTerm (PCharlist str) = Nested [Str "\"", Str (escapeString (unpack str) ""), Str "\""]
