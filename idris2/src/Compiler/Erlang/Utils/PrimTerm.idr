module Compiler.Erlang.Utils.PrimTerm

import Data.List
import Compiler.Erlang.Utils.CompositeString
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
primTermToCS : PrimTerm -> CompositeString
primTermToCS (PAtom str) = Nested [Str "'", Str (escapeString (unpack str) ""), Str "'"]
primTermToCS (PChar x) = Nested [Str "$", Str (escapeChar x "")]
primTermToCS (PFloat x) = Str (showDouble x)
primTermToCS (PInteger x) = Str (show x)
primTermToCS (PTuple xs) = Nested [Str "{", Nested $ intersperse (Str ",") (assert_total (map primTermToCS xs)), Str "}"]
primTermToCS (PList xs) = Nested [Str "[", Nested $ intersperse (Str ",") (assert_total (map primTermToCS xs)), Str "]"]
primTermToCS (PCharlist str) = Nested [Str "\"", Str (escapeString (unpack str) ""), Str "\""]
